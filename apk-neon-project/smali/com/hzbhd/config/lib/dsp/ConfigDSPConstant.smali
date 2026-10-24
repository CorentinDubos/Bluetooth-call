.class public Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant;
.super Ljava/lang/Object;
.source "ConfigDSPConstant.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant$GEQ;,
        Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant$VOLUME;,
        Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant$DSP_TYPE;
    }
.end annotation


# static fields
.field public static DEFAULT_GAIN:I = 0x0

.field public static final DEFAULT_Q:F = 2.5f

.field public static final DEFAULT_Q_32107:F = 2.2f

.field public static final DEFAULT_SUB_FREQ:D = 80.0

.field public static final DEFAULT_SUB_GAIN:D = 0.0

.field public static final DEFAULT_SUB_Q:D = 0.70711

.field private static final DSP_KEY:Ljava/lang/String; = "is dsp"

.field private static final DSP_KEY_32107:Ljava/lang/String; = "is bu32107"

.field public static final IS_BU32107:Z

.field public static final IS_DSP:Z

.field public static final defaultClassicGains16:[D

.field public static final defaultClassicGains3:[D

.field public static final defaultClassicGains30:[D

.field public static final defaultEasyGains16:[D

.field public static final defaultEasyGains3:[D

.field public static final defaultEasyGains30:[D

.field public static final defaultFlatGains16:[D

.field public static final defaultFlatGains3:[D

.field public static final defaultFlatGains30:[D

.field public static final defaultJAZZGains16:[D

.field public static final defaultJAZZGains3:[D

.field public static final defaultJAZZGains30:[D

.field public static final defaultPopGains16:[D

.field public static final defaultPopGains3:[D

.field public static final defaultPopGains30:[D

.field public static final defaultRockGains16:[D

.field public static final defaultRockGains3:[D

.field public static final defaultRockGains30:[D

.field public static final mDefaultFreqs16:[D

.field public static final mDefaultFreqs3:[D

.field public static final mDefaultFreqs30:[D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "is dsp"

    .line 12
    invoke-static {v0}, Landroid/app/DefaultSharedUtil;->getBool(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant;->IS_DSP:Z

    const-string v0, "is bu32107"

    .line 13
    invoke-static {v0}, Landroid/app/DefaultSharedUtil;->getBool(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant;->IS_BU32107:Z

    const/16 v0, 0xf

    .line 15
    sput v0, Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant;->DEFAULT_GAIN:I

    .line 17
    sget-object v1, Lcom/hzbhd/config/androidconfig/BHDAndroidConfigXML$SHARED_KEY;->MPUASPRESTOREMAXVOLUME:Lcom/hzbhd/config/androidconfig/BHDAndroidConfigXML$SHARED_KEY;

    invoke-virtual {v1}, Lcom/hzbhd/config/androidconfig/BHDAndroidConfigXML$SHARED_KEY;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/app/DefaultSharedUtil;->getInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    add-int/2addr v1, v0

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RESTORE_MAXVOLUME "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mww"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    sput v1, Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant;->DEFAULT_GAIN:I

    const/4 v0, 0x3

    new-array v1, v0, [D

    .line 112
    fill-array-data v1, :array_0

    sput-object v1, Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant;->mDefaultFreqs3:[D

    const/16 v1, 0x10

    new-array v2, v1, [D

    .line 114
    fill-array-data v2, :array_1

    sput-object v2, Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant;->mDefaultFreqs16:[D

    const/16 v2, 0x1e

    new-array v3, v2, [D

    .line 116
    fill-array-data v3, :array_2

    sput-object v3, Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant;->mDefaultFreqs30:[D

    new-array v3, v0, [D

    .line 119
    fill-array-data v3, :array_3

    sput-object v3, Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant;->defaultFlatGains3:[D

    new-array v3, v0, [D

    .line 120
    fill-array-data v3, :array_4

    sput-object v3, Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant;->defaultPopGains3:[D

    new-array v3, v0, [D

    .line 121
    fill-array-data v3, :array_5

    sput-object v3, Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant;->defaultEasyGains3:[D

    new-array v3, v0, [D

    .line 122
    fill-array-data v3, :array_6

    sput-object v3, Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant;->defaultRockGains3:[D

    new-array v3, v0, [D

    .line 123
    fill-array-data v3, :array_7

    sput-object v3, Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant;->defaultClassicGains3:[D

    new-array v0, v0, [D

    .line 124
    fill-array-data v0, :array_8

    sput-object v0, Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant;->defaultJAZZGains3:[D

    new-array v0, v1, [D

    .line 126
    fill-array-data v0, :array_9

    sput-object v0, Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant;->defaultFlatGains16:[D

    new-array v0, v1, [D

    .line 127
    fill-array-data v0, :array_a

    sput-object v0, Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant;->defaultPopGains16:[D

    new-array v0, v1, [D

    .line 128
    fill-array-data v0, :array_b

    sput-object v0, Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant;->defaultEasyGains16:[D

    new-array v0, v1, [D

    .line 129
    fill-array-data v0, :array_c

    sput-object v0, Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant;->defaultRockGains16:[D

    new-array v0, v1, [D

    .line 130
    fill-array-data v0, :array_d

    sput-object v0, Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant;->defaultClassicGains16:[D

    new-array v0, v1, [D

    .line 131
    fill-array-data v0, :array_e

    sput-object v0, Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant;->defaultJAZZGains16:[D

    new-array v0, v2, [D

    .line 133
    fill-array-data v0, :array_f

    sput-object v0, Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant;->defaultFlatGains30:[D

    new-array v0, v2, [D

    .line 134
    fill-array-data v0, :array_10

    sput-object v0, Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant;->defaultPopGains30:[D

    new-array v0, v2, [D

    .line 135
    fill-array-data v0, :array_11

    sput-object v0, Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant;->defaultEasyGains30:[D

    new-array v0, v2, [D

    .line 136
    fill-array-data v0, :array_12

    sput-object v0, Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant;->defaultRockGains30:[D

    new-array v0, v2, [D

    .line 137
    fill-array-data v0, :array_13

    sput-object v0, Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant;->defaultClassicGains30:[D

    new-array v0, v2, [D

    .line 138
    fill-array-data v0, :array_14

    sput-object v0, Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant;->defaultJAZZGains30:[D

    return-void

    :array_0
    .array-data 8
        0x4049000000000000L    # 50.0
        0x407f400000000000L    # 500.0
        0x40b3880000000000L    # 5000.0
    .end array-data

    :array_1
    .array-data 8
        0x4034000000000000L    # 20.0
        0x403f800000000000L    # 31.5
        0x4049000000000000L    # 50.0
        0x4054000000000000L    # 80.0
        0x405f400000000000L    # 125.0
        0x4069000000000000L    # 200.0
        0x4073b00000000000L    # 315.0
        0x407f400000000000L    # 500.0
        0x4089000000000000L    # 800.0
        0x4093880000000000L    # 1250.0
        0x409f400000000000L    # 2000.0
        0x40a89c0000000000L    # 3150.0
        0x40b3880000000000L    # 5000.0
        0x40bf400000000000L    # 8000.0
        0x40c86a0000000000L    # 12500.0
        0x40d3880000000000L    # 20000.0
    .end array-data

    :array_2
    .array-data 8
        0x4034000000000000L    # 20.0
        0x4039000000000000L    # 25.0
        0x403f800000000000L    # 31.5
        0x4044000000000000L    # 40.0
        0x4049000000000000L    # 50.0
        0x404f800000000000L    # 63.0
        0x4054000000000000L    # 80.0
        0x4059000000000000L    # 100.0
        0x405f400000000000L    # 125.0
        0x4064000000000000L    # 160.0
        0x4069000000000000L    # 200.0
        0x406f400000000000L    # 250.0
        0x4073b00000000000L    # 315.0
        0x4079000000000000L    # 400.0
        0x407f400000000000L    # 500.0
        0x4083b00000000000L    # 630.0
        0x4089000000000000L    # 800.0
        0x408f400000000000L    # 1000.0
        0x4093880000000000L    # 1250.0
        0x4099000000000000L    # 1600.0
        0x409f400000000000L    # 2000.0
        0x40a3880000000000L    # 2500.0
        0x40a89c0000000000L    # 3150.0
        0x40af400000000000L    # 4000.0
        0x40b3880000000000L    # 5000.0
        0x40b89c0000000000L    # 6300.0
        0x40bf400000000000L    # 8000.0
        0x40c3880000000000L    # 10000.0
        0x40c86a0000000000L    # 12500.0
        0x40cf400000000000L    # 16000.0
    .end array-data

    :array_3
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 8
        0x4010000000000000L    # 4.0
        -0x3ff0000000000000L    # -4.0
        0x4008000000000000L    # 3.0
    .end array-data

    :array_5
    .array-data 8
        0x4010000000000000L    # 4.0
        0x0
        0x4010000000000000L    # 4.0
    .end array-data

    :array_6
    .array-data 8
        0x4014000000000000L    # 5.0
        0x4000000000000000L    # 2.0
        0x401c000000000000L    # 7.0
    .end array-data

    :array_7
    .array-data 8
        0x0
        0x0
        -0x3fec000000000000L    # -5.0
    .end array-data

    :array_8
    .array-data 8
        0x0
        0x4010000000000000L    # 4.0
        0x4010000000000000L    # 4.0
    .end array-data

    :array_9
    .array-data 8
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
        0x0
        0x0
    .end array-data

    :array_a
    .array-data 8
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        -0x3ff0000000000000L    # -4.0
        -0x3fec000000000000L    # -5.0
        -0x3ff0000000000000L    # -4.0
        -0x3ff8000000000000L    # -3.0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        0x4008000000000000L    # 3.0
    .end array-data

    :array_b
    .array-data 8
        0x4010000000000000L    # 4.0
        0x4008000000000000L    # 3.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        0x0
        -0x4000000000000000L    # -2.0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x0
        0x4008000000000000L    # 3.0
        0x4008000000000000L    # 3.0
        0x4010000000000000L    # 4.0
        0x4010000000000000L    # 4.0
        0x4010000000000000L    # 4.0
        0x4014000000000000L    # 5.0
        0x4014000000000000L    # 5.0
    .end array-data

    :array_c
    .array-data 8
        0x4014000000000000L    # 5.0
        0x4000000000000000L    # 2.0
        -0x3ff8000000000000L    # -3.0
        -0x4000000000000000L    # -2.0
        0x4014000000000000L    # 5.0
        -0x4000000000000000L    # -2.0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        0x4010000000000000L    # 4.0
        0x4014000000000000L    # 5.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        0x401c000000000000L    # 7.0
        0x401c000000000000L    # 7.0
        0x401c000000000000L    # 7.0
    .end array-data

    :array_d
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3ff0000000000000L    # -4.0
        -0x3ff0000000000000L    # -4.0
        -0x3ff0000000000000L    # -4.0
        -0x3ff0000000000000L    # -4.0
        -0x3fec000000000000L    # -5.0
        -0x3fec000000000000L    # -5.0
        -0x3fec000000000000L    # -5.0
    .end array-data

    :array_e
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x4010000000000000L    # 4.0
        0x4010000000000000L    # 4.0
        0x4010000000000000L    # 4.0
        0x0
        0x0
        0x0
        0x4008000000000000L    # 3.0
        0x4008000000000000L    # 3.0
        0x4008000000000000L    # 3.0
        0x4010000000000000L    # 4.0
        0x4010000000000000L    # 4.0
        0x4010000000000000L    # 4.0
    .end array-data

    :array_f
    .array-data 8
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
        0x0
        0x0
    .end array-data

    :array_10
    .array-data 8
        0x4008000000000000L    # 3.0
        0x4000000000000000L    # 2.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        -0x4010000000000000L    # -1.0
        -0x4000000000000000L    # -2.0
        -0x3ff8000000000000L    # -3.0
        -0x3ff8000000000000L    # -3.0
        -0x3ff8000000000000L    # -3.0
        -0x3ff0000000000000L    # -4.0
        -0x3ff0000000000000L    # -4.0
        -0x3ff0000000000000L    # -4.0
        -0x3ff8000000000000L    # -3.0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x4000000000000000L    # 2.0
    .end array-data

    :array_11
    .array-data 8
        0x4008000000000000L    # 3.0
        0x4008000000000000L    # 3.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        0x4008000000000000L    # 3.0
        0x4008000000000000L    # 3.0
        0x4008000000000000L    # 3.0
        0x4008000000000000L    # 3.0
        0x4008000000000000L    # 3.0
        0x4010000000000000L    # 4.0
        0x4010000000000000L    # 4.0
        0x4010000000000000L    # 4.0
    .end array-data

    :array_12
    .array-data 8
        0x4010000000000000L    # 4.0
        0x4008000000000000L    # 3.0
        0x3ff0000000000000L    # 1.0
        0x0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        0x3ff0000000000000L    # 1.0
        0x4010000000000000L    # 4.0
        0x3ff0000000000000L    # 1.0
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x4008000000000000L    # 3.0
        0x4008000000000000L    # 3.0
        0x4010000000000000L    # 4.0
        0x4010000000000000L    # 4.0
        0x4010000000000000L    # 4.0
        0x4010000000000000L    # 4.0
        0x4014000000000000L    # 5.0
        0x4014000000000000L    # 5.0
        0x4014000000000000L    # 5.0
        0x4014000000000000L    # 5.0
        0x4014000000000000L    # 5.0
        0x4014000000000000L    # 5.0
    .end array-data

    :array_13
    .array-data 8
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
        0x0
        0x0
        0x0
        0x0
        -0x3ff8000000000000L    # -3.0
        -0x3ff8000000000000L    # -3.0
        -0x3ff8000000000000L    # -3.0
        -0x3ff8000000000000L    # -3.0
        -0x3ff8000000000000L    # -3.0
        -0x3ff8000000000000L    # -3.0
        -0x3ff8000000000000L    # -3.0
        -0x3ff8000000000000L    # -3.0
        -0x3ff0000000000000L    # -4.0
        -0x3ff0000000000000L    # -4.0
        -0x3ff0000000000000L    # -4.0
        -0x3ff0000000000000L    # -4.0
    .end array-data

    :array_14
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4008000000000000L    # 3.0
        0x4008000000000000L    # 3.0
        0x4008000000000000L    # 3.0
        0x4008000000000000L    # 3.0
        0x4008000000000000L    # 3.0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        0x4008000000000000L    # 3.0
        0x4008000000000000L    # 3.0
        0x4008000000000000L    # 3.0
        0x4008000000000000L    # 3.0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
