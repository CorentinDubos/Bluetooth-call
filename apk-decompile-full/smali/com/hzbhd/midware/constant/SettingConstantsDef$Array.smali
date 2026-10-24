.class public final Lcom/hzbhd/midware/constant/SettingConstantsDef$Array;
.super Ljava/lang/Object;
.source "SettingConstantsDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midware/constant/SettingConstantsDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Array"
.end annotation


# static fields
.field public static Balance_au4TrimValue:[I = null

.field public static LoudNess_gLoudNessGain:[[I = null

.field public static MTKSettings:Ljava/lang/String; = "com.android.settings_preferences"

.field public static ReverbCoef_arena:[I

.field public static ReverbCoef_bathroom:[I

.field public static ReverbCoef_cave:[I

.field public static ReverbCoef_concert:[I

.field public static ReverbCoef_hall:[I

.field public static ReverbCoef_live:[I

.field public static ReverbCoef_off:[I

.field public static gEQTypeGain_classic:[I

.field public static gEQTypeGain_dance:[I

.field public static gEQTypeGain_live:[I

.field public static gEQTypeGain_off:[I

.field public static gEQTypeGain_pop:[I

.field public static gEQTypeGain_rock:[I

.field public static gEQTypeGain_soft:[I

.field public static gEQTypePos:[[I

.field public static g_dryValues:[I

.field public static g_ganValues:[I

.field public static g_volume_values:[I

.field public static rUpmixGain_0:[I

.field public static rUpmixGain_1:[I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/16 v0, 0x29

    new-array v1, v0, [I

    .line 557
    fill-array-data v1, :array_0

    sput-object v1, Lcom/hzbhd/midware/constant/SettingConstantsDef$Array;->g_volume_values:[I

    const/16 v1, 0x1d

    new-array v2, v1, [I

    .line 562
    fill-array-data v2, :array_1

    sput-object v2, Lcom/hzbhd/midware/constant/SettingConstantsDef$Array;->g_ganValues:[I

    new-array v1, v1, [I

    .line 570
    fill-array-data v1, :array_2

    sput-object v1, Lcom/hzbhd/midware/constant/SettingConstantsDef$Array;->g_dryValues:[I

    const/16 v1, 0x8

    new-array v2, v1, [[I

    const/16 v3, 0xb

    new-array v4, v3, [I

    .line 578
    fill-array-data v4, :array_3

    const/4 v5, 0x0

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_4

    const/4 v6, 0x1

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_5

    const/4 v7, 0x2

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_6

    const/4 v8, 0x3

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_7

    const/4 v9, 0x4

    aput-object v4, v2, v9

    new-array v4, v3, [I

    fill-array-data v4, :array_8

    const/4 v10, 0x5

    aput-object v4, v2, v10

    new-array v4, v3, [I

    fill-array-data v4, :array_9

    const/4 v11, 0x6

    aput-object v4, v2, v11

    new-array v4, v3, [I

    fill-array-data v4, :array_a

    const/4 v12, 0x7

    aput-object v4, v2, v12

    sput-object v2, Lcom/hzbhd/midware/constant/SettingConstantsDef$Array;->gEQTypePos:[[I

    new-array v0, v0, [I

    .line 596
    fill-array-data v0, :array_b

    sput-object v0, Lcom/hzbhd/midware/constant/SettingConstantsDef$Array;->Balance_au4TrimValue:[I

    const/16 v0, 0x14

    new-array v0, v0, [[I

    new-array v2, v11, [I

    .line 614
    fill-array-data v2, :array_c

    aput-object v2, v0, v5

    new-array v2, v11, [I

    fill-array-data v2, :array_d

    aput-object v2, v0, v6

    new-array v2, v11, [I

    fill-array-data v2, :array_e

    aput-object v2, v0, v7

    new-array v2, v11, [I

    fill-array-data v2, :array_f

    aput-object v2, v0, v8

    new-array v2, v11, [I

    fill-array-data v2, :array_10

    aput-object v2, v0, v9

    new-array v2, v11, [I

    fill-array-data v2, :array_11

    aput-object v2, v0, v10

    new-array v2, v11, [I

    fill-array-data v2, :array_12

    aput-object v2, v0, v11

    new-array v2, v11, [I

    fill-array-data v2, :array_13

    aput-object v2, v0, v12

    new-array v2, v11, [I

    fill-array-data v2, :array_14

    aput-object v2, v0, v1

    new-array v2, v11, [I

    fill-array-data v2, :array_15

    const/16 v4, 0x9

    aput-object v2, v0, v4

    new-array v2, v11, [I

    fill-array-data v2, :array_16

    const/16 v4, 0xa

    aput-object v2, v0, v4

    new-array v2, v11, [I

    fill-array-data v2, :array_17

    aput-object v2, v0, v3

    new-array v2, v11, [I

    fill-array-data v2, :array_18

    const/16 v4, 0xc

    aput-object v2, v0, v4

    new-array v2, v11, [I

    fill-array-data v2, :array_19

    const/16 v4, 0xd

    aput-object v2, v0, v4

    new-array v2, v11, [I

    fill-array-data v2, :array_1a

    const/16 v4, 0xe

    aput-object v2, v0, v4

    new-array v2, v11, [I

    fill-array-data v2, :array_1b

    const/16 v5, 0xf

    aput-object v2, v0, v5

    new-array v2, v11, [I

    fill-array-data v2, :array_1c

    const/16 v5, 0x10

    aput-object v2, v0, v5

    new-array v2, v11, [I

    fill-array-data v2, :array_1d

    const/16 v5, 0x11

    aput-object v2, v0, v5

    new-array v2, v11, [I

    fill-array-data v2, :array_1e

    const/16 v5, 0x12

    aput-object v2, v0, v5

    new-array v2, v11, [I

    fill-array-data v2, :array_1f

    const/16 v5, 0x13

    aput-object v2, v0, v5

    sput-object v0, Lcom/hzbhd/midware/constant/SettingConstantsDef$Array;->LoudNess_gLoudNessGain:[[I

    new-array v0, v4, [I

    .line 655
    fill-array-data v0, :array_20

    sput-object v0, Lcom/hzbhd/midware/constant/SettingConstantsDef$Array;->ReverbCoef_live:[I

    new-array v0, v4, [I

    .line 657
    fill-array-data v0, :array_21

    sput-object v0, Lcom/hzbhd/midware/constant/SettingConstantsDef$Array;->ReverbCoef_hall:[I

    new-array v0, v4, [I

    .line 659
    fill-array-data v0, :array_22

    sput-object v0, Lcom/hzbhd/midware/constant/SettingConstantsDef$Array;->ReverbCoef_concert:[I

    new-array v0, v4, [I

    .line 661
    fill-array-data v0, :array_23

    sput-object v0, Lcom/hzbhd/midware/constant/SettingConstantsDef$Array;->ReverbCoef_cave:[I

    new-array v0, v4, [I

    .line 663
    fill-array-data v0, :array_24

    sput-object v0, Lcom/hzbhd/midware/constant/SettingConstantsDef$Array;->ReverbCoef_bathroom:[I

    new-array v0, v4, [I

    .line 665
    fill-array-data v0, :array_25

    sput-object v0, Lcom/hzbhd/midware/constant/SettingConstantsDef$Array;->ReverbCoef_arena:[I

    new-array v0, v4, [I

    .line 667
    fill-array-data v0, :array_26

    sput-object v0, Lcom/hzbhd/midware/constant/SettingConstantsDef$Array;->ReverbCoef_off:[I

    new-array v0, v1, [I

    .line 669
    fill-array-data v0, :array_27

    sput-object v0, Lcom/hzbhd/midware/constant/SettingConstantsDef$Array;->rUpmixGain_0:[I

    new-array v0, v1, [I

    .line 671
    fill-array-data v0, :array_28

    sput-object v0, Lcom/hzbhd/midware/constant/SettingConstantsDef$Array;->rUpmixGain_1:[I

    new-array v0, v3, [I

    .line 673
    fill-array-data v0, :array_29

    sput-object v0, Lcom/hzbhd/midware/constant/SettingConstantsDef$Array;->gEQTypeGain_off:[I

    new-array v0, v3, [I

    .line 676
    fill-array-data v0, :array_2a

    sput-object v0, Lcom/hzbhd/midware/constant/SettingConstantsDef$Array;->gEQTypeGain_rock:[I

    new-array v0, v3, [I

    .line 679
    fill-array-data v0, :array_2b

    sput-object v0, Lcom/hzbhd/midware/constant/SettingConstantsDef$Array;->gEQTypeGain_pop:[I

    new-array v0, v3, [I

    .line 682
    fill-array-data v0, :array_2c

    sput-object v0, Lcom/hzbhd/midware/constant/SettingConstantsDef$Array;->gEQTypeGain_live:[I

    new-array v0, v3, [I

    .line 685
    fill-array-data v0, :array_2d

    sput-object v0, Lcom/hzbhd/midware/constant/SettingConstantsDef$Array;->gEQTypeGain_dance:[I

    new-array v0, v3, [I

    .line 688
    fill-array-data v0, :array_2e

    sput-object v0, Lcom/hzbhd/midware/constant/SettingConstantsDef$Array;->gEQTypeGain_classic:[I

    new-array v0, v3, [I

    .line 691
    fill-array-data v0, :array_2f

    sput-object v0, Lcom/hzbhd/midware/constant/SettingConstantsDef$Array;->gEQTypeGain_soft:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x5
        0x1e
        0x3c
        0x5a
        0x78
        0xa0
        0xc8
        0xf0
        0x12c
        0x190
        0x1f4
        0x258
        0x320
        0x3e8
        0x4b0
        0x578
        0x640
        0x708
        0x7d0
        0x898
        0x960
        0xaf0
        0xc80
        0xe10
        0xfa0
        0x1194
        0x1388
        0x1770
        0x1d4c
        0x2328
        0x2af8
        0x32c8
        0x3a98
        0x4268
        0x4e20
        0x59d8
        0x6d60
        0xea60
        0x1adb0
        0x20000
    .end array-data

    :array_1
    .array-data 4
        -0xcceb
        -0xc6b0
        -0xbfb2
        -0xb7d9
        -0xaf0b
        -0xa52a
        -0x9a15
        -0x8da6
        -0x7fb2
        -0x700a
        -0x5e79
        -0x4ac4
        -0x34a6
        -0x1bd6
        0x0
        0x1f3c
        0x4248
        0x699c
        0x95bb
        0xc73d
        0xfec9
        0x13d1c
        0x1830a
        0x1d181
        0x2298b
        0x28c52
        0x2fb27
        0x37782
        0x4030a
    .end array-data

    :array_2
    .array-data 4
        0x3314
        0x394f
        0x404d
        0x4826
        0x50f4
        0x5ad5
        0x65ea
        0x7259
        0x804d
        0x8ff5
        0xa186
        0xb53b
        0xcb59
        0xe429
        0x10000
        0x11f3c
        0x14248
        0x1699c
        0x195bb
        0x1c73d
        0x1fec9
        0x23d1c
        0x2830a
        0x2d181
        0x3298b
        0x38c52
        0x3fb27
        0x47782
        0x5030a
    .end array-data

    :array_3
    .array-data 4
        0xe
        0xe
        0xe
        0xe
        0xe
        0xe
        0xe
        0xe
        0xe
        0xe
        0xe
    .end array-data

    :array_4
    .array-data 4
        0xe
        0x18
        0x16
        0x13
        0xe
        0xc
        0xe
        0x10
        0x12
        0x16
        0x18
    .end array-data

    :array_5
    .array-data 4
        0xe
        0xc
        0xe
        0x12
        0x16
        0x18
        0x16
        0x13
        0xf
        0xc
        0xa
    .end array-data

    :array_6
    .array-data 4
        0xe
        0x1c
        0x1a
        0x16
        0x10
        0xc
        0xe
        0x14
        0x18
        0x16
        0x12
    .end array-data

    :array_7
    .array-data 4
        0xe
        0x18
        0x17
        0x15
        0x12
        0xe
        0xb
        0x9
        0xb
        0xd
        0xe
    .end array-data

    :array_8
    .array-data 4
        0xe
        0xe
        0xe
        0xe
        0xe
        0xe
        0xe
        0xd
        0xc
        0xa
        0x9
    .end array-data

    :array_9
    .array-data 4
        0xe
        0xe
        0xe
        0xe
        0xe
        0xe
        0xe
        0xe
        0xe
        0xe
        0xe
    .end array-data

    :array_a
    .array-data 4
        0xe
        0x13
        0x12
        0x11
        0x10
        0xf
        0xe
        0xd
        0xc
        0xb
        0xa
    .end array-data

    :array_b
    .array-data 4
        0x0
        0x1bc0
        0x2421
        0x3021
        0x3ba1
        0x43a0
        0x5600
        0x6021
        0x73a1
        0x8fff
        0xa1e9
        0xb5aa
        0xcbd5
        0xe4b4
        0x1009c
        0x11feb
        0x1430d
        0x16a78
        0x18bb2
        0x1c252
        0x20000
        0x21e57
        0x23e79
        0x26083
        0x28492
        0x2aac3
        0x2d338
        0x2fe13
        0x32b77
        0x35b8c
        0x38e7b
        0x3c46e
        0x3fd93
        0x43a1b
        0x47a3a
        0x4be25
        0x50616
        0x5524b
        0x5a303
        0x5f884
        0x65316
    .end array-data

    :array_c
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_d
    .array-data 4
        0x100000
        0xe0b3d9
        0xf4e20
        0x1f5636
        0xf0a807
        0x5a9c78
    .end array-data

    :array_e
    .array-data 4
        0x100000
        0xe0be81
        0xf43b6
        0x1f5636
        0xf0a807
        0x5a9c78
    .end array-data

    :array_f
    .array-data 4
        0x100000
        0xe0c9cb
        0xf38b1
        0x1f5636
        0xf0a807
        0x5a9c78
    .end array-data

    :array_10
    .array-data 4
        0x100000
        0xe0d5c0
        0xf2d0a
        0x1f5636
        0xf0a807
        0x5a9c78
    .end array-data

    :array_11
    .array-data 4
        0x100000
        0xe0e26a
        0xf20b6
        0x1f5636
        0xf0a807
        0x5a9c78
    .end array-data

    :array_12
    .array-data 4
        0x100000
        0xe0efd5
        0xf13ae
        0x1f5636
        0xf0a807
        0x5a9c78
    .end array-data

    :array_13
    .array-data 4
        0x100000
        0xe0fe0b
        0xf05e5
        0x1f5636
        0xf0a807
        0x5a9c78
    .end array-data

    :array_14
    .array-data 4
        0x100000
        0xe10d19
        0xef753
        0x1f5636
        0xf0a807
        0x5a9c78
    .end array-data

    :array_15
    .array-data 4
        0x100000
        0xe10d19
        0xef753
        0x1f5636
        0xf0a807
        0x5a9c78
    .end array-data

    :array_16
    .array-data 4
        0x100000
        0xe10d19
        0xef753
        0x1f5636
        0xf0a807
        0x5a9c78
    .end array-data

    :array_17
    .array-data 4
        0x100000
        0xe10d19
        0xef753
        0x1f5636
        0xf0a807
        0x5a9c78
    .end array-data

    :array_18
    .array-data 4
        0x100000
        0xe10d19
        0xef753
        0x1f5636
        0xf0a807
        0x5a9c78
    .end array-data

    :array_19
    .array-data 4
        0x100000
        0xe10d19
        0xef753
        0x1f5636
        0xf0a807
        0x5a9c78
    .end array-data

    :array_1a
    .array-data 4
        0x100000
        0xe10d19
        0xef753
        0x1f5636
        0xf0a807
        0x5a9c78
    .end array-data

    :array_1b
    .array-data 4
        0x100000
        0xe10d19
        0xef753
        0x1f5636
        0xf0a807
        0x5a9c78
    .end array-data

    :array_1c
    .array-data 4
        0x100000
        0xe10d19
        0xef753
        0x1f5636
        0xf0a807
        0x5a9c78
    .end array-data

    :array_1d
    .array-data 4
        0x100000
        0xe10d19
        0xef753
        0x1f5636
        0xf0a807
        0x5a9c78
    .end array-data

    :array_1e
    .array-data 4
        0x100000
        0xe10d19
        0xef753
        0x1f5636
        0xf0a807
        0x5a9c78
    .end array-data

    :array_1f
    .array-data 4
        0x100000
        0xe10d19
        0xef753
        0x1f5636
        0xf0a807
        0x5a9c78
    .end array-data

    :array_20
    .array-data 4
        0x180000
        0x7fffff
        0x29
        0x1f
        0x17
        0xd
        0x29
        0x1f
        0x17
        0xd
        0x29
        0x1f
        0x17
        0xd
    .end array-data

    :array_21
    .array-data 4
        0x300000
        0x7fffff
        0x4f
        0x3b
        0x25
        0x13
        0x4f
        0x3b
        0x25
        0x13
        0x4f
        0x3b
        0x25
        0x13
    .end array-data

    :array_22
    .array-data 4
        0x200000
        0x7fffff
        0x4f
        0x43
        0x3b
        0x2f
        0x4f
        0x43
        0x3b
        0x2f
        0x4f
        0x43
        0x3b
        0x2f
    .end array-data

    :array_23
    .array-data 4
        0x600000
        0x7fffff
        0x3b
        0x2f
        0x25
        0x17
        0x3b
        0x2f
        0x25
        0x17
        0x3b
        0x2f
        0x25
        0x17
    .end array-data

    :array_24
    .array-data 4
        0x400000
        0x7fffff
        0x13
        0x11
        0xb
        0x7
        0x13
        0x11
        0xb
        0x7
        0x13
        0x11
        0xb
        0x7
    .end array-data

    :array_25
    .array-data 4
        0x100000
        0x7fffff
        0x4f
        0x49
        0x47
        0x43
        0x4f
        0x49
        0x47
        0x43
        0x4f
        0x49
        0x47
        0x43
    .end array-data

    :array_26
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_27
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_28
    .array-data 4
        0x7fffff
        0x0
        0x0
        0x7fffff
        0x0
        0x0
        0x7fffff
        0x7fffff
    .end array-data

    :array_29
    .array-data 4
        0x10000
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_2a
    .array-data 4
        0x10000
        0x2298b
        0x1830a
        0xc73d
        0x0
        -0x34a6
        0x0
        0x4248
        0x95bb
        0x1830a
        0x2298b
    .end array-data

    :array_2b
    .array-data 4
        0x10000
        -0x34a6
        0x0
        0x95bb
        0x1830a
        0x2298b
        0x1830a
        0xc73d
        0x1f3c
        -0x34a6
        -0x5e79
    .end array-data

    :array_2c
    .array-data 4
        0x10000
        0x4030a
        0x2fb27
        0x1830a
        0x4248
        -0x34a6
        0x0
        0xfec9
        0x2298b
        0x1830a
        0x95bb
    .end array-data

    :array_2d
    .array-data 4
        0x10000
        0x2298b
        0x1d181
        0x13d1c
        0x95bb
        0x0
        -0x4ac4
        -0x700a
        -0x4ac4
        -0x1bd6
        0x0
    .end array-data

    :array_2e
    .array-data 4
        0x10000
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x1bd6
        -0x34a6
        -0x5e79
        -0x700a
    .end array-data

    :array_2f
    .array-data 4
        0x10000
        0xc73d
        0x95bb
        0x699c
        0x4248
        0x1f3c
        -0x1bd6
        -0x4ac4
        -0x700a
        -0x8da6
        -0x9a15
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
