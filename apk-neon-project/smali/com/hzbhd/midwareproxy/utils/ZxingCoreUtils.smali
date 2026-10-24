.class public Lcom/hzbhd/midwareproxy/utils/ZxingCoreUtils;
.super Ljava/lang/Object;
.source "ZxingCoreUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addLogo(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    if-nez p1, :cond_1

    return-object p0

    :cond_1
    const/4 v1, 0x0

    cmpg-float v2, p2, v1

    if-ltz v2, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p2, v2

    if-lez v2, :cond_3

    :cond_2
    const p2, 0x3e4ccccd    # 0.2f

    .line 121
    :cond_3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 122
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 123
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 124
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v6, v2

    mul-float/2addr v6, p2

    int-to-float v7, v4

    div-float/2addr v6, v7

    int-to-float v7, v3

    mul-float/2addr v7, p2

    int-to-float p2, v5

    div-float/2addr v7, p2

    .line 131
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 132
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 133
    invoke-virtual {v8, p0, v1, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 134
    div-int/lit8 v2, v2, 0x2

    int-to-float p0, v2

    div-int/lit8 v3, v3, 0x2

    int-to-float v1, v3

    invoke-virtual {v8, v6, v7, p0, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 135
    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    int-to-float p0, v2

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v3, v5

    int-to-float v1, v3

    invoke-virtual {v8, p1, p0, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object p2
.end method

.method public static createBarcodeBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 19

    move/from16 v0, p2

    .line 303
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 305
    div-int/lit8 v8, v0, 0x4

    const/4 v9, 0x0

    .line 307
    :try_start_0
    new-instance v6, Ljava/util/EnumMap;

    const-class v1, Lcom/google/zxing/EncodeHintType;

    invoke-direct {v6, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 308
    sget-object v1, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    const-string/jumbo v2, "utf-8"

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    sget-object v1, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    sget-object v2, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->H:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    sget-object v1, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :try_start_1
    new-instance v1, Lcom/google/zxing/MultiFormatWriter;

    invoke-direct {v1}, Lcom/google/zxing/MultiFormatWriter;-><init>()V

    sget-object v3, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    mul-int/lit8 v5, v8, 0x3

    move-object v2, v7

    move/from16 v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/zxing/MultiFormatWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 317
    :try_start_2
    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v2

    .line 318
    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v3

    mul-int v4, v2, v3

    .line 319
    new-array v12, v4, [I

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/high16 v6, -0x1000000

    if-ge v5, v3, :cond_2

    mul-int v11, v5, v2

    move v13, v4

    :goto_1
    if-ge v13, v2, :cond_1

    add-int v14, v11, v13

    .line 323
    invoke-virtual {v1, v13, v5}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v15

    if-eqz v15, :cond_0

    move v15, v6

    goto :goto_2

    :cond_0
    move v15, v4

    :goto_2
    aput v15, v12, v14

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 326
    :cond_2
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v11, v1

    move v14, v2

    move/from16 v17, v2

    move/from16 v18, v3

    .line 327
    invoke-virtual/range {v11 .. v18}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 329
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v0, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 330
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 331
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 332
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 333
    invoke-virtual {v0, v1, v5, v12, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 334
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    .line 335
    invoke-virtual {v12, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 336
    invoke-virtual {v12, v10}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    int-to-float v1, v8

    .line 338
    invoke-virtual {v12, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 340
    div-int/lit8 v2, v2, 0xa

    int-to-float v2, v2

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v2, 0x0

    .line 341
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    int-to-float v6, v3

    move-object v1, v7

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v12

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v11

    :catch_0
    return-object v9
.end method

.method public static createQRCodeBitmap(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 11

    move v0, p1

    move v8, p2

    .line 50
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v9, 0x0

    if-eqz v1, :cond_0

    return-object v9

    :cond_0
    if-ltz v0, :cond_8

    if-gez v8, :cond_1

    goto/16 :goto_3

    .line 59
    :cond_1
    :try_start_0
    new-instance v6, Ljava/util/Hashtable;

    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    .line 61
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 62
    sget-object v1, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    move-object v2, p3

    invoke-virtual {v6, v1, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_2
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 66
    sget-object v1, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    move-object v2, p4

    invoke-virtual {v6, v1, p4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_3
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 70
    sget-object v1, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    move-object/from16 v2, p5

    invoke-virtual {v6, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_4
    new-instance v1, Lcom/google/zxing/qrcode/QRCodeWriter;

    invoke-direct {v1}, Lcom/google/zxing/qrcode/QRCodeWriter;-><init>()V

    sget-object v3, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    move-object v2, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/google/zxing/qrcode/QRCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    mul-int v2, v0, v8

    .line 76
    new-array v2, v2, [I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v8, :cond_7

    move v5, v3

    :goto_1
    if-ge v5, v0, :cond_6

    .line 80
    invoke-virtual {v1, v5, v4}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    if-eqz v6, :cond_5

    mul-int v6, v4, v0

    add-int/2addr v6, v5

    .line 81
    aput p6, v2, v6

    goto :goto_2

    :cond_5
    mul-int v6, v4, v0

    add-int/2addr v6, v5

    .line 83
    aput p7, v2, v6

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 88
    :cond_7
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v10

    move v4, p1

    move v7, p1

    move v8, p2

    .line 89
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v10

    :catch_0
    move-exception v0

    .line 92
    invoke-virtual {v0}, Lcom/google/zxing/WriterException;->printStackTrace()V

    :cond_8
    :goto_3
    return-object v9
.end method

.method public static createQRCodeBitmap(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILandroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 12

    move v0, p1

    move v8, p2

    move-object/from16 v9, p8

    .line 160
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v10, 0x0

    if-eqz v1, :cond_0

    return-object v10

    :cond_0
    if-ltz v0, :cond_9

    if-gez v8, :cond_1

    goto/16 :goto_3

    .line 169
    :cond_1
    :try_start_0
    new-instance v6, Ljava/util/Hashtable;

    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    .line 171
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 172
    sget-object v1, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    move-object v2, p3

    invoke-virtual {v6, v1, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    :cond_2
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 176
    sget-object v1, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    move-object/from16 v2, p4

    invoke-virtual {v6, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    :cond_3
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 180
    sget-object v1, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    move-object/from16 v2, p5

    invoke-virtual {v6, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    :cond_4
    new-instance v1, Lcom/google/zxing/qrcode/QRCodeWriter;

    invoke-direct {v1}, Lcom/google/zxing/qrcode/QRCodeWriter;-><init>()V

    sget-object v3, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    move-object v2, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/google/zxing/qrcode/QRCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    mul-int v2, v0, v8

    .line 186
    new-array v2, v2, [I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v8, :cond_7

    move v5, v3

    :goto_1
    if-ge v5, v0, :cond_6

    .line 190
    invoke-virtual {v1, v5, v4}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    if-eqz v6, :cond_5

    mul-int v6, v4, v0

    add-int/2addr v6, v5

    .line 191
    aput p6, v2, v6

    goto :goto_2

    :cond_5
    mul-int v6, v4, v0

    add-int/2addr v6, v5

    .line 193
    aput p7, v2, v6

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 199
    :cond_7
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v11

    move v4, p1

    move v7, p1

    move v8, p2

    .line 200
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    if-eqz v9, :cond_8

    move/from16 v0, p9

    .line 204
    invoke-static {v11, v9, v0}, Lcom/hzbhd/midwareproxy/utils/ZxingCoreUtils;->addLogo(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_8
    return-object v11

    :catch_0
    move-exception v0

    .line 208
    invoke-virtual {v0}, Lcom/google/zxing/WriterException;->printStackTrace()V

    :cond_9
    :goto_3
    return-object v10
.end method

.method public static createQRCodeBitmap(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILandroid/graphics/Bitmap;FLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 12

    move v0, p1

    move v8, p2

    move-object/from16 v9, p8

    move-object/from16 v7, p10

    .line 233
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v10, 0x0

    if-eqz v1, :cond_0

    return-object v10

    :cond_0
    if-ltz v0, :cond_b

    if-gez v8, :cond_1

    goto/16 :goto_3

    .line 242
    :cond_1
    :try_start_0
    new-instance v6, Ljava/util/Hashtable;

    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    .line 244
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 245
    sget-object v1, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    move-object v2, p3

    invoke-virtual {v6, v1, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    :cond_2
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 249
    sget-object v1, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    move-object/from16 v2, p4

    invoke-virtual {v6, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    :cond_3
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 253
    sget-object v1, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    move-object/from16 v2, p5

    invoke-virtual {v6, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    :cond_4
    new-instance v1, Lcom/google/zxing/qrcode/QRCodeWriter;

    invoke-direct {v1}, Lcom/google/zxing/qrcode/QRCodeWriter;-><init>()V

    sget-object v3, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    move-object v2, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/google/zxing/qrcode/QRCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v7, :cond_5

    .line 261
    invoke-static {v7, p1, p2, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v7, v3

    :cond_5
    mul-int v3, v0, v8

    .line 263
    new-array v3, v3, [I

    move v4, v2

    :goto_0
    if-ge v4, v8, :cond_9

    move v5, v2

    :goto_1
    if-ge v5, v0, :cond_8

    .line 267
    invoke-virtual {v1, v5, v4}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    if-eqz v6, :cond_7

    if-eqz v7, :cond_6

    mul-int v6, v4, v0

    add-int/2addr v6, v5

    .line 269
    invoke-virtual {v7, v5, v4}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v11

    aput v11, v3, v6

    goto :goto_2

    :cond_6
    mul-int v6, v4, v0

    add-int/2addr v6, v5

    .line 271
    aput p6, v3, v6

    goto :goto_2

    :cond_7
    mul-int v6, v4, v0

    add-int/2addr v6, v5

    .line 274
    aput p7, v3, v6

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 280
    :cond_9
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v11

    move-object v2, v3

    move v3, v4

    move v4, p1

    move v7, p1

    move v8, p2

    .line 281
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    if-eqz v9, :cond_a

    move/from16 v0, p9

    .line 285
    invoke-static {v11, v9, v0}, Lcom/hzbhd/midwareproxy/utils/ZxingCoreUtils;->addLogo(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_a
    return-object v11

    :catch_0
    move-exception v0

    .line 289
    invoke-virtual {v0}, Lcom/google/zxing/WriterException;->printStackTrace()V

    :cond_b
    :goto_3
    return-object v10
.end method
