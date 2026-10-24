.class public Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;
.super Ljava/lang/Object;
.source "RadioRepCanbus.java"


# static fields
.field static mRadio:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

.field private static reportCanbusRadioInfo:[B


# instance fields
.field private FreqInt:I

.field private bandType:B

.field private currBand:Ljava/lang/String;

.field private currClickPresetIndex:I

.field private currentFreq:Ljava/lang/String;

.field private freqHi:B

.field private freqLo:B

.field private isRadioRds:I

.field private isRadioSt:I

.field private isStereo:I

.field private mContext:Landroid/content/Context;

.field private mCurrentFreq:Ljava/lang/String;

.field mThread:Ljava/lang/Thread;

.field private psName:Ljava/lang/String;

.field private reportDedicatedPerSec:[B

.field private timerPerSec:Ljava/util/Timer;

.field private tsPerSec:Ljava/util/TimerTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 38
    fill-array-data v0, :array_0

    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->reportCanbusRadioInfo:[B

    .line 300
    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    invoke-direct {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;-><init>()V

    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mRadio:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    return-void

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;Landroid/content/Context;[B)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->sndRadioMidea(Landroid/content/Context;[B)V

    return-void
.end method

.method static synthetic access$100(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)[B
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->reportDedicatedPerSec:[B

    return-object p0
.end method

.method static synthetic access$200(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)Landroid/content/Context;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    return-object p0
.end method

.method private getAllBandTypeData(Ljava/lang/String;BBBBB)B
    .locals 2

    .line 180
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "OIRT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_1
    const-string v0, "FM3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_2
    const-string v0, "FM2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_3
    const-string v0, "FM1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_1

    :sswitch_4
    const-string v0, "AM2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    goto :goto_1

    :sswitch_5
    const-string v0, "AM1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_6
    const-string v0, "MW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x7

    goto :goto_1

    :sswitch_7
    const-string v0, "LW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    return v1

    :pswitch_0
    return p6

    :pswitch_1
    return p5

    :pswitch_2
    return p4

    :pswitch_3
    return p3

    :pswitch_4
    return p2

    nop

    :sswitch_data_0
    .sparse-switch
        0x98b -> :sswitch_7
        0x9aa -> :sswitch_6
        0xfd85 -> :sswitch_5
        0xfd86 -> :sswitch_4
        0x1104a -> :sswitch_3
        0x1104b -> :sswitch_2
        0x1104c -> :sswitch_1
        0x25059c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getBandUnit(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 168
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "FM3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v3

    goto :goto_1

    :sswitch_1
    const-string v0, "FM2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v4

    goto :goto_1

    :sswitch_2
    const-string v0, "FM1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :sswitch_3
    const-string v0, "AM2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_1

    :sswitch_4
    const-string v0, "AM1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_2

    if-eq p1, v4, :cond_2

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_1

    const-string p1, ""

    return-object p1

    :cond_1
    const-string p1, "KHz"

    return-object p1

    :cond_2
    const-string p1, "MHz"

    return-object p1

    :sswitch_data_0
    .sparse-switch
        0xfd85 -> :sswitch_4
        0xfd86 -> :sswitch_3
        0x1104a -> :sswitch_2
        0x1104b -> :sswitch_1
        0x1104c -> :sswitch_0
    .end sparse-switch
.end method

.method private getFreqByte(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "AM2"

    .line 72
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "freqHi"

    const-string v2, "cwh"

    if-nez v0, :cond_2

    const-string v0, "MW"

    .line 73
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "AM1"

    .line 74
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "LW"

    .line 75
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "FM1"

    .line 81
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "FM2"

    .line 82
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "FM3"

    .line 83
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "OIRT"

    .line 84
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 85
    :cond_1
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    mul-double/2addr p1, v3

    double-to-int p1, p1

    .line 86
    iput p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->FreqInt:I

    and-int/lit16 p2, p1, 0xff

    int-to-byte p2, p2

    .line 87
    iput-byte p2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->freqHi:B

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 88
    iput-byte p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->freqLo:B

    .line 89
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->freqHi:B

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->freqLo:B

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 76
    :cond_2
    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    shr-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->freqHi:B

    .line 77
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->freqLo:B

    .line 78
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->freqHi:B

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->freqLo:B

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method

.method private getFreqByteHiLo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "AM2"

    .line 54
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "MW"

    .line 55
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "AM1"

    .line 56
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "LW"

    .line 57
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "FM1"

    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "FM2"

    .line 62
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "FM3"

    .line 63
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "OIRT"

    .line 64
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 65
    :cond_1
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double/2addr p1, v0

    double-to-int p1, p1

    .line 66
    iput p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->FreqInt:I

    shr-int/lit8 p2, p1, 0x8

    int-to-byte p2, p2

    .line 67
    iput-byte p2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->freqHi:B

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 68
    iput-byte p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->freqLo:B

    goto :goto_1

    .line 58
    :cond_2
    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    shr-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->freqHi:B

    .line 59
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->freqLo:B

    :cond_3
    :goto_1
    return-void
.end method

.method private getFreqByteHiLoPSA(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "AM2"

    .line 95
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    if-nez v0, :cond_2

    const-string v0, "MW"

    .line 96
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "AM1"

    .line 97
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "LW"

    .line 98
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "FM1"

    .line 103
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "FM2"

    .line 104
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "FM3"

    .line 105
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "OIRT"

    .line 106
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 107
    :cond_1
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    mul-double/2addr p1, v1

    div-double v3, p1, v1

    double-to-int v0, v3

    int-to-byte v0, v0

    .line 108
    iput-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->freqHi:B

    rem-double/2addr p1, v1

    double-to-int p1, p1

    int-to-byte p1, p1

    .line 109
    iput-byte p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->freqLo:B

    goto :goto_1

    .line 99
    :cond_2
    :goto_0
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    div-double v3, p1, v1

    double-to-int v0, v3

    int-to-byte v0, v0

    .line 100
    iput-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->freqHi:B

    rem-double/2addr p1, v1

    double-to-int p1, p1

    int-to-byte p1, p1

    .line 101
    iput-byte p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->freqLo:B

    :cond_3
    :goto_1
    return-void
.end method

.method private getFreqByteHiLo_10(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "AM2"

    .line 114
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "MW"

    .line 115
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "AM1"

    .line 116
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "LW"

    .line 117
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "FM1"

    .line 121
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "FM2"

    .line 122
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "FM3"

    .line 123
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "OIRT"

    .line 124
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 125
    :cond_1
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double/2addr p1, v0

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    div-double/2addr p1, v0

    double-to-int p1, p1

    .line 126
    iput p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->FreqInt:I

    shr-int/lit8 p2, p1, 0x8

    int-to-byte p2, p2

    .line 127
    iput-byte p2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->freqHi:B

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 128
    iput-byte p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->freqLo:B

    goto :goto_1

    .line 118
    :cond_2
    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    shr-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->freqHi:B

    .line 119
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->freqLo:B

    :cond_3
    :goto_1
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;
    .locals 2

    const-class v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    monitor-enter v0

    .line 302
    :try_start_0
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mRadio:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    if-nez v1, :cond_0

    .line 303
    new-instance v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    invoke-direct {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;-><init>()V

    sput-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mRadio:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    .line 306
    :cond_0
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mRadio:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getXinbasBandType(Ljava/lang/String;)B
    .locals 6

    .line 150
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "OIRT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v3

    goto :goto_1

    :sswitch_1
    const-string v0, "FM3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v4

    goto :goto_1

    :sswitch_2
    const-string v0, "FM2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v5

    goto :goto_1

    :sswitch_3
    const-string v0, "FM1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_1

    :sswitch_4
    const-string v0, "AM2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    goto :goto_1

    :sswitch_5
    const-string v0, "AM1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_1

    :sswitch_6
    const-string v0, "MW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x7

    goto :goto_1

    :sswitch_7
    const-string v0, "LW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    return v1

    :pswitch_0
    return v2

    :pswitch_1
    return v3

    :pswitch_2
    return v4

    :pswitch_3
    return v5

    :sswitch_data_0
    .sparse-switch
        0x98b -> :sswitch_7
        0x9aa -> :sswitch_6
        0xfd85 -> :sswitch_5
        0xfd86 -> :sswitch_4
        0x1104a -> :sswitch_3
        0x1104b -> :sswitch_2
        0x1104c -> :sswitch_1
        0x25059c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isBandAm(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "AM1"

    .line 209
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "LW"

    .line 210
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "AM2"

    .line 211
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "MW"

    .line 212
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private isBandFm(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "FM1"

    .line 198
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "FM2"

    .line 199
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "FM3"

    .line 200
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "OIRT"

    .line 201
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private setVwRadioInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "AM2"

    .line 133
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "MW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "AM1"

    .line 135
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "LW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "FM1"

    .line 140
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 141
    iput-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->bandType:B

    goto :goto_2

    :cond_2
    const-string v0, "FM2"

    .line 142
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    .line 143
    iput-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->bandType:B

    goto :goto_2

    :cond_3
    const-string v0, "FM3"

    .line 144
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "OIRT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_4
    const/4 v0, 0x3

    .line 145
    iput-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->bandType:B

    goto :goto_2

    .line 136
    :cond_5
    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    shr-int/lit8 v1, v0, 0x8

    int-to-byte v1, v1

    .line 137
    iput-byte v1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->freqHi:B

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 138
    iput-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->freqLo:B

    const/16 v0, 0x11

    .line 139
    iput-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->bandType:B

    goto :goto_2

    :cond_6
    :goto_1
    const/16 v0, 0x12

    .line 134
    iput-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->bandType:B

    .line 147
    :cond_7
    :goto_2
    invoke-direct {p0, p1, p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->getFreqByteHiLo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private sndRadioMediaPerSec(Landroid/content/Context;[B)V
    .locals 7

    .line 249
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->timerPerSec:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 250
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->timerPerSec:Ljava/util/Timer;

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->tsPerSec:Ljava/util/TimerTask;

    if-nez v0, :cond_1

    .line 253
    new-instance v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$1;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;Landroid/content/Context;[B)V

    iput-object v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->tsPerSec:Ljava/util/TimerTask;

    .line 258
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->timerPerSec:Ljava/util/Timer;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_1
    return-void
.end method

.method private sndRadioMediaPerSecNew(Landroid/content/Context;)V
    .locals 7

    .line 263
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->timerPerSec:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 264
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->timerPerSec:Ljava/util/Timer;

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->tsPerSec:Ljava/util/TimerTask;

    if-nez v0, :cond_1

    .line 267
    new-instance v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$2;

    invoke-direct {v2, p0, p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$2;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->tsPerSec:Ljava/util/TimerTask;

    .line 272
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->timerPerSec:Ljava/util/Timer;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_1
    return-void
.end method

.method private sndRadioMediaPerSecTwoArray(Landroid/content/Context;[B[B)V
    .locals 7

    .line 277
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->timerPerSec:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 278
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->timerPerSec:Ljava/util/Timer;

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->tsPerSec:Ljava/util/TimerTask;

    if-nez v0, :cond_1

    .line 281
    new-instance v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$3;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$3;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;Landroid/content/Context;[B[B)V

    iput-object v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->tsPerSec:Ljava/util/TimerTask;

    .line 287
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->timerPerSec:Ljava/util/Timer;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_1
    return-void
.end method

.method private sndRadioMidea(Landroid/content/Context;[B)V
    .locals 4

    .line 234
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "btState"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 235
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->FM:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-eq v0, v1, :cond_0

    .line 236
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->BTPHONE:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-ne v0, v1, :cond_1

    .line 238
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    .line 239
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "currentReport"

    const/4 v2, 0x0

    invoke-static {p2, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 240
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "currentReport_disc"

    invoke-static {p2, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 243
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public IsRadioAs(Landroid/content/Context;)I
    .locals 2

    .line 314
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "isRadioAs"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public IsRadioSt(Landroid/content/Context;)I
    .locals 2

    .line 310
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "isRadioSt"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public destroy(Landroid/content/Context;)V
    .locals 3

    .line 1497
    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$7;

    invoke-direct {v0, p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$7;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)V

    invoke-static {p1, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface;->sendMsg(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface$CallBack;)V

    .line 1503
    invoke-static {p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface;->unbindService(Landroid/content/Context;)V

    .line 1505
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->getInstance()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->reportDestoryCanbusInfo(Landroid/content/Context;)V

    .line 1508
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getFactoryCanType()I

    move-result v0

    const/16 v1, 0x79

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getFactoryCanType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 1509
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "btState"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 1510
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->FM:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-eq v0, v1, :cond_1

    .line 1511
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->BTPHONE:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-ne v0, v1, :cond_2

    .line 1512
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "currentReport"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1513
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->destroyTsPerSec()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1519
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public destroyTsPerSec()V
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->tsPerSec:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    const/4 v0, 0x0

    .line 295
    iput-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->timerPerSec:Ljava/util/Timer;

    .line 296
    iput-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->tsPerSec:Ljava/util/TimerTask;

    :cond_0
    return-void
.end method

.method public reportCanbusInfo(ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 39

    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v5, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move/from16 v13, p6

    .line 318
    iput v9, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->currClickPresetIndex:I

    .line 319
    iput-object v10, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->currBand:Ljava/lang/String;

    .line 320
    iput-object v5, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    .line 321
    iput-object v11, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mContext:Landroid/content/Context;

    .line 322
    iput-object v12, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->psName:Ljava/lang/String;

    .line 323
    iput v13, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->isStereo:I

    .line 324
    iput-object v5, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->currentFreq:Ljava/lang/String;

    .line 327
    new-instance v14, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$4;

    move-object v1, v14

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$4;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v11, v14}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface;->sendMsg(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface$CallBack;)V

    .line 334
    iget-object v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mContext:Landroid/content/Context;

    const-string v2, "LcdLog"

    const-string v3, "RadioRepCanbus|reportCanbusInfo"

    invoke-static {v1, v2, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->WLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SystemMix_reportCanbusInfo"

    invoke-static {v2, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 338
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/RadioManager;->getRadioManager()Lcom/hzbhd/midwareproxy/radio/RadioManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/radio/RadioManager;->getStereoStatus()I

    move-result v1

    iput v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->isRadioSt:I

    .line 339
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/RadioManager;->getRadioManager()Lcom/hzbhd/midwareproxy/radio/RadioManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/radio/RadioManager;->getRDSSwitchStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v11

    goto :goto_0

    :cond_0
    move v1, v12

    :goto_0
    iput v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->isRadioRds:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 342
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    const-string v14, "FM1"

    .line 345
    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v15, "FM2"

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    const-string v7, "FM3"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    if-eqz v1, :cond_2

    :cond_1
    move v6, v12

    goto :goto_2

    :cond_2
    const-string v1, "AM2"

    .line 347
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "AM1"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "MW"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "LW"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_3
    move v6, v11

    .line 351
    :goto_2
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->getInstance()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;

    move-result-object v1

    iget-object v2, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->reportCanbusInfo(Landroid/content/Context;)V

    :try_start_1
    const-string v1, "AM2"

    .line 355
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "AM1"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "MW"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "LW"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_4

    .line 358
    :cond_4
    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "OIRT"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    const-string v1, ""

    move-object v5, v1

    move v4, v12

    goto :goto_6

    .line 359
    :cond_6
    :goto_3
    :try_start_2
    iget-object v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const-string v2, "Mhz"

    goto :goto_5

    .line 356
    :cond_7
    :goto_4
    iget-object v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    const-string v2, "Khz"

    :goto_5
    move v4, v1

    move-object v5, v2

    .line 363
    :goto_6
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    if-eqz v1, :cond_3f

    .line 364
    iget-object v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isCanbusCmdPorting(Landroid/content/Context;)Z

    move-result v1
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    const/16 v16, -0x7e

    const/16 v3, 0xff

    const/16 v17, -0x1

    const/16 v18, -0x3e

    const/16 v19, -0x40

    move-object/from16 p3, v7

    const/16 v20, 0x9

    const-string v7, " "

    move-object/from16 v21, v7

    const/4 v7, 0x4

    const/16 v24, 0x16

    move/from16 v25, v6

    const/4 v6, 0x2

    if-eqz v1, :cond_8

    :try_start_3
    const-string v1, "anananananna"

    const-string v2, "anananananna"

    .line 366
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$8;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_8
    move-object/from16 v37, p3

    move/from16 v32, v4

    move-object/from16 v33, v5

    move v11, v7

    move-object/from16 v38, v21

    move/from16 v34, v25

    const/4 v12, 0x5

    const/16 v13, 0xa

    goto/16 :goto_17

    :pswitch_0
    new-array v13, v7, [B

    aput-byte v24, v13, v12

    const/16 v1, -0x6f

    aput-byte v1, v13, v11

    const/16 v27, 0x1

    const/16 v28, 0x2

    const/16 v29, 0x3

    const/16 v30, 0x4

    const/16 v31, 0x5

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, v27

    move/from16 v32, v4

    move/from16 v4, v28

    move-object/from16 v33, v5

    move/from16 v5, v29

    move v12, v6

    move/from16 v34, v25

    const/4 v11, 0x3

    move/from16 v6, v30

    move-object/from16 v36, p3

    move-object/from16 v35, v21

    move/from16 v7, v31

    .line 674
    invoke-direct/range {v1 .. v7}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->getAllBandTypeData(Ljava/lang/String;BBBBB)B

    move-result v1

    aput-byte v1, v13, v12

    .line 675
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->getInstance()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;

    move-result-object v1

    iget-object v2, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->isMpegDiscExist(Landroid/content/Context;)I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v13, v11

    .line 676
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v8, v10}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->getBandUnit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 677
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v13, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v1

    const/16 v2, 0x10

    .line 678
    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->CompensateZero([BI)[B

    move-result-object v1

    .line 679
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    move-object/from16 v38, v35

    goto :goto_8

    :pswitch_1
    move-object/from16 v36, p3

    move/from16 v32, v4

    move-object/from16 v33, v5

    move v12, v6

    move-object/from16 v35, v21

    move/from16 v34, v25

    const/4 v11, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x4

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 661
    invoke-direct/range {v1 .. v7}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->getAllBandTypeData(Ljava/lang/String;BBBBB)B

    move-result v1

    .line 662
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, v35

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v8, v10}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->getBandUnit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v11, [B

    const/4 v4, 0x0

    aput-byte v24, v3, v4

    const/16 v4, -0x6b

    const/4 v5, 0x1

    aput-byte v4, v3, v5

    aput-byte v1, v3, v12
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    :try_start_4
    const-string v1, "Unicode"

    .line 665
    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v3, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v3
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_7

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 667
    :try_start_5
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_7
    const/16 v1, 0x27

    .line 669
    invoke-static {v3, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->makeBytesFixedLength([BI)[B

    move-result-object v1

    .line 670
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    move-object/from16 v38, v13

    :goto_8
    move-object/from16 v37, v36

    const/16 v3, 0xff

    const/4 v11, 0x4

    const/4 v12, 0x5

    goto/16 :goto_12

    :pswitch_2
    move-object/from16 v36, p3

    move/from16 v32, v4

    move-object/from16 v33, v5

    move v12, v6

    move-object/from16 v13, v21

    move/from16 v34, v25

    const/4 v11, 0x3

    .line 632
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    move-object/from16 v7, v36

    goto :goto_9

    :sswitch_0
    move-object/from16 v7, v36

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    move v1, v12

    goto :goto_a

    :sswitch_1
    move-object/from16 v7, v36

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :sswitch_2
    move-object/from16 v7, v36

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    goto :goto_a

    :sswitch_3
    move-object/from16 v7, v36

    const-string v1, "AM2"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    move v1, v11

    goto :goto_a

    :sswitch_4
    move-object/from16 v7, v36

    const-string v1, "AM1"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x4

    goto :goto_a

    :sswitch_5
    move-object/from16 v7, v36

    const-string v1, "WB"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x6

    goto :goto_a

    :sswitch_6
    move-object/from16 v7, v36

    const-string v1, "LW"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x5

    goto :goto_a

    :cond_9
    :goto_9
    move/from16 v1, v17

    :goto_a
    packed-switch v1, :pswitch_data_1

    :pswitch_3
    const/4 v1, 0x0

    goto :goto_b

    :pswitch_4
    const/4 v1, 0x6

    goto :goto_b

    :pswitch_5
    const/4 v1, 0x5

    goto :goto_b

    :pswitch_6
    const/4 v1, 0x4

    goto :goto_b

    :pswitch_7
    move v1, v11

    goto :goto_b

    :pswitch_8
    move v1, v12

    goto :goto_b

    :pswitch_9
    const/4 v1, 0x1

    .line 655
    :goto_b
    iget-object v2, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    invoke-direct {v8, v10, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->getFreqByteHiLoPSA(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x6

    new-array v2, v6, [B

    const/4 v3, 0x0

    aput-byte v24, v2, v3

    const/4 v3, 0x1

    aput-byte v20, v2, v3

    aput-byte v12, v2, v12

    aput-byte v1, v2, v11

    .line 656
    iget-byte v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->freqHi:B

    const/4 v5, 0x4

    aput-byte v1, v2, v5

    iget-byte v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->freqLo:B

    const/4 v4, 0x5

    aput-byte v1, v2, v4

    .line 657
    iget-object v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mContext:Landroid/content/Context;

    invoke-direct {v8, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->sndRadioMidea(Landroid/content/Context;[B)V

    move v12, v4

    move v11, v5

    move-object/from16 v37, v7

    goto/16 :goto_d

    :pswitch_a
    move/from16 v32, v4

    move-object/from16 v33, v5

    move v12, v6

    move v5, v7

    move-object/from16 v13, v21

    move/from16 v34, v25

    const/4 v4, 0x5

    const/4 v6, 0x6

    const/4 v11, 0x3

    move-object/from16 v7, p3

    .line 617
    iget-object v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->RADIO:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;

    const/16 v3, 0xff

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v5, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportSimpleMediaInfo(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;IZZ)V

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/16 v21, 0x2

    const/16 v22, 0x10

    const/16 v23, 0x10

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move v3, v4

    move v4, v5

    move/from16 v5, v21

    move v11, v6

    move/from16 v6, v22

    move-object/from16 v37, v7

    move/from16 v7, v23

    .line 618
    invoke-direct/range {v1 .. v7}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->getAllBandTypeData(Ljava/lang/String;BBBBB)B

    move-result v1

    .line 619
    iget-object v2, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    invoke-direct {v8, v10, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->getFreqByteHiLo(Ljava/lang/String;Ljava/lang/String;)V

    new-array v2, v11, [B

    const/4 v3, 0x0

    aput-byte v24, v2, v3

    const/4 v3, 0x1

    aput-byte v18, v2, v3

    aput-byte v1, v2, v12

    .line 620
    iget-byte v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->freqLo:B

    const/4 v3, 0x3

    aput-byte v1, v2, v3

    iget-byte v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->freqHi:B

    const/4 v7, 0x4

    aput-byte v1, v2, v7

    int-to-byte v1, v9

    const/4 v6, 0x5

    aput-byte v1, v2, v6

    .line 621
    iget-object v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mContext:Landroid/content/Context;

    invoke-direct {v8, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->sndRadioMidea(Landroid/content/Context;[B)V

    move v12, v6

    move v11, v7

    goto/16 :goto_d

    :pswitch_b
    move-object/from16 v37, p3

    move/from16 v32, v4

    move-object/from16 v33, v5

    move v12, v6

    move-object/from16 v13, v21

    move/from16 v34, v25

    const/4 v6, 0x5

    const/4 v11, 0x6

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/16 v21, 0x4

    const/16 v22, 0x5

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move v12, v6

    move/from16 v6, v21

    move v11, v7

    move/from16 v7, v22

    .line 589
    invoke-direct/range {v1 .. v7}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->getAllBandTypeData(Ljava/lang/String;BBBBB)B

    move-result v1

    .line 590
    invoke-direct {v8, v10}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->isBandFm(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 591
    iget-object v2, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v12, :cond_a

    .line 592
    iget-object v2, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 593
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "MHZ   "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_c

    .line 595
    :cond_a
    iget-object v2, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v11, :cond_b

    .line 596
    iget-object v2, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 597
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "0MHZ   "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_c

    .line 600
    :cond_b
    iget-object v2, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 601
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "MHZ   "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_c

    .line 604
    :cond_c
    iget-object v2, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_d

    .line 605
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "KHZ    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_c

    .line 607
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "KHZ    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_c
    const-string v3, "ooo"

    const-string/jumbo v4, "\u53d1\u9001\u4e862D_2"

    .line 610
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    iget-object v3, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mContext:Landroid/content/Context;

    const/4 v4, 0x3

    new-array v5, v4, [B

    const/4 v4, 0x0

    aput-byte v24, v5, v4

    const/16 v4, -0x2e

    const/4 v6, 0x1

    aput-byte v4, v5, v6

    const/4 v4, 0x2

    aput-byte v1, v5, v4

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v5, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v1

    invoke-direct {v8, v3, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->sndRadioMidea(Landroid/content/Context;[B)V

    goto/16 :goto_d

    :pswitch_c
    move-object/from16 v37, p3

    move/from16 v32, v4

    move-object/from16 v33, v5

    move v11, v7

    move-object/from16 v13, v21

    move/from16 v34, v25

    const/4 v12, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x4

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 566
    invoke-direct/range {v1 .. v7}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->getAllBandTypeData(Ljava/lang/String;BBBBB)B

    move-result v1

    shl-int/lit8 v2, v9, 0x3

    or-int/2addr v1, v2

    int-to-byte v1, v1

    .line 568
    iget-object v2, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    invoke-direct {v8, v10, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->getFreqByteHiLo(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    iget-object v2, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mContext:Landroid/content/Context;

    const/4 v7, 0x7

    new-array v3, v7, [B

    const/4 v4, 0x0

    aput-byte v24, v3, v4

    const/16 v4, -0x7c

    const/4 v5, 0x1

    aput-byte v4, v3, v5

    const/4 v4, 0x2

    aput-byte v5, v3, v4

    iget v4, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->isRadioSt:I

    int-to-byte v4, v4

    const/4 v5, 0x3

    aput-byte v4, v3, v5

    aput-byte v1, v3, v11

    iget-byte v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->freqHi:B

    aput-byte v1, v3, v12

    iget-byte v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->freqLo:B

    const/4 v4, 0x6

    aput-byte v1, v3, v4

    invoke-direct {v8, v2, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->sndRadioMidea(Landroid/content/Context;[B)V

    goto/16 :goto_d

    :pswitch_d
    move-object/from16 v37, p3

    move/from16 v32, v4

    move-object/from16 v33, v5

    move v11, v7

    move-object/from16 v13, v21

    move/from16 v34, v25

    const/4 v7, 0x7

    const/4 v12, 0x5

    .line 556
    iget-object v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->RADIO:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;

    const/4 v3, 0x0

    const/16 v6, 0xff

    invoke-static {v1, v2, v6, v3, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportSimpleMediaInfo(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;IZZ)V

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x2

    const/16 v21, 0x10

    const/16 v22, 0x10

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v6, v21

    move/from16 v7, v22

    .line 557
    invoke-direct/range {v1 .. v7}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->getAllBandTypeData(Ljava/lang/String;BBBBB)B

    move-result v1

    .line 558
    iget-object v2, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    invoke-direct {v8, v10, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->getFreqByteHiLo(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    iget-object v2, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mContext:Landroid/content/Context;

    const/4 v3, 0x6

    new-array v4, v3, [B

    const/4 v3, 0x0

    aput-byte v24, v4, v3

    const/4 v3, 0x1

    aput-byte v18, v4, v3

    const/4 v3, 0x2

    aput-byte v1, v4, v3

    iget-byte v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->freqLo:B

    const/4 v3, 0x3

    aput-byte v1, v4, v3

    iget-byte v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->freqHi:B

    aput-byte v1, v4, v11

    int-to-byte v1, v9

    aput-byte v1, v4, v12

    invoke-direct {v8, v2, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->sndRadioMidea(Landroid/content/Context;[B)V

    goto :goto_d

    :pswitch_e
    move-object/from16 v37, p3

    move/from16 v32, v4

    move-object/from16 v33, v5

    move v11, v7

    move-object/from16 v13, v21

    move/from16 v34, v25

    const/4 v12, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/16 v6, 0x10

    const/16 v7, 0x10

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 549
    invoke-direct/range {v1 .. v7}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->getAllBandTypeData(Ljava/lang/String;BBBBB)B

    move-result v1

    .line 550
    iget-object v2, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    invoke-direct {v8, v10, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->getFreqByteHiLo(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    iget-object v2, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mContext:Landroid/content/Context;

    const/4 v7, 0x7

    new-array v3, v7, [B

    const/4 v4, 0x0

    aput-byte v24, v3, v4

    const/4 v4, 0x1

    aput-byte v19, v3, v4

    const/4 v5, 0x2

    aput-byte v4, v3, v5

    const/4 v4, 0x3

    aput-byte v1, v3, v4

    iget-byte v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->freqLo:B

    aput-byte v1, v3, v11

    iget-byte v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->freqHi:B

    aput-byte v1, v3, v12

    int-to-byte v1, v9

    const/4 v4, 0x6

    aput-byte v1, v3, v4

    invoke-direct {v8, v2, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->sndRadioMidea(Landroid/content/Context;[B)V

    :goto_d
    move-object/from16 v38, v13

    goto/16 :goto_11

    :pswitch_f
    move-object/from16 v37, p3

    move/from16 v32, v4

    move-object/from16 v33, v5

    move v11, v7

    move-object/from16 v13, v21

    move/from16 v34, v25

    const/4 v7, 0x7

    const/4 v12, 0x5

    .line 525
    iget-object v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mContext:Landroid/content/Context;

    const/4 v2, 0x3

    new-array v3, v2, [B

    const/4 v2, 0x0

    aput-byte v24, v3, v2

    const/4 v2, 0x1

    aput-byte v20, v3, v2

    const/4 v2, 0x2

    aput-byte v2, v3, v2

    invoke-direct {v8, v1, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->sndRadioMidea(Landroid/content/Context;[B)V

    .line 526
    iget-object v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "currentReportPrev"

    const/4 v3, 0x3

    new-array v4, v3, [B

    const/4 v3, 0x0

    aput-byte v24, v4, v3

    const/4 v5, 0x1

    aput-byte v20, v4, v5

    const/4 v5, 0x2

    aput-byte v5, v4, v5

    invoke-static {v4, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/16 v21, 0x3

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v7, v21

    .line 527
    invoke-direct/range {v1 .. v7}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->getAllBandTypeData(Ljava/lang/String;BBBBB)B

    move-result v1

    .line 529
    invoke-direct {v8, v10}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->isBandFm(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 530
    iget-object v2, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    div-double v4, v2, v4

    double-to-int v4, v4

    int-to-byte v4, v4

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    rem-double/2addr v2, v5

    double-to-int v2, v2

    int-to-byte v2, v2

    const/4 v6, 0x2

    goto :goto_e

    .line 535
    :cond_e
    iget-object v2, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    div-int/lit8 v2, v2, 0x64

    int-to-byte v4, v2

    .line 536
    iget-object v2, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    rem-int/lit8 v2, v2, 0x64

    int-to-byte v2, v2

    move/from16 v6, v20

    .line 539
    :goto_e
    iget-object v3, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mContext:Landroid/content/Context;

    const/4 v5, 0x6

    new-array v7, v5, [B

    const/4 v5, 0x0

    aput-byte v24, v7, v5

    const/4 v5, 0x1

    aput-byte v20, v7, v5

    const/4 v5, 0x2

    aput-byte v6, v7, v5

    const/4 v5, 0x3

    aput-byte v1, v7, v5

    aput-byte v4, v7, v11

    aput-byte v2, v7, v12

    invoke-direct {v8, v3, v7}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->sndRadioMidea(Landroid/content/Context;[B)V

    goto/16 :goto_d

    :pswitch_10
    move-object/from16 v37, p3

    move/from16 v32, v4

    move-object/from16 v33, v5

    move v11, v7

    move-object/from16 v13, v21

    move/from16 v34, v25

    const/4 v12, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/16 v6, 0x11

    const/16 v7, 0x12

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 512
    invoke-direct/range {v1 .. v7}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->getAllBandTypeData(Ljava/lang/String;BBBBB)B

    move-result v1

    .line 513
    iget-object v2, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    invoke-direct {v8, v10, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->getFreqByteHiLo(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    iget-object v2, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mContext:Landroid/content/Context;

    const/16 v7, 0xa

    new-array v3, v7, [B

    const/4 v4, 0x0

    aput-byte v24, v3, v4

    const/4 v4, 0x1

    aput-byte v16, v3, v4

    const/4 v5, 0x2

    aput-byte v4, v3, v5

    const/4 v5, 0x3

    aput-byte v4, v3, v5

    aput-byte v1, v3, v11

    iget-byte v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->freqLo:B

    aput-byte v1, v3, v12

    iget-byte v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->freqHi:B

    const/4 v4, 0x6

    aput-byte v1, v3, v4

    int-to-byte v1, v9

    const/4 v6, 0x7

    aput-byte v1, v3, v6

    const/4 v1, 0x0

    const/16 v5, 0x8

    aput-byte v1, v3, v5

    aput-byte v1, v3, v20

    invoke-direct {v8, v2, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->sndRadioMidea(Landroid/content/Context;[B)V

    move-object/from16 v38, v13

    const/16 v3, 0xff

    move v13, v7

    goto/16 :goto_16

    :pswitch_11
    move-object/from16 v37, p3

    move/from16 v32, v4

    move-object/from16 v33, v5

    move v11, v7

    move-object/from16 v13, v21

    move/from16 v34, v25

    const/16 v5, 0x8

    const/4 v6, 0x7

    const/16 v7, 0xa

    const/4 v12, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/16 v21, 0x2

    const/16 v22, 0x10

    const/16 v23, 0x10

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v5, v21

    move/from16 v6, v22

    move/from16 v7, v23

    .line 504
    invoke-direct/range {v1 .. v7}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->getAllBandTypeData(Ljava/lang/String;BBBBB)B

    move-result v1

    .line 505
    iget-object v2, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mContext:Landroid/content/Context;

    new-array v3, v11, [B

    const/4 v4, 0x0

    aput-byte v24, v3, v4

    const/4 v4, 0x1

    aput-byte v19, v3, v4

    const/4 v5, 0x2

    aput-byte v4, v3, v5

    const/4 v5, 0x3

    aput-byte v4, v3, v5

    invoke-direct {v8, v2, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->sndRadioMidea(Landroid/content/Context;[B)V

    .line 506
    iget-object v2, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    invoke-direct {v8, v10, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->getFreqByteHiLo(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    iget-object v2, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mContext:Landroid/content/Context;

    const/4 v3, 0x6

    new-array v4, v3, [B

    const/4 v3, 0x0

    aput-byte v24, v4, v3

    const/4 v3, 0x1

    aput-byte v18, v4, v3

    const/4 v3, 0x2

    aput-byte v1, v4, v3

    iget-byte v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->freqLo:B

    const/4 v3, 0x3

    aput-byte v1, v4, v3

    iget-byte v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->freqHi:B

    aput-byte v1, v4, v11

    int-to-byte v1, v9

    aput-byte v1, v4, v12

    invoke-direct {v8, v2, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->sndRadioMidea(Landroid/content/Context;[B)V

    goto/16 :goto_d

    :pswitch_12
    move-object/from16 v37, p3

    move/from16 v32, v4

    move-object/from16 v33, v5

    move v11, v7

    move-object/from16 v7, v21

    move/from16 v34, v25

    const/4 v12, 0x5

    .line 496
    iget-object v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mContext:Landroid/content/Context;

    const/4 v2, 0x3

    new-array v3, v2, [B

    const/4 v2, 0x0

    aput-byte v24, v3, v2

    const/4 v2, 0x1

    aput-byte v16, v3, v2

    const/4 v4, 0x2

    aput-byte v2, v3, v4

    invoke-direct {v8, v1, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->sndRadioMidea(Landroid/content/Context;[B)V

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/16 v21, 0x3

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v38, v7

    move/from16 v7, v21

    .line 497
    invoke-direct/range {v1 .. v7}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->getAllBandTypeData(Ljava/lang/String;BBBBB)B

    move-result v1

    .line 498
    iget-object v2, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    invoke-direct {v8, v10, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->getFreqByteHiLo(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    if-ne v13, v2, :cond_f

    const/16 v3, 0x80

    goto :goto_f

    :cond_f
    const/4 v3, 0x0

    .line 499
    :goto_f
    iget-object v4, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->IsRadioAs(Landroid/content/Context;)I

    move-result v4

    if-ne v4, v2, :cond_10

    const/16 v2, 0x40

    goto :goto_10

    :cond_10
    const/4 v2, 0x0

    :goto_10
    or-int/2addr v2, v3

    int-to-byte v2, v2

    .line 500
    iget-object v3, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mContext:Landroid/content/Context;

    const/16 v13, 0x8

    new-array v4, v13, [B

    const/4 v5, 0x0

    aput-byte v24, v4, v5

    const/16 v5, -0x7d

    const/4 v6, 0x1

    aput-byte v5, v4, v6

    const/4 v5, 0x2

    aput-byte v1, v4, v5

    iget-byte v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->freqHi:B

    const/4 v5, 0x3

    aput-byte v1, v4, v5

    iget-byte v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->freqLo:B

    aput-byte v1, v4, v11

    int-to-byte v1, v9

    aput-byte v1, v4, v12

    const/4 v1, 0x6

    aput-byte v2, v4, v1

    const/4 v1, 0x0

    const/4 v7, 0x7

    aput-byte v1, v4, v7

    invoke-direct {v8, v3, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->sndRadioMidea(Landroid/content/Context;[B)V

    goto :goto_11

    :pswitch_13
    move-object/from16 v37, p3

    move/from16 v32, v4

    move-object/from16 v33, v5

    move v11, v7

    move-object/from16 v38, v21

    move/from16 v34, v25

    const/4 v7, 0x7

    const/4 v12, 0x5

    const/16 v13, 0x8

    .line 492
    iget-object v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mContext:Landroid/content/Context;

    const/4 v2, 0x3

    new-array v3, v2, [B

    const/4 v2, 0x0

    aput-byte v24, v3, v2

    const/4 v2, 0x1

    aput-byte v16, v3, v2

    const/4 v4, 0x2

    aput-byte v2, v3, v4

    invoke-direct {v8, v1, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->sndRadioMidea(Landroid/content/Context;[B)V

    goto :goto_11

    :pswitch_14
    move-object/from16 v37, p3

    move/from16 v32, v4

    move-object/from16 v33, v5

    move v11, v7

    move-object/from16 v38, v21

    move/from16 v34, v25

    const/4 v7, 0x7

    const/4 v12, 0x5

    const/16 v13, 0x8

    .line 489
    iget-object v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mContext:Landroid/content/Context;

    const/4 v2, 0x3

    new-array v3, v2, [B

    const/4 v2, 0x0

    aput-byte v24, v3, v2

    const/16 v2, -0x7a

    const/4 v4, 0x1

    aput-byte v2, v3, v4

    const/4 v2, 0x2

    aput-byte v4, v3, v2

    invoke-direct {v8, v1, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->sndRadioMidea(Landroid/content/Context;[B)V

    :goto_11
    const/16 v3, 0xff

    :goto_12
    const/16 v13, 0xa

    goto/16 :goto_16

    :pswitch_15
    move-object/from16 v37, p3

    move/from16 v32, v4

    move-object/from16 v33, v5

    move v11, v7

    move-object/from16 v38, v21

    move/from16 v34, v25

    const/4 v7, 0x7

    const/4 v12, 0x5

    const/16 v13, 0x8

    .line 481
    iget-object v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->RADIO:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;

    const/4 v3, 0x0

    const/16 v6, 0xff

    invoke-static {v1, v2, v6, v3, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportSimpleMediaInfo(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;IZZ)V

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/16 v21, 0x10

    const/16 v22, 0x10

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v6, v21

    move v13, v7

    move/from16 v7, v22

    .line 482
    invoke-direct/range {v1 .. v7}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->getAllBandTypeData(Ljava/lang/String;BBBBB)B

    move-result v1

    .line 483
    iget-object v2, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    invoke-direct {v8, v10, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->getFreqByteHiLo(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x6

    new-array v3, v2, [B

    const/4 v2, 0x0

    aput-byte v24, v3, v2

    const/4 v2, 0x1

    aput-byte v18, v3, v2

    const/4 v2, 0x2

    aput-byte v1, v3, v2

    .line 484
    iget-byte v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->freqLo:B

    const/4 v2, 0x3

    aput-byte v1, v3, v2

    iget-byte v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->freqHi:B

    aput-byte v1, v3, v11

    int-to-byte v1, v9

    aput-byte v1, v3, v12

    .line 485
    iget-object v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mContext:Landroid/content/Context;

    invoke-direct {v8, v1, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->sndRadioMidea(Landroid/content/Context;[B)V

    goto :goto_11

    :pswitch_16
    move-object/from16 v37, p3

    move/from16 v32, v4

    move-object/from16 v33, v5

    move v11, v7

    move-object/from16 v38, v21

    move/from16 v34, v25

    const/4 v12, 0x5

    const/4 v13, 0x7

    .line 473
    iget-object v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    invoke-direct {v8, v10, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->getFreqByteHiLo(Ljava/lang/String;Ljava/lang/String;)V

    shl-int/lit8 v1, v9, 0x3

    .line 474
    invoke-direct {v8, v10}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->getXinbasBandType(Ljava/lang/String;)B

    move-result v2

    or-int/2addr v1, v2

    int-to-byte v1, v1

    .line 475
    iget-object v2, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mContext:Landroid/content/Context;

    new-array v3, v13, [B

    const/4 v4, 0x0

    aput-byte v24, v3, v4

    const/16 v5, -0x7c

    const/4 v6, 0x1

    aput-byte v5, v3, v6

    const/4 v5, 0x2

    aput-byte v6, v3, v5

    const/4 v5, 0x3

    aput-byte v4, v3, v5

    aput-byte v1, v3, v11

    iget-byte v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->freqHi:B

    aput-byte v1, v3, v12

    iget-byte v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->freqLo:B

    const/4 v4, 0x6

    aput-byte v1, v3, v4

    invoke-direct {v8, v2, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->sndRadioMidea(Landroid/content/Context;[B)V

    goto/16 :goto_11

    :pswitch_17
    move-object/from16 v37, p3

    move/from16 v32, v4

    move-object/from16 v33, v5

    move v11, v7

    move-object/from16 v38, v21

    move/from16 v34, v25

    const/4 v12, 0x5

    const/4 v13, 0x7

    const/16 v3, 0x11

    const/16 v4, 0x12

    const/16 v5, 0x13

    const/16 v6, 0x21

    const/16 v7, 0x22

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 456
    invoke-direct/range {v1 .. v7}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->getAllBandTypeData(Ljava/lang/String;BBBBB)B

    move-result v1

    .line 457
    iget-object v2, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "canbus_cur_vol"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    if-lez v2, :cond_11

    move v7, v11

    goto :goto_13

    :cond_11
    const/16 v7, 0xc

    :goto_13
    int-to-byte v2, v7

    .line 459
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v3

    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->BENZ_B200_LUZHENG:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    if-ne v3, v4, :cond_12

    xor-int/lit8 v2, v2, 0x4

    int-to-byte v2, v2

    .line 462
    :cond_12
    iget-object v3, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    invoke-direct {v8, v10, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->getFreqByteHiLo(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    iget-object v3, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mContext:Landroid/content/Context;

    const/16 v4, 0xb

    new-array v4, v4, [B

    const/4 v5, 0x0

    aput-byte v24, v4, v5

    const/4 v5, 0x1

    aput-byte v16, v4, v5

    const/4 v6, 0x2

    aput-byte v5, v4, v6

    const/4 v5, 0x3

    aput-byte v17, v4, v5

    aput-byte v1, v4, v11

    iget-byte v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->freqHi:B

    aput-byte v1, v4, v12

    iget-byte v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->freqLo:B

    const/4 v5, 0x6

    aput-byte v1, v4, v5

    int-to-byte v1, v9

    aput-byte v1, v4, v13

    const/16 v1, 0x8

    aput-byte v2, v4, v1

    aput-byte v17, v4, v20

    const/16 v7, 0xa

    aput-byte v17, v4, v7

    invoke-direct {v8, v3, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->sndRadioMidea(Landroid/content/Context;[B)V

    move v13, v7

    goto/16 :goto_15

    :pswitch_18
    move-object/from16 v37, p3

    move/from16 v32, v4

    move-object/from16 v33, v5

    move v11, v7

    move-object/from16 v38, v21

    move/from16 v34, v25

    const/16 v7, 0xa

    const/4 v12, 0x5

    const/4 v13, 0x7

    const/16 v3, 0x11

    const/16 v4, 0x12

    const/16 v5, 0x13

    const/16 v6, 0x14

    const/16 v21, 0x15

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move v13, v7

    move/from16 v7, v21

    .line 415
    invoke-direct/range {v1 .. v7}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->getAllBandTypeData(Ljava/lang/String;BBBBB)B

    move-result v1

    .line 416
    iget-object v2, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "canbus_cur_vol"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    new-array v3, v12, [B

    aput-byte v24, v3, v4

    const/16 v4, 0xc

    const/4 v5, 0x1

    aput-byte v4, v3, v5

    const/4 v4, 0x2

    aput-byte v1, v3, v4

    const/4 v1, 0x3

    aput-byte v2, v3, v1

    const/16 v1, 0x8

    aput-byte v1, v3, v11

    .line 419
    iget-object v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    .line 420
    invoke-direct {v8, v10}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->isBandFm(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 421
    iget-object v2, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x6

    if-lt v2, v4, :cond_13

    const/4 v2, 0x0

    .line 422
    invoke-virtual {v1, v2, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 423
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "MHZ"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_14

    .line 425
    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "MHZ"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_14

    .line 428
    :cond_14
    iget-object v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_15

    .line 429
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "KHZ  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_14

    .line 431
    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "KHZ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 434
    :goto_14
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v3, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[BB)[B

    move-result-object v1

    .line 435
    iget-object v2, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mContext:Landroid/content/Context;

    invoke-direct {v8, v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->sndRadioMidea(Landroid/content/Context;[B)V

    goto/16 :goto_15

    :pswitch_19
    move-object/from16 v37, p3

    move/from16 v32, v4

    move-object/from16 v33, v5

    move v11, v7

    move-object/from16 v38, v21

    move/from16 v34, v25

    const/4 v12, 0x5

    const/16 v13, 0xa

    .line 409
    iget-object v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    invoke-direct {v8, v10, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->setVwRadioInfo(Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v13, [B

    const/4 v2, 0x0

    aput-byte v24, v1, v2

    const/4 v3, 0x1

    aput-byte v19, v1, v3

    const/4 v4, 0x2

    aput-byte v3, v1, v4

    const/4 v3, 0x3

    aput-byte v2, v1, v3

    .line 410
    iget-byte v2, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->bandType:B

    aput-byte v2, v1, v11

    iget-byte v2, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->freqLo:B

    aput-byte v2, v1, v12

    iget-byte v2, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->freqHi:B

    const/4 v3, 0x6

    aput-byte v2, v1, v3

    int-to-byte v2, v9

    const/4 v3, 0x7

    aput-byte v2, v1, v3

    const/16 v2, 0x8

    const/4 v3, 0x0

    aput-byte v3, v1, v2

    aput-byte v3, v1, v20

    .line 411
    iget-object v2, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mContext:Landroid/content/Context;

    invoke-direct {v8, v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->sndRadioMidea(Landroid/content/Context;[B)V

    goto :goto_15

    :pswitch_1a
    move-object/from16 v37, p3

    move/from16 v32, v4

    move-object/from16 v33, v5

    move v11, v7

    move-object/from16 v38, v21

    move/from16 v34, v25

    const/4 v12, 0x5

    const/16 v13, 0xa

    .line 402
    iget-object v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    invoke-direct {v8, v10, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->setVwRadioInfo(Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v13, [B

    const/4 v2, 0x0

    aput-byte v24, v1, v2

    const/4 v2, 0x1

    aput-byte v19, v1, v2

    const/4 v3, 0x2

    aput-byte v2, v1, v3

    const/4 v3, 0x3

    aput-byte v2, v1, v3

    .line 403
    iget-byte v2, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->bandType:B

    aput-byte v2, v1, v11

    iget-byte v2, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->freqLo:B

    aput-byte v2, v1, v12

    iget-byte v2, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->freqHi:B

    const/4 v3, 0x6

    aput-byte v2, v1, v3

    int-to-byte v2, v9

    const/4 v3, 0x7

    aput-byte v2, v1, v3

    const/16 v2, 0x8

    const/4 v3, 0x0

    aput-byte v3, v1, v2

    aput-byte v3, v1, v20

    .line 404
    iget-object v2, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mContext:Landroid/content/Context;

    invoke-direct {v8, v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->sndRadioMidea(Landroid/content/Context;[B)V

    :goto_15
    const/16 v3, 0xff

    goto :goto_16

    :pswitch_1b
    move-object/from16 v37, p3

    move/from16 v32, v4

    move-object/from16 v33, v5

    move v11, v7

    move-object/from16 v38, v21

    move/from16 v34, v25

    const/4 v12, 0x5

    const/16 v13, 0xa

    .line 374
    iget-object v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->RADIO:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;

    const/16 v3, 0xff

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportSimpleMediaInfo(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;IZZ)V

    .line 375
    iget-object v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    invoke-direct {v8, v10, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->setVwRadioInfo(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x6

    new-array v2, v1, [B

    aput-byte v24, v2, v4

    const/4 v1, 0x1

    aput-byte v18, v2, v1

    .line 376
    iget-byte v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->bandType:B

    const/4 v4, 0x2

    aput-byte v1, v2, v4

    iget-byte v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->freqLo:B

    const/4 v4, 0x3

    aput-byte v1, v2, v4

    iget-byte v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->freqHi:B

    aput-byte v1, v2, v11

    int-to-byte v1, v9

    aput-byte v1, v2, v12

    .line 377
    iget-object v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mContext:Landroid/content/Context;

    invoke-direct {v8, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->sndRadioMidea(Landroid/content/Context;[B)V

    :goto_16
    const/16 v21, 0x1

    goto :goto_18

    :goto_17
    const/16 v21, 0x0

    .line 695
    :goto_18
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$8;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v2

    aget v1, v1, v2
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3

    const/16 v2, 0x19

    if-eq v1, v2, :cond_3b

    const/16 v2, 0x2e

    if-eq v1, v2, :cond_3a

    const-string v7, "0"

    packed-switch v1, :pswitch_data_2

    .line 1235
    :try_start_6
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->reportCanbusRadioInfo:[B

    :goto_19
    const/4 v2, 0x1

    :goto_1a
    const/16 v26, 0x0

    goto/16 :goto_2e

    .line 1228
    :pswitch_1c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v8, v10}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->getBandUnit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [B

    const/4 v3, 0x0

    aput-byte v24, v2, v3

    const/4 v3, 0x7

    const/4 v4, 0x1

    aput-byte v3, v2, v4

    .line 1230
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v1

    const/16 v2, 0xe

    .line 1231
    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->makeBytesFixedLength([BI)[B

    move-result-object v1

    goto :goto_19

    :pswitch_1d
    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/16 v6, 0x11

    const/16 v7, 0x12

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 1222
    invoke-direct/range {v1 .. v7}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->getAllBandTypeData(Ljava/lang/String;BBBBB)B

    move-result v1

    .line 1223
    iget-object v2, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    invoke-direct {v8, v10, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->getFreqByteHiLo(Ljava/lang/String;Ljava/lang/String;)V

    new-array v2, v13, [B

    const/4 v3, 0x0

    aput-byte v24, v2, v3

    const/4 v3, 0x1

    aput-byte v19, v2, v3

    const/4 v4, 0x2

    aput-byte v3, v2, v4

    const/4 v4, 0x3

    aput-byte v3, v2, v4

    aput-byte v1, v2, v11

    .line 1224
    iget-byte v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->freqLo:B

    aput-byte v1, v2, v12

    iget-byte v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->freqHi:B

    const/4 v3, 0x6

    aput-byte v1, v2, v3

    int-to-byte v1, v9

    const/4 v3, 0x7

    aput-byte v1, v2, v3

    const/16 v1, 0x8

    const/4 v3, 0x0

    aput-byte v3, v2, v1

    aput-byte v3, v2, v20

    goto/16 :goto_1e

    :pswitch_1e
    const/4 v1, 0x2

    new-array v2, v1, [B

    const/4 v1, 0x0

    aput-byte v24, v2, v1

    const/16 v1, -0x7d

    const/4 v3, 0x1

    aput-byte v1, v2, v3

    const/4 v1, 0x0

    move/from16 v14, v34

    if-nez v14, :cond_17

    .line 1202
    iget-object v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x6

    if-ne v1, v3, :cond_16

    .line 1203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v15, v38

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    iget-object v4, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "MHz"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1204
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    goto :goto_1b

    :cond_16
    move-object/from16 v15, v38

    .line 1206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "MHz"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1207
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    goto :goto_1b

    :cond_17
    move-object/from16 v15, v38

    .line 1210
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "KHz"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1211
    iget-object v4, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_18

    .line 1212
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [B

    const/4 v4, 0x0

    aput-byte v4, v3, v4

    const/4 v5, 0x1

    aput-byte v4, v3, v5

    invoke-static {v1, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v1

    goto :goto_1b

    .line 1213
    :cond_18
    iget-object v4, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v11, :cond_19

    .line 1214
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v3, 0x1

    new-array v4, v3, [B

    const/4 v3, 0x0

    aput-byte v3, v4, v3

    invoke-static {v1, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v1

    .line 1217
    :cond_19
    :goto_1b
    invoke-static {v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v1

    const/16 v2, 0xe

    .line 1218
    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->makeBytesFixedLength([BI)[B

    move-result-object v1

    goto/16 :goto_19

    :pswitch_1f
    move/from16 v14, v34

    move-object/from16 v15, v38

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/16 v7, 0x10

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 1156
    invoke-direct/range {v1 .. v7}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->getAllBandTypeData(Ljava/lang/String;BBBBB)B

    move-result v1

    new-array v2, v12, [B

    const/4 v3, 0x0

    aput-byte v24, v2, v3

    const/4 v4, 0x1

    aput-byte v19, v2, v4

    const/4 v5, 0x2

    aput-byte v4, v2, v5

    const/4 v4, 0x3

    aput-byte v3, v2, v4

    aput-byte v1, v2, v11

    .line 1157
    invoke-static {v2, v13}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->CompensateZero([BI)[B

    move-result-object v1

    .line 1158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v14, :cond_1b

    const/4 v3, 0x1

    if-eq v14, v3, :cond_1a

    :goto_1c
    const/4 v3, 0x3

    goto :goto_1d

    .line 1164
    :cond_1a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "KHz"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1c

    .line 1161
    :cond_1b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "MHz"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1c

    :goto_1d
    new-array v3, v3, [B

    const/4 v4, 0x0

    aput-byte v24, v3, v4

    const/16 v4, 0x70

    const/4 v5, 0x1

    aput-byte v4, v3, v5

    const/16 v4, 0x10

    const/4 v5, 0x2

    aput-byte v4, v3, v5

    .line 1171
    new-instance v4, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$5;

    invoke-direct {v4, v8, v2, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$5;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;Ljava/lang/String;[B)V

    .line 1186
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto/16 :goto_19

    :pswitch_20
    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/16 v6, 0x11

    const/16 v7, 0x12

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 1150
    invoke-direct/range {v1 .. v7}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->getAllBandTypeData(Ljava/lang/String;BBBBB)B

    move-result v1

    .line 1151
    iget-object v2, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    invoke-direct {v8, v10, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->getFreqByteHiLo(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x7

    new-array v2, v2, [B

    const/4 v3, 0x0

    aput-byte v24, v2, v3

    const/4 v3, 0x1

    aput-byte v19, v2, v3

    const/4 v4, 0x2

    aput-byte v3, v2, v4

    const/4 v3, 0x3

    aput-byte v1, v2, v3

    .line 1152
    iget-byte v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->freqLo:B

    aput-byte v1, v2, v11

    iget-byte v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->freqHi:B

    aput-byte v1, v2, v12

    int-to-byte v1, v9

    const/4 v3, 0x6

    aput-byte v1, v2, v3

    goto :goto_1e

    :pswitch_21
    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x4

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 1144
    invoke-direct/range {v1 .. v7}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->getAllBandTypeData(Ljava/lang/String;BBBBB)B

    move-result v1

    .line 1145
    iget-object v2, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    invoke-direct {v8, v10, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->getFreqByte(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x6

    new-array v2, v2, [B

    const/4 v3, 0x0

    aput-byte v24, v2, v3

    const/16 v4, -0x3c

    const/4 v5, 0x1

    aput-byte v4, v2, v5

    const/4 v4, 0x2

    aput-byte v1, v2, v4

    const/4 v1, 0x3

    aput-byte v3, v2, v1

    .line 1146
    iget-byte v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->freqLo:B

    aput-byte v1, v2, v11

    iget-byte v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->freqHi:B

    aput-byte v1, v2, v12

    :goto_1e
    move-object v1, v2

    goto/16 :goto_19

    :pswitch_22
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/16 v7, 0x10

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 1138
    invoke-direct/range {v1 .. v7}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->getAllBandTypeData(Ljava/lang/String;BBBBB)B

    move-result v1

    .line 1139
    iget-object v2, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    invoke-direct {v8, v10, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->getFreqByteHiLo(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x7

    new-array v2, v2, [B

    const/4 v3, 0x0

    aput-byte v24, v2, v3

    const/4 v3, 0x1

    aput-byte v19, v2, v3

    const/4 v4, 0x2

    aput-byte v3, v2, v4

    const/4 v4, 0x3

    aput-byte v3, v2, v4

    aput-byte v1, v2, v11

    .line 1140
    iget-byte v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->freqLo:B

    aput-byte v1, v2, v12

    iget-byte v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->freqHi:B

    const/4 v3, 0x6

    aput-byte v1, v2, v3

    goto :goto_1e

    :pswitch_23
    move-object/from16 v15, v38

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/16 v7, 0x10

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 1127
    invoke-direct/range {v1 .. v7}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->getAllBandTypeData(Ljava/lang/String;BBBBB)B

    move-result v1

    .line 1128
    iget-object v2, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    invoke-direct {v8, v10, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->getFreqByteHiLo(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xc

    new-array v2, v2, [B

    const/4 v3, 0x0

    aput-byte v24, v2, v3

    const/4 v3, 0x1

    aput-byte v19, v2, v3

    const/4 v4, 0x2

    aput-byte v3, v2, v4

    const/4 v4, 0x3

    aput-byte v3, v2, v4

    aput-byte v1, v2, v11

    .line 1129
    iget-byte v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->freqHi:B

    aput-byte v1, v2, v12

    iget-byte v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->freqLo:B

    const/4 v3, 0x6

    aput-byte v1, v2, v3

    int-to-byte v1, v9

    const/4 v3, 0x7

    aput-byte v1, v2, v3

    const/16 v1, 0x8

    const/4 v3, 0x0

    aput-byte v3, v2, v1

    aput-byte v3, v2, v20

    aput-byte v3, v2, v13

    const/16 v1, 0xb

    aput-byte v3, v2, v1

    .line 1131
    iget-object v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "currentReportPrev"

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1132
    iget-object v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mContext:Landroid/content/Context;

    invoke-direct {v8, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->sndRadioMidea(Landroid/content/Context;[B)V

    const/4 v1, 0x3

    new-array v2, v1, [B

    aput-byte v24, v2, v3

    const/16 v3, -0x3d

    const/4 v4, 0x1

    aput-byte v3, v2, v4

    const/4 v3, 0x2

    aput-byte v1, v2, v3

    .line 1133
    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v1

    goto/16 :goto_19

    :pswitch_24
    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/16 v6, 0x11

    const/16 v7, 0x12

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 1119
    invoke-direct/range {v1 .. v7}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->getAllBandTypeData(Ljava/lang/String;BBBBB)B

    move-result v1

    .line 1120
    iget-object v2, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    invoke-direct {v8, v10, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->getFreqByteHiLo(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x7

    new-array v2, v2, [B

    const/4 v3, 0x0

    aput-byte v24, v2, v3

    const/4 v3, 0x1

    aput-byte v19, v2, v3

    const/4 v4, 0x2

    aput-byte v3, v2, v4

    const/4 v3, 0x3

    aput-byte v1, v2, v3

    .line 1121
    iget-byte v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->freqLo:B

    aput-byte v1, v2, v11

    iget-byte v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->freqHi:B

    aput-byte v1, v2, v12

    int-to-byte v1, v9

    const/4 v3, 0x6

    aput-byte v1, v2, v3

    goto/16 :goto_1e

    :pswitch_25
    const/4 v1, 0x3

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte v24, v1, v2

    const/4 v2, 0x1

    aput-byte v16, v1, v2

    const/4 v3, 0x2

    aput-byte v2, v1, v3

    goto/16 :goto_19

    .line 1100
    :pswitch_26
    iget-object v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "btState"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1d

    .line 1101
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object v1

    sget-object v2, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v1

    sget-object v2, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->FM:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-eq v1, v2, :cond_1c

    .line 1102
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object v1

    sget-object v2, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v1

    sget-object v2, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->BTPHONE:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-ne v1, v2, :cond_1d

    .line 1103
    :cond_1c
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "action_qz_oringinal_screen_rep_0x83_status"

    .line 1104
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1105
    iget-object v2, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "QZ_ORIGINAL_SRC_MODE_PREV_STATUS"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "qz_src_mode_status"

    .line 1106
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 1107
    iget-object v2, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v1, "QZ"

    const-string v2, "qz_src_mode_status snd radio"

    .line 1108
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    :cond_1d
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->reportCanbusRadioInfo:[B

    const/4 v2, 0x1

    const/16 v26, 0x1

    goto/16 :goto_2e

    .line 1088
    :pswitch_27
    invoke-direct {v8, v10}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->isBandAm(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v6, 0x2

    goto :goto_1f

    :cond_1e
    const/4 v6, 0x1

    .line 1095
    :goto_1f
    iget-object v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    invoke-direct {v8, v10, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->getFreqByteHiLo_10(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x6

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte v24, v1, v2

    const/4 v2, 0x1

    aput-byte v16, v1, v2

    const/4 v2, 0x2

    aput-byte v6, v1, v2

    .line 1096
    iget-byte v2, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->freqHi:B

    const/4 v3, 0x3

    aput-byte v2, v1, v3

    iget-byte v2, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->freqLo:B

    aput-byte v2, v1, v11

    aput-byte v17, v1, v12

    goto/16 :goto_19

    :pswitch_28
    move/from16 v14, v34

    move-object/from16 v15, v38

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v3, v2, [B

    const/4 v2, 0x0

    aput-byte v24, v3, v2

    const/4 v2, 0x7

    const/4 v4, 0x1

    aput-byte v2, v3, v4

    if-nez v14, :cond_20

    .line 1066
    iget-object v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1f

    .line 1067
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    iget-object v4, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "MHz"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1068
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    goto :goto_20

    .line 1070
    :cond_1f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "MHz"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1071
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    goto :goto_20

    .line 1074
    :cond_20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "KHz"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1075
    iget-object v4, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_21

    .line 1076
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [B

    const/4 v4, 0x0

    aput-byte v4, v2, v4

    const/4 v5, 0x1

    aput-byte v4, v2, v5

    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v1

    goto :goto_20

    .line 1077
    :cond_21
    iget-object v4, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v11, :cond_22

    .line 1078
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x1

    new-array v4, v2, [B

    const/4 v2, 0x0

    aput-byte v2, v4, v2

    invoke-static {v1, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v1

    .line 1082
    :cond_22
    :goto_20
    invoke-static {v3, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v1

    goto/16 :goto_19

    :pswitch_29
    const-string v1, "AM2"

    .line 967
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    const-string v1, "AM1"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    goto :goto_22

    :cond_23
    const-string v1, "MW"

    .line 968
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    move v7, v12

    :goto_21
    const/16 v1, 0x8

    goto :goto_23

    :cond_24
    const-string v1, "LW"

    .line 969
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    move v7, v11

    goto :goto_21

    .line 970
    :cond_25
    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    :cond_26
    const/16 v1, 0x8

    const/4 v7, 0x0

    goto :goto_23

    .line 971
    :cond_27
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    const/16 v1, 0x8

    const/4 v7, 0x1

    goto :goto_23

    :cond_28
    move-object/from16 v1, v37

    .line 972
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    const/16 v1, 0x8

    const/4 v7, 0x2

    goto :goto_23

    :cond_29
    :goto_22
    const/16 v1, 0x8

    const/4 v7, 0x6

    :goto_23
    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte v24, v1, v2

    const/16 v3, -0x6d

    const/4 v4, 0x1

    aput-byte v3, v1, v4

    const/4 v3, 0x2

    aput-byte v4, v1, v3

    const/4 v3, 0x3

    aput-byte v7, v1, v3

    aput-byte v2, v1, v11

    aput-byte v2, v1, v12

    move/from16 v12, v32

    shr-int/lit8 v2, v12, 0x8

    int-to-byte v2, v2

    const/4 v3, 0x6

    aput-byte v2, v1, v3

    int-to-byte v2, v12

    const/4 v3, 0x7

    aput-byte v2, v1, v3

    goto/16 :goto_19

    :pswitch_2a
    move-object/from16 v15, v38

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x2

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 949
    invoke-direct/range {v1 .. v7}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->getAllBandTypeData(Ljava/lang/String;BBBBB)B

    move-result v1

    const/4 v2, 0x3

    new-array v2, v2, [B

    const/4 v3, 0x0

    aput-byte v24, v2, v3

    const/16 v3, -0x70

    const/4 v4, 0x1

    aput-byte v3, v2, v4

    const/4 v3, 0x2

    aput-byte v1, v2, v3

    .line 951
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v33

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->string2UnicodeBIG(Ljava/lang/String;)[B

    move-result-object v1

    .line 952
    invoke-static {v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v1

    const/16 v2, 0x21

    new-array v3, v2, [B

    const/4 v4, 0x0

    .line 954
    :goto_24
    array-length v5, v1

    if-ge v4, v5, :cond_2b

    if-ne v2, v4, :cond_2a

    goto :goto_25

    .line 956
    :cond_2a
    aget-byte v5, v1, v4

    aput-byte v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    :cond_2b
    :goto_25
    move-object v1, v3

    goto/16 :goto_19

    :pswitch_2b
    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x4

    const/4 v13, 0x5

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object v14, v7

    move v7, v13

    .line 884
    invoke-direct/range {v1 .. v7}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->getAllBandTypeData(Ljava/lang/String;BBBBB)B

    move-result v1

    .line 885
    invoke-direct {v8, v10}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->isBandFm(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 886
    iget-object v2, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v12, :cond_2c

    .line 887
    iget-object v2, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 888
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "     0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_26
    const/4 v3, 0x3

    goto/16 :goto_27

    .line 890
    :cond_2c
    iget-object v2, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v11, :cond_2d

    .line 891
    iget-object v2, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 892
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "      "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_26

    .line 895
    :cond_2d
    iget-object v2, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 896
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "     "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_26

    .line 899
    :cond_2e
    iget-object v2, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2f

    const-string v2, "SystemMix"

    .line 900
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCurrentFreq1="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "       "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_26

    :cond_2f
    const-string v2, "SystemMix"

    .line 903
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCurrentFreq2="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "      "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_26

    :goto_27
    new-array v3, v3, [B

    const/4 v4, 0x0

    aput-byte v24, v3, v4

    const/16 v4, -0x6f

    const/4 v5, 0x1

    aput-byte v4, v3, v5

    const/4 v4, 0x2

    aput-byte v1, v3, v4

    .line 908
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v3, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v1

    goto/16 :goto_19

    :pswitch_2c
    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x4

    const/4 v7, 0x5

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 873
    invoke-direct/range {v1 .. v7}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->getAllBandTypeData(Ljava/lang/String;BBBBB)B

    move-result v1

    .line 875
    iget-object v2, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->getMpegplayerManager(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->isDiscExist()Z

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3, v3, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->setIntByteWithBit(IIZ)I

    move-result v2

    const/16 v4, 0x10

    new-array v4, v4, [B

    aput-byte v24, v4, v3

    const/16 v5, -0x6f

    const/4 v6, 0x1

    aput-byte v5, v4, v6

    const/4 v5, 0x2

    aput-byte v1, v4, v5

    int-to-byte v1, v2

    const/4 v2, 0x3

    aput-byte v1, v4, v2

    aput-byte v3, v4, v11

    aput-byte v3, v4, v12

    const/4 v1, 0x6

    aput-byte v3, v4, v1

    const/4 v1, 0x7

    aput-byte v3, v4, v1

    const/16 v1, 0x8

    aput-byte v3, v4, v1

    aput-byte v3, v4, v20

    aput-byte v3, v4, v13

    const/16 v1, 0xb

    aput-byte v3, v4, v1

    const/16 v1, 0xc

    aput-byte v3, v4, v1

    const/16 v1, 0xd

    aput-byte v3, v4, v1

    const/16 v1, 0xe

    aput-byte v3, v4, v1

    const/16 v1, 0xf

    aput-byte v3, v4, v1

    move-object v1, v4

    goto/16 :goto_19

    :pswitch_2d
    move-object v14, v7

    move-object/from16 v15, v38

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x4

    const/4 v7, 0x5

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 844
    invoke-direct/range {v1 .. v7}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->getAllBandTypeData(Ljava/lang/String;BBBBB)B

    move-result v1

    .line 845
    invoke-direct {v8, v10}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->isBandAm(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 846
    iget-object v2, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_30

    .line 847
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "      "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_28

    .line 849
    :cond_30
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "     "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_28

    .line 851
    :cond_31
    iget-object v2, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v12, :cond_33

    .line 853
    iget-object v2, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    if-ne v2, v3, :cond_32

    .line 855
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_28

    .line 857
    :cond_32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_28

    .line 860
    :cond_33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_28
    const-string v3, "ooo"

    const-string/jumbo v4, "\u53d1\u9001\u4e862D_1"

    .line 863
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x3

    new-array v3, v3, [B

    const/4 v4, 0x0

    aput-byte v24, v3, v4

    const/16 v4, -0x2e

    const/4 v5, 0x1

    aput-byte v4, v3, v5

    const/4 v4, 0x2

    aput-byte v1, v3, v4

    .line 865
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v3, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v1

    goto/16 :goto_19

    .line 823
    :pswitch_2e
    iget-object v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->RADIO:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportSimpleMediaInfo(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;IZZ)V

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/16 v6, 0x10

    const/16 v7, 0x10

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 824
    invoke-direct/range {v1 .. v7}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->getAllBandTypeData(Ljava/lang/String;BBBBB)B

    move-result v1

    .line 825
    iget-object v2, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    invoke-direct {v8, v10, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->getFreqByteHiLo(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x6

    new-array v2, v2, [B

    const/4 v3, 0x0

    aput-byte v24, v2, v3

    const/4 v3, 0x1

    aput-byte v18, v2, v3

    const/4 v3, 0x2

    aput-byte v1, v2, v3

    .line 826
    iget-byte v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->freqLo:B

    const/4 v3, 0x3

    aput-byte v1, v2, v3

    iget-byte v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->freqHi:B

    aput-byte v1, v2, v11

    int-to-byte v1, v9

    aput-byte v1, v2, v12

    .line 827
    iget-object v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mContext:Landroid/content/Context;

    invoke-direct {v8, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->sndRadioMidea(Landroid/content/Context;[B)V

    goto/16 :goto_1e

    .line 814
    :pswitch_2f
    iget-object v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->RADIO:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportSimpleMediaInfo(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;IZZ)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/16 v7, 0x10

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 815
    invoke-direct/range {v1 .. v7}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->getAllBandTypeData(Ljava/lang/String;BBBBB)B

    move-result v1

    .line 816
    iget-object v2, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    invoke-direct {v8, v10, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->getFreqByteHiLo(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x6

    new-array v2, v2, [B

    const/4 v3, 0x0

    aput-byte v24, v2, v3

    const/4 v3, 0x1

    aput-byte v18, v2, v3

    const/4 v3, 0x2

    aput-byte v1, v2, v3

    .line 817
    iget-byte v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->freqLo:B

    const/4 v3, 0x3

    aput-byte v1, v2, v3

    iget-byte v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->freqHi:B

    aput-byte v1, v2, v11

    int-to-byte v1, v9

    aput-byte v1, v2, v12

    .line 818
    iget-object v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mContext:Landroid/content/Context;

    invoke-direct {v8, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->sndRadioMidea(Landroid/content/Context;[B)V

    goto/16 :goto_1e

    :pswitch_30
    move-object/from16 v1, v37

    .line 797
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x82c

    if-eq v2, v3, :cond_35

    const/16 v3, 0x8c7

    if-eq v2, v3, :cond_34

    packed-switch v2, :pswitch_data_3

    packed-switch v2, :pswitch_data_4

    goto :goto_29

    :pswitch_31
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    const/16 v17, 0x3

    goto :goto_29

    :pswitch_32
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    const/16 v17, 0x2

    goto :goto_29

    :pswitch_33
    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    const/16 v17, 0x1

    goto :goto_29

    :pswitch_34
    const-string v1, "AM3"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    const/16 v17, 0x7

    goto :goto_29

    :pswitch_35
    const-string v1, "AM2"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    const/16 v17, 0x6

    goto :goto_29

    :pswitch_36
    const-string v1, "AM1"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    move/from16 v17, v12

    goto :goto_29

    :cond_34
    const-string v1, "FM"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    const/16 v17, 0x0

    goto :goto_29

    :cond_35
    const-string v1, "AM"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    move/from16 v17, v11

    :cond_36
    :goto_29
    packed-switch v17, :pswitch_data_5

    :pswitch_37
    const/4 v6, 0x1

    goto :goto_2a

    :pswitch_38
    const/16 v6, 0x13

    goto :goto_2a

    :pswitch_39
    const/16 v6, 0x12

    goto :goto_2a

    :pswitch_3a
    const/16 v6, 0x11

    goto :goto_2a

    :pswitch_3b
    const/16 v6, 0x10

    goto :goto_2a

    :pswitch_3c
    const/4 v6, 0x3

    goto :goto_2a

    :pswitch_3d
    const/4 v6, 0x2

    goto :goto_2a

    :pswitch_3e
    const/4 v6, 0x0

    .line 808
    :goto_2a
    iget-object v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    invoke-direct {v8, v10, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->getFreqByteHiLo(Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v13, [B

    const/4 v2, 0x0

    aput-byte v24, v1, v2

    const/4 v2, 0x1

    aput-byte v19, v1, v2

    const/4 v3, 0x2

    aput-byte v2, v1, v3

    const/4 v3, 0x3

    aput-byte v2, v1, v3

    aput-byte v6, v1, v11

    .line 809
    iget-byte v2, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->freqLo:B

    aput-byte v2, v1, v12

    iget-byte v2, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->freqHi:B

    const/4 v3, 0x6

    aput-byte v2, v1, v3

    int-to-byte v2, v9

    const/4 v3, 0x7

    aput-byte v2, v1, v3

    const/16 v2, 0x8

    const/4 v3, 0x0

    aput-byte v3, v1, v2

    aput-byte v3, v1, v20

    goto/16 :goto_19

    :pswitch_3f
    move-object v14, v7

    move-object/from16 v15, v38

    const-string v11, ""

    const-string v13, ""

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x4

    const/4 v7, 0x5

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 779
    invoke-direct/range {v1 .. v7}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->getAllBandTypeData(Ljava/lang/String;BBBBB)B

    move-result v1

    .line 780
    invoke-direct {v8, v10}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->isBandAm(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 782
    iget-object v2, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_37

    move-object v7, v14

    goto :goto_2b

    :cond_37
    move-object v7, v11

    :goto_2b
    move-object v13, v15

    const/4 v2, 0x0

    goto :goto_2d

    .line 786
    :cond_38
    iget-object v2, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v12, :cond_39

    move-object v7, v14

    goto :goto_2c

    :cond_39
    move-object v7, v11

    :goto_2c
    const/4 v2, 0x1

    .line 789
    :goto_2d
    iget-object v3, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    iget-object v4, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    const/4 v2, 0x0

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 790
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/text/DecimalFormat;

    const-string v5, "00"

    invoke-direct {v4, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    int-to-long v5, v9

    invoke-virtual {v4, v5, v6}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [B

    const/4 v4, 0x0

    aput-byte v24, v3, v4

    const/16 v4, -0x6f

    const/4 v5, 0x1

    aput-byte v4, v3, v5

    const/4 v4, 0x2

    aput-byte v1, v3, v4

    .line 792
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v3, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v1

    goto/16 :goto_19

    :pswitch_40
    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x2

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 748
    invoke-direct/range {v1 .. v7}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->getAllBandTypeData(Ljava/lang/String;BBBBB)B

    move-result v1

    .line 749
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mCurrentFreq:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v8, v10}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->getBandUnit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [B

    const/4 v4, 0x0

    aput-byte v24, v3, v4

    const/16 v4, -0x67

    const/4 v5, 0x1

    aput-byte v4, v3, v5

    const/4 v4, 0x2

    aput-byte v1, v3, v4

    .line 751
    invoke-static {v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->phoneNum2UnicodeLittleExtra([B)[B

    move-result-object v1

    invoke-static {v3, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v1

    const/16 v2, 0x23

    .line 752
    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->makeBytesFixedLength([BI)[B

    move-result-object v1

    goto/16 :goto_19

    :cond_3a
    new-array v1, v11, [B

    const/16 v2, 0x13

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    const/16 v2, 0x15

    const/4 v4, 0x1

    aput-byte v2, v1, v4

    const/4 v2, 0x2

    aput-byte v3, v1, v2

    int-to-byte v2, v12

    const/4 v3, 0x3

    aput-byte v2, v1, v3

    const-string v2, "RADIO"

    .line 833
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v1

    goto/16 :goto_19

    :cond_3b
    new-array v1, v12, [B

    const/16 v2, 0x13

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    const/4 v2, 0x1

    aput-byte v2, v1, v2

    const/4 v4, 0x2

    aput-byte v3, v1, v4

    const/4 v4, 0x3

    aput-byte v2, v1, v4

    aput-byte v3, v1, v11
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_1a

    .line 1240
    :goto_2e
    :try_start_7
    iget-object v3, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "btState"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_3e

    .line 1241
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object v2

    sget-object v3, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {v2, v3}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v2

    sget-object v3, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->FM:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-eq v2, v3, :cond_3c

    .line 1242
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object v2

    sget-object v3, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {v2, v3}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v2

    sget-object v3, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->BTPHONE:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-ne v2, v3, :cond_3e

    :cond_3c
    if-nez v26, :cond_3d

    .line 1245
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    :cond_3d
    if-nez v21, :cond_3e

    if-nez v26, :cond_3e

    .line 1249
    iget-object v2, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "currentReport"

    const/4 v4, 0x0

    invoke-static {v1, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1250
    iget-object v2, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "currentReport_disc"

    invoke-static {v1, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2f

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 1256
    :try_start_8
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1259
    :cond_3e
    :goto_2f
    iget-object v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mContext:Landroid/content/Context;

    const-string v2, "LcdLog"

    const-string v3, "RadioRepCanbus|SMALL_LCD_FUNCTION"

    invoke-static {v1, v2, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->WLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1260
    iget-object v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mContext:Landroid/content/Context;

    const-string v2, "LcdLog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RadioRepCanbus|SourceSwitchRepCanbus_device ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "SourceSwitchRepCanbus_device"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->WLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1261
    iget-object v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mContext:Landroid/content/Context;

    const-string v2, "LcdLog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RadioRepCanbus|hzbhd_LCD_isFloatView"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "hzbhd_LCD_isFloatView"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->WLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    sget-object v2, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->SMALL_LCD_FUNCTION:Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getSharedBool(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 1263
    new-instance v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;

    invoke-direct {v1, v8, v10, v9}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;Ljava/lang/String;I)V

    iput-object v1, v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->mThread:Ljava/lang/Thread;

    .line 1475
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_30

    :catch_3
    move-exception v0

    move-object v1, v0

    .line 1481
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_30

    :catch_4
    move-exception v0

    move-object v1, v0

    .line 1479
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_3f
    :goto_30
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_1b
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_16
        :pswitch_15
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x98b -> :sswitch_6
        0xacb -> :sswitch_5
        0xfd85 -> :sswitch_4
        0xfd86 -> :sswitch_3
        0x1104a -> :sswitch_2
        0x1104b -> :sswitch_1
        0x1104c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x34
        :pswitch_40
        :pswitch_40
        :pswitch_3f
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2d
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xfd85
        :pswitch_36
        :pswitch_35
        :pswitch_34
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1104a
        :pswitch_33
        :pswitch_32
        :pswitch_31
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_3e
        :pswitch_37
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
    .end packed-switch
.end method
