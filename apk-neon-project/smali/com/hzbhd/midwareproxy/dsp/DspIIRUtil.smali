.class public Lcom/hzbhd/midwareproxy/dsp/DspIIRUtil;
.super Ljava/lang/Object;
.source "DspIIRUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static alpha(DD)D
    .locals 2

    .line 22
    invoke-static {p0, p1}, Lcom/hzbhd/midwareproxy/dsp/DspIIRUtil;->sn(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double/2addr p2, v0

    div-double/2addr p0, p2

    return-wide p0
.end method

.method private static calcGain(DDDDDDD)D
    .locals 14

    .line 632
    invoke-static {p0, p1}, Lcom/hzbhd/midwareproxy/dsp/DspIIRUtil;->w(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    .line 633
    invoke-static {p0, p1}, Lcom/hzbhd/midwareproxy/dsp/DspIIRUtil;->w(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v4, v0, v0

    mul-double v6, v2, v2

    sub-double/2addr v4, v6

    mul-double v6, v0, v2

    add-double/2addr v6, v6

    mul-double v8, v0, p6

    add-double v8, p8, v8

    mul-double v10, v4, p4

    add-double/2addr v8, v10

    mul-double v10, v2, p6

    mul-double v12, v6, p4

    add-double/2addr v10, v12

    mul-double v0, v0, p12

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double v0, v12, v0

    mul-double v4, v4, p10

    sub-double/2addr v0, v4

    mul-double v2, v2, p12

    const-wide/16 v4, 0x0

    sub-double/2addr v4, v2

    mul-double v6, v6, p10

    sub-double/2addr v4, v6

    mul-double v2, v0, v0

    mul-double v6, v4, v4

    add-double/2addr v2, v6

    div-double/2addr v12, v2

    mul-double v2, v8, v0

    mul-double v6, v10, v4

    add-double/2addr v2, v6

    mul-double/2addr v2, v12

    mul-double/2addr v10, v0

    mul-double/2addr v8, v4

    sub-double/2addr v10, v8

    mul-double/2addr v12, v10

    mul-double/2addr v2, v2

    mul-double/2addr v12, v12

    add-double/2addr v2, v12

    .line 649
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    mul-double/2addr v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static calcGain(D[D)D
    .locals 33

    move-object/from16 v0, p2

    .line 608
    array-length v1, v0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x5

    if-ne v1, v7, :cond_0

    const-wide v10, 0x40e5888000000000L    # 44100.0

    .line 609
    aget-wide v12, v0, v6

    aget-wide v14, v0, v5

    aget-wide v16, v0, v4

    aget-wide v18, v0, v3

    aget-wide v20, v0, v2

    move-wide/from16 v8, p0

    invoke-static/range {v8 .. v21}, Lcom/hzbhd/midwareproxy/dsp/DspIIRUtil;->calcGain(DDDDDDD)D

    move-result-wide v0

    return-wide v0

    .line 610
    :cond_0
    array-length v1, v0

    const/16 v8, 0x8

    const/4 v9, 0x7

    const/16 v10, 0x9

    const/4 v11, 0x6

    const/16 v12, 0xa

    if-ne v1, v12, :cond_1

    const-wide v15, 0x40e5888000000000L    # 44100.0

    .line 611
    aget-wide v17, v0, v6

    aget-wide v19, v0, v5

    aget-wide v21, v0, v4

    aget-wide v23, v0, v3

    aget-wide v25, v0, v2

    move-wide/from16 v13, p0

    invoke-static/range {v13 .. v26}, Lcom/hzbhd/midwareproxy/dsp/DspIIRUtil;->calcGain(DDDDDDD)D

    move-result-wide v1

    const-wide v14, 0x40e5888000000000L    # 44100.0

    aget-wide v16, v0, v7

    aget-wide v18, v0, v11

    aget-wide v20, v0, v10

    aget-wide v22, v0, v9

    aget-wide v24, v0, v8

    move-wide/from16 v12, p0

    .line 612
    invoke-static/range {v12 .. v25}, Lcom/hzbhd/midwareproxy/dsp/DspIIRUtil;->calcGain(DDDDDDD)D

    move-result-wide v3

    :goto_0
    add-double/2addr v1, v3

    return-wide v1

    .line 613
    :cond_1
    array-length v1, v0

    const/16 v14, 0xc

    const/16 v15, 0xe

    const/16 v16, 0xb

    const/16 v13, 0xf

    if-ne v1, v13, :cond_2

    const-wide v20, 0x40e5888000000000L    # 44100.0

    .line 614
    aget-wide v22, v0, v6

    aget-wide v24, v0, v5

    aget-wide v26, v0, v4

    aget-wide v28, v0, v3

    aget-wide v30, v0, v2

    move-wide/from16 v18, p0

    invoke-static/range {v18 .. v31}, Lcom/hzbhd/midwareproxy/dsp/DspIIRUtil;->calcGain(DDDDDDD)D

    move-result-wide v1

    aget-wide v22, v0, v7

    aget-wide v24, v0, v11

    aget-wide v26, v0, v10

    aget-wide v28, v0, v9

    aget-wide v30, v0, v8

    .line 615
    invoke-static/range {v18 .. v31}, Lcom/hzbhd/midwareproxy/dsp/DspIIRUtil;->calcGain(DDDDDDD)D

    move-result-wide v3

    add-double/2addr v1, v3

    aget-wide v22, v0, v12

    aget-wide v24, v0, v16

    aget-wide v26, v0, v15

    aget-wide v28, v0, v14

    const/16 v3, 0xd

    aget-wide v30, v0, v3

    .line 616
    invoke-static/range {v18 .. v31}, Lcom/hzbhd/midwareproxy/dsp/DspIIRUtil;->calcGain(DDDDDDD)D

    move-result-wide v3

    goto :goto_0

    .line 617
    :cond_2
    array-length v1, v0

    const/16 v13, 0x14

    if-ne v1, v13, :cond_3

    const-wide v21, 0x40e5888000000000L    # 44100.0

    .line 618
    aget-wide v23, v0, v6

    aget-wide v25, v0, v5

    aget-wide v27, v0, v4

    aget-wide v29, v0, v3

    aget-wide v31, v0, v2

    move-wide/from16 v19, p0

    invoke-static/range {v19 .. v32}, Lcom/hzbhd/midwareproxy/dsp/DspIIRUtil;->calcGain(DDDDDDD)D

    move-result-wide v1

    aget-wide v23, v0, v7

    aget-wide v25, v0, v11

    aget-wide v27, v0, v10

    aget-wide v29, v0, v9

    aget-wide v31, v0, v8

    .line 619
    invoke-static/range {v19 .. v32}, Lcom/hzbhd/midwareproxy/dsp/DspIIRUtil;->calcGain(DDDDDDD)D

    move-result-wide v3

    add-double/2addr v1, v3

    aget-wide v23, v0, v12

    aget-wide v25, v0, v16

    aget-wide v27, v0, v15

    aget-wide v29, v0, v14

    const/16 v3, 0xd

    aget-wide v31, v0, v3

    .line 620
    invoke-static/range {v19 .. v32}, Lcom/hzbhd/midwareproxy/dsp/DspIIRUtil;->calcGain(DDDDDDD)D

    move-result-wide v3

    add-double/2addr v1, v3

    const-wide v5, 0x40e5888000000000L    # 44100.0

    const/16 v3, 0xf

    aget-wide v7, v0, v3

    const/16 v3, 0x10

    aget-wide v9, v0, v3

    const/16 v3, 0x13

    aget-wide v11, v0, v3

    const/16 v3, 0x11

    aget-wide v13, v0, v3

    const/16 v3, 0x12

    aget-wide v15, v0, v3

    move-wide/from16 v3, p0

    .line 621
    invoke-static/range {v3 .. v16}, Lcom/hzbhd/midwareproxy/dsp/DspIIRUtil;->calcGain(DDDDDDD)D

    move-result-wide v3

    goto/16 :goto_0

    :cond_3
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static calculateHpf1(D)[D
    .locals 11

    const/4 v0, 0x5

    new-array v0, v0, [D

    .line 333
    invoke-static {p0, p1}, Lcom/hzbhd/midwareproxy/dsp/DspIIRUtil;->cs(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    add-double/2addr v1, v3

    invoke-static {p0, p1}, Lcom/hzbhd/midwareproxy/dsp/DspIIRUtil;->sn(D)D

    move-result-wide v5

    sub-double/2addr v1, v5

    invoke-static {p0, p1}, Lcom/hzbhd/midwareproxy/dsp/DspIIRUtil;->cs(D)D

    move-result-wide v5

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    mul-double/2addr v5, v7

    div-double/2addr v1, v5

    .line 335
    invoke-static {p0, p1}, Lcom/hzbhd/midwareproxy/dsp/DspIIRUtil;->sn(D)D

    move-result-wide v5

    sub-double v5, v3, v5

    invoke-static {p0, p1}, Lcom/hzbhd/midwareproxy/dsp/DspIIRUtil;->cs(D)D

    move-result-wide v9

    div-double/2addr v5, v9

    .line 336
    invoke-static {p0, p1}, Lcom/hzbhd/midwareproxy/dsp/DspIIRUtil;->cs(D)D

    move-result-wide v9

    add-double/2addr v9, v3

    invoke-static {p0, p1}, Lcom/hzbhd/midwareproxy/dsp/DspIIRUtil;->sn(D)D

    move-result-wide v3

    sub-double/2addr v9, v3

    neg-double v3, v9

    invoke-static {p0, p1}, Lcom/hzbhd/midwareproxy/dsp/DspIIRUtil;->cs(D)D

    move-result-wide p0

    mul-double/2addr p0, v7

    div-double/2addr v3, p0

    const/4 p0, 0x0

    const-wide/16 v7, 0x0

    aput-wide v7, v0, p0

    const/4 p0, 0x1

    aput-wide v1, v0, p0

    const/4 p0, 0x2

    aput-wide v7, v0, p0

    const/4 p0, 0x3

    aput-wide v5, v0, p0

    const/4 p0, 0x4

    aput-wide v3, v0, p0

    return-object v0
.end method

.method public static calculateHpf2(DD)[D
    .locals 17

    const/4 v0, 0x5

    new-array v0, v0, [D

    .line 347
    invoke-static/range {p0 .. p3}, Lcom/hzbhd/midwareproxy/dsp/DspIIRUtil;->alpha(DD)D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    add-double/2addr v1, v3

    .line 348
    invoke-static/range {p0 .. p1}, Lcom/hzbhd/midwareproxy/dsp/DspIIRUtil;->cs(D)D

    move-result-wide v5

    add-double/2addr v5, v3

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    div-double/2addr v5, v7

    div-double/2addr v5, v1

    .line 349
    invoke-static/range {p0 .. p1}, Lcom/hzbhd/midwareproxy/dsp/DspIIRUtil;->cs(D)D

    move-result-wide v9

    add-double/2addr v9, v3

    neg-double v9, v9

    div-double/2addr v9, v1

    .line 350
    invoke-static/range {p0 .. p3}, Lcom/hzbhd/midwareproxy/dsp/DspIIRUtil;->alpha(DD)D

    move-result-wide v11

    sub-double v11, v3, v11

    neg-double v11, v11

    div-double/2addr v11, v1

    .line 351
    invoke-static/range {p0 .. p1}, Lcom/hzbhd/midwareproxy/dsp/DspIIRUtil;->cs(D)D

    move-result-wide v13

    mul-double/2addr v13, v7

    div-double/2addr v13, v1

    .line 352
    invoke-static/range {p0 .. p1}, Lcom/hzbhd/midwareproxy/dsp/DspIIRUtil;->cs(D)D

    move-result-wide v15

    add-double/2addr v15, v3

    div-double/2addr v15, v7

    div-double/2addr v15, v1

    const/4 v1, 0x0

    aput-wide v5, v0, v1

    const/4 v1, 0x1

    aput-wide v9, v0, v1

    const/4 v1, 0x2

    aput-wide v11, v0, v1

    const/4 v1, 0x3

    aput-wide v13, v0, v1

    const/4 v1, 0x4

    aput-wide v15, v0, v1

    return-object v0
.end method

.method public static calculateHpf3(D)[D
    .locals 19

    const/16 v0, 0xa

    new-array v0, v0, [D

    const-wide v1, 0x400921fb54442d18L    # Math.PI

    mul-double v1, v1, p0

    const-wide v3, 0x40e5888000000000L    # 44100.0

    div-double/2addr v1, v3

    .line 363
    invoke-static {v1, v2}, Ljava/lang/Math;->tan(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    add-double v5, v1, v3

    mul-double v7, v1, v1

    add-double v9, v5, v7

    sub-double v11, v3, v1

    div-double/2addr v11, v5

    div-double v5, v3, v5

    neg-double v13, v5

    sub-double v15, v3, v7

    const-wide/high16 v17, 0x4000000000000000L    # 2.0

    mul-double v15, v15, v17

    div-double/2addr v15, v9

    sub-double/2addr v1, v7

    sub-double/2addr v1, v3

    mul-double v1, v1, v17

    mul-double v17, v17, v9

    div-double v1, v1, v17

    div-double/2addr v3, v9

    const-wide/high16 v7, -0x4000000000000000L    # -2.0

    mul-double/2addr v7, v3

    const/4 v9, 0x0

    const-wide/16 v17, 0x0

    aput-wide v17, v0, v9

    const/4 v9, 0x1

    aput-wide v13, v0, v9

    const/4 v9, 0x2

    aput-wide v17, v0, v9

    const/4 v9, 0x3

    aput-wide v11, v0, v9

    const/4 v9, 0x4

    aput-wide v5, v0, v9

    const/4 v5, 0x5

    aput-wide v3, v0, v5

    const/4 v5, 0x6

    aput-wide v7, v0, v5

    const/4 v5, 0x7

    aput-wide v1, v0, v5

    const/16 v1, 0x8

    aput-wide v15, v0, v1

    const/16 v1, 0x9

    aput-wide v3, v0, v1

    return-object v0
.end method

.method public static calculateHpf4(D)[D
    .locals 27

    const/16 v0, 0xa

    new-array v0, v0, [D

    .line 393
    invoke-static/range {p0 .. p1}, Lcom/hzbhd/midwareproxy/dsp/DspIIRUtil;->w(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    invoke-static/range {p0 .. p1}, Lcom/hzbhd/midwareproxy/dsp/DspIIRUtil;->w(D)D

    move-result-wide v5

    div-double/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    div-double/2addr v1, v5

    const-wide v5, 0x3fd921fb54442d18L    # 0.39269908169872414

    .line 394
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v7, v3

    mul-double/2addr v7, v1

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    add-double/2addr v7, v9

    mul-double v11, v1, v1

    add-double/2addr v7, v11

    const-wide v13, 0x3ff2d97c7f3321d2L    # 1.1780972450961724

    .line 395
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double/2addr v15, v3

    mul-double/2addr v15, v1

    add-double/2addr v15, v9

    add-double/2addr v15, v11

    div-double v17, v9, v7

    const-wide/high16 v19, -0x4000000000000000L    # -2.0

    div-double v21, v19, v7

    .line 398
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v5, v3

    mul-double/2addr v5, v1

    sub-double/2addr v5, v9

    sub-double/2addr v5, v11

    neg-double v5, v5

    div-double/2addr v5, v7

    sub-double v23, v9, v11

    mul-double v25, v23, v19

    div-double v7, v25, v7

    div-double v25, v9, v15

    div-double v19, v19, v15

    .line 403
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double/2addr v13, v3

    mul-double/2addr v13, v1

    sub-double/2addr v13, v9

    sub-double/2addr v13, v11

    div-double/2addr v13, v15

    mul-double v23, v23, v3

    div-double v23, v23, v15

    div-double v17, v17, v9

    const/4 v1, 0x0

    aput-wide v17, v0, v1

    div-double v21, v21, v9

    const/4 v1, 0x1

    aput-wide v21, v0, v1

    neg-double v1, v5

    div-double/2addr v1, v9

    const/4 v3, 0x2

    aput-wide v1, v0, v3

    neg-double v1, v7

    div-double/2addr v1, v9

    const/4 v3, 0x3

    aput-wide v1, v0, v3

    const/4 v1, 0x4

    aput-wide v17, v0, v1

    const/4 v1, 0x5

    aput-wide v25, v0, v1

    const/4 v1, 0x6

    aput-wide v19, v0, v1

    const/4 v1, 0x7

    aput-wide v13, v0, v1

    const/16 v1, 0x8

    aput-wide v23, v0, v1

    const/16 v1, 0x9

    aput-wide v25, v0, v1

    return-object v0
.end method

.method public static calculateHpf5(D)[D
    .locals 31

    const/16 v0, 0xf

    new-array v0, v0, [D

    const-wide v1, 0x400921fb54442d18L    # Math.PI

    mul-double v1, v1, p0

    const-wide v3, 0x40e5888000000000L    # 44100.0

    div-double/2addr v1, v3

    .line 421
    invoke-static {v1, v2}, Ljava/lang/Math;->tan(D)D

    move-result-wide v1

    const-wide v3, 0x3fe41b2f769cf0e0L    # 0.6283185307179586

    .line 422
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    mul-double/2addr v5, v7

    mul-double/2addr v5, v1

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    add-double/2addr v5, v9

    mul-double v11, v1, v1

    add-double/2addr v5, v11

    const-wide v13, 0x3ff41b2f769cf0e0L    # 1.2566370614359172

    .line 423
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double/2addr v15, v7

    mul-double/2addr v15, v1

    add-double/2addr v15, v9

    add-double/2addr v15, v11

    sub-double v17, v9, v1

    add-double v19, v1, v9

    div-double v17, v17, v19

    div-double v13, v9, v19

    neg-double v3, v13

    sub-double v21, v9, v11

    mul-double v21, v21, v7

    div-double v23, v21, v5

    const-wide v19, 0x3fe41b2f769cf0e0L    # 0.6283185307179586

    .line 432
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->cos(D)D

    move-result-wide v19

    mul-double v19, v19, v7

    mul-double v19, v19, v1

    sub-double v19, v19, v9

    sub-double v19, v19, v11

    mul-double v19, v19, v7

    mul-double v25, v5, v7

    div-double v19, v19, v25

    div-double v5, v9, v5

    const-wide/high16 v25, -0x4000000000000000L    # -2.0

    mul-double v27, v5, v25

    div-double v21, v21, v15

    const-wide v29, 0x3ff41b2f769cf0e0L    # 1.2566370614359172

    .line 438
    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->cos(D)D

    move-result-wide v29

    mul-double v29, v29, v7

    mul-double v29, v29, v1

    sub-double v29, v29, v9

    sub-double v29, v29, v11

    mul-double v29, v29, v7

    mul-double/2addr v7, v15

    div-double v29, v29, v7

    div-double/2addr v9, v15

    mul-double v25, v25, v9

    const/4 v1, 0x0

    const-wide/16 v7, 0x0

    aput-wide v7, v0, v1

    const/4 v1, 0x1

    aput-wide v3, v0, v1

    const/4 v1, 0x2

    aput-wide v7, v0, v1

    const/4 v1, 0x3

    aput-wide v17, v0, v1

    const/4 v1, 0x4

    aput-wide v13, v0, v1

    const/4 v1, 0x5

    aput-wide v5, v0, v1

    const/4 v1, 0x6

    aput-wide v27, v0, v1

    const/4 v1, 0x7

    aput-wide v19, v0, v1

    const/16 v1, 0x8

    aput-wide v23, v0, v1

    const/16 v1, 0x9

    aput-wide v5, v0, v1

    const/16 v1, 0xa

    aput-wide v9, v0, v1

    const/16 v1, 0xb

    aput-wide v25, v0, v1

    const/16 v1, 0xc

    aput-wide v29, v0, v1

    const/16 v1, 0xd

    aput-wide v21, v0, v1

    const/16 v1, 0xe

    aput-wide v9, v0, v1

    return-object v0
.end method

.method public static calculateHpf6(D)[D
    .locals 35

    const/16 v0, 0xf

    new-array v0, v0, [D

    .line 463
    invoke-static/range {p0 .. p1}, Lcom/hzbhd/midwareproxy/dsp/DspIIRUtil;->w(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    invoke-static/range {p0 .. p1}, Lcom/hzbhd/midwareproxy/dsp/DspIIRUtil;->w(D)D

    move-result-wide v5

    div-double/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    div-double/2addr v1, v5

    const-wide v5, 0x3fd0c152382d7365L    # 0.2617993877991494

    .line 464
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v7, v3

    mul-double/2addr v7, v1

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    add-double/2addr v7, v9

    mul-double v11, v1, v1

    add-double/2addr v7, v11

    const-wide v13, 0x3fe921fb54442d18L    # 0.7853981633974483

    .line 465
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double/2addr v15, v3

    mul-double/2addr v15, v1

    add-double/2addr v15, v9

    add-double/2addr v15, v11

    const-wide v17, 0x3ff4f1a6c638d03fL    # 1.3089969389957472

    .line 466
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->cos(D)D

    move-result-wide v19

    mul-double v19, v19, v3

    mul-double v19, v19, v1

    add-double v19, v19, v9

    add-double v19, v19, v11

    div-double v21, v9, v7

    const-wide/high16 v23, -0x4000000000000000L    # -2.0

    div-double v25, v23, v7

    .line 469
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v5, v3

    mul-double/2addr v5, v1

    sub-double/2addr v5, v9

    sub-double/2addr v5, v11

    neg-double v5, v5

    div-double/2addr v5, v7

    sub-double v27, v9, v11

    mul-double v29, v27, v23

    div-double v7, v29, v7

    div-double v29, v9, v15

    div-double v31, v23, v15

    .line 474
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double/2addr v13, v3

    mul-double/2addr v13, v1

    sub-double/2addr v13, v9

    sub-double/2addr v13, v11

    div-double/2addr v13, v15

    mul-double v27, v27, v3

    div-double v15, v27, v15

    div-double v33, v9, v19

    div-double v23, v23, v19

    .line 479
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    mul-double v17, v17, v3

    mul-double v17, v17, v1

    sub-double v17, v17, v9

    sub-double v17, v17, v11

    div-double v17, v17, v19

    div-double v27, v27, v19

    div-double v21, v21, v9

    const/4 v1, 0x0

    aput-wide v21, v0, v1

    div-double v25, v25, v9

    const/4 v1, 0x1

    aput-wide v25, v0, v1

    neg-double v1, v5

    div-double/2addr v1, v9

    const/4 v3, 0x2

    aput-wide v1, v0, v3

    neg-double v1, v7

    div-double/2addr v1, v9

    const/4 v3, 0x3

    aput-wide v1, v0, v3

    const/4 v1, 0x4

    aput-wide v21, v0, v1

    const/4 v1, 0x5

    aput-wide v29, v0, v1

    const/4 v1, 0x6

    aput-wide v31, v0, v1

    const/4 v1, 0x7

    aput-wide v13, v0, v1

    const/16 v1, 0x8

    aput-wide v15, v0, v1

    const/16 v1, 0x9

    aput-wide v29, v0, v1

    const/16 v1, 0xa

    aput-wide v33, v0, v1

    const/16 v1, 0xb

    aput-wide v23, v0, v1

    const/16 v1, 0xc

    aput-wide v17, v0, v1

    const/16 v1, 0xd

    aput-wide v27, v0, v1

    const/16 v1, 0xe

    aput-wide v33, v0, v1

    return-object v0
.end method

.method public static calculateHpf7(D)[D
    .locals 39

    const/16 v0, 0x14

    new-array v0, v0, [D

    const-wide v1, 0x400921fb54442d18L    # Math.PI

    mul-double v1, v1, p0

    const-wide v3, 0x40e5888000000000L    # 44100.0

    div-double/2addr v1, v3

    .line 502
    invoke-static {v1, v2}, Ljava/lang/Math;->tan(D)D

    move-result-wide v1

    const-wide v3, 0x3fdcb91f3bbba140L    # 0.4487989505128276

    .line 503
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    mul-double/2addr v5, v7

    mul-double/2addr v5, v1

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    add-double/2addr v5, v9

    mul-double v11, v1, v1

    add-double/2addr v5, v11

    const-wide v13, 0x3fecb91f3bbba140L    # 0.8975979010256552

    .line 504
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double/2addr v15, v7

    mul-double/2addr v15, v1

    add-double/2addr v15, v9

    add-double/2addr v15, v11

    const-wide v17, 0x3ff58ad76cccb8f0L    # 1.3463968515384828

    .line 505
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->cos(D)D

    move-result-wide v19

    mul-double v19, v19, v7

    mul-double v19, v19, v1

    add-double v19, v19, v9

    add-double v19, v19, v11

    sub-double v21, v9, v1

    add-double v23, v1, v9

    div-double v21, v21, v23

    div-double v13, v9, v23

    neg-double v3, v13

    sub-double v25, v9, v11

    mul-double v25, v25, v7

    div-double v27, v25, v5

    const-wide v23, 0x3fdcb91f3bbba140L    # 0.4487989505128276

    .line 514
    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->cos(D)D

    move-result-wide v23

    mul-double v23, v23, v7

    mul-double v23, v23, v1

    sub-double v23, v23, v9

    sub-double v23, v23, v11

    mul-double v23, v23, v7

    mul-double v29, v5, v7

    div-double v23, v23, v29

    div-double v5, v9, v5

    const-wide/high16 v29, -0x4000000000000000L    # -2.0

    mul-double v31, v5, v29

    div-double v33, v25, v15

    const-wide v35, 0x3fecb91f3bbba140L    # 0.8975979010256552

    .line 520
    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->cos(D)D

    move-result-wide v35

    mul-double v35, v35, v7

    mul-double v35, v35, v1

    sub-double v35, v35, v9

    sub-double v35, v35, v11

    mul-double v35, v35, v7

    mul-double v37, v15, v7

    div-double v35, v35, v37

    div-double v15, v9, v15

    mul-double v37, v15, v29

    div-double v25, v25, v19

    .line 526
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    mul-double v17, v17, v7

    mul-double v17, v17, v1

    sub-double v17, v17, v9

    sub-double v17, v17, v11

    mul-double v17, v17, v7

    mul-double v7, v7, v19

    div-double v17, v17, v7

    div-double v9, v9, v19

    mul-double v29, v29, v9

    const/4 v1, 0x0

    const-wide/16 v7, 0x0

    aput-wide v7, v0, v1

    const/4 v1, 0x1

    aput-wide v3, v0, v1

    const/4 v1, 0x2

    aput-wide v7, v0, v1

    const/4 v1, 0x3

    aput-wide v21, v0, v1

    const/4 v1, 0x4

    aput-wide v13, v0, v1

    const/4 v1, 0x5

    aput-wide v5, v0, v1

    const/4 v1, 0x6

    aput-wide v31, v0, v1

    const/4 v1, 0x7

    aput-wide v23, v0, v1

    const/16 v1, 0x8

    aput-wide v27, v0, v1

    const/16 v1, 0x9

    aput-wide v5, v0, v1

    const/16 v1, 0xa

    aput-wide v15, v0, v1

    const/16 v1, 0xb

    aput-wide v37, v0, v1

    const/16 v1, 0xc

    aput-wide v35, v0, v1

    const/16 v1, 0xd

    aput-wide v33, v0, v1

    const/16 v1, 0xe

    aput-wide v15, v0, v1

    const/16 v1, 0xf

    aput-wide v9, v0, v1

    const/16 v1, 0x10

    aput-wide v29, v0, v1

    const/16 v1, 0x11

    aput-wide v17, v0, v1

    const/16 v1, 0x12

    aput-wide v25, v0, v1

    const/16 v1, 0x13

    aput-wide v9, v0, v1

    return-object v0
.end method

.method public static calculateHpf8(D)[D
    .locals 43

    const/16 v0, 0x14

    new-array v0, v0, [D

    .line 556
    invoke-static/range {p0 .. p1}, Lcom/hzbhd/midwareproxy/dsp/DspIIRUtil;->w(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    invoke-static/range {p0 .. p1}, Lcom/hzbhd/midwareproxy/dsp/DspIIRUtil;->w(D)D

    move-result-wide v5

    div-double/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    div-double/2addr v1, v5

    const-wide v5, 0x3fc921fb54442d18L    # 0.19634954084936207

    .line 557
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v7, v3

    mul-double/2addr v7, v1

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    add-double/2addr v7, v9

    mul-double v11, v1, v1

    add-double/2addr v7, v11

    const-wide v13, 0x3fe2d97c7f3321d2L    # 0.5890486225480862

    .line 558
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double/2addr v15, v3

    mul-double/2addr v15, v1

    add-double/2addr v15, v9

    add-double/2addr v15, v11

    const-wide v17, 0x3fef6a7a2955385eL    # 0.9817477042468103

    .line 559
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->cos(D)D

    move-result-wide v19

    mul-double v19, v19, v3

    mul-double v19, v19, v1

    add-double v19, v19, v9

    add-double v19, v19, v11

    const-wide v21, 0x3ff5fdbbe9bba775L    # 1.3744467859455345

    .line 560
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->cos(D)D

    move-result-wide v23

    mul-double v23, v23, v3

    mul-double v23, v23, v1

    add-double v23, v23, v9

    add-double v23, v23, v11

    div-double v25, v9, v7

    const-wide/high16 v27, -0x4000000000000000L    # -2.0

    div-double v29, v27, v7

    .line 563
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v5, v3

    mul-double/2addr v5, v1

    sub-double/2addr v5, v9

    sub-double/2addr v5, v11

    neg-double v5, v5

    div-double/2addr v5, v7

    sub-double v31, v9, v11

    mul-double v33, v31, v27

    div-double v7, v33, v7

    div-double v33, v9, v15

    div-double v35, v27, v15

    .line 568
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double/2addr v13, v3

    mul-double/2addr v13, v1

    sub-double/2addr v13, v9

    sub-double/2addr v13, v11

    div-double/2addr v13, v15

    mul-double v31, v31, v3

    div-double v15, v31, v15

    div-double v37, v9, v19

    div-double v39, v27, v19

    .line 573
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    mul-double v17, v17, v3

    mul-double v17, v17, v1

    sub-double v17, v17, v9

    sub-double v17, v17, v11

    div-double v17, v17, v19

    div-double v19, v31, v19

    div-double v41, v9, v23

    div-double v27, v27, v23

    .line 578
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->cos(D)D

    move-result-wide v21

    mul-double v21, v21, v3

    mul-double v21, v21, v1

    sub-double v21, v21, v9

    sub-double v21, v21, v11

    div-double v21, v21, v23

    div-double v31, v31, v23

    div-double v25, v25, v9

    const/4 v1, 0x0

    aput-wide v25, v0, v1

    div-double v29, v29, v9

    const/4 v1, 0x1

    aput-wide v29, v0, v1

    neg-double v1, v5

    div-double/2addr v1, v9

    const/4 v3, 0x2

    aput-wide v1, v0, v3

    neg-double v1, v7

    div-double/2addr v1, v9

    const/4 v3, 0x3

    aput-wide v1, v0, v3

    const/4 v1, 0x4

    aput-wide v25, v0, v1

    const/4 v1, 0x5

    aput-wide v33, v0, v1

    const/4 v1, 0x6

    aput-wide v35, v0, v1

    const/4 v1, 0x7

    aput-wide v13, v0, v1

    const/16 v1, 0x8

    aput-wide v15, v0, v1

    const/16 v1, 0x9

    aput-wide v33, v0, v1

    const/16 v1, 0xa

    aput-wide v37, v0, v1

    const/16 v1, 0xb

    aput-wide v39, v0, v1

    const/16 v1, 0xc

    aput-wide v17, v0, v1

    const/16 v1, 0xd

    aput-wide v19, v0, v1

    const/16 v1, 0xe

    aput-wide v37, v0, v1

    const/16 v1, 0xf

    aput-wide v41, v0, v1

    const/16 v1, 0x10

    aput-wide v27, v0, v1

    const/16 v1, 0x11

    aput-wide v21, v0, v1

    const/16 v1, 0x12

    aput-wide v31, v0, v1

    const/16 v1, 0x13

    aput-wide v41, v0, v1

    return-object v0
.end method

.method public static calculateLpf1(D)[D
    .locals 13

    const/4 v0, 0x5

    new-array v0, v0, [D

    .line 35
    invoke-static {p0, p1}, Lcom/hzbhd/midwareproxy/dsp/DspIIRUtil;->sn(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    add-double/2addr v1, v3

    invoke-static {p0, p1}, Lcom/hzbhd/midwareproxy/dsp/DspIIRUtil;->cs(D)D

    move-result-wide v5

    sub-double/2addr v1, v5

    invoke-static {p0, p1}, Lcom/hzbhd/midwareproxy/dsp/DspIIRUtil;->sn(D)D

    move-result-wide v5

    add-double/2addr v5, v3

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    mul-double/2addr v5, v7

    div-double/2addr v1, v5

    .line 37
    invoke-static {p0, p1}, Lcom/hzbhd/midwareproxy/dsp/DspIIRUtil;->cs(D)D

    move-result-wide v5

    invoke-static {p0, p1}, Lcom/hzbhd/midwareproxy/dsp/DspIIRUtil;->sn(D)D

    move-result-wide v9

    add-double/2addr v9, v3

    div-double/2addr v5, v9

    .line 38
    invoke-static {p0, p1}, Lcom/hzbhd/midwareproxy/dsp/DspIIRUtil;->sn(D)D

    move-result-wide v9

    add-double/2addr v9, v3

    invoke-static {p0, p1}, Lcom/hzbhd/midwareproxy/dsp/DspIIRUtil;->cs(D)D

    move-result-wide v11

    sub-double/2addr v9, v11

    invoke-static {p0, p1}, Lcom/hzbhd/midwareproxy/dsp/DspIIRUtil;->sn(D)D

    move-result-wide p0

    add-double/2addr p0, v3

    mul-double/2addr p0, v7

    div-double/2addr v9, p0

    const/4 p0, 0x0

    const-wide/16 v3, 0x0

    aput-wide v3, v0, p0

    const/4 p0, 0x1

    aput-wide v1, v0, p0

    const/4 p0, 0x2

    aput-wide v3, v0, p0

    const/4 p0, 0x3

    aput-wide v5, v0, p0

    const/4 p0, 0x4

    aput-wide v9, v0, p0

    return-object v0
.end method

.method public static calculateLpf2(DD)[D
    .locals 17

    const/4 v0, 0x5

    new-array v0, v0, [D

    .line 52
    invoke-static/range {p0 .. p3}, Lcom/hzbhd/midwareproxy/dsp/DspIIRUtil;->alpha(DD)D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    add-double/2addr v1, v3

    .line 53
    invoke-static/range {p0 .. p1}, Lcom/hzbhd/midwareproxy/dsp/DspIIRUtil;->cs(D)D

    move-result-wide v5

    sub-double v5, v3, v5

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    div-double/2addr v5, v7

    div-double/2addr v5, v1

    .line 54
    invoke-static/range {p0 .. p1}, Lcom/hzbhd/midwareproxy/dsp/DspIIRUtil;->cs(D)D

    move-result-wide v9

    sub-double v9, v3, v9

    div-double/2addr v9, v1

    .line 55
    invoke-static/range {p0 .. p3}, Lcom/hzbhd/midwareproxy/dsp/DspIIRUtil;->alpha(DD)D

    move-result-wide v11

    sub-double v11, v3, v11

    neg-double v11, v11

    div-double/2addr v11, v1

    .line 56
    invoke-static/range {p0 .. p1}, Lcom/hzbhd/midwareproxy/dsp/DspIIRUtil;->cs(D)D

    move-result-wide v13

    mul-double/2addr v13, v7

    div-double/2addr v13, v1

    .line 57
    invoke-static/range {p0 .. p1}, Lcom/hzbhd/midwareproxy/dsp/DspIIRUtil;->cs(D)D

    move-result-wide v15

    sub-double/2addr v3, v15

    div-double/2addr v3, v7

    div-double/2addr v3, v1

    const/4 v1, 0x0

    aput-wide v5, v0, v1

    const/4 v1, 0x1

    aput-wide v9, v0, v1

    const/4 v1, 0x2

    aput-wide v11, v0, v1

    const/4 v1, 0x3

    aput-wide v13, v0, v1

    const/4 v1, 0x4

    aput-wide v3, v0, v1

    return-object v0
.end method

.method public static calculateLpf3(D)[D
    .locals 17

    const/16 v0, 0xa

    new-array v0, v0, [D

    const-wide v1, 0x400921fb54442d18L    # Math.PI

    mul-double v1, v1, p0

    const-wide v3, 0x40e5888000000000L    # 44100.0

    div-double/2addr v1, v3

    .line 72
    invoke-static {v1, v2}, Ljava/lang/Math;->tan(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    add-double v5, v1, v3

    mul-double v7, v1, v1

    add-double v9, v5, v7

    sub-double v11, v3, v1

    div-double/2addr v11, v5

    div-double v5, v1, v5

    sub-double v13, v3, v7

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    mul-double/2addr v13, v15

    div-double/2addr v13, v9

    sub-double v7, v1, v7

    sub-double/2addr v7, v3

    mul-double/2addr v7, v15

    mul-double/2addr v9, v15

    div-double/2addr v7, v9

    mul-double v3, v1, v15

    mul-double/2addr v3, v1

    div-double/2addr v3, v9

    mul-double/2addr v15, v3

    const/4 v1, 0x0

    const-wide/16 v9, 0x0

    aput-wide v9, v0, v1

    const/4 v1, 0x1

    aput-wide v5, v0, v1

    const/4 v1, 0x2

    aput-wide v9, v0, v1

    const/4 v1, 0x3

    aput-wide v11, v0, v1

    const/4 v1, 0x4

    aput-wide v5, v0, v1

    const/4 v1, 0x5

    aput-wide v3, v0, v1

    const/4 v1, 0x6

    aput-wide v15, v0, v1

    const/4 v1, 0x7

    aput-wide v7, v0, v1

    const/16 v1, 0x8

    aput-wide v13, v0, v1

    const/16 v1, 0x9

    aput-wide v3, v0, v1

    return-object v0
.end method

.method public static calculateLpf4(D)[D
    .locals 27

    const/16 v0, 0xa

    new-array v0, v0, [D

    .line 106
    invoke-static/range {p0 .. p1}, Lcom/hzbhd/midwareproxy/dsp/DspIIRUtil;->w(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    invoke-static/range {p0 .. p1}, Lcom/hzbhd/midwareproxy/dsp/DspIIRUtil;->w(D)D

    move-result-wide v5

    div-double/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    div-double/2addr v1, v5

    const-wide v5, 0x3fd921fb54442d18L    # 0.39269908169872414

    .line 107
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v7, v3

    mul-double/2addr v7, v1

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    add-double/2addr v7, v9

    mul-double v11, v1, v1

    add-double/2addr v7, v11

    const-wide v13, 0x3ff2d97c7f3321d2L    # 1.1780972450961724

    .line 108
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double/2addr v15, v3

    mul-double/2addr v15, v1

    add-double/2addr v15, v9

    add-double/2addr v15, v11

    div-double v17, v11, v7

    mul-double v19, v1, v3

    mul-double v19, v19, v1

    div-double v21, v19, v7

    .line 111
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v5, v3

    mul-double/2addr v5, v1

    sub-double/2addr v5, v9

    sub-double/2addr v5, v11

    neg-double v5, v5

    div-double/2addr v5, v7

    sub-double v23, v9, v11

    const-wide/high16 v25, -0x4000000000000000L    # -2.0

    mul-double v25, v25, v23

    div-double v7, v25, v7

    div-double v25, v11, v15

    div-double v19, v19, v15

    .line 116
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double/2addr v13, v3

    mul-double/2addr v13, v1

    sub-double/2addr v13, v9

    sub-double/2addr v13, v11

    div-double/2addr v13, v15

    mul-double v23, v23, v3

    div-double v23, v23, v15

    div-double v17, v17, v9

    const/4 v1, 0x0

    aput-wide v17, v0, v1

    div-double v21, v21, v9

    const/4 v1, 0x1

    aput-wide v21, v0, v1

    neg-double v1, v5

    div-double/2addr v1, v9

    const/4 v3, 0x2

    aput-wide v1, v0, v3

    neg-double v1, v7

    div-double/2addr v1, v9

    const/4 v3, 0x3

    aput-wide v1, v0, v3

    const/4 v1, 0x4

    aput-wide v17, v0, v1

    const/4 v1, 0x5

    aput-wide v25, v0, v1

    const/4 v1, 0x6

    aput-wide v19, v0, v1

    const/4 v1, 0x7

    aput-wide v13, v0, v1

    const/16 v1, 0x8

    aput-wide v23, v0, v1

    const/16 v1, 0x9

    aput-wide v25, v0, v1

    return-object v0
.end method

.method public static calculateLpf5(D)[D
    .locals 29

    const/16 v0, 0xf

    new-array v0, v0, [D

    const-wide v1, 0x400921fb54442d18L    # Math.PI

    mul-double v1, v1, p0

    const-wide v3, 0x40e5888000000000L    # 44100.0

    div-double/2addr v1, v3

    .line 137
    invoke-static {v1, v2}, Ljava/lang/Math;->tan(D)D

    move-result-wide v1

    const-wide v3, 0x3fe41b2f769cf0e0L    # 0.6283185307179586

    .line 138
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    mul-double/2addr v5, v7

    mul-double/2addr v5, v1

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    add-double/2addr v5, v9

    mul-double v11, v1, v1

    add-double/2addr v5, v11

    const-wide v13, 0x3ff41b2f769cf0e0L    # 1.2566370614359172

    .line 139
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double/2addr v15, v7

    mul-double/2addr v15, v1

    add-double/2addr v15, v9

    add-double/2addr v15, v11

    sub-double v17, v9, v1

    add-double v19, v1, v9

    div-double v17, v17, v19

    div-double v19, v1, v19

    sub-double v21, v9, v11

    mul-double v21, v21, v7

    div-double v23, v21, v5

    .line 148
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double/2addr v3, v7

    mul-double/2addr v3, v1

    sub-double/2addr v3, v9

    sub-double/2addr v3, v11

    mul-double/2addr v3, v7

    mul-double/2addr v5, v7

    div-double/2addr v3, v5

    mul-double v25, v1, v7

    mul-double v25, v25, v1

    div-double v5, v25, v5

    mul-double v27, v5, v7

    div-double v21, v21, v15

    .line 154
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double/2addr v13, v7

    mul-double/2addr v13, v1

    sub-double/2addr v13, v9

    sub-double/2addr v13, v11

    mul-double/2addr v13, v7

    mul-double/2addr v15, v7

    div-double/2addr v13, v15

    div-double v25, v25, v15

    mul-double v7, v7, v25

    const/4 v1, 0x0

    const-wide/16 v9, 0x0

    aput-wide v9, v0, v1

    const/4 v1, 0x1

    aput-wide v19, v0, v1

    const/4 v1, 0x2

    aput-wide v9, v0, v1

    const/4 v1, 0x3

    aput-wide v17, v0, v1

    const/4 v1, 0x4

    aput-wide v19, v0, v1

    const/4 v1, 0x5

    aput-wide v5, v0, v1

    const/4 v1, 0x6

    aput-wide v27, v0, v1

    const/4 v1, 0x7

    aput-wide v3, v0, v1

    const/16 v1, 0x8

    aput-wide v23, v0, v1

    const/16 v1, 0x9

    aput-wide v5, v0, v1

    const/16 v1, 0xa

    aput-wide v25, v0, v1

    const/16 v1, 0xb

    aput-wide v7, v0, v1

    const/16 v1, 0xc

    aput-wide v13, v0, v1

    const/16 v1, 0xd

    aput-wide v21, v0, v1

    const/16 v1, 0xe

    aput-wide v25, v0, v1

    return-object v0
.end method

.method public static calculateLpf6(D)[D
    .locals 35

    const/16 v0, 0xf

    new-array v0, v0, [D

    .line 182
    invoke-static/range {p0 .. p1}, Lcom/hzbhd/midwareproxy/dsp/DspIIRUtil;->w(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    invoke-static/range {p0 .. p1}, Lcom/hzbhd/midwareproxy/dsp/DspIIRUtil;->w(D)D

    move-result-wide v5

    div-double/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    div-double/2addr v1, v5

    const-wide v5, 0x3fd0c152382d7365L    # 0.2617993877991494

    .line 183
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v7, v3

    mul-double/2addr v7, v1

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    add-double/2addr v7, v9

    mul-double v11, v1, v1

    add-double/2addr v7, v11

    const-wide v13, 0x3fe921fb54442d18L    # 0.7853981633974483

    .line 184
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double/2addr v15, v3

    mul-double/2addr v15, v1

    add-double/2addr v15, v9

    add-double/2addr v15, v11

    const-wide v17, 0x3ff4f1a6c638d03fL    # 1.3089969389957472

    .line 185
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->cos(D)D

    move-result-wide v19

    mul-double v19, v19, v3

    mul-double v19, v19, v1

    add-double v19, v19, v9

    add-double v19, v19, v11

    div-double v21, v11, v7

    mul-double v23, v1, v3

    mul-double v23, v23, v1

    div-double v25, v23, v7

    .line 188
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v5, v3

    mul-double/2addr v5, v1

    sub-double/2addr v5, v9

    sub-double/2addr v5, v11

    neg-double v5, v5

    div-double/2addr v5, v7

    sub-double v27, v9, v11

    const-wide/high16 v29, -0x4000000000000000L    # -2.0

    mul-double v29, v29, v27

    div-double v7, v29, v7

    div-double v29, v11, v15

    div-double v31, v23, v15

    .line 193
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double/2addr v13, v3

    mul-double/2addr v13, v1

    sub-double/2addr v13, v9

    sub-double/2addr v13, v11

    div-double/2addr v13, v15

    mul-double v27, v27, v3

    div-double v15, v27, v15

    div-double v33, v11, v19

    div-double v23, v23, v19

    .line 198
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    mul-double v17, v17, v3

    mul-double v17, v17, v1

    sub-double v17, v17, v9

    sub-double v17, v17, v11

    div-double v17, v17, v19

    div-double v27, v27, v19

    div-double v21, v21, v9

    const/4 v1, 0x0

    aput-wide v21, v0, v1

    div-double v25, v25, v9

    const/4 v1, 0x1

    aput-wide v25, v0, v1

    neg-double v1, v5

    div-double/2addr v1, v9

    const/4 v3, 0x2

    aput-wide v1, v0, v3

    neg-double v1, v7

    div-double/2addr v1, v9

    const/4 v3, 0x3

    aput-wide v1, v0, v3

    const/4 v1, 0x4

    aput-wide v21, v0, v1

    const/4 v1, 0x5

    aput-wide v29, v0, v1

    const/4 v1, 0x6

    aput-wide v31, v0, v1

    const/4 v1, 0x7

    aput-wide v13, v0, v1

    const/16 v1, 0x8

    aput-wide v15, v0, v1

    const/16 v1, 0x9

    aput-wide v29, v0, v1

    const/16 v1, 0xa

    aput-wide v33, v0, v1

    const/16 v1, 0xb

    aput-wide v23, v0, v1

    const/16 v1, 0xc

    aput-wide v17, v0, v1

    const/16 v1, 0xd

    aput-wide v27, v0, v1

    const/16 v1, 0xe

    aput-wide v33, v0, v1

    return-object v0
.end method

.method public static calculateLpf7(D)[D
    .locals 37

    const/16 v0, 0x14

    new-array v0, v0, [D

    const-wide v1, 0x400921fb54442d18L    # Math.PI

    mul-double v1, v1, p0

    const-wide v3, 0x40e5888000000000L    # 44100.0

    div-double/2addr v1, v3

    .line 224
    invoke-static {v1, v2}, Ljava/lang/Math;->tan(D)D

    move-result-wide v1

    const-wide v3, 0x3fdcb91f3bbba140L    # 0.4487989505128276

    .line 225
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    mul-double/2addr v5, v7

    mul-double/2addr v5, v1

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    add-double/2addr v5, v9

    mul-double v11, v1, v1

    add-double/2addr v5, v11

    const-wide v13, 0x3fecb91f3bbba140L    # 0.8975979010256552

    .line 226
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double/2addr v15, v7

    mul-double/2addr v15, v1

    add-double/2addr v15, v9

    add-double/2addr v15, v11

    const-wide v17, 0x3ff58ad76cccb8f0L    # 1.3463968515384828

    .line 227
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->cos(D)D

    move-result-wide v19

    mul-double v19, v19, v7

    mul-double v19, v19, v1

    add-double v19, v19, v9

    add-double v19, v19, v11

    sub-double v21, v9, v1

    add-double v23, v1, v9

    div-double v21, v21, v23

    div-double v23, v1, v23

    sub-double v25, v9, v11

    mul-double v25, v25, v7

    div-double v27, v25, v5

    .line 236
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double/2addr v3, v7

    mul-double/2addr v3, v1

    sub-double/2addr v3, v9

    sub-double/2addr v3, v11

    mul-double/2addr v3, v7

    mul-double/2addr v5, v7

    div-double/2addr v3, v5

    mul-double v29, v1, v7

    mul-double v29, v29, v1

    div-double v5, v29, v5

    mul-double v31, v5, v7

    div-double v33, v25, v15

    .line 242
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double/2addr v13, v7

    mul-double/2addr v13, v1

    sub-double/2addr v13, v9

    sub-double/2addr v13, v11

    mul-double/2addr v13, v7

    mul-double/2addr v15, v7

    div-double/2addr v13, v15

    div-double v15, v29, v15

    mul-double v35, v15, v7

    div-double v25, v25, v19

    .line 248
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    mul-double v17, v17, v7

    mul-double v17, v17, v1

    sub-double v17, v17, v9

    sub-double v17, v17, v11

    mul-double v17, v17, v7

    mul-double v19, v19, v7

    div-double v17, v17, v19

    div-double v29, v29, v19

    mul-double v7, v7, v29

    const/4 v1, 0x0

    const-wide/16 v9, 0x0

    aput-wide v9, v0, v1

    const/4 v1, 0x1

    aput-wide v23, v0, v1

    const/4 v1, 0x2

    aput-wide v9, v0, v1

    const/4 v1, 0x3

    aput-wide v21, v0, v1

    const/4 v1, 0x4

    aput-wide v23, v0, v1

    const/4 v1, 0x5

    aput-wide v5, v0, v1

    const/4 v1, 0x6

    aput-wide v31, v0, v1

    const/4 v1, 0x7

    aput-wide v3, v0, v1

    const/16 v1, 0x8

    aput-wide v27, v0, v1

    const/16 v1, 0x9

    aput-wide v5, v0, v1

    const/16 v1, 0xa

    aput-wide v15, v0, v1

    const/16 v1, 0xb

    aput-wide v35, v0, v1

    const/16 v1, 0xc

    aput-wide v13, v0, v1

    const/16 v1, 0xd

    aput-wide v33, v0, v1

    const/16 v1, 0xe

    aput-wide v15, v0, v1

    const/16 v1, 0xf

    aput-wide v29, v0, v1

    const/16 v1, 0x10

    aput-wide v7, v0, v1

    const/16 v1, 0x11

    aput-wide v17, v0, v1

    const/16 v1, 0x12

    aput-wide v25, v0, v1

    const/16 v1, 0x13

    aput-wide v29, v0, v1

    return-object v0
.end method

.method public static calculateLpf8(D)[D
    .locals 43

    const/16 v0, 0x14

    new-array v0, v0, [D

    .line 282
    invoke-static/range {p0 .. p1}, Lcom/hzbhd/midwareproxy/dsp/DspIIRUtil;->w(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    invoke-static/range {p0 .. p1}, Lcom/hzbhd/midwareproxy/dsp/DspIIRUtil;->w(D)D

    move-result-wide v5

    div-double/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    div-double/2addr v1, v5

    const-wide v5, 0x3fc921fb54442d18L    # 0.19634954084936207

    .line 283
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v7, v3

    mul-double/2addr v7, v1

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    add-double/2addr v7, v9

    mul-double v11, v1, v1

    add-double/2addr v7, v11

    const-wide v13, 0x3fe2d97c7f3321d2L    # 0.5890486225480862

    .line 284
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double/2addr v15, v3

    mul-double/2addr v15, v1

    add-double/2addr v15, v9

    add-double/2addr v15, v11

    const-wide v17, 0x3fef6a7a2955385eL    # 0.9817477042468103

    .line 285
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->cos(D)D

    move-result-wide v19

    mul-double v19, v19, v3

    mul-double v19, v19, v1

    add-double v19, v19, v9

    add-double v19, v19, v11

    const-wide v21, 0x3ff5fdbbe9bba775L    # 1.3744467859455345

    .line 286
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->cos(D)D

    move-result-wide v23

    mul-double v23, v23, v3

    mul-double v23, v23, v1

    add-double v23, v23, v9

    add-double v23, v23, v11

    div-double v25, v11, v7

    mul-double v27, v1, v3

    mul-double v27, v27, v1

    div-double v29, v27, v7

    .line 289
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v5, v3

    mul-double/2addr v5, v1

    sub-double/2addr v5, v9

    sub-double/2addr v5, v11

    neg-double v5, v5

    div-double/2addr v5, v7

    sub-double v31, v9, v11

    const-wide/high16 v33, -0x4000000000000000L    # -2.0

    mul-double v33, v33, v31

    div-double v7, v33, v7

    div-double v33, v11, v15

    div-double v35, v27, v15

    .line 294
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double/2addr v13, v3

    mul-double/2addr v13, v1

    sub-double/2addr v13, v9

    sub-double/2addr v13, v11

    div-double/2addr v13, v15

    mul-double v31, v31, v3

    div-double v15, v31, v15

    div-double v37, v11, v19

    div-double v39, v27, v19

    .line 299
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    mul-double v17, v17, v3

    mul-double v17, v17, v1

    sub-double v17, v17, v9

    sub-double v17, v17, v11

    div-double v17, v17, v19

    div-double v19, v31, v19

    div-double v41, v11, v23

    div-double v27, v27, v23

    .line 304
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->cos(D)D

    move-result-wide v21

    mul-double v21, v21, v3

    mul-double v21, v21, v1

    sub-double v21, v21, v9

    sub-double v21, v21, v11

    div-double v21, v21, v23

    div-double v31, v31, v23

    div-double v25, v25, v9

    const/4 v1, 0x0

    aput-wide v25, v0, v1

    div-double v29, v29, v9

    const/4 v1, 0x1

    aput-wide v29, v0, v1

    neg-double v1, v5

    div-double/2addr v1, v9

    const/4 v3, 0x2

    aput-wide v1, v0, v3

    neg-double v1, v7

    div-double/2addr v1, v9

    const/4 v3, 0x3

    aput-wide v1, v0, v3

    const/4 v1, 0x4

    aput-wide v25, v0, v1

    const/4 v1, 0x5

    aput-wide v33, v0, v1

    const/4 v1, 0x6

    aput-wide v35, v0, v1

    const/4 v1, 0x7

    aput-wide v13, v0, v1

    const/16 v1, 0x8

    aput-wide v15, v0, v1

    const/16 v1, 0x9

    aput-wide v33, v0, v1

    const/16 v1, 0xa

    aput-wide v37, v0, v1

    const/16 v1, 0xb

    aput-wide v39, v0, v1

    const/16 v1, 0xc

    aput-wide v17, v0, v1

    const/16 v1, 0xd

    aput-wide v19, v0, v1

    const/16 v1, 0xe

    aput-wide v37, v0, v1

    const/16 v1, 0xf

    aput-wide v41, v0, v1

    const/16 v1, 0x10

    aput-wide v27, v0, v1

    const/16 v1, 0x11

    aput-wide v21, v0, v1

    const/16 v1, 0x12

    aput-wide v31, v0, v1

    const/16 v1, 0x13

    aput-wide v41, v0, v1

    return-object v0
.end method

.method public static cs(D)D
    .locals 0

    .line 26
    invoke-static {p0, p1}, Lcom/hzbhd/midwareproxy/dsp/DspIIRUtil;->w(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static sn(D)D
    .locals 0

    .line 18
    invoke-static {p0, p1}, Lcom/hzbhd/midwareproxy/dsp/DspIIRUtil;->w(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static w(D)D
    .locals 2

    const-wide v0, 0x401921fb54442d18L    # 6.283185307179586

    mul-double/2addr p0, v0

    const-wide v0, 0x40e5888000000000L    # 44100.0

    div-double/2addr p0, v0

    return-wide p0
.end method
