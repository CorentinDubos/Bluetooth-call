.class public Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;
.super Ljava/lang/Object;
.source "RadarInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;,
        Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;
    }
.end annotation


# static fields
.field static mRadio:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;


# instance fields
.field private disableData:I

.field public isDistanceMode:Z

.field public isOnlyOneDist:Z

.field private mBackLeftMidRadarInfo:B

.field private mBackLeftRadarInfo:B

.field private mBackRightMidRadarInfo:B

.field private mBackRightRadarInfo:B

.field private mCanbusInfoIntArray:[I

.field private mFrontLeftMidRadarInfo:B

.field private mFrontLeftProbeInfo:B

.field private mFrontLeftRadarInfo:B

.field private mFrontRightMidRadarInfo:B

.field private mFrontRightProbeInfo:B

.field private mLeftFrontMidRadarInfo:B

.field private mLeftFrontRadarInfo:B

.field private mLeftRearMidRadarInfo:B

.field private mLeftRearRadarInfo:B

.field private mRearLeftProbeInfo:B

.field private mRearRightProbeInfo:B

.field private mRightFrontMidRadarInfo:B

.field private mRightFrontRadarInfo:B

.field private mRightRearMidRadarInfo:B

.field private mRightRearRadarInfo:B

.field map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;",
            "[I>;"
        }
    .end annotation
.end field

.field mapDist:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mfrontRightRadarInfo:B

.field private minIsClose:Z

.field private radarRange:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 114
    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;

    invoke-direct {v0}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;-><init>()V

    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mRadio:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->isDistanceMode:Z

    .line 15
    iput-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->isOnlyOneDist:Z

    const/4 v1, -0x1

    .line 87
    iput-byte v1, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftRadarInfo:B

    .line 88
    iput-byte v1, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftMidRadarInfo:B

    .line 89
    iput-byte v1, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightMidRadarInfo:B

    .line 90
    iput-byte v1, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightRadarInfo:B

    .line 91
    iput-byte v1, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftRadarInfo:B

    .line 92
    iput-byte v1, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftMidRadarInfo:B

    .line 93
    iput-byte v1, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontRightMidRadarInfo:B

    .line 94
    iput-byte v1, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mfrontRightRadarInfo:B

    .line 95
    iput-byte v1, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontRightProbeInfo:B

    .line 96
    iput-byte v1, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftProbeInfo:B

    .line 97
    iput-byte v1, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mLeftFrontRadarInfo:B

    .line 98
    iput-byte v1, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mLeftFrontMidRadarInfo:B

    .line 99
    iput-byte v1, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mLeftRearMidRadarInfo:B

    .line 100
    iput-byte v1, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mLeftRearRadarInfo:B

    .line 102
    iput-byte v1, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mRightFrontRadarInfo:B

    .line 103
    iput-byte v1, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mRightFrontMidRadarInfo:B

    .line 104
    iput-byte v1, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mRightRearMidRadarInfo:B

    .line 105
    iput-byte v1, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mRightRearRadarInfo:B

    .line 107
    iput-byte v1, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mRearLeftProbeInfo:B

    .line 108
    iput-byte v1, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mRearRightProbeInfo:B

    .line 111
    iput-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    const/16 v1, 0xa

    .line 112
    iput v1, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->radarRange:I

    .line 113
    iput v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->disableData:I

    .line 133
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mapDist:Ljava/util/HashMap;

    .line 348
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->map:Ljava/util/HashMap;

    return-void
.end method

.method private FEKXRadar(I)I
    .locals 2

    const/4 v0, 0x2

    const/16 v1, 0x1f

    if-gt p1, v1, :cond_0

    const/16 v1, 0x1a

    if-lt p1, v1, :cond_0

    const/4 p1, 0x6

    goto :goto_0

    :cond_0
    const/16 v1, 0x19

    if-gt p1, v1, :cond_1

    const/16 v1, 0x14

    if-lt p1, v1, :cond_1

    const/4 p1, 0x5

    goto :goto_0

    :cond_1
    const/16 v1, 0x13

    if-gt p1, v1, :cond_2

    const/16 v1, 0xe

    if-lt p1, v1, :cond_2

    const/4 p1, 0x4

    goto :goto_0

    :cond_2
    const/16 v1, 0xd

    if-gt p1, v1, :cond_3

    const/16 v1, 0x8

    if-lt p1, v1, :cond_3

    const/4 p1, 0x3

    goto :goto_0

    :cond_3
    const/4 v1, 0x7

    if-gt p1, v1, :cond_4

    if-lt p1, v0, :cond_4

    move p1, v0

    :cond_4
    :goto_0
    return p1
.end method

.method private getCurrentCarId()I
    .locals 2

    .line 3236
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->CAN_DIFFERENT_ID:Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getSharedInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;
    .locals 2

    const-class v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;

    monitor-enter v0

    .line 128
    :try_start_0
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mRadio:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;

    if-nez v1, :cond_0

    .line 129
    new-instance v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;

    invoke-direct {v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;-><init>()V

    sput-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mRadio:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;

    .line 131
    :cond_0
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mRadio:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private parseMcuArray2Int([B)[I
    .locals 3

    .line 116
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    const/4 v0, 0x0

    .line 117
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 118
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget-byte v2, p1, v0

    aput v2, v1, v0

    goto :goto_1

    .line 121
    :cond_0
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    :cond_1
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    return-object p1
.end method

.method private setBackLeftData(II)V
    .locals 7

    .line 3541
    iget-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftRadarInfo:B

    if-eq v0, p1, :cond_5

    int-to-byte v0, p1

    .line 3544
    iput-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftRadarInfo:B

    and-int/lit16 v0, p1, 0xff

    .line 3545
    iget v1, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->disableData:I

    const/16 v2, 0xa

    if-ne v0, v1, :cond_0

    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_3

    .line 3547
    :cond_0
    iget-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    if-eqz v0, :cond_1

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr p1, v1

    int-to-float v1, p2

    div-float/2addr p1, v1

    add-float/2addr p1, v0

    mul-float/2addr p1, v0

    float-to-double v0, p1

    .line 3549
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    goto :goto_0

    :cond_1
    mul-int/2addr p1, v2

    .line 3551
    div-int/2addr p1, p2

    rsub-int/lit8 p1, p1, 0xa

    add-int/lit8 p1, p1, 0x1

    int-to-float p1, p1

    float-to-double v0, p1

    .line 3552
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    .line 3553
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finalData="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v3, "setBackRightMidData"

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    if-ge p2, v2, :cond_3

    const-wide/high16 v5, 0x4022000000000000L    # 9.0

    cmpl-double p1, v0, v5

    if-ltz p1, :cond_3

    const/4 p1, 0x7

    if-gt p1, p2, :cond_2

    goto :goto_1

    :cond_2
    move-wide v0, v3

    :cond_3
    :goto_1
    cmpl-double p1, v0, v3

    if-lez p1, :cond_4

    goto :goto_2

    :cond_4
    move-wide v3, v0

    .line 3565
    :goto_2
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    double-to-int p2, v3

    int-to-byte p2, p2

    invoke-direct {p0, p1, p2, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    :cond_5
    :goto_3
    return-void
.end method

.method private setBackLeftMidData(II)V
    .locals 7

    .line 3571
    iget-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftMidRadarInfo:B

    if-eq v0, p1, :cond_5

    int-to-byte v0, p1

    .line 3574
    iput-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftMidRadarInfo:B

    and-int/lit16 v0, p1, 0xff

    .line 3575
    iget v1, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->disableData:I

    const/16 v2, 0xa

    if-ne v0, v1, :cond_0

    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_3

    .line 3577
    :cond_0
    iget-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    if-eqz v0, :cond_1

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr p1, v1

    int-to-float v1, p2

    div-float/2addr p1, v1

    add-float/2addr p1, v0

    mul-float/2addr p1, v0

    float-to-double v0, p1

    .line 3579
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    goto :goto_0

    :cond_1
    mul-int/2addr p1, v2

    .line 3581
    div-int/2addr p1, p2

    rsub-int/lit8 p1, p1, 0xa

    add-int/lit8 p1, p1, 0x1

    int-to-float p1, p1

    float-to-double v0, p1

    .line 3582
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    .line 3583
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finalData="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v3, "setBackRightMidData"

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    if-ge p2, v2, :cond_3

    const-wide/high16 v5, 0x4022000000000000L    # 9.0

    cmpl-double p1, v0, v5

    if-ltz p1, :cond_3

    const/4 p1, 0x7

    if-gt p1, p2, :cond_2

    goto :goto_1

    :cond_2
    move-wide v0, v3

    :cond_3
    :goto_1
    cmpl-double p1, v0, v3

    if-lez p1, :cond_4

    goto :goto_2

    :cond_4
    move-wide v3, v0

    .line 3594
    :goto_2
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    double-to-int p2, v3

    int-to-byte p2, p2

    invoke-direct {p0, p1, p2, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    :cond_5
    :goto_3
    return-void
.end method

.method private setBackRightData(II)V
    .locals 7

    .line 3599
    iget-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightRadarInfo:B

    if-eq v0, p1, :cond_5

    int-to-byte v0, p1

    .line 3602
    iput-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightRadarInfo:B

    and-int/lit16 v0, p1, 0xff

    .line 3603
    iget v1, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->disableData:I

    const/16 v2, 0xa

    if-ne v0, v1, :cond_0

    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_3

    .line 3605
    :cond_0
    iget-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    if-eqz v0, :cond_1

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr p1, v1

    int-to-float v1, p2

    div-float/2addr p1, v1

    add-float/2addr p1, v0

    mul-float/2addr p1, v0

    float-to-double v0, p1

    .line 3607
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    goto :goto_0

    :cond_1
    mul-int/2addr p1, v2

    .line 3609
    div-int/2addr p1, p2

    rsub-int/lit8 p1, p1, 0xa

    add-int/lit8 p1, p1, 0x1

    int-to-float p1, p1

    float-to-double v0, p1

    .line 3610
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    .line 3611
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finalData="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v3, "setBackRightMidData"

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    if-ge p2, v2, :cond_3

    const-wide/high16 v5, 0x4022000000000000L    # 9.0

    cmpl-double p1, v0, v5

    if-ltz p1, :cond_3

    const/4 p1, 0x7

    if-gt p1, p2, :cond_2

    goto :goto_1

    :cond_2
    move-wide v0, v3

    :cond_3
    :goto_1
    cmpl-double p1, v0, v3

    if-lez p1, :cond_4

    goto :goto_2

    :cond_4
    move-wide v3, v0

    .line 3622
    :goto_2
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    double-to-int p2, v3

    int-to-byte p2, p2

    invoke-direct {p0, p1, p2, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    :cond_5
    :goto_3
    return-void
.end method

.method private setBackRightMidData(II)V
    .locals 7

    .line 3628
    iget-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightMidRadarInfo:B

    if-eq v0, p1, :cond_5

    int-to-byte v0, p1

    .line 3631
    iput-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightMidRadarInfo:B

    and-int/lit16 v0, p1, 0xff

    .line 3632
    iget v1, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->disableData:I

    const/16 v2, 0xa

    if-ne v0, v1, :cond_0

    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_3

    .line 3634
    :cond_0
    iget-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    if-eqz v0, :cond_1

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr p1, v1

    int-to-float v1, p2

    div-float/2addr p1, v1

    add-float/2addr p1, v0

    mul-float/2addr p1, v0

    float-to-double v0, p1

    .line 3636
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    goto :goto_0

    :cond_1
    mul-int/2addr p1, v2

    .line 3638
    div-int/2addr p1, p2

    rsub-int/lit8 p1, p1, 0xa

    add-int/lit8 p1, p1, 0x1

    int-to-float p1, p1

    float-to-double v0, p1

    .line 3639
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    .line 3640
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finalData="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v3, "setBackRightMidData"

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    if-ge p2, v2, :cond_3

    const-wide/high16 v5, 0x4022000000000000L    # 9.0

    cmpl-double p1, v0, v5

    if-ltz p1, :cond_3

    const/4 p1, 0x7

    if-gt p1, p2, :cond_2

    goto :goto_1

    :cond_2
    move-wide v0, v3

    :cond_3
    :goto_1
    cmpl-double p1, v0, v3

    if-lez p1, :cond_4

    goto :goto_2

    :cond_4
    move-wide v3, v0

    .line 3651
    :goto_2
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    double-to-int p2, v3

    int-to-byte p2, p2

    invoke-direct {p0, p1, p2, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    :cond_5
    :goto_3
    return-void
.end method

.method private setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V
    .locals 3

    .line 345
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->map:Ljava/util/HashMap;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 p2, 0x1

    aput p3, v1, p2

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setFrontLeftData(II)V
    .locals 8

    .line 3423
    iget-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftRadarInfo:B

    if-eq v0, p1, :cond_5

    int-to-byte v0, p1

    .line 3426
    iput-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftRadarInfo:B

    and-int/lit16 v0, p1, 0xff

    .line 3427
    iget v1, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->disableData:I

    const/16 v2, 0xa

    if-ne v0, v1, :cond_0

    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_3

    .line 3429
    :cond_0
    iget-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    const-string v1, "finalData="

    const-string/jumbo v3, "setBackRightMidData"

    if-eqz v0, :cond_1

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    const/high16 v4, 0x41200000    # 10.0f

    mul-float/2addr p1, v4

    int-to-float v4, p2

    div-float/2addr p1, v4

    add-float/2addr p1, v0

    mul-float/2addr p1, v0

    float-to-double v4, p1

    .line 3431
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    .line 3432
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    mul-int/2addr p1, v2

    .line 3434
    div-int/2addr p1, p2

    rsub-int/lit8 p1, p1, 0xa

    add-int/lit8 p1, p1, 0x1

    int-to-float p1, p1

    float-to-double v4, p1

    .line 3435
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    .line 3436
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    if-ge p2, v2, :cond_3

    const-wide/high16 v6, 0x4022000000000000L    # 9.0

    cmpl-double p1, v4, v6

    if-ltz p1, :cond_3

    const/4 p1, 0x7

    if-gt p1, p2, :cond_2

    goto :goto_1

    :cond_2
    move-wide v4, v0

    :cond_3
    :goto_1
    cmpl-double p1, v4, v0

    if-lez p1, :cond_4

    goto :goto_2

    :cond_4
    move-wide v0, v4

    .line 3447
    :goto_2
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    double-to-int p2, v0

    int-to-byte p2, p2

    invoke-direct {p0, p1, p2, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    :cond_5
    :goto_3
    return-void
.end method

.method private setFrontLeftMidData(II)V
    .locals 7

    .line 3453
    iget-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftMidRadarInfo:B

    if-eq v0, p1, :cond_5

    int-to-byte v0, p1

    .line 3456
    iput-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftMidRadarInfo:B

    and-int/lit16 v0, p1, 0xff

    .line 3457
    iget v1, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->disableData:I

    const/16 v2, 0xa

    if-ne v0, v1, :cond_0

    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_3

    .line 3459
    :cond_0
    iget-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    if-eqz v0, :cond_1

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr p1, v1

    int-to-float v1, p2

    div-float/2addr p1, v1

    add-float/2addr p1, v0

    mul-float/2addr p1, v0

    float-to-double v0, p1

    .line 3461
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    goto :goto_0

    :cond_1
    mul-int/2addr p1, v2

    .line 3463
    div-int/2addr p1, p2

    rsub-int/lit8 p1, p1, 0xa

    add-int/lit8 p1, p1, 0x1

    int-to-float p1, p1

    float-to-double v0, p1

    .line 3464
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    .line 3465
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finalData="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v3, "setBackRightMidData"

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    if-ge p2, v2, :cond_3

    const-wide/high16 v5, 0x4022000000000000L    # 9.0

    cmpl-double p1, v0, v5

    if-ltz p1, :cond_3

    const/4 p1, 0x7

    if-gt p1, p2, :cond_2

    goto :goto_1

    :cond_2
    move-wide v0, v3

    :cond_3
    :goto_1
    cmpl-double p1, v0, v3

    if-lez p1, :cond_4

    goto :goto_2

    :cond_4
    move-wide v3, v0

    .line 3476
    :goto_2
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    double-to-int p2, v3

    int-to-byte p2, p2

    invoke-direct {p0, p1, p2, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    :cond_5
    :goto_3
    return-void
.end method

.method private setFrontRadarDataAllCmd(BIIIII)V
    .locals 2

    .line 3240
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    if-ne v0, p1, :cond_0

    .line 3241
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {p0, p1, p3, p2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setGeneralRadarData(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 3242
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {p0, p1, p4, p2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setGeneralRadarData(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 3243
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {p0, p1, p5, p2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setGeneralRadarData(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 3244
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {p0, p1, p6, p2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setGeneralRadarData(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    :cond_0
    return-void
.end method

.method private setFrontRightData(II)V
    .locals 7

    .line 3482
    iget-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mfrontRightRadarInfo:B

    if-eq v0, p1, :cond_5

    int-to-byte v0, p1

    .line 3485
    iput-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mfrontRightRadarInfo:B

    and-int/lit16 v0, p1, 0xff

    .line 3486
    iget v1, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->disableData:I

    const/16 v2, 0xa

    if-ne v0, v1, :cond_0

    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_3

    .line 3488
    :cond_0
    iget-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    if-eqz v0, :cond_1

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr p1, v1

    int-to-float v1, p2

    div-float/2addr p1, v1

    add-float/2addr p1, v0

    mul-float/2addr p1, v0

    float-to-double v0, p1

    .line 3490
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    goto :goto_0

    :cond_1
    mul-int/2addr p1, v2

    .line 3492
    div-int/2addr p1, p2

    rsub-int/lit8 p1, p1, 0xa

    add-int/lit8 p1, p1, 0x1

    int-to-float p1, p1

    float-to-double v0, p1

    .line 3493
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    .line 3494
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finalData="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v3, "setBackRightMidData"

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    if-ge p2, v2, :cond_3

    const-wide/high16 v5, 0x4022000000000000L    # 9.0

    cmpl-double p1, v0, v5

    if-ltz p1, :cond_3

    const/4 p1, 0x7

    if-gt p1, p2, :cond_2

    goto :goto_1

    :cond_2
    move-wide v0, v3

    :cond_3
    :goto_1
    cmpl-double p1, v0, v3

    if-lez p1, :cond_4

    goto :goto_2

    :cond_4
    move-wide v3, v0

    .line 3505
    :goto_2
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    double-to-int p2, v3

    int-to-byte p2, p2

    invoke-direct {p0, p1, p2, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    :cond_5
    :goto_3
    return-void
.end method

.method private setFrontRightMidData(II)V
    .locals 7

    .line 3512
    iget-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontRightMidRadarInfo:B

    if-eq v0, p1, :cond_5

    int-to-byte v0, p1

    .line 3515
    iput-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontRightMidRadarInfo:B

    and-int/lit16 v0, p1, 0xff

    .line 3516
    iget v1, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->disableData:I

    const/16 v2, 0xa

    if-ne v0, v1, :cond_0

    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_3

    .line 3518
    :cond_0
    iget-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    if-eqz v0, :cond_1

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr p1, v1

    int-to-float v1, p2

    div-float/2addr p1, v1

    add-float/2addr p1, v0

    mul-float/2addr p1, v0

    float-to-double v0, p1

    .line 3520
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    goto :goto_0

    :cond_1
    mul-int/2addr p1, v2

    .line 3522
    div-int/2addr p1, p2

    rsub-int/lit8 p1, p1, 0xa

    add-int/lit8 p1, p1, 0x1

    int-to-float p1, p1

    float-to-double v0, p1

    .line 3523
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    .line 3524
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finalData="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v3, "setBackRightMidData"

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    if-ge p2, v2, :cond_3

    const-wide/high16 v5, 0x4022000000000000L    # 9.0

    cmpl-double p1, v0, v5

    if-ltz p1, :cond_3

    const/4 p1, 0x7

    if-gt p1, p2, :cond_2

    goto :goto_1

    :cond_2
    move-wide v0, v3

    :cond_3
    :goto_1
    cmpl-double p1, v0, v3

    if-lez p1, :cond_4

    goto :goto_2

    :cond_4
    move-wide v3, v0

    .line 3536
    :goto_2
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    double-to-int p2, v3

    int-to-byte p2, p2

    invoke-direct {p0, p1, p2, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    :cond_5
    :goto_3
    return-void
.end method

.method private setGeneralRadarData(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V
    .locals 7

    .line 3294
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reversingCamera$RadarInfo$RadarLocation:[I

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, -0x1

    goto :goto_0

    .line 3342
    :pswitch_0
    iget-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mRightRearRadarInfo:B

    goto :goto_0

    .line 3339
    :pswitch_1
    iget-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mRightRearMidRadarInfo:B

    goto :goto_0

    .line 3336
    :pswitch_2
    iget-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mRightFrontMidRadarInfo:B

    goto :goto_0

    .line 3333
    :pswitch_3
    iget-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mRightFrontRadarInfo:B

    goto :goto_0

    .line 3329
    :pswitch_4
    iget-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mLeftRearRadarInfo:B

    goto :goto_0

    .line 3326
    :pswitch_5
    iget-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mLeftRearMidRadarInfo:B

    goto :goto_0

    .line 3323
    :pswitch_6
    iget-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mLeftFrontMidRadarInfo:B

    goto :goto_0

    .line 3320
    :pswitch_7
    iget-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mLeftFrontRadarInfo:B

    goto :goto_0

    .line 3317
    :pswitch_8
    iget-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightRadarInfo:B

    goto :goto_0

    .line 3314
    :pswitch_9
    iget-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightMidRadarInfo:B

    goto :goto_0

    .line 3311
    :pswitch_a
    iget-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftMidRadarInfo:B

    goto :goto_0

    .line 3308
    :pswitch_b
    iget-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftRadarInfo:B

    goto :goto_0

    .line 3305
    :pswitch_c
    iget-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mfrontRightRadarInfo:B

    goto :goto_0

    .line 3302
    :pswitch_d
    iget-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontRightMidRadarInfo:B

    goto :goto_0

    .line 3299
    :pswitch_e
    iget-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftMidRadarInfo:B

    goto :goto_0

    .line 3296
    :pswitch_f
    iget-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftRadarInfo:B

    :goto_0
    if-eq v0, p2, :cond_4

    .line 3347
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reversingCamera$RadarInfo$RadarLocation:[I

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto :goto_1

    :pswitch_10
    int-to-byte v0, p2

    .line 3394
    iput-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mRightRearRadarInfo:B

    goto :goto_1

    :pswitch_11
    int-to-byte v0, p2

    .line 3391
    iput-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mRightRearMidRadarInfo:B

    goto :goto_1

    :pswitch_12
    int-to-byte v0, p2

    .line 3388
    iput-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mRightFrontMidRadarInfo:B

    goto :goto_1

    :pswitch_13
    int-to-byte v0, p2

    .line 3385
    iput-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mRightFrontRadarInfo:B

    goto :goto_1

    :pswitch_14
    int-to-byte v0, p2

    .line 3382
    iput-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mLeftRearRadarInfo:B

    goto :goto_1

    :pswitch_15
    int-to-byte v0, p2

    .line 3379
    iput-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mLeftRearMidRadarInfo:B

    goto :goto_1

    :pswitch_16
    int-to-byte v0, p2

    .line 3376
    iput-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mLeftFrontMidRadarInfo:B

    goto :goto_1

    :pswitch_17
    int-to-byte v0, p2

    .line 3373
    iput-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mLeftFrontRadarInfo:B

    goto :goto_1

    :pswitch_18
    int-to-byte v0, p2

    .line 3370
    iput-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightRadarInfo:B

    goto :goto_1

    :pswitch_19
    int-to-byte v0, p2

    .line 3367
    iput-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightMidRadarInfo:B

    goto :goto_1

    :pswitch_1a
    int-to-byte v0, p2

    .line 3364
    iput-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftMidRadarInfo:B

    goto :goto_1

    :pswitch_1b
    int-to-byte v0, p2

    .line 3361
    iput-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftRadarInfo:B

    goto :goto_1

    :pswitch_1c
    int-to-byte v0, p2

    .line 3358
    iput-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mfrontRightRadarInfo:B

    goto :goto_1

    :pswitch_1d
    int-to-byte v0, p2

    .line 3355
    iput-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontRightMidRadarInfo:B

    goto :goto_1

    :pswitch_1e
    int-to-byte v0, p2

    .line 3352
    iput-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftMidRadarInfo:B

    goto :goto_1

    :pswitch_1f
    int-to-byte v0, p2

    .line 3349
    iput-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftRadarInfo:B

    :goto_1
    and-int/lit16 v0, p2, 0xff

    .line 3397
    iget v1, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->disableData:I

    const/16 v2, 0xa

    if-ne v0, v1, :cond_0

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_4

    .line 3399
    :cond_0
    iget-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    if-eqz v0, :cond_1

    int-to-float p2, p2

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p2, v0

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr p2, v1

    int-to-float v1, p3

    div-float/2addr p2, v1

    add-float/2addr p2, v0

    mul-float/2addr p2, v0

    float-to-double v0, p2

    .line 3401
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    goto :goto_2

    :cond_1
    mul-int/2addr p2, v2

    .line 3403
    div-int/2addr p2, p3

    rsub-int/lit8 p2, p2, 0xa

    add-int/lit8 p2, p2, 0x1

    int-to-float p2, p2

    float-to-double v0, p2

    .line 3404
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    .line 3405
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finalData="

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v3, "setBackRightMidData"

    invoke-static {v3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    if-ge p3, v2, :cond_2

    const-wide/high16 v5, 0x4022000000000000L    # 9.0

    cmpl-double p2, v0, v5

    if-ltz p2, :cond_2

    const/4 p2, 0x7

    if-eq p3, p2, :cond_2

    move-wide v0, v3

    :cond_2
    cmpl-double p2, v0, v3

    if-lez p2, :cond_3

    goto :goto_3

    :cond_3
    move-wide v3, v0

    :goto_3
    double-to-int p2, v3

    int-to-byte p2, p2

    .line 3413
    invoke-direct {p0, p1, p2, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    :cond_4
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method private setLeftRadarDataAllCmd(BIIIII)V
    .locals 2

    .line 3258
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    if-ne v0, p1, :cond_0

    const-string/jumbo p1, "setLeftRadarDataAllCmd"

    const-string v0, "0x24"

    .line 3259
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3260
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->LEFT_FRONT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {p0, p1, p3, p2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setGeneralRadarData(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 3261
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->LEFT_MID_FRONT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {p0, p1, p4, p2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setGeneralRadarData(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 3262
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->LEFT_MID_REAR:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {p0, p1, p5, p2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setGeneralRadarData(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 3263
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->LEFT_REAR:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {p0, p1, p6, p2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setGeneralRadarData(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    :cond_0
    return-void
.end method

.method private setProbeRadarData(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V
    .locals 5

    .line 3661
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reversingCamera$RadarInfo$RadarLocation:[I

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, -0x1

    goto :goto_0

    .line 3672
    :pswitch_0
    iget-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mRearRightProbeInfo:B

    goto :goto_0

    .line 3669
    :pswitch_1
    iget-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mRearLeftProbeInfo:B

    goto :goto_0

    .line 3666
    :pswitch_2
    iget-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontRightProbeInfo:B

    goto :goto_0

    .line 3663
    :pswitch_3
    iget-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftProbeInfo:B

    :goto_0
    if-eq v0, p2, :cond_4

    .line 3676
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reversingCamera$RadarInfo$RadarLocation:[I

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto :goto_1

    :pswitch_4
    int-to-byte v0, p2

    .line 3687
    iput-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mRearRightProbeInfo:B

    goto :goto_1

    :pswitch_5
    int-to-byte v0, p2

    .line 3684
    iput-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mRearLeftProbeInfo:B

    goto :goto_1

    :pswitch_6
    int-to-byte v0, p2

    .line 3681
    iput-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontRightProbeInfo:B

    goto :goto_1

    :pswitch_7
    int-to-byte v0, p2

    .line 3678
    iput-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftProbeInfo:B

    :goto_1
    and-int/lit16 v0, p2, 0xff

    .line 3690
    iget v1, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->disableData:I

    const/4 v2, 0x4

    if-ne v0, v1, :cond_0

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_4

    .line 3692
    :cond_0
    iget-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    const-string/jumbo v1, "setBackRightMidData"

    if-eqz v0, :cond_1

    int-to-float p2, p2

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p2, v0

    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr p2, v3

    int-to-float v3, p3

    div-float/2addr p2, v3

    add-float/2addr p2, v0

    mul-float/2addr p2, v0

    float-to-double v3, p2

    .line 3694
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    .line 3695
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "minIsClose finalData="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    mul-int/2addr p2, v2

    .line 3697
    div-int/2addr p2, p3

    rsub-int/lit8 p2, p2, 0x4

    add-int/lit8 p2, p2, 0x1

    int-to-float p2, p2

    float-to-double v3, p2

    .line 3698
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    .line 3699
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "finalData="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    if-ge p3, v2, :cond_2

    const-wide/high16 p2, 0x4008000000000000L    # 3.0

    cmpl-double p2, v3, p2

    if-ltz p2, :cond_2

    move-wide v3, v0

    :cond_2
    cmpl-double p2, v3, v0

    if-lez p2, :cond_3

    goto :goto_3

    :cond_3
    move-wide v0, v3

    :goto_3
    double-to-int p2, v0

    int-to-byte p2, p2

    .line 3707
    invoke-direct {p0, p1, p2, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    :cond_4
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x11
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private setRearRadarDataAllCmd(BIIIII)V
    .locals 2

    .line 3249
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    if-ne v0, p1, :cond_0

    .line 3250
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {p0, p1, p3, p2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setGeneralRadarData(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 3251
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {p0, p1, p4, p2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setGeneralRadarData(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 3252
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {p0, p1, p5, p2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setGeneralRadarData(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 3253
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {p0, p1, p6, p2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setGeneralRadarData(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    :cond_0
    return-void
.end method

.method private setReturnData([I)I
    .locals 1

    const/4 v0, 0x0

    .line 3279
    aget p1, p1, v0

    return p1
.end method

.method private setReturnDataHaval([I)I
    .locals 2

    .line 3284
    array-length v0, p1

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 3285
    aget p1, p1, v1

    return p1

    :cond_0
    return v1
.end method

.method private setRightRadarDataAllCmd(BIIIII)V
    .locals 2

    .line 3268
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    if-ne v0, p1, :cond_0

    .line 3269
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->RIGHT_FRONT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {p0, p1, p3, p2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setGeneralRadarData(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 3270
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->RIGHT_MID_FRONT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {p0, p1, p4, p2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setGeneralRadarData(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 3271
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->RIGHT_MID_REAR:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {p0, p1, p5, p2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setGeneralRadarData(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 3272
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->RIGHT_REAR:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {p0, p1, p6, p2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setGeneralRadarData(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    :cond_0
    return-void
.end method

.method private unShowFrontRadar(B)V
    .locals 7

    .line 3717
    iget v6, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->disableData:I

    move-object v0, p0

    move v1, p1

    move v2, v6

    move v3, v6

    move v4, v6

    move v5, v6

    invoke-direct/range {v0 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontRadarDataAllCmd(BIIIII)V

    return-void
.end method

.method private unShowRearRadar(B)V
    .locals 7

    .line 3713
    iget v6, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->disableData:I

    move-object v0, p0

    move v1, p1

    move v2, v6

    move v3, v6

    move v4, v6

    move v5, v6

    invoke-direct/range {v0 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setRearRadarDataAllCmd(BIIIII)V

    return-void
.end method


# virtual methods
.method public refreshRadarDist([B)Ljava/util/HashMap;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/HashMap<",
            "Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 136
    array-length v2, v1

    new-array v2, v2, [I

    const/4 v3, 0x0

    move v4, v3

    .line 137
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_1

    .line 139
    aget-byte v5, v1, v4

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_0

    .line 140
    aget-byte v5, v1, v4

    aput v5, v2, v4

    goto :goto_1

    .line 142
    :cond_0
    aget-byte v5, v1, v4

    and-int/lit16 v5, v5, 0xff

    aput v5, v2, v4

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 145
    :cond_1
    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/16 v5, 0x8

    const/16 v6, 0xd

    const/16 v7, 0x32

    const/16 v8, 0x9

    const/4 v9, 0x3

    const/16 v10, 0x41

    const/4 v11, 0x7

    const/4 v12, 0x6

    const/4 v13, 0x4

    const/16 v14, 0x55

    const/4 v15, 0x5

    const/16 v16, 0x2

    const/16 v17, 0x1

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_2

    .line 326
    :pswitch_0
    aget-byte v3, v1, v3

    if-ne v3, v14, :cond_e

    aget-byte v1, v1, v17

    if-ne v1, v10, :cond_e

    .line 328
    :try_start_0
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mapDist:Ljava/util/HashMap;

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;->REAR_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;

    aget v4, v2, v16

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mapDist:Ljava/util/HashMap;

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;

    aget v4, v2, v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mapDist:Ljava/util/HashMap;

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;

    aget v4, v2, v13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mapDist:Ljava/util/HashMap;

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;->REAR_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;

    aget v2, v2, v15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_2

    .line 306
    :pswitch_1
    aget-byte v3, v1, v17

    if-ne v3, v10, :cond_e

    .line 307
    aget-byte v1, v1, v6

    if-nez v1, :cond_2

    goto/16 :goto_2

    .line 311
    :cond_2
    :try_start_1
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mapDist:Ljava/util/HashMap;

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;->REAR_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;

    aget v4, v2, v16

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mapDist:Ljava/util/HashMap;

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;

    aget v4, v2, v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mapDist:Ljava/util/HashMap;

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;

    aget v4, v2, v13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mapDist:Ljava/util/HashMap;

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;->REAR_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;

    aget v4, v2, v15

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mapDist:Ljava/util/HashMap;

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;->FRONT_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;

    aget v4, v2, v12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mapDist:Ljava/util/HashMap;

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;->FRONT_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;

    aget v4, v2, v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mapDist:Ljava/util/HashMap;

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;->FRONT_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;

    aget v4, v2, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mapDist:Ljava/util/HashMap;

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;->FRONT_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;

    aget v2, v2, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_2

    .line 287
    :pswitch_2
    aget-byte v3, v1, v3

    if-ne v3, v14, :cond_e

    aget-byte v3, v1, v17

    if-ne v3, v10, :cond_e

    const/16 v3, 0xc

    .line 288
    aget-byte v1, v1, v3

    if-nez v1, :cond_3

    goto/16 :goto_2

    .line 292
    :cond_3
    :try_start_2
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mapDist:Ljava/util/HashMap;

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;->REAR_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;

    aget v4, v2, v16

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mapDist:Ljava/util/HashMap;

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;

    aget v4, v2, v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mapDist:Ljava/util/HashMap;

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;

    aget v4, v2, v13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mapDist:Ljava/util/HashMap;

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;->REAR_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;

    aget v4, v2, v15

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mapDist:Ljava/util/HashMap;

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;->FRONT_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;

    aget v4, v2, v12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mapDist:Ljava/util/HashMap;

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;->FRONT_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;

    aget v4, v2, v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mapDist:Ljava/util/HashMap;

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;->FRONT_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;

    aget v4, v2, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mapDist:Ljava/util/HashMap;

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;->FRONT_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;

    aget v2, v2, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    .line 271
    :pswitch_3
    aget-byte v3, v1, v3

    if-ne v3, v14, :cond_e

    aget-byte v3, v1, v17

    if-ne v3, v7, :cond_e

    .line 272
    aget-byte v1, v1, v16

    if-nez v1, :cond_4

    goto/16 :goto_2

    .line 276
    :cond_4
    :try_start_3
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mapDist:Ljava/util/HashMap;

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;->REAR_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;

    aget v4, v2, v13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mapDist:Ljava/util/HashMap;

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;

    aget v4, v2, v15

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mapDist:Ljava/util/HashMap;

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;

    aget v4, v2, v12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mapDist:Ljava/util/HashMap;

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;->REAR_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;

    aget v2, v2, v11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_2

    .line 255
    :pswitch_4
    aget-byte v3, v1, v3

    if-ne v3, v14, :cond_e

    aget-byte v3, v1, v17

    if-ne v3, v7, :cond_e

    .line 256
    aget-byte v1, v1, v16

    if-nez v1, :cond_5

    goto/16 :goto_2

    .line 260
    :cond_5
    :try_start_4
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mapDist:Ljava/util/HashMap;

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;->REAR_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;

    aget v4, v2, v13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mapDist:Ljava/util/HashMap;

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;

    aget v4, v2, v15

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mapDist:Ljava/util/HashMap;

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;

    aget v4, v2, v12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mapDist:Ljava/util/HashMap;

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;->REAR_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;

    aget v2, v2, v11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_2

    .line 227
    :pswitch_5
    aget-byte v4, v1, v3

    if-ne v4, v14, :cond_7

    aget-byte v4, v1, v17

    if-ne v4, v7, :cond_7

    .line 228
    aget-byte v4, v1, v16

    if-nez v4, :cond_6

    goto/16 :goto_2

    .line 232
    :cond_6
    :try_start_5
    iget-object v4, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mapDist:Ljava/util/HashMap;

    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;->REAR_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;

    aget v6, v2, v13

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-object v4, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mapDist:Ljava/util/HashMap;

    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;

    aget v6, v2, v15

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    iget-object v4, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mapDist:Ljava/util/HashMap;

    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;

    aget v6, v2, v12

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iget-object v4, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mapDist:Ljava/util/HashMap;

    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;->REAR_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;

    aget v6, v2, v11

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 240
    :catch_0
    :cond_7
    aget-byte v3, v1, v3

    if-ne v3, v14, :cond_e

    aget-byte v3, v1, v17

    const/16 v4, 0x33

    if-ne v3, v4, :cond_e

    .line 241
    aget-byte v1, v1, v16

    if-nez v1, :cond_8

    goto/16 :goto_2

    .line 245
    :cond_8
    :try_start_6
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mapDist:Ljava/util/HashMap;

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;->FRONT_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;

    aget v4, v2, v13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mapDist:Ljava/util/HashMap;

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;->FRONT_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;

    aget v4, v2, v15

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mapDist:Ljava/util/HashMap;

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;->FRONT_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;

    aget v4, v2, v12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mapDist:Ljava/util/HashMap;

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;->FRONT_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;

    aget v2, v2, v11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_2

    .line 186
    :pswitch_6
    aget-byte v4, v1, v3

    if-ne v4, v14, :cond_a

    aget-byte v4, v1, v17

    if-ne v4, v10, :cond_a

    .line 187
    aget-byte v4, v1, v6

    if-nez v4, :cond_9

    goto/16 :goto_2

    .line 191
    :cond_9
    :try_start_7
    iget-object v4, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mapDist:Ljava/util/HashMap;

    sget-object v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;->REAR_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;

    aget v10, v2, v16

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    iget-object v4, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mapDist:Ljava/util/HashMap;

    sget-object v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;

    aget v9, v2, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    iget-object v4, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mapDist:Ljava/util/HashMap;

    sget-object v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;

    aget v9, v2, v13

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object v4, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mapDist:Ljava/util/HashMap;

    sget-object v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;->REAR_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;

    aget v9, v2, v15

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object v4, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mapDist:Ljava/util/HashMap;

    sget-object v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;->FRONT_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;

    aget v9, v2, v12

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-object v4, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mapDist:Ljava/util/HashMap;

    sget-object v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;->FRONT_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;

    aget v9, v2, v11

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget-object v4, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mapDist:Ljava/util/HashMap;

    sget-object v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;->FRONT_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;

    aget v5, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget-object v4, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mapDist:Ljava/util/HashMap;

    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;->FRONT_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;

    aget v7, v2, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 205
    :catch_1
    :cond_a
    aget-byte v3, v1, v3

    if-ne v3, v14, :cond_e

    aget-byte v3, v1, v17

    const/16 v4, 0x42

    if-ne v3, v4, :cond_e

    .line 206
    aget-byte v1, v1, v6

    if-nez v1, :cond_b

    goto/16 :goto_2

    .line 210
    :cond_b
    :try_start_8
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mapDist:Ljava/util/HashMap;

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;->RIGHT_FRONT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;

    aget v4, v2, v16

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mapDist:Ljava/util/HashMap;

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;->RIGHT_REAR:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;

    aget v4, v2, v15

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mapDist:Ljava/util/HashMap;

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;->LEFT_FRONT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;

    aget v4, v2, v12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mapDist:Ljava/util/HashMap;

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;->LEFT_REAR:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;

    aget v2, v2, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_2

    .line 163
    :pswitch_7
    aget-byte v3, v1, v3

    if-ne v3, v14, :cond_e

    aget-byte v3, v1, v17

    if-ne v3, v10, :cond_e

    .line 164
    aget-byte v1, v1, v6

    if-nez v1, :cond_c

    goto/16 :goto_2

    .line 168
    :cond_c
    :try_start_9
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mapDist:Ljava/util/HashMap;

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;->REAR_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;

    aget v4, v2, v16

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mapDist:Ljava/util/HashMap;

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;

    aget v4, v2, v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mapDist:Ljava/util/HashMap;

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;

    aget v4, v2, v13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mapDist:Ljava/util/HashMap;

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;->REAR_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;

    aget v4, v2, v15

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mapDist:Ljava/util/HashMap;

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;->FRONT_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;

    aget v4, v2, v12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mapDist:Ljava/util/HashMap;

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;->FRONT_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;

    aget v4, v2, v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mapDist:Ljava/util/HashMap;

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;->FRONT_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;

    aget v4, v2, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mapDist:Ljava/util/HashMap;

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;->FRONT_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;

    aget v2, v2, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_2

    .line 147
    :pswitch_8
    aget-byte v3, v1, v3

    if-ne v3, v14, :cond_e

    aget-byte v3, v1, v17

    if-ne v3, v7, :cond_e

    .line 148
    aget-byte v1, v1, v16

    if-nez v1, :cond_d

    goto :goto_2

    .line 152
    :cond_d
    :try_start_a
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mapDist:Ljava/util/HashMap;

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;->REAR_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;

    aget v4, v2, v13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mapDist:Ljava/util/HashMap;

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;

    aget v4, v2, v15

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mapDist:Ljava/util/HashMap;

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;

    aget v4, v2, v12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mapDist:Ljava/util/HashMap;

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;->REAR_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;

    aget v2, v2, v11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    .line 338
    :catch_2
    :cond_e
    :goto_2
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mapDist:Ljava/util/HashMap;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public refreshRadarInfo(Landroid/content/Context;[B)Ljava/util/HashMap;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[B)",
            "Ljava/util/HashMap<",
            "Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;",
            "[I>;"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    .line 350
    invoke-direct {v7, v8}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->parseMcuArray2Int([B)[I

    .line 352
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isCanbusCmdPorting(Landroid/content/Context;)Z

    move-result v0

    const/16 v1, 0x3c

    const/16 v15, 0x8

    const/4 v6, 0x6

    const/4 v5, 0x7

    const/4 v4, 0x5

    const/4 v3, 0x0

    const/16 v2, 0xff

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x4

    if-eqz v0, :cond_4a

    .line 354
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v17

    aget v0, v0, v17

    packed-switch v0, :pswitch_data_0

    move v14, v3

    move v9, v4

    move v12, v5

    goto/16 :goto_42

    .line 912
    :pswitch_0
    iput-boolean v12, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    const/16 v1, 0x23

    const/16 v17, 0x4

    .line 913
    aget-byte v18, v8, v11

    aget-byte v19, v8, v10

    aget-byte v20, v8, v13

    aget-byte v21, v8, v4

    move-object/from16 v0, p0

    move/from16 v2, v17

    move/from16 v3, v18

    move v9, v4

    move/from16 v4, v19

    move v12, v5

    move/from16 v5, v20

    move v14, v6

    move/from16 v6, v21

    invoke-direct/range {v0 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontRadarDataAllCmd(BIIIII)V

    const/16 v1, 0x22

    const/4 v2, 0x4

    .line 914
    aget-byte v3, v8, v11

    aget-byte v4, v8, v10

    aget-byte v5, v8, v13

    aget-byte v6, v8, v9

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setRearRadarDataAllCmd(BIIIII)V

    goto/16 :goto_1a

    :pswitch_1
    move v9, v4

    move v12, v5

    move v14, v6

    const/16 v1, 0x1c

    const/16 v2, 0xa

    .line 908
    aget-byte v3, v8, v14

    aget-byte v4, v8, v12

    aget-byte v5, v8, v15

    const/16 v0, 0x9

    aget-byte v6, v8, v0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontRadarDataAllCmd(BIIIII)V

    const/16 v1, 0x1c

    const/16 v2, 0xa

    .line 909
    aget-byte v3, v8, v11

    aget-byte v4, v8, v10

    aget-byte v5, v8, v13

    aget-byte v6, v8, v9

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setRearRadarDataAllCmd(BIIIII)V

    goto/16 :goto_1a

    :pswitch_2
    move v9, v4

    move v14, v6

    move v0, v12

    move v12, v5

    .line 903
    iput-boolean v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    const/16 v1, 0x8

    const/4 v2, 0x4

    .line 904
    aget-byte v3, v8, v10

    aget-byte v4, v8, v13

    aget-byte v5, v8, v13

    aget-byte v6, v8, v9

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontRadarDataAllCmd(BIIIII)V

    const/16 v1, 0x8

    const/4 v2, 0x4

    .line 905
    aget-byte v3, v8, v14

    aget-byte v4, v8, v12

    aget-byte v5, v8, v12

    aget-byte v6, v8, v15

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setRearRadarDataAllCmd(BIIIII)V

    goto/16 :goto_1a

    :pswitch_3
    move v9, v4

    move v14, v6

    move v0, v12

    move v12, v5

    .line 875
    aget-byte v1, v8, v0

    if-ne v1, v13, :cond_32

    .line 876
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftRadarInfo:B

    aget-byte v1, v8, v11

    if-eq v0, v1, :cond_0

    .line 877
    aget-byte v0, v8, v11

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftRadarInfo:B

    .line 878
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v11

    invoke-direct {v7, v0, v1, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 880
    :cond_0
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftMidRadarInfo:B

    aget-byte v1, v8, v10

    if-eq v0, v1, :cond_2

    .line 881
    aget-byte v0, v8, v10

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftMidRadarInfo:B

    .line 882
    aget-byte v0, v8, v10

    const/16 v1, 0xa

    if-le v0, v1, :cond_1

    .line 883
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v1, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_0

    .line 885
    :cond_1
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v2, v8, v10

    invoke-direct {v7, v0, v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 888
    :cond_2
    :goto_0
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightMidRadarInfo:B

    aget-byte v1, v8, v13

    if-eq v0, v1, :cond_4

    .line 889
    aget-byte v0, v8, v13

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightMidRadarInfo:B

    .line 890
    aget-byte v0, v8, v13

    const/16 v1, 0xa

    if-le v0, v1, :cond_3

    .line 891
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v1, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_1

    .line 893
    :cond_3
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v2, v8, v13

    invoke-direct {v7, v0, v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 896
    :cond_4
    :goto_1
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightRadarInfo:B

    aget-byte v1, v8, v9

    if-eq v0, v1, :cond_32

    .line 897
    aget-byte v0, v8, v9

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightRadarInfo:B

    .line 898
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v9

    invoke-direct {v7, v0, v1, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto/16 :goto_1a

    :pswitch_4
    move v9, v4

    move v14, v6

    move v0, v12

    move v12, v5

    .line 822
    aget-byte v1, v8, v0

    if-ne v1, v13, :cond_a

    .line 823
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftRadarInfo:B

    aget-byte v1, v8, v11

    if-eq v0, v1, :cond_5

    .line 824
    aget-byte v0, v8, v11

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftRadarInfo:B

    .line 825
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v11

    invoke-direct {v7, v0, v1, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 827
    :cond_5
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftMidRadarInfo:B

    aget-byte v1, v8, v10

    if-eq v0, v1, :cond_7

    .line 828
    aget-byte v0, v8, v10

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftMidRadarInfo:B

    .line 829
    aget-byte v0, v8, v10

    const/16 v1, 0xa

    if-le v0, v1, :cond_6

    .line 830
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v1, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_2

    .line 832
    :cond_6
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v2, v8, v10

    invoke-direct {v7, v0, v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 835
    :cond_7
    :goto_2
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightMidRadarInfo:B

    aget-byte v1, v8, v13

    if-eq v0, v1, :cond_9

    .line 836
    aget-byte v0, v8, v13

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightMidRadarInfo:B

    .line 837
    aget-byte v0, v8, v13

    const/16 v1, 0xa

    if-le v0, v1, :cond_8

    .line 838
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v1, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_3

    .line 840
    :cond_8
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v2, v8, v13

    invoke-direct {v7, v0, v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 843
    :cond_9
    :goto_3
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightRadarInfo:B

    aget-byte v1, v8, v9

    if-eq v0, v1, :cond_32

    .line 844
    aget-byte v0, v8, v9

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightRadarInfo:B

    .line 845
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v9

    invoke-direct {v7, v0, v1, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto/16 :goto_1a

    :cond_a
    const/4 v0, 0x1

    .line 847
    aget-byte v1, v8, v0

    if-ne v1, v10, :cond_32

    .line 848
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftRadarInfo:B

    aget-byte v1, v8, v11

    if-eq v0, v1, :cond_b

    .line 849
    aget-byte v0, v8, v11

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftRadarInfo:B

    .line 850
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v11

    invoke-direct {v7, v0, v1, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 852
    :cond_b
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftMidRadarInfo:B

    aget-byte v1, v8, v10

    if-eq v0, v1, :cond_d

    .line 853
    aget-byte v0, v8, v10

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftMidRadarInfo:B

    .line 854
    aget-byte v0, v8, v10

    const/16 v1, 0xa

    if-le v0, v1, :cond_c

    .line 855
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v1, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_4

    .line 857
    :cond_c
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v2, v8, v10

    invoke-direct {v7, v0, v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 860
    :cond_d
    :goto_4
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontRightMidRadarInfo:B

    aget-byte v1, v8, v13

    if-eq v0, v1, :cond_f

    .line 861
    aget-byte v0, v8, v13

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontRightMidRadarInfo:B

    .line 862
    aget-byte v0, v8, v13

    const/16 v1, 0xa

    if-le v0, v1, :cond_e

    .line 863
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v1, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_5

    .line 865
    :cond_e
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v2, v8, v13

    invoke-direct {v7, v0, v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 868
    :cond_f
    :goto_5
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mfrontRightRadarInfo:B

    aget-byte v1, v8, v9

    if-eq v0, v1, :cond_32

    .line 869
    aget-byte v0, v8, v9

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mfrontRightRadarInfo:B

    .line 870
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v9

    invoke-direct {v7, v0, v1, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto/16 :goto_1a

    :pswitch_5
    move v9, v4

    move v12, v5

    move v14, v6

    const-string v0, "FORD_____SAI"

    const-string v1, "ok"

    .line 721
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isCanSupplyXinbas()Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v10

    move v1, v13

    goto :goto_6

    :cond_10
    const/16 v0, 0x23

    const/16 v1, 0x22

    :goto_6
    const/4 v2, 0x1

    .line 728
    aget-byte v3, v8, v2

    if-ne v3, v1, :cond_1e

    .line 729
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftRadarInfo:B

    aget-byte v1, v8, v11

    if-eq v0, v1, :cond_13

    .line 730
    aget-byte v0, v8, v11

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftRadarInfo:B

    .line 731
    aget-byte v0, v8, v11

    if-eqz v0, :cond_12

    aget-byte v0, v8, v11

    const/4 v1, 0x1

    if-eq v0, v1, :cond_12

    aget-byte v0, v8, v11

    if-le v0, v12, :cond_11

    goto :goto_7

    .line 734
    :cond_11
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v2, v8, v11

    div-int/2addr v2, v11

    add-int/2addr v2, v1

    invoke-direct {v7, v0, v2, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_8

    .line 732
    :cond_12
    :goto_7
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v11

    invoke-direct {v7, v0, v1, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 737
    :cond_13
    :goto_8
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftMidRadarInfo:B

    aget-byte v1, v8, v10

    if-eq v0, v1, :cond_17

    .line 738
    aget-byte v0, v8, v10

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftMidRadarInfo:B

    .line 739
    aget-byte v0, v8, v10

    if-eqz v0, :cond_16

    aget-byte v0, v8, v10

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    aget-byte v0, v8, v10

    const/16 v1, 0x1f

    if-le v0, v1, :cond_14

    goto :goto_9

    .line 742
    :cond_14
    aget-byte v0, v8, v10

    add-int/2addr v0, v13

    div-int/2addr v0, v10

    const/16 v1, 0xa

    if-le v0, v1, :cond_15

    .line 743
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v1, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_a

    .line 745
    :cond_15
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v10

    add-int/2addr v1, v13

    div-int/2addr v1, v10

    int-to-byte v1, v1

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_a

    .line 740
    :cond_16
    :goto_9
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v10

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 749
    :cond_17
    :goto_a
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightMidRadarInfo:B

    aget-byte v1, v8, v13

    if-eq v0, v1, :cond_1b

    .line 750
    aget-byte v0, v8, v13

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightMidRadarInfo:B

    .line 751
    aget-byte v0, v8, v13

    if-eqz v0, :cond_1a

    aget-byte v0, v8, v13

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1a

    aget-byte v0, v8, v13

    const/16 v1, 0x1f

    if-le v0, v1, :cond_18

    goto :goto_b

    .line 754
    :cond_18
    aget-byte v0, v8, v13

    add-int/2addr v0, v13

    div-int/2addr v0, v10

    const/16 v1, 0xa

    if-le v0, v1, :cond_19

    .line 755
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v1, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_c

    .line 757
    :cond_19
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v13

    add-int/2addr v1, v13

    div-int/2addr v1, v10

    int-to-byte v1, v1

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_c

    .line 752
    :cond_1a
    :goto_b
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v13

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 761
    :cond_1b
    :goto_c
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightRadarInfo:B

    aget-byte v1, v8, v9

    if-eq v0, v1, :cond_32

    .line 762
    aget-byte v0, v8, v9

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightRadarInfo:B

    .line 763
    aget-byte v0, v8, v9

    if-eqz v0, :cond_1d

    aget-byte v0, v8, v9

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1d

    aget-byte v0, v8, v9

    if-le v0, v12, :cond_1c

    goto :goto_d

    .line 766
    :cond_1c
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v2, v8, v9

    div-int/2addr v2, v11

    add-int/2addr v2, v1

    invoke-direct {v7, v0, v2, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto/16 :goto_1a

    .line 764
    :cond_1d
    :goto_d
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v9

    invoke-direct {v7, v0, v1, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto/16 :goto_1a

    :cond_1e
    const/4 v1, 0x1

    .line 769
    aget-byte v2, v8, v1

    if-ne v2, v0, :cond_32

    .line 770
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftRadarInfo:B

    aget-byte v1, v8, v11

    if-eq v0, v1, :cond_21

    .line 771
    aget-byte v0, v8, v11

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftRadarInfo:B

    .line 772
    aget-byte v0, v8, v11

    if-eqz v0, :cond_20

    aget-byte v0, v8, v11

    const/4 v1, 0x1

    if-eq v0, v1, :cond_20

    aget-byte v0, v8, v11

    if-le v0, v12, :cond_1f

    goto :goto_e

    .line 775
    :cond_1f
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v2, v8, v11

    div-int/2addr v2, v11

    add-int/2addr v2, v1

    invoke-direct {v7, v0, v2, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_f

    .line 773
    :cond_20
    :goto_e
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v11

    invoke-direct {v7, v0, v1, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 778
    :cond_21
    :goto_f
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftMidRadarInfo:B

    aget-byte v1, v8, v10

    if-eq v0, v1, :cond_24

    .line 779
    aget-byte v0, v8, v10

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftMidRadarInfo:B

    .line 780
    aget-byte v0, v8, v10

    if-eqz v0, :cond_23

    aget-byte v0, v8, v10

    const/4 v1, 0x1

    if-eq v0, v1, :cond_23

    aget-byte v0, v8, v10

    const/16 v1, 0xd

    if-le v0, v1, :cond_22

    goto :goto_10

    .line 783
    :cond_22
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v10

    add-int/2addr v1, v10

    div-int/2addr v1, v11

    invoke-direct {v7, v0, v1, v15}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_11

    .line 781
    :cond_23
    :goto_10
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v10

    invoke-direct {v7, v0, v1, v15}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 786
    :cond_24
    :goto_11
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontRightMidRadarInfo:B

    aget-byte v1, v8, v13

    if-eq v0, v1, :cond_27

    .line 787
    aget-byte v0, v8, v13

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontRightMidRadarInfo:B

    .line 788
    aget-byte v0, v8, v13

    if-eqz v0, :cond_26

    aget-byte v0, v8, v13

    const/4 v1, 0x1

    if-eq v0, v1, :cond_26

    aget-byte v0, v8, v13

    const/16 v1, 0xd

    if-le v0, v1, :cond_25

    goto :goto_12

    .line 791
    :cond_25
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v13

    add-int/2addr v1, v10

    div-int/2addr v1, v11

    invoke-direct {v7, v0, v1, v15}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_13

    .line 789
    :cond_26
    :goto_12
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v13

    invoke-direct {v7, v0, v1, v15}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 794
    :cond_27
    :goto_13
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mfrontRightRadarInfo:B

    aget-byte v1, v8, v9

    if-eq v0, v1, :cond_2a

    .line 795
    aget-byte v0, v8, v9

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mfrontRightRadarInfo:B

    .line 796
    aget-byte v0, v8, v9

    if-eqz v0, :cond_29

    aget-byte v0, v8, v9

    const/4 v1, 0x1

    if-eq v0, v1, :cond_29

    aget-byte v0, v8, v9

    if-le v0, v12, :cond_28

    goto :goto_14

    .line 799
    :cond_28
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v2, v8, v9

    div-int/2addr v2, v11

    add-int/2addr v2, v1

    invoke-direct {v7, v0, v2, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_15

    .line 797
    :cond_29
    :goto_14
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v9

    invoke-direct {v7, v0, v1, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 802
    :cond_2a
    :goto_15
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontRightProbeInfo:B

    aget-byte v1, v8, v14

    if-eq v0, v1, :cond_2d

    .line 803
    aget-byte v0, v8, v14

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontRightProbeInfo:B

    .line 804
    aget-byte v0, v8, v14

    if-eqz v0, :cond_2c

    aget-byte v0, v8, v14

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2c

    aget-byte v0, v8, v14

    if-le v0, v12, :cond_2b

    goto :goto_16

    .line 807
    :cond_2b
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_RIGHT_PROBE:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v2, v8, v14

    div-int/2addr v2, v11

    add-int/2addr v2, v1

    invoke-direct {v7, v0, v2, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_17

    .line 805
    :cond_2c
    :goto_16
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_RIGHT_PROBE:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v14

    invoke-direct {v7, v0, v1, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 810
    :cond_2d
    :goto_17
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftProbeInfo:B

    aget-byte v1, v8, v12

    if-eq v0, v1, :cond_32

    .line 811
    aget-byte v0, v8, v12

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftProbeInfo:B

    .line 812
    aget-byte v0, v8, v12

    if-eqz v0, :cond_2f

    aget-byte v0, v8, v12

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2f

    aget-byte v0, v8, v12

    if-le v0, v12, :cond_2e

    goto :goto_18

    .line 815
    :cond_2e
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_LEFT_PROBE:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v2, v8, v12

    div-int/2addr v2, v11

    add-int/2addr v2, v1

    invoke-direct {v7, v0, v2, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto/16 :goto_1a

    .line 813
    :cond_2f
    :goto_18
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_LEFT_PROBE:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v12

    invoke-direct {v7, v0, v1, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto/16 :goto_1a

    :pswitch_6
    move v9, v4

    move v14, v6

    move v0, v12

    move v12, v5

    .line 658
    aget-byte v1, v8, v0

    const/16 v2, 0xf

    if-ne v1, v2, :cond_32

    .line 659
    iput-boolean v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    const-string v0, "GM_XINBAS"

    .line 660
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCanbusInfo[2]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v2, v8, v11

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    aget-byte v0, v8, v11

    const/4 v1, -0x2

    if-ne v0, v1, :cond_30

    const-string v0, "GM_XINBAS"

    const-string v1, "mCanbusInfo[2]==0xfe"

    .line 662
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0xa

    const/4 v6, 0x0

    invoke-direct {v7, v0, v6, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 664
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v6, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 665
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v6, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 666
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v6, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_19

    :cond_30
    const/4 v6, 0x0

    .line 668
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v10

    invoke-static {v0, v13, v13}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFromByteWithBit(III)I

    move-result v0

    const/16 v1, 0xe

    invoke-direct {v7, v0, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackLeftData(II)V

    .line 669
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v10

    invoke-static {v0, v6, v13}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFromByteWithBit(III)I

    move-result v0

    invoke-direct {v7, v0, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackLeftMidData(II)V

    .line 670
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v13

    invoke-static {v0, v13, v13}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFromByteWithBit(III)I

    move-result v0

    invoke-direct {v7, v0, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackRightMidData(II)V

    .line 671
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v13

    invoke-static {v0, v6, v13}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFromByteWithBit(III)I

    move-result v0

    invoke-direct {v7, v0, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackRightData(II)V

    .line 672
    :goto_19
    aget-byte v0, v8, v9

    const/4 v1, -0x2

    if-ne v0, v1, :cond_31

    const-string v0, "GM_XINBAS"

    const-string v1, "mCanbusInfo[5]==0xfe"

    .line 673
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0xa

    invoke-direct {v7, v0, v6, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 675
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v6, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 676
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v6, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 677
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v6, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto/16 :goto_23

    .line 679
    :cond_31
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v14

    invoke-static {v0, v13, v13}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFromByteWithBit(III)I

    move-result v0

    const/16 v1, 0xe

    invoke-direct {v7, v0, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontLeftData(II)V

    .line 680
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v14

    invoke-static {v0, v6, v13}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFromByteWithBit(III)I

    move-result v0

    invoke-direct {v7, v0, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontLeftMidData(II)V

    .line 681
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v12

    invoke-static {v0, v13, v13}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFromByteWithBit(III)I

    move-result v0

    invoke-direct {v7, v0, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontRightMidData(II)V

    .line 682
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v12

    invoke-static {v0, v6, v13}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFromByteWithBit(III)I

    move-result v0

    invoke-direct {v7, v0, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontRightData(II)V

    goto/16 :goto_23

    :cond_32
    :goto_1a
    const/4 v14, 0x0

    goto/16 :goto_42

    :pswitch_7
    move v9, v4

    move v14, v6

    move v0, v12

    move v6, v3

    move v12, v5

    .line 648
    aget-byte v1, v8, v0

    const/16 v0, 0x9

    if-ne v1, v0, :cond_43

    .line 649
    iput-boolean v6, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    .line 650
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v10

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackLeftData(II)V

    .line 651
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v13

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackLeftMidData(II)V

    .line 652
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v13

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackRightMidData(II)V

    .line 653
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v9

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackRightData(II)V

    goto/16 :goto_23

    :pswitch_8
    move v9, v4

    move v14, v6

    move v0, v12

    move v6, v3

    move v12, v5

    .line 639
    aget-byte v1, v8, v0

    const/16 v2, 0x22

    if-ne v1, v2, :cond_43

    .line 640
    iput-boolean v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    .line 641
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v11

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackLeftData(II)V

    .line 642
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v10

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackLeftMidData(II)V

    .line 643
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v13

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackRightMidData(II)V

    .line 644
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v9

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackRightData(II)V

    goto/16 :goto_23

    :pswitch_9
    move v9, v4

    move v14, v6

    move v0, v12

    move v6, v3

    move v12, v5

    .line 624
    aget-byte v1, v8, v0

    if-ne v1, v14, :cond_43

    .line 625
    iput-boolean v6, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    .line 626
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v14

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackLeftData(II)V

    .line 627
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v12

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackLeftMidData(II)V

    .line 628
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v12

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackRightMidData(II)V

    .line 629
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v15

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackRightData(II)V

    .line 630
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v10

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontLeftData(II)V

    .line 631
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v13

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontLeftMidData(II)V

    .line 632
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v13

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontRightMidData(II)V

    .line 633
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v9

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontRightData(II)V

    goto/16 :goto_23

    :pswitch_a
    move v9, v4

    move v14, v6

    move v0, v12

    move v6, v3

    move v12, v5

    .line 610
    aget-byte v1, v8, v0

    const/16 v0, 0x9

    if-ne v1, v0, :cond_43

    .line 611
    iput-boolean v6, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    .line 612
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v10

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackLeftData(II)V

    .line 613
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v13

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackLeftMidData(II)V

    .line 614
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v13

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackRightMidData(II)V

    .line 615
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v9

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackRightData(II)V

    .line 616
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v14

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontLeftData(II)V

    .line 617
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v12

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontLeftMidData(II)V

    .line 618
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v12

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontRightMidData(II)V

    .line 619
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v15

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontRightData(II)V

    goto/16 :goto_23

    :pswitch_b
    move v9, v4

    move v14, v6

    move v0, v12

    move v6, v3

    move v12, v5

    .line 595
    aget-byte v1, v8, v0

    const/16 v2, 0x23

    if-ne v1, v2, :cond_33

    .line 596
    iput-boolean v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    .line 597
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v11

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontLeftData(II)V

    .line 598
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v10

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontLeftMidData(II)V

    .line 599
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v13

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontRightMidData(II)V

    .line 600
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v9

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontRightData(II)V

    goto/16 :goto_23

    .line 601
    :cond_33
    aget-byte v1, v8, v0

    const/16 v2, 0x22

    if-ne v1, v2, :cond_43

    .line 602
    iput-boolean v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    .line 603
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v11

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackLeftData(II)V

    .line 604
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v10

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackLeftMidData(II)V

    .line 605
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v13

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackRightMidData(II)V

    .line 606
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v9

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackRightData(II)V

    goto/16 :goto_23

    :pswitch_c
    move v9, v4

    move v14, v6

    move v0, v12

    move v6, v3

    move v12, v5

    .line 580
    aget-byte v1, v8, v0

    if-ne v1, v13, :cond_43

    .line 581
    iput-boolean v6, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    .line 582
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v11

    invoke-direct {v7, v0, v10}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackLeftData(II)V

    .line 583
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v10

    invoke-direct {v7, v0, v10}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackLeftMidData(II)V

    .line 584
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v13

    invoke-direct {v7, v0, v10}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackRightMidData(II)V

    .line 585
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v9

    invoke-direct {v7, v0, v10}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackRightData(II)V

    .line 586
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v14

    invoke-direct {v7, v0, v10}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontLeftData(II)V

    .line 587
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v12

    invoke-direct {v7, v0, v10}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontLeftMidData(II)V

    .line 588
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v15

    invoke-direct {v7, v0, v10}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontRightMidData(II)V

    .line 589
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    const/16 v1, 0x9

    aget v0, v0, v1

    invoke-direct {v7, v0, v10}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontRightData(II)V

    goto/16 :goto_23

    :pswitch_d
    move v9, v4

    move v14, v6

    move v0, v12

    move v6, v3

    move v12, v5

    .line 565
    aget-byte v1, v8, v0

    const/16 v2, 0x23

    if-ne v1, v2, :cond_34

    .line 566
    iput-boolean v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    .line 567
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v11

    invoke-direct {v7, v0, v10}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontLeftData(II)V

    .line 568
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v10

    invoke-direct {v7, v0, v10}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontLeftMidData(II)V

    .line 569
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v13

    invoke-direct {v7, v0, v10}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontRightMidData(II)V

    .line 570
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v9

    invoke-direct {v7, v0, v10}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontRightData(II)V

    goto/16 :goto_23

    .line 571
    :cond_34
    aget-byte v1, v8, v0

    const/16 v2, 0x22

    if-ne v1, v2, :cond_43

    .line 572
    iput-boolean v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    .line 573
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v11

    invoke-direct {v7, v0, v10}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackLeftData(II)V

    .line 574
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v10

    invoke-direct {v7, v0, v10}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackLeftMidData(II)V

    .line 575
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v13

    invoke-direct {v7, v0, v10}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackRightMidData(II)V

    .line 576
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v9

    invoke-direct {v7, v0, v10}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackRightData(II)V

    goto/16 :goto_23

    :pswitch_e
    move v9, v4

    move v14, v6

    move v0, v12

    move v6, v3

    move v12, v5

    .line 551
    aget-byte v1, v8, v0

    if-ne v1, v13, :cond_43

    .line 552
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v11

    invoke-static {v0, v14, v11}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFromByteWithBit(III)I

    move-result v0

    invoke-direct {v7, v0, v10}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontLeftData(II)V

    .line 553
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v11

    invoke-static {v0, v13, v11}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFromByteWithBit(III)I

    move-result v0

    invoke-direct {v7, v0, v10}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontLeftMidData(II)V

    .line 554
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v11

    invoke-static {v0, v11, v11}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFromByteWithBit(III)I

    move-result v0

    invoke-direct {v7, v0, v10}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontRightMidData(II)V

    .line 555
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v11

    invoke-static {v0, v6, v11}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFromByteWithBit(III)I

    move-result v0

    invoke-direct {v7, v0, v10}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontRightData(II)V

    .line 556
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v10

    invoke-static {v0, v14, v11}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFromByteWithBit(III)I

    move-result v0

    invoke-direct {v7, v0, v10}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackLeftData(II)V

    .line 557
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v10

    invoke-static {v0, v13, v11}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFromByteWithBit(III)I

    move-result v0

    invoke-direct {v7, v0, v10}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackLeftMidData(II)V

    .line 558
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v10

    invoke-static {v0, v11, v11}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFromByteWithBit(III)I

    move-result v0

    invoke-direct {v7, v0, v10}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackRightMidData(II)V

    .line 559
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v10

    invoke-static {v0, v6, v11}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFromByteWithBit(III)I

    move-result v0

    invoke-direct {v7, v0, v10}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackRightData(II)V

    goto/16 :goto_23

    :pswitch_f
    move v9, v4

    move v14, v6

    move v0, v12

    move v6, v3

    move v12, v5

    .line 536
    aget-byte v1, v8, v0

    const/16 v2, 0x1d

    if-ne v1, v2, :cond_35

    .line 537
    iput-boolean v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    .line 538
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v11

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontLeftData(II)V

    .line 539
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v10

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontLeftMidData(II)V

    .line 540
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v13

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontRightMidData(II)V

    .line 541
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v9

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontRightData(II)V

    goto/16 :goto_23

    .line 542
    :cond_35
    aget-byte v1, v8, v0

    const/16 v2, 0x1e

    if-ne v1, v2, :cond_43

    .line 543
    iput-boolean v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    .line 544
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v11

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackLeftData(II)V

    .line 545
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v10

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackLeftMidData(II)V

    .line 546
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v13

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackRightMidData(II)V

    .line 547
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v9

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackRightData(II)V

    goto/16 :goto_23

    :pswitch_10
    move v9, v4

    move v14, v6

    move v0, v12

    move v6, v3

    move v12, v5

    .line 523
    aget-byte v1, v8, v0

    const/16 v2, 0x22

    if-ne v1, v2, :cond_43

    .line 524
    iput-boolean v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    .line 525
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v11

    invoke-direct {v7, v0, v10}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackLeftData(II)V

    .line 526
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v10

    invoke-direct {v7, v0, v10}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackLeftMidData(II)V

    .line 527
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v13

    invoke-direct {v7, v0, v10}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackRightMidData(II)V

    .line 528
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v9

    invoke-direct {v7, v0, v10}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackRightData(II)V

    goto/16 :goto_23

    :pswitch_11
    move v9, v4

    move v14, v6

    move v0, v12

    move v6, v3

    move v12, v5

    .line 478
    aget-byte v1, v8, v0

    const/16 v2, 0x24

    if-ne v1, v2, :cond_43

    .line 479
    iput-boolean v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    .line 480
    aget-byte v0, v8, v11

    const/16 v5, 0xff

    and-int/2addr v0, v5

    if-nez v0, :cond_36

    .line 481
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0xa

    invoke-direct {v7, v0, v6, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_1b

    :cond_36
    const/16 v1, 0xa

    .line 485
    aget-byte v0, v8, v11

    and-int/2addr v0, v5

    const/4 v2, 0x1

    if-ne v0, v2, :cond_37

    .line 486
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v11, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 488
    :cond_37
    aget-byte v0, v8, v11

    and-int/2addr v0, v5

    if-ne v0, v11, :cond_38

    .line 489
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0xa

    invoke-direct {v7, v0, v15, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 493
    :cond_38
    :goto_1b
    aget-byte v0, v8, v10

    and-int/2addr v0, v5

    if-nez v0, :cond_39

    .line 494
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0xa

    invoke-direct {v7, v0, v6, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_1c

    :cond_39
    const/16 v1, 0xa

    .line 498
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v2, v8, v10

    and-int/2addr v2, v5

    mul-int/2addr v2, v11

    invoke-direct {v7, v0, v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 500
    :goto_1c
    aget-byte v0, v8, v13

    and-int/2addr v0, v5

    if-nez v0, :cond_3a

    .line 501
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v6, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_1d

    .line 505
    :cond_3a
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v2, v8, v13

    and-int/2addr v2, v5

    mul-int/2addr v2, v11

    invoke-direct {v7, v0, v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 508
    :goto_1d
    aget-byte v0, v8, v9

    and-int/2addr v0, v5

    if-nez v0, :cond_3b

    .line 509
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v6, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto/16 :goto_23

    .line 513
    :cond_3b
    aget-byte v0, v8, v9

    and-int/2addr v0, v5

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3c

    .line 514
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v11, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 516
    :cond_3c
    aget-byte v0, v8, v9

    and-int/2addr v0, v5

    if-ne v0, v11, :cond_43

    .line 517
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0xa

    invoke-direct {v7, v0, v15, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto/16 :goto_23

    :pswitch_12
    move v9, v4

    move v14, v6

    move v0, v12

    move v6, v3

    move v12, v5

    move v5, v2

    .line 432
    aget-byte v1, v8, v0

    if-ne v1, v15, :cond_43

    .line 433
    iput-boolean v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    .line 434
    aget-byte v0, v8, v10

    and-int/2addr v0, v5

    if-nez v0, :cond_3d

    .line 435
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0xa

    invoke-direct {v7, v0, v6, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_1e

    :cond_3d
    const/16 v1, 0xa

    .line 439
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v2, v8, v10

    and-int/2addr v2, v5

    mul-int/2addr v2, v11

    invoke-direct {v7, v0, v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 442
    :goto_1e
    aget-byte v0, v8, v13

    and-int/2addr v0, v5

    if-nez v0, :cond_3e

    .line 443
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v6, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 444
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v6, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    const/16 v2, 0xa

    goto :goto_1f

    .line 446
    :cond_3e
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v13

    and-int/2addr v1, v5

    mul-int/2addr v1, v11

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 447
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v13

    and-int/2addr v1, v5

    mul-int/2addr v1, v11

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 450
    :goto_1f
    aget-byte v0, v8, v9

    and-int/2addr v0, v5

    if-nez v0, :cond_3f

    .line 451
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v6, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_20

    .line 453
    :cond_3f
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v9

    and-int/2addr v1, v5

    mul-int/2addr v1, v11

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 455
    :goto_20
    aget-byte v0, v8, v14

    and-int/2addr v0, v5

    if-nez v0, :cond_40

    .line 456
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v6, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_21

    .line 458
    :cond_40
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v14

    and-int/2addr v1, v5

    mul-int/2addr v1, v11

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 460
    :goto_21
    aget-byte v0, v8, v12

    and-int/2addr v0, v5

    if-nez v0, :cond_41

    .line 461
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v6, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 462
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v6, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    const/16 v2, 0xa

    goto :goto_22

    .line 465
    :cond_41
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v12

    and-int/2addr v1, v5

    mul-int/2addr v1, v11

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 466
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v12

    and-int/2addr v1, v5

    mul-int/2addr v1, v11

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 468
    :goto_22
    aget-byte v0, v8, v15

    and-int/2addr v0, v5

    if-nez v0, :cond_42

    .line 469
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v6, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_23

    .line 471
    :cond_42
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v15

    and-int/2addr v1, v5

    mul-int/2addr v1, v11

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    :cond_43
    :goto_23
    move v14, v6

    goto/16 :goto_42

    :pswitch_13
    move v9, v4

    move v14, v6

    move v0, v12

    move v6, v3

    move v12, v5

    move v5, v2

    .line 417
    aget-byte v1, v8, v0

    const/16 v2, 0x23

    if-ne v1, v2, :cond_44

    .line 418
    iput-boolean v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    .line 419
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v11

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontLeftData(II)V

    .line 420
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v10

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontLeftMidData(II)V

    .line 421
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v13

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontRightMidData(II)V

    .line 422
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v9

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontRightData(II)V

    goto :goto_23

    .line 423
    :cond_44
    aget-byte v1, v8, v0

    const/16 v2, 0x22

    if-ne v1, v2, :cond_43

    .line 424
    iput-boolean v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    .line 425
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v11

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackLeftData(II)V

    .line 426
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v10

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackLeftMidData(II)V

    .line 427
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v13

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackRightMidData(II)V

    .line 428
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v9

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackRightData(II)V

    goto :goto_23

    :pswitch_14
    move v9, v4

    move v14, v6

    move v0, v12

    move v6, v3

    move v12, v5

    move v5, v2

    .line 396
    aget-byte v2, v8, v0

    const/16 v3, 0x23

    if-ne v2, v3, :cond_45

    .line 397
    iput-boolean v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    .line 398
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v11

    invoke-direct {v7, v0, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontLeftData(II)V

    .line 399
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v10

    const/16 v2, 0x78

    invoke-direct {v7, v0, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontLeftMidData(II)V

    .line 400
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v13

    const/16 v2, 0x78

    invoke-direct {v7, v0, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontRightMidData(II)V

    .line 401
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v9

    invoke-direct {v7, v0, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontRightData(II)V

    goto/16 :goto_23

    .line 402
    :cond_45
    aget-byte v2, v8, v0

    const/16 v3, 0x22

    if-ne v2, v3, :cond_46

    .line 403
    iput-boolean v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    .line 404
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v11

    invoke-direct {v7, v0, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackLeftData(II)V

    .line 405
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v10

    const/16 v2, 0xa5

    invoke-direct {v7, v0, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackLeftMidData(II)V

    .line 406
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v13

    const/16 v2, 0xa5

    invoke-direct {v7, v0, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackRightMidData(II)V

    .line 407
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v9

    invoke-direct {v7, v0, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackRightData(II)V

    goto/16 :goto_23

    .line 408
    :cond_46
    aget-byte v1, v8, v0

    const/16 v2, 0x32

    if-ne v1, v2, :cond_47

    .line 409
    iput-boolean v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    const/16 v1, 0x32

    const/4 v2, 0x6

    .line 410
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v3, v0, v11

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v4, v0, v10

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v20, v0, v13

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v21, v0, v9

    move-object/from16 v0, p0

    move v14, v5

    move/from16 v5, v20

    move v14, v6

    move/from16 v6, v21

    invoke-direct/range {v0 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setLeftRadarDataAllCmd(BIIIII)V

    goto/16 :goto_42

    :cond_47
    move v14, v6

    .line 411
    aget-byte v1, v8, v0

    const/16 v2, 0x33

    if-ne v1, v2, :cond_9a

    .line 412
    iput-boolean v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    const/16 v1, 0x33

    const/4 v2, 0x6

    .line 413
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v3, v0, v11

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v4, v0, v10

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v5, v0, v13

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v6, v0, v9

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setRightRadarDataAllCmd(BIIIII)V

    goto/16 :goto_42

    :pswitch_15
    move v14, v3

    move v9, v4

    move v0, v12

    move v12, v5

    .line 380
    aget-byte v1, v8, v0

    const/16 v2, 0x23

    if-ne v1, v2, :cond_48

    .line 381
    iput-boolean v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    .line 382
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v11

    invoke-direct {v7, v0, v12}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontLeftData(II)V

    .line 383
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v10

    invoke-direct {v7, v0, v12}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontLeftMidData(II)V

    .line 384
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v13

    invoke-direct {v7, v0, v12}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontRightMidData(II)V

    .line 385
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v9

    invoke-direct {v7, v0, v12}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontRightData(II)V

    goto/16 :goto_42

    .line 386
    :cond_48
    aget-byte v1, v8, v0

    const/16 v2, 0x22

    if-ne v1, v2, :cond_9a

    .line 387
    iput-boolean v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    .line 388
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v11

    invoke-direct {v7, v0, v12}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackLeftData(II)V

    .line 389
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v10

    invoke-direct {v7, v0, v12}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackLeftMidData(II)V

    .line 390
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v13

    invoke-direct {v7, v0, v12}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackRightMidData(II)V

    .line 391
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v9

    invoke-direct {v7, v0, v12}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackRightData(II)V

    goto/16 :goto_42

    :pswitch_16
    move v14, v3

    move v9, v4

    move v0, v12

    move v12, v5

    .line 357
    aget-byte v1, v8, v0

    const/16 v2, 0x23

    if-ne v1, v2, :cond_49

    .line 358
    iput-boolean v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    .line 359
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v11

    const/16 v1, 0xa

    invoke-direct {v7, v0, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontLeftData(II)V

    .line 360
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v10

    invoke-direct {v7, v0, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontLeftMidData(II)V

    .line 361
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v13

    invoke-direct {v7, v0, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontRightMidData(II)V

    .line 362
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v9

    invoke-direct {v7, v0, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontRightData(II)V

    goto/16 :goto_42

    .line 363
    :cond_49
    aget-byte v1, v8, v0

    const/16 v2, 0x22

    if-ne v1, v2, :cond_9a

    .line 364
    iput-boolean v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    .line 365
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v11

    const/16 v1, 0xa

    invoke-direct {v7, v0, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackLeftData(II)V

    .line 366
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v10

    invoke-direct {v7, v0, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackLeftMidData(II)V

    .line 367
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v13

    invoke-direct {v7, v0, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackRightMidData(II)V

    .line 368
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v9

    invoke-direct {v7, v0, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackRightData(II)V

    goto/16 :goto_42

    :cond_4a
    move v14, v3

    move v9, v4

    move v12, v5

    .line 918
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_1

    :pswitch_17
    goto/16 :goto_42

    .line 1175
    :pswitch_18
    aget-byte v0, v8, v14

    if-ne v0, v11, :cond_9a

    .line 1176
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftRadarInfo:B

    const/4 v1, 0x1

    aget-byte v2, v8, v1

    if-eq v0, v2, :cond_4b

    .line 1177
    aget-byte v0, v8, v1

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftRadarInfo:B

    .line 1178
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v2, v8, v1

    invoke-direct {v7, v0, v2, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1180
    :cond_4b
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftMidRadarInfo:B

    aget-byte v1, v8, v11

    if-eq v0, v1, :cond_4d

    .line 1181
    aget-byte v0, v8, v11

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftMidRadarInfo:B

    .line 1182
    aget-byte v0, v8, v11

    const/16 v1, 0xa

    if-le v0, v1, :cond_4c

    .line 1183
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v1, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_24

    .line 1185
    :cond_4c
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v2, v8, v11

    invoke-direct {v7, v0, v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1188
    :cond_4d
    :goto_24
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightMidRadarInfo:B

    aget-byte v1, v8, v10

    if-eq v0, v1, :cond_4f

    .line 1189
    aget-byte v0, v8, v10

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightMidRadarInfo:B

    .line 1190
    aget-byte v0, v8, v10

    const/16 v1, 0xa

    if-le v0, v1, :cond_4e

    .line 1191
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v1, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_25

    .line 1193
    :cond_4e
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v2, v8, v10

    invoke-direct {v7, v0, v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1196
    :cond_4f
    :goto_25
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightRadarInfo:B

    aget-byte v1, v8, v13

    if-eq v0, v1, :cond_9a

    .line 1197
    aget-byte v0, v8, v13

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightRadarInfo:B

    .line 1198
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v13

    invoke-direct {v7, v0, v1, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto/16 :goto_42

    .line 1122
    :pswitch_19
    aget-byte v0, v8, v14

    if-ne v0, v11, :cond_55

    .line 1123
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftRadarInfo:B

    const/4 v1, 0x1

    aget-byte v2, v8, v1

    if-eq v0, v2, :cond_50

    .line 1124
    aget-byte v0, v8, v1

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftRadarInfo:B

    .line 1125
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v2, v8, v1

    invoke-direct {v7, v0, v2, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1127
    :cond_50
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftMidRadarInfo:B

    aget-byte v1, v8, v11

    if-eq v0, v1, :cond_52

    .line 1128
    aget-byte v0, v8, v11

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftMidRadarInfo:B

    .line 1129
    aget-byte v0, v8, v11

    const/16 v1, 0xa

    if-le v0, v1, :cond_51

    .line 1130
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v1, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_26

    .line 1132
    :cond_51
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v2, v8, v11

    invoke-direct {v7, v0, v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1135
    :cond_52
    :goto_26
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightMidRadarInfo:B

    aget-byte v1, v8, v10

    if-eq v0, v1, :cond_54

    .line 1136
    aget-byte v0, v8, v10

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightMidRadarInfo:B

    .line 1137
    aget-byte v0, v8, v10

    const/16 v1, 0xa

    if-le v0, v1, :cond_53

    .line 1138
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v1, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_27

    .line 1140
    :cond_53
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v2, v8, v10

    invoke-direct {v7, v0, v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1143
    :cond_54
    :goto_27
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightRadarInfo:B

    aget-byte v1, v8, v13

    if-eq v0, v1, :cond_9a

    .line 1144
    aget-byte v0, v8, v13

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightRadarInfo:B

    .line 1145
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v13

    invoke-direct {v7, v0, v1, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto/16 :goto_42

    .line 1148
    :cond_55
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftRadarInfo:B

    const/4 v1, 0x1

    aget-byte v2, v8, v1

    if-eq v0, v2, :cond_56

    .line 1149
    aget-byte v0, v8, v1

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftRadarInfo:B

    .line 1150
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v2, v8, v1

    invoke-direct {v7, v0, v2, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1152
    :cond_56
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftMidRadarInfo:B

    aget-byte v1, v8, v11

    if-eq v0, v1, :cond_58

    .line 1153
    aget-byte v0, v8, v11

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftMidRadarInfo:B

    .line 1154
    aget-byte v0, v8, v11

    const/16 v1, 0xa

    if-le v0, v1, :cond_57

    .line 1155
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v1, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_28

    .line 1157
    :cond_57
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v2, v8, v11

    invoke-direct {v7, v0, v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1160
    :cond_58
    :goto_28
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontRightMidRadarInfo:B

    aget-byte v1, v8, v10

    if-eq v0, v1, :cond_5a

    .line 1161
    aget-byte v0, v8, v10

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontRightMidRadarInfo:B

    .line 1162
    aget-byte v0, v8, v10

    const/16 v1, 0xa

    if-le v0, v1, :cond_59

    .line 1163
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v1, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_29

    .line 1165
    :cond_59
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v2, v8, v10

    invoke-direct {v7, v0, v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1168
    :cond_5a
    :goto_29
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mfrontRightRadarInfo:B

    aget-byte v1, v8, v13

    if-eq v0, v1, :cond_9a

    .line 1169
    aget-byte v0, v8, v13

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mfrontRightRadarInfo:B

    .line 1170
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v13

    invoke-direct {v7, v0, v1, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto/16 :goto_42

    :pswitch_1a
    const-string v0, "FORD_____SAI"

    const-string v1, "no"

    .line 1027
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    aget-byte v0, v8, v14

    if-ne v0, v11, :cond_68

    .line 1029
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftRadarInfo:B

    const/4 v1, 0x1

    aget-byte v2, v8, v1

    if-eq v0, v2, :cond_5d

    .line 1030
    aget-byte v0, v8, v1

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftRadarInfo:B

    .line 1031
    aget-byte v0, v8, v1

    if-eqz v0, :cond_5c

    aget-byte v0, v8, v1

    if-eq v0, v1, :cond_5c

    aget-byte v0, v8, v1

    if-le v0, v12, :cond_5b

    goto :goto_2a

    .line 1034
    :cond_5b
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v2, v8, v1

    div-int/2addr v2, v11

    add-int/2addr v2, v1

    invoke-direct {v7, v0, v2, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_2b

    .line 1032
    :cond_5c
    :goto_2a
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/4 v1, 0x1

    aget-byte v2, v8, v1

    invoke-direct {v7, v0, v2, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1037
    :cond_5d
    :goto_2b
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftMidRadarInfo:B

    aget-byte v1, v8, v11

    if-eq v0, v1, :cond_61

    .line 1038
    aget-byte v0, v8, v11

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftMidRadarInfo:B

    .line 1039
    aget-byte v0, v8, v11

    if-eqz v0, :cond_60

    aget-byte v0, v8, v11

    const/4 v1, 0x1

    if-eq v0, v1, :cond_60

    aget-byte v0, v8, v11

    const/16 v1, 0x1f

    if-le v0, v1, :cond_5e

    goto :goto_2c

    .line 1042
    :cond_5e
    aget-byte v0, v8, v11

    add-int/2addr v0, v13

    div-int/2addr v0, v10

    const/16 v1, 0xa

    if-le v0, v1, :cond_5f

    .line 1043
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v1, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_2d

    .line 1045
    :cond_5f
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v11

    add-int/2addr v1, v13

    div-int/2addr v1, v10

    int-to-byte v1, v1

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_2d

    .line 1040
    :cond_60
    :goto_2c
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v11

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1049
    :cond_61
    :goto_2d
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightMidRadarInfo:B

    aget-byte v1, v8, v10

    if-eq v0, v1, :cond_65

    .line 1050
    aget-byte v0, v8, v10

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightMidRadarInfo:B

    .line 1051
    aget-byte v0, v8, v10

    if-eqz v0, :cond_64

    aget-byte v0, v8, v10

    const/4 v1, 0x1

    if-eq v0, v1, :cond_64

    aget-byte v0, v8, v10

    const/16 v1, 0x1f

    if-le v0, v1, :cond_62

    goto :goto_2e

    .line 1054
    :cond_62
    aget-byte v0, v8, v10

    add-int/2addr v0, v13

    div-int/2addr v0, v10

    const/16 v1, 0xa

    if-le v0, v1, :cond_63

    .line 1055
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v1, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_2f

    .line 1057
    :cond_63
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v10

    add-int/2addr v1, v13

    div-int/2addr v1, v10

    int-to-byte v1, v1

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_2f

    .line 1052
    :cond_64
    :goto_2e
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v10

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1061
    :cond_65
    :goto_2f
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightRadarInfo:B

    aget-byte v1, v8, v13

    if-eq v0, v1, :cond_9a

    .line 1062
    aget-byte v0, v8, v13

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightRadarInfo:B

    .line 1063
    aget-byte v0, v8, v13

    if-eqz v0, :cond_67

    aget-byte v0, v8, v13

    const/4 v1, 0x1

    if-eq v0, v1, :cond_67

    aget-byte v0, v8, v13

    if-le v0, v12, :cond_66

    goto :goto_30

    .line 1066
    :cond_66
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v2, v8, v13

    div-int/2addr v2, v11

    add-int/2addr v2, v1

    invoke-direct {v7, v0, v2, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto/16 :goto_42

    .line 1064
    :cond_67
    :goto_30
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/4 v1, 0x1

    aget-byte v2, v8, v1

    invoke-direct {v7, v0, v2, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto/16 :goto_42

    .line 1070
    :cond_68
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftRadarInfo:B

    const/4 v1, 0x1

    aget-byte v2, v8, v1

    if-eq v0, v2, :cond_6b

    .line 1071
    aget-byte v0, v8, v1

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftRadarInfo:B

    .line 1072
    aget-byte v0, v8, v1

    if-eqz v0, :cond_6a

    aget-byte v0, v8, v1

    if-eq v0, v1, :cond_6a

    aget-byte v0, v8, v1

    if-le v0, v12, :cond_69

    goto :goto_31

    .line 1075
    :cond_69
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v2, v8, v1

    div-int/2addr v2, v11

    add-int/2addr v2, v1

    invoke-direct {v7, v0, v2, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_32

    .line 1073
    :cond_6a
    :goto_31
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/4 v1, 0x1

    aget-byte v2, v8, v1

    invoke-direct {v7, v0, v2, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1078
    :cond_6b
    :goto_32
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftMidRadarInfo:B

    aget-byte v1, v8, v11

    if-eq v0, v1, :cond_6e

    .line 1079
    aget-byte v0, v8, v11

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftMidRadarInfo:B

    .line 1080
    aget-byte v0, v8, v11

    if-eqz v0, :cond_6d

    aget-byte v0, v8, v11

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6d

    aget-byte v0, v8, v11

    const/16 v1, 0xd

    if-le v0, v1, :cond_6c

    goto :goto_33

    .line 1083
    :cond_6c
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v11

    add-int/2addr v1, v10

    div-int/2addr v1, v11

    invoke-direct {v7, v0, v1, v15}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_34

    .line 1081
    :cond_6d
    :goto_33
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v11

    invoke-direct {v7, v0, v1, v15}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1086
    :cond_6e
    :goto_34
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontRightMidRadarInfo:B

    aget-byte v1, v8, v10

    if-eq v0, v1, :cond_71

    .line 1087
    aget-byte v0, v8, v10

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontRightMidRadarInfo:B

    .line 1088
    aget-byte v0, v8, v10

    if-eqz v0, :cond_70

    aget-byte v0, v8, v10

    const/4 v1, 0x1

    if-eq v0, v1, :cond_70

    aget-byte v0, v8, v10

    const/16 v1, 0xd

    if-le v0, v1, :cond_6f

    goto :goto_35

    .line 1091
    :cond_6f
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v10

    add-int/2addr v1, v10

    div-int/2addr v1, v11

    invoke-direct {v7, v0, v1, v15}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_36

    .line 1089
    :cond_70
    :goto_35
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v10

    invoke-direct {v7, v0, v1, v15}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1094
    :cond_71
    :goto_36
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mfrontRightRadarInfo:B

    aget-byte v1, v8, v13

    if-eq v0, v1, :cond_74

    .line 1095
    aget-byte v0, v8, v13

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mfrontRightRadarInfo:B

    .line 1096
    aget-byte v0, v8, v13

    if-eqz v0, :cond_73

    aget-byte v0, v8, v13

    const/4 v1, 0x1

    if-eq v0, v1, :cond_73

    aget-byte v0, v8, v13

    if-le v0, v12, :cond_72

    goto :goto_37

    .line 1099
    :cond_72
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v2, v8, v13

    div-int/2addr v2, v11

    add-int/2addr v2, v1

    invoke-direct {v7, v0, v2, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_38

    .line 1097
    :cond_73
    :goto_37
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v13

    invoke-direct {v7, v0, v1, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1102
    :cond_74
    :goto_38
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontRightProbeInfo:B

    aget-byte v1, v8, v15

    if-eq v0, v1, :cond_77

    .line 1103
    aget-byte v0, v8, v15

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontRightProbeInfo:B

    .line 1104
    aget-byte v0, v8, v15

    if-eqz v0, :cond_76

    aget-byte v0, v8, v15

    const/4 v1, 0x1

    if-eq v0, v1, :cond_76

    aget-byte v0, v8, v15

    if-le v0, v12, :cond_75

    goto :goto_39

    .line 1107
    :cond_75
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_RIGHT_PROBE:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v2, v8, v15

    div-int/2addr v2, v11

    add-int/2addr v2, v1

    invoke-direct {v7, v0, v2, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_3a

    .line 1105
    :cond_76
    :goto_39
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_RIGHT_PROBE:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v15

    invoke-direct {v7, v0, v1, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1110
    :cond_77
    :goto_3a
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftProbeInfo:B

    const/16 v1, 0x9

    aget-byte v2, v8, v1

    if-eq v0, v2, :cond_9a

    .line 1111
    aget-byte v0, v8, v1

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftProbeInfo:B

    .line 1112
    aget-byte v0, v8, v1

    if-eqz v0, :cond_79

    aget-byte v0, v8, v1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_79

    aget-byte v0, v8, v1

    if-le v0, v12, :cond_78

    goto :goto_3b

    .line 1115
    :cond_78
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_LEFT_PROBE:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v3, v8, v1

    div-int/2addr v3, v11

    add-int/2addr v3, v2

    invoke-direct {v7, v0, v3, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto/16 :goto_42

    .line 1113
    :cond_79
    :goto_3b
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_LEFT_PROBE:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0x9

    aget-byte v2, v8, v1

    invoke-direct {v7, v0, v2, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto/16 :goto_42

    .line 921
    :pswitch_1b
    aget-byte v0, v8, v14

    if-ne v0, v11, :cond_87

    .line 922
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftRadarInfo:B

    const/4 v2, 0x1

    aget-byte v3, v8, v2

    if-eq v0, v3, :cond_7c

    .line 923
    aget-byte v0, v8, v2

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftRadarInfo:B

    .line 925
    aget-byte v0, v8, v2

    if-le v0, v1, :cond_7a

    .line 926
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v14, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_3c

    .line 927
    :cond_7a
    aget-byte v0, v8, v2

    if-nez v0, :cond_7b

    .line 928
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v2, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_3c

    .line 930
    :cond_7b
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v3, v8, v2

    const/16 v2, 0xe

    add-int/2addr v3, v2

    const/16 v2, 0xf

    div-int/2addr v3, v2

    invoke-direct {v7, v0, v3, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 933
    :cond_7c
    :goto_3c
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftMidRadarInfo:B

    aget-byte v2, v8, v11

    if-eq v0, v2, :cond_80

    .line 934
    aget-byte v0, v8, v11

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftMidRadarInfo:B

    .line 935
    aget-byte v0, v8, v11

    const/16 v2, -0x6b

    if-ge v0, v2, :cond_7d

    .line 936
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v2, v8, v11

    const/16 v3, 0xe

    add-int/2addr v2, v3

    add-int/lit16 v2, v2, 0x100

    const/16 v3, 0xf

    div-int/2addr v2, v3

    int-to-byte v2, v2

    const/16 v3, 0xa

    invoke-direct {v7, v0, v2, v3}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_3d

    .line 937
    :cond_7d
    aget-byte v0, v8, v11

    const/4 v2, -0x2

    if-ge v0, v2, :cond_7e

    .line 938
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v2, 0xa

    invoke-direct {v7, v0, v2, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_3d

    :cond_7e
    const/16 v2, 0xa

    .line 939
    aget-byte v0, v8, v11

    if-nez v0, :cond_7f

    .line 940
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/4 v3, 0x1

    invoke-direct {v7, v0, v3, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_3d

    .line 942
    :cond_7f
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v2, v8, v11

    const/16 v3, 0xe

    add-int/2addr v2, v3

    const/16 v3, 0xf

    div-int/2addr v2, v3

    int-to-byte v2, v2

    const/16 v3, 0xa

    invoke-direct {v7, v0, v2, v3}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 945
    :cond_80
    :goto_3d
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightMidRadarInfo:B

    aget-byte v2, v8, v10

    if-eq v0, v2, :cond_84

    .line 946
    aget-byte v0, v8, v10

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightMidRadarInfo:B

    .line 947
    aget-byte v0, v8, v10

    const/16 v2, -0x6b

    if-ge v0, v2, :cond_81

    .line 948
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v2, v8, v10

    const/16 v3, 0xe

    add-int/2addr v2, v3

    add-int/lit16 v2, v2, 0x100

    const/16 v3, 0xf

    div-int/2addr v2, v3

    int-to-byte v2, v2

    const/16 v3, 0xa

    invoke-direct {v7, v0, v2, v3}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_3e

    .line 949
    :cond_81
    aget-byte v0, v8, v10

    const/4 v2, -0x2

    if-ge v0, v2, :cond_82

    .line 950
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v2, 0xa

    invoke-direct {v7, v0, v2, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_3e

    :cond_82
    const/16 v2, 0xa

    .line 951
    aget-byte v0, v8, v10

    if-nez v0, :cond_83

    .line 952
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/4 v3, 0x1

    invoke-direct {v7, v0, v3, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_3e

    .line 954
    :cond_83
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v2, v8, v10

    const/16 v3, 0xe

    add-int/2addr v2, v3

    const/16 v3, 0xf

    div-int/2addr v2, v3

    int-to-byte v2, v2

    const/16 v3, 0xa

    invoke-direct {v7, v0, v2, v3}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 957
    :cond_84
    :goto_3e
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightRadarInfo:B

    aget-byte v2, v8, v13

    if-eq v0, v2, :cond_9a

    .line 958
    aget-byte v0, v8, v13

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightRadarInfo:B

    .line 960
    aget-byte v0, v8, v13

    if-le v0, v1, :cond_85

    .line 961
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v14, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto/16 :goto_42

    .line 962
    :cond_85
    aget-byte v0, v8, v13

    if-nez v0, :cond_86

    .line 963
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/4 v1, 0x1

    invoke-direct {v7, v0, v1, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto/16 :goto_42

    .line 965
    :cond_86
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v13

    const/16 v2, 0xe

    add-int/2addr v1, v2

    const/16 v2, 0xf

    div-int/2addr v1, v2

    invoke-direct {v7, v0, v1, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto/16 :goto_42

    .line 969
    :cond_87
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftRadarInfo:B

    const/4 v2, 0x1

    aget-byte v3, v8, v2

    if-eq v0, v3, :cond_8a

    .line 970
    aget-byte v0, v8, v2

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftRadarInfo:B

    .line 972
    aget-byte v0, v8, v2

    if-le v0, v1, :cond_88

    .line 973
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v14, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_3f

    .line 974
    :cond_88
    aget-byte v0, v8, v2

    if-nez v0, :cond_89

    .line 975
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v2, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_3f

    .line 977
    :cond_89
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v3, v8, v2

    const/16 v2, 0xe

    add-int/2addr v3, v2

    const/16 v2, 0xf

    div-int/2addr v3, v2

    invoke-direct {v7, v0, v3, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 980
    :cond_8a
    :goto_3f
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftMidRadarInfo:B

    aget-byte v2, v8, v11

    if-eq v0, v2, :cond_8d

    .line 981
    aget-byte v0, v8, v11

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftMidRadarInfo:B

    .line 983
    aget-byte v0, v8, v11

    const/16 v2, 0x78

    if-le v0, v2, :cond_8b

    .line 984
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v14, v15}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_40

    .line 985
    :cond_8b
    aget-byte v0, v8, v11

    if-nez v0, :cond_8c

    .line 986
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/4 v2, 0x1

    invoke-direct {v7, v0, v2, v15}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_40

    .line 988
    :cond_8c
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v2, v8, v11

    const/16 v3, 0xe

    add-int/2addr v2, v3

    const/16 v3, 0xf

    div-int/2addr v2, v3

    invoke-direct {v7, v0, v2, v15}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 991
    :cond_8d
    :goto_40
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontRightMidRadarInfo:B

    aget-byte v2, v8, v10

    if-eq v0, v2, :cond_90

    .line 992
    aget-byte v0, v8, v10

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontRightMidRadarInfo:B

    .line 994
    aget-byte v0, v8, v10

    const/16 v2, 0x78

    if-le v0, v2, :cond_8e

    .line 995
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v14, v15}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_41

    .line 996
    :cond_8e
    aget-byte v0, v8, v10

    if-nez v0, :cond_8f

    .line 997
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/4 v2, 0x1

    invoke-direct {v7, v0, v2, v15}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_41

    .line 999
    :cond_8f
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v2, v8, v10

    const/16 v3, 0xe

    add-int/2addr v2, v3

    const/16 v3, 0xf

    div-int/2addr v2, v3

    invoke-direct {v7, v0, v2, v15}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1002
    :cond_90
    :goto_41
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mfrontRightRadarInfo:B

    aget-byte v2, v8, v13

    if-eq v0, v2, :cond_9a

    .line 1003
    aget-byte v0, v8, v13

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mfrontRightRadarInfo:B

    .line 1005
    aget-byte v0, v8, v13

    if-le v0, v1, :cond_91

    .line 1006
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v14, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto/16 :goto_42

    .line 1007
    :cond_91
    aget-byte v0, v8, v13

    if-nez v0, :cond_92

    .line 1008
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/4 v1, 0x1

    invoke-direct {v7, v0, v1, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto/16 :goto_42

    .line 1010
    :cond_92
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v13

    const/16 v2, 0xe

    add-int/2addr v1, v2

    const/16 v2, 0xf

    div-int/2addr v1, v2

    invoke-direct {v7, v0, v1, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto/16 :goto_42

    .line 1237
    :pswitch_1c
    aget-byte v0, v8, v14

    if-ne v0, v11, :cond_96

    .line 1238
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftRadarInfo:B

    const/4 v1, 0x1

    aget-byte v2, v8, v1

    if-eq v0, v2, :cond_93

    .line 1239
    aget-byte v0, v8, v1

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftRadarInfo:B

    .line 1240
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v2, v8, v1

    const/16 v1, 0xa

    invoke-direct {v7, v0, v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1242
    :cond_93
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftMidRadarInfo:B

    aget-byte v1, v8, v11

    if-eq v0, v1, :cond_94

    .line 1243
    aget-byte v0, v8, v11

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftMidRadarInfo:B

    .line 1244
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v11

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1246
    :cond_94
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightMidRadarInfo:B

    aget-byte v1, v8, v10

    if-eq v0, v1, :cond_95

    .line 1247
    aget-byte v0, v8, v10

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightMidRadarInfo:B

    .line 1248
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v10

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1250
    :cond_95
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightRadarInfo:B

    aget-byte v1, v8, v13

    if-eq v0, v1, :cond_9a

    .line 1251
    aget-byte v0, v8, v13

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightRadarInfo:B

    .line 1252
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v13

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_42

    .line 1255
    :cond_96
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftRadarInfo:B

    const/4 v1, 0x1

    aget-byte v2, v8, v1

    if-eq v0, v2, :cond_97

    .line 1256
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v2, v8, v1

    const/16 v1, 0xa

    invoke-direct {v7, v0, v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1258
    :cond_97
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftMidRadarInfo:B

    aget-byte v1, v8, v11

    if-eq v0, v1, :cond_98

    .line 1259
    aget-byte v0, v8, v11

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftMidRadarInfo:B

    .line 1260
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v11

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1262
    :cond_98
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontRightMidRadarInfo:B

    aget-byte v1, v8, v10

    if-eq v0, v1, :cond_99

    .line 1263
    aget-byte v0, v8, v10

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontRightMidRadarInfo:B

    .line 1264
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v10

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1266
    :cond_99
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mfrontRightRadarInfo:B

    aget-byte v1, v8, v13

    if-eq v0, v1, :cond_9a

    .line 1267
    aget-byte v0, v8, v13

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mfrontRightRadarInfo:B

    .line 1268
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v13

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1282
    :cond_9a
    :goto_42
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x41

    const/16 v2, 0x55

    const/4 v3, -0x1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    .line 3041
    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isCanbusCmdPorting(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9b

    goto/16 :goto_b9

    .line 3044
    :cond_9b
    aget-byte v0, v8, v14

    if-ne v0, v11, :cond_9f

    .line 3045
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftRadarInfo:B

    const/4 v1, 0x1

    aget-byte v2, v8, v1

    if-eq v0, v2, :cond_9c

    .line 3046
    aget-byte v0, v8, v1

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftRadarInfo:B

    .line 3047
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v1

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 3049
    :cond_9c
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftMidRadarInfo:B

    aget-byte v1, v8, v11

    if-eq v0, v1, :cond_9d

    .line 3050
    aget-byte v0, v8, v11

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftMidRadarInfo:B

    .line 3051
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v11

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 3053
    :cond_9d
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightMidRadarInfo:B

    aget-byte v1, v8, v10

    if-eq v0, v1, :cond_9e

    .line 3054
    aget-byte v0, v8, v10

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightMidRadarInfo:B

    .line 3055
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v10

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 3057
    :cond_9e
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightRadarInfo:B

    aget-byte v1, v8, v13

    if-eq v0, v1, :cond_1c2

    .line 3058
    aget-byte v0, v8, v13

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightRadarInfo:B

    .line 3059
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v13

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto/16 :goto_b9

    .line 3062
    :cond_9f
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftRadarInfo:B

    const/4 v1, 0x1

    aget-byte v2, v8, v1

    if-eq v0, v2, :cond_a0

    .line 3063
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v1

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 3065
    :cond_a0
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftMidRadarInfo:B

    aget-byte v1, v8, v11

    if-eq v0, v1, :cond_a1

    .line 3066
    aget-byte v0, v8, v11

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftMidRadarInfo:B

    .line 3067
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v11

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 3069
    :cond_a1
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontRightMidRadarInfo:B

    aget-byte v1, v8, v10

    if-eq v0, v1, :cond_a2

    .line 3070
    aget-byte v0, v8, v10

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontRightMidRadarInfo:B

    .line 3071
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v10

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 3073
    :cond_a2
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mfrontRightRadarInfo:B

    aget-byte v1, v8, v13

    if-eq v0, v1, :cond_1c2

    .line 3074
    aget-byte v0, v8, v13

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mfrontRightRadarInfo:B

    .line 3075
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v13

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto/16 :goto_b9

    :pswitch_1d
    const/16 v0, 0xff

    .line 3219
    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->disableData:I

    const/4 v0, 0x1

    .line 3220
    iput-boolean v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    .line 3221
    invoke-direct/range {p0 .. p0}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->getCurrentCarId()I

    move-result v1

    if-ne v1, v0, :cond_1c2

    const/16 v1, 0x25

    const/16 v2, 0xa

    .line 3222
    aget-byte v3, v8, v11

    aget-byte v4, v8, v10

    aget-byte v5, v8, v13

    aget-byte v6, v8, v9

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setRearRadarDataAllCmd(BIIIII)V

    goto/16 :goto_b9

    :pswitch_1e
    const/16 v0, 0xff

    .line 3198
    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->disableData:I

    const/4 v0, 0x1

    .line 3199
    iput-boolean v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    .line 3201
    invoke-direct/range {p0 .. p0}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->getCurrentCarId()I

    move-result v1

    if-ne v1, v0, :cond_a3

    const/16 v1, 0x25

    const/16 v2, 0xa

    .line 3202
    aget-byte v3, v8, v11

    aget-byte v4, v8, v10

    aget-byte v5, v8, v13

    aget-byte v6, v8, v9

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setRearRadarDataAllCmd(BIIIII)V

    goto/16 :goto_b9

    .line 3205
    :cond_a3
    aget-byte v0, v8, v11

    if-ne v0, v3, :cond_a4

    const/high16 v0, 0x437f0000    # 255.0f

    goto :goto_43

    .line 3208
    :cond_a4
    aget-byte v0, v8, v11

    int-to-float v0, v0

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    .line 3210
    :goto_43
    aget-byte v1, v8, v10

    if-ne v1, v3, :cond_a5

    const/high16 v1, 0x437f0000    # 255.0f

    goto :goto_44

    .line 3213
    :cond_a5
    aget-byte v1, v8, v10

    int-to-float v1, v1

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v1, v2

    :goto_44
    const/16 v2, 0x24

    const/16 v3, 0xd

    float-to-int v4, v0

    const/16 v5, 0xff

    const/16 v6, 0xff

    float-to-int v8, v1

    move-object/from16 v0, p0

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v8

    .line 3215
    invoke-direct/range {v0 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setRearRadarDataAllCmd(BIIIII)V

    goto/16 :goto_b9

    :pswitch_1f
    const/16 v0, 0xfe

    .line 3188
    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->disableData:I

    const/4 v0, 0x1

    .line 3189
    iput-boolean v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    .line 3190
    iget-object v1, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v1, v1, v0

    const/16 v2, 0x24

    if-ne v1, v2, :cond_1c2

    .line 3191
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v2, v8, v11

    add-int/2addr v2, v0

    invoke-direct {v7, v1, v2, v9}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setGeneralRadarData(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 3192
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v2, v8, v10

    add-int/2addr v2, v0

    const/4 v3, 0x6

    invoke-direct {v7, v1, v2, v3}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setGeneralRadarData(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 3193
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v2, v8, v10

    add-int/2addr v2, v0

    invoke-direct {v7, v1, v2, v3}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setGeneralRadarData(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 3194
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v2, v8, v13

    add-int/2addr v2, v0

    invoke-direct {v7, v1, v2, v9}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setGeneralRadarData(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto/16 :goto_b9

    :pswitch_20
    const/16 v0, 0xff

    .line 3179
    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->disableData:I

    const/4 v0, 0x1

    .line 3180
    iput-boolean v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    .line 3181
    invoke-direct/range {p0 .. p0}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->getCurrentCarId()I

    move-result v0

    if-ne v0, v11, :cond_a6

    const/16 v1, 0x25

    const/16 v2, 0xa

    .line 3182
    aget-byte v3, v8, v11

    aget-byte v4, v8, v10

    aget-byte v5, v8, v13

    aget-byte v6, v8, v9

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setRearRadarDataAllCmd(BIIIII)V

    goto/16 :goto_b9

    :cond_a6
    const/16 v1, 0x24

    const/16 v2, 0x78

    .line 3184
    aget-byte v3, v8, v11

    const/16 v4, 0xff

    const/16 v5, 0xff

    aget-byte v6, v8, v10

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setRearRadarDataAllCmd(BIIIII)V

    goto/16 :goto_b9

    :pswitch_21
    const/4 v0, 0x1

    .line 3174
    iput-boolean v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    const/16 v1, 0x22

    const/16 v2, 0xa

    .line 3175
    aget-byte v3, v8, v11

    aget-byte v4, v8, v10

    aget-byte v5, v8, v13

    aget-byte v6, v8, v9

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setRearRadarDataAllCmd(BIIIII)V

    const/16 v1, 0x23

    const/16 v2, 0xa

    .line 3176
    aget-byte v3, v8, v11

    aget-byte v4, v8, v10

    aget-byte v5, v8, v13

    aget-byte v6, v8, v9

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontRadarDataAllCmd(BIIIII)V

    goto/16 :goto_b9

    :pswitch_22
    const/4 v0, 0x1

    .line 3169
    iput-boolean v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    const/16 v1, 0x22

    const/4 v2, 0x4

    .line 3170
    aget-byte v3, v8, v11

    aget-byte v4, v8, v10

    aget-byte v5, v8, v13

    aget-byte v6, v8, v9

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setRearRadarDataAllCmd(BIIIII)V

    const/16 v1, 0x23

    const/4 v2, 0x4

    .line 3171
    aget-byte v3, v8, v11

    aget-byte v4, v8, v10

    aget-byte v5, v8, v13

    aget-byte v6, v8, v9

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontRadarDataAllCmd(BIIIII)V

    goto/16 :goto_b9

    :pswitch_23
    const/4 v0, 0x1

    .line 3164
    iput-boolean v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    const/16 v1, 0x22

    const/4 v2, 0x4

    .line 3165
    aget-byte v3, v8, v11

    aget-byte v4, v8, v10

    aget-byte v5, v8, v13

    aget-byte v6, v8, v9

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setRearRadarDataAllCmd(BIIIII)V

    const/16 v1, 0x23

    const/4 v2, 0x4

    .line 3166
    aget-byte v3, v8, v11

    aget-byte v4, v8, v10

    aget-byte v5, v8, v13

    aget-byte v6, v8, v9

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontRadarDataAllCmd(BIIIII)V

    goto/16 :goto_b9

    :pswitch_24
    const/4 v0, 0x1

    .line 3081
    aget-byte v2, v8, v0

    if-ne v2, v1, :cond_1c2

    new-array v1, v13, [I

    aput v14, v1, v14

    aput v14, v1, v0

    .line 3083
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    const/16 v2, 0xc

    aget v0, v0, v2

    aput v0, v1, v11

    aput v14, v1, v10

    .line 3084
    iput-boolean v14, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->isDistanceMode:Z

    const/4 v0, 0x1

    .line 3085
    iput-boolean v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    .line 3087
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    const/4 v2, 0x6

    aget v0, v0, v2

    const/16 v3, 0xff

    if-ne v0, v3, :cond_a7

    .line 3088
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aput v14, v0, v2

    .line 3090
    :cond_a7
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v12

    const/16 v2, 0xff

    if-ne v0, v2, :cond_a8

    .line 3091
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aput v14, v0, v12

    .line 3093
    :cond_a8
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v15

    const/16 v2, 0xff

    if-ne v0, v2, :cond_a9

    .line 3094
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aput v14, v0, v15

    .line 3096
    :cond_a9
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    const/16 v2, 0x9

    aget v0, v0, v2

    const/16 v3, 0xff

    if-ne v0, v3, :cond_aa

    .line 3097
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aput v14, v0, v2

    .line 3099
    :cond_aa
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v11

    const/16 v2, 0xff

    if-ne v0, v2, :cond_ab

    .line 3100
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aput v14, v0, v11

    .line 3102
    :cond_ab
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v10

    const/16 v2, 0xff

    if-ne v0, v2, :cond_ac

    .line 3103
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aput v14, v0, v10

    .line 3105
    :cond_ac
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v13

    const/16 v2, 0xff

    if-ne v0, v2, :cond_ad

    .line 3106
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aput v14, v0, v13

    .line 3108
    :cond_ad
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v9

    const/16 v2, 0xff

    if-ne v0, v2, :cond_ae

    .line 3109
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aput v14, v0, v9

    .line 3111
    :cond_ae
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    const/4 v2, 0x6

    aget v0, v0, v2

    invoke-direct {v7, v0, v10}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontLeftData(II)V

    .line 3112
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v12

    invoke-direct {v7, v0, v9}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontLeftMidData(II)V

    .line 3113
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v15

    invoke-direct {v7, v0, v9}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontRightMidData(II)V

    .line 3114
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    const/16 v2, 0x9

    aget v0, v0, v2

    invoke-direct {v7, v0, v10}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontRightData(II)V

    .line 3117
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v11

    invoke-direct {v7, v0, v10}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackLeftData(II)V

    .line 3118
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v10

    invoke-direct {v7, v0, v12}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackLeftMidData(II)V

    .line 3119
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v13

    invoke-direct {v7, v0, v12}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackRightMidData(II)V

    .line 3120
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v9

    invoke-direct {v7, v0, v10}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackRightData(II)V

    .line 3122
    invoke-direct {v7, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setReturnDataHaval([I)I

    goto/16 :goto_b9

    :pswitch_25
    const/16 v1, 0x23

    const/4 v2, 0x4

    .line 3036
    aget-byte v3, v8, v11

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget-byte v6, v8, v9

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontRadarDataAllCmd(BIIIII)V

    :pswitch_26
    const/16 v1, 0x22

    const/4 v2, 0x4

    .line 3038
    aget-byte v3, v8, v11

    aget-byte v4, v8, v10

    aget-byte v5, v8, v13

    aget-byte v6, v8, v9

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setRearRadarDataAllCmd(BIIIII)V

    goto/16 :goto_b9

    :pswitch_27
    const/4 v0, 0x1

    .line 3024
    iput-boolean v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    const/16 v0, 0xff

    .line 3025
    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->disableData:I

    .line 3026
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v11

    invoke-direct {v7, v0, v11}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackLeftData(II)V

    .line 3027
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v10

    const/4 v1, 0x6

    invoke-direct {v7, v0, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackLeftMidData(II)V

    .line 3028
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v13

    invoke-direct {v7, v0, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackRightMidData(II)V

    .line 3029
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v9

    invoke-direct {v7, v0, v11}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackRightData(II)V

    .line 3030
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v1

    invoke-direct {v7, v0, v11}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontLeftData(II)V

    .line 3031
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v12

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontLeftMidData(II)V

    .line 3032
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v15

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontRightMidData(II)V

    .line 3033
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    const/16 v1, 0x9

    aget v0, v0, v1

    invoke-direct {v7, v0, v11}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontRightData(II)V

    goto/16 :goto_b9

    :pswitch_28
    const/4 v0, 0x1

    .line 3020
    iput-boolean v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    const/16 v1, 0x22

    const/16 v2, 0x1f

    .line 3021
    aget-byte v3, v8, v11

    aget-byte v4, v8, v10

    aget-byte v5, v8, v13

    aget-byte v6, v8, v9

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setRearRadarDataAllCmd(BIIIII)V

    goto/16 :goto_b9

    :pswitch_29
    const/16 v1, 0x22

    const/4 v2, 0x4

    .line 3016
    aget-byte v3, v8, v11

    aget-byte v4, v8, v10

    aget-byte v5, v8, v13

    aget-byte v6, v8, v9

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setRearRadarDataAllCmd(BIIIII)V

    const/16 v1, 0x23

    const/4 v2, 0x4

    .line 3017
    aget-byte v3, v8, v11

    aget-byte v4, v8, v10

    aget-byte v5, v8, v13

    aget-byte v6, v8, v9

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontRadarDataAllCmd(BIIIII)V

    goto/16 :goto_b9

    :pswitch_2a
    const/4 v0, 0x1

    .line 2970
    aget-byte v2, v8, v0

    if-ne v2, v1, :cond_1c2

    .line 2971
    iput-boolean v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->isDistanceMode:Z

    .line 2973
    aget-byte v0, v8, v11

    if-ne v0, v3, :cond_af

    .line 2974
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0xa

    invoke-direct {v7, v0, v14, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    const/16 v2, 0xa

    goto :goto_45

    .line 2976
    :cond_af
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v11

    const/16 v2, 0xff

    and-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x1a

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2978
    :goto_45
    aget-byte v0, v8, v10

    if-ne v0, v3, :cond_b0

    .line 2979
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v14, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    const/16 v2, 0xa

    goto :goto_46

    .line 2981
    :cond_b0
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v10

    const/16 v2, 0xff

    and-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x1a

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2983
    :goto_46
    aget-byte v0, v8, v13

    if-ne v0, v3, :cond_b1

    .line 2984
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v14, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    const/16 v2, 0xa

    goto :goto_47

    .line 2986
    :cond_b1
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v13

    const/16 v2, 0xff

    and-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x1a

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2988
    :goto_47
    aget-byte v0, v8, v9

    if-ne v0, v3, :cond_b2

    .line 2989
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v14, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    const/4 v0, 0x6

    const/16 v2, 0xa

    goto :goto_48

    .line 2991
    :cond_b2
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v9

    const/16 v2, 0xff

    and-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x1a

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    const/4 v0, 0x6

    .line 2993
    :goto_48
    aget-byte v1, v8, v0

    if-ne v1, v3, :cond_b3

    .line 2994
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v14, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    const/16 v2, 0xa

    goto :goto_49

    .line 2996
    :cond_b3
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/4 v1, 0x6

    aget-byte v1, v8, v1

    const/16 v2, 0xff

    and-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x1a

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2998
    :goto_49
    aget-byte v0, v8, v12

    if-ne v0, v3, :cond_b4

    .line 2999
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v14, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    const/16 v2, 0xa

    goto :goto_4a

    .line 3001
    :cond_b4
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v12

    const/16 v2, 0xff

    and-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x1a

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 3003
    :goto_4a
    aget-byte v0, v8, v15

    if-ne v0, v3, :cond_b5

    .line 3004
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v14, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    const/16 v0, 0x9

    const/16 v2, 0xa

    goto :goto_4b

    .line 3006
    :cond_b5
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v15

    const/16 v2, 0xff

    and-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x1a

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    const/16 v0, 0x9

    .line 3008
    :goto_4b
    aget-byte v1, v8, v0

    if-ne v1, v3, :cond_b6

    .line 3009
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v14, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto/16 :goto_b9

    .line 3011
    :cond_b6
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0x9

    aget-byte v1, v8, v1

    const/16 v2, 0xff

    and-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x1a

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto/16 :goto_b9

    :pswitch_2b
    const/4 v0, 0x1

    .line 2926
    iput-boolean v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    .line 2927
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v11

    invoke-direct {v7, v0, v10}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackLeftData(II)V

    .line 2928
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v10

    invoke-direct {v7, v0, v12}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackLeftMidData(II)V

    .line 2929
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v13

    invoke-direct {v7, v0, v12}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackRightMidData(II)V

    .line 2930
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v9

    invoke-direct {v7, v0, v10}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackRightData(II)V

    goto/16 :goto_b9

    :pswitch_2c
    const/4 v0, 0x1

    .line 2918
    iput-boolean v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    const/16 v0, 0xff

    .line 2919
    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->disableData:I

    .line 2920
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v11

    invoke-direct {v7, v0, v11}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackLeftData(II)V

    .line 2921
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v10

    const/4 v1, 0x6

    invoke-direct {v7, v0, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackLeftMidData(II)V

    .line 2922
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v13

    invoke-direct {v7, v0, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackRightMidData(II)V

    .line 2923
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v9

    invoke-direct {v7, v0, v11}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackRightData(II)V

    goto/16 :goto_b9

    .line 2909
    :pswitch_2d
    iput-boolean v14, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    .line 2910
    iput v14, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->disableData:I

    const/16 v1, 0x8

    const/4 v2, 0x4

    .line 2911
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v3, v0, v11

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v4, v0, v10

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v5, v0, v10

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v6, v0, v13

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontRadarDataAllCmd(BIIIII)V

    const/16 v1, 0x8

    const/4 v2, 0x4

    .line 2913
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v3, v0, v9

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    const/4 v4, 0x6

    aget v5, v0, v4

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v6, v0, v4

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v8, v0, v12

    move-object/from16 v0, p0

    move v4, v5

    move v5, v6

    move v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setRearRadarDataAllCmd(BIIIII)V

    new-array v0, v10, [B

    const/16 v1, 0x16

    aput-byte v1, v0, v14

    const/16 v1, -0x71

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    const/16 v1, 0x36

    aput-byte v1, v0, v11

    .line 2915
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    goto/16 :goto_b9

    :pswitch_2e
    const/4 v0, 0x1

    .line 2896
    iput-boolean v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    const/16 v1, 0xff

    .line 2897
    iput v1, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->disableData:I

    new-array v1, v13, [I

    aput v14, v1, v14

    aput v14, v1, v0

    aput v14, v1, v11

    aput v14, v1, v10

    move v0, v11

    :goto_4c
    const/4 v2, 0x6

    if-ge v0, v2, :cond_b8

    add-int/lit8 v2, v0, -0x2

    .line 2900
    iget-object v3, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v3, v3, v0

    aput v3, v1, v2

    .line 2901
    aget v3, v1, v2

    const/16 v4, 0xff

    if-eq v3, v4, :cond_b7

    .line 2902
    aget v3, v1, v2

    const/4 v4, 0x1

    add-int/2addr v3, v4

    aput v3, v1, v2

    :cond_b7
    add-int/lit8 v0, v0, 0x1

    goto :goto_4c

    :cond_b8
    const/16 v2, 0x41

    const/16 v3, 0x9

    .line 2905
    aget v4, v1, v14

    const/4 v0, 0x1

    aget v5, v1, v0

    aget v6, v1, v11

    aget v8, v1, v10

    move-object/from16 v0, p0

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setRearRadarDataAllCmd(BIIIII)V

    goto/16 :goto_b9

    :pswitch_2f
    const/4 v0, 0x1

    .line 2884
    iput-boolean v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    .line 2885
    iput v14, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->disableData:I

    const/16 v1, 0x23

    const/4 v2, 0x4

    .line 2886
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v3, v0, v11

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v4, v0, v10

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v5, v0, v13

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v6, v0, v9

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontRadarDataAllCmd(BIIIII)V

    const-string v0, "HONDA_ACCORD_BINARY"

    .line 2887
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "radar UIshowManager.getInstance().isRearRadarOpen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->getInstance()Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;

    sget-boolean v2, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->isRearRadarOpen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2888
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->getInstance()Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;

    sget-boolean v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->isRearRadarOpen:Z

    if-nez v0, :cond_b9

    const/16 v0, 0x22

    .line 2889
    invoke-direct {v7, v0}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->unShowRearRadar(B)V

    goto/16 :goto_b9

    :cond_b9
    const/16 v1, 0x22

    const/4 v2, 0x4

    .line 2891
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v3, v0, v11

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v4, v0, v10

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v5, v0, v13

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v6, v0, v9

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setRearRadarDataAllCmd(BIIIII)V

    goto/16 :goto_b9

    :pswitch_30
    const/4 v0, 0x1

    .line 2877
    iput-boolean v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    const/16 v0, 0xff

    .line 2878
    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->disableData:I

    const/16 v1, 0x72

    const/16 v2, 0xff

    .line 2879
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    const/16 v3, 0xc

    aget v3, v0, v3

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    const/16 v4, 0xd

    aget v4, v0, v4

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    const/16 v5, 0xe

    aget v5, v0, v5

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    const/16 v6, 0xf

    aget v6, v0, v6

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontRadarDataAllCmd(BIIIII)V

    const/16 v1, 0x72

    const/16 v2, 0xff

    .line 2880
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v3, v0, v15

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    const/16 v4, 0x9

    aget v4, v0, v4

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    const/16 v5, 0xa

    aget v5, v0, v5

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    const/16 v6, 0xb

    aget v6, v0, v6

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setRearRadarDataAllCmd(BIIIII)V

    goto/16 :goto_b9

    :pswitch_31
    const/4 v0, 0x1

    .line 2870
    iput-boolean v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    .line 2871
    iput v14, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->disableData:I

    const/4 v1, 0x3

    const/4 v2, 0x4

    .line 2872
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v3, v0, v11

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v4, v0, v10

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v5, v0, v13

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v6, v0, v9

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontRadarDataAllCmd(BIIIII)V

    const/4 v1, 0x3

    const/4 v2, 0x4

    .line 2873
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    const/4 v3, 0x6

    aget v3, v0, v3

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v4, v0, v12

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v5, v0, v15

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    const/16 v6, 0x9

    aget v6, v0, v6

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setRearRadarDataAllCmd(BIIIII)V

    goto/16 :goto_b9

    :pswitch_32
    const/4 v0, 0x1

    .line 2863
    iput-boolean v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    .line 2864
    iput v14, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->disableData:I

    const/16 v1, 0x1d

    const/4 v2, 0x4

    .line 2865
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v3, v0, v11

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v4, v0, v10

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v5, v0, v13

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v6, v0, v9

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontRadarDataAllCmd(BIIIII)V

    const/16 v1, 0x1e

    const/4 v2, 0x4

    .line 2866
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v3, v0, v11

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v4, v0, v10

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v5, v0, v13

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v6, v0, v9

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setRearRadarDataAllCmd(BIIIII)V

    goto/16 :goto_b9

    .line 2848
    :pswitch_33
    aget-byte v0, v8, v14

    if-ne v0, v2, :cond_1c2

    const/4 v0, 0x1

    aget-byte v1, v8, v0

    const/16 v2, 0x22

    if-ne v1, v2, :cond_1c2

    .line 2849
    iput-boolean v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->isDistanceMode:Z

    .line 2850
    iput-boolean v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->isOnlyOneDist:Z

    .line 2851
    iput-boolean v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    .line 2852
    iput v14, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->disableData:I

    const/16 v1, 0x22

    const/4 v2, 0x7

    .line 2853
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v3, v0, v11

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v4, v0, v10

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v5, v0, v13

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v6, v0, v9

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setRearRadarDataAllCmd(BIIIII)V

    .line 2855
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mapDist:Ljava/util/HashMap;

    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarDistance;

    iget-object v2, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    const/4 v3, 0x6

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_b9

    :pswitch_34
    const/4 v0, 0x1

    .line 2831
    iput-boolean v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    .line 2832
    iput v14, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->disableData:I

    .line 2833
    aget-byte v1, v8, v0

    const/16 v0, 0x23

    if-ne v1, v0, :cond_ba

    .line 2834
    aget-byte v0, v8, v11

    invoke-direct {v7, v0, v10}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontLeftData(II)V

    .line 2835
    aget-byte v0, v8, v9

    invoke-direct {v7, v0, v10}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontRightData(II)V

    goto/16 :goto_b9

    :cond_ba
    const/4 v0, 0x1

    .line 2838
    aget-byte v0, v8, v0

    const/16 v1, 0x22

    if-ne v0, v1, :cond_1c2

    .line 2839
    aget-byte v0, v8, v11

    invoke-direct {v7, v0, v10}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackLeftData(II)V

    .line 2840
    aget-byte v0, v8, v9

    invoke-direct {v7, v0, v10}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackRightData(II)V

    .line 2841
    aget-byte v0, v8, v10

    invoke-direct {v7, v0, v10}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackLeftMidData(II)V

    .line 2842
    aget-byte v0, v8, v13

    invoke-direct {v7, v0, v10}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackRightMidData(II)V

    goto/16 :goto_b9

    :pswitch_35
    const/4 v0, 0x1

    .line 2817
    aget-byte v1, v8, v0

    const/16 v2, 0x72

    if-ne v1, v2, :cond_bb

    .line 2818
    iput-boolean v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    const/16 v0, 0xff

    .line 2819
    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->disableData:I

    const/16 v1, 0x72

    const/16 v2, 0xff

    .line 2820
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    const/16 v3, 0xc

    aget v3, v0, v3

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    const/16 v4, 0xd

    aget v4, v0, v4

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    const/16 v5, 0xe

    aget v5, v0, v5

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    const/16 v6, 0xf

    aget v6, v0, v6

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontRadarDataAllCmd(BIIIII)V

    const/16 v1, 0x72

    const/16 v2, 0xff

    .line 2821
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v3, v0, v15

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    const/16 v4, 0x9

    aget v5, v0, v4

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    const/16 v4, 0xa

    aget v6, v0, v4

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    const/16 v4, 0xb

    aget v16, v0, v4

    move-object/from16 v0, p0

    move v4, v5

    move v5, v6

    move/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setRearRadarDataAllCmd(BIIIII)V

    const/4 v0, 0x1

    .line 2823
    :cond_bb
    aget-byte v1, v8, v0

    const/16 v2, 0x42

    if-ne v1, v2, :cond_1c2

    new-array v8, v15, [I

    aput v14, v8, v14

    aput v14, v8, v0

    aput v14, v8, v11

    aput v14, v8, v10

    aput v14, v8, v13

    aput v14, v8, v9

    const/4 v0, 0x6

    aput v14, v8, v0

    aput v14, v8, v12

    const/16 v1, 0x42

    const/16 v2, 0xff

    .line 2825
    iget-object v3, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v3, v3, v0

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v4, v0, v12

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v5, v0, v15

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    const/16 v6, 0x9

    aget v6, v0, v6

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setLeftRadarDataAllCmd(BIIIII)V

    const/16 v1, 0x42

    const/16 v2, 0xff

    .line 2826
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v3, v0, v11

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v4, v0, v10

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v5, v0, v13

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v6, v0, v9

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setRightRadarDataAllCmd(BIIIII)V

    .line 2827
    invoke-direct {v7, v8}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setReturnData([I)I

    goto/16 :goto_b9

    .line 2808
    :pswitch_36
    iput v14, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->disableData:I

    const/4 v0, 0x1

    .line 2809
    iput-boolean v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    const/16 v1, 0x26

    const/16 v2, 0x8

    .line 2810
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v3, v0, v11

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v4, v0, v10

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v5, v0, v13

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v6, v0, v9

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontRadarDataAllCmd(BIIIII)V

    const/16 v1, 0x25

    const/16 v2, 0x8

    .line 2811
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v3, v0, v11

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v4, v0, v10

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v5, v0, v13

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v6, v0, v9

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setRearRadarDataAllCmd(BIIIII)V

    goto/16 :goto_b9

    .line 2800
    :pswitch_37
    iput v14, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->disableData:I

    const/16 v1, 0x23

    const/4 v2, 0x4

    .line 2801
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v3, v0, v11

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v4, v0, v10

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v5, v0, v13

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v6, v0, v9

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontRadarDataAllCmd(BIIIII)V

    const/16 v1, 0x22

    const/4 v2, 0x4

    .line 2802
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v3, v0, v11

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v4, v0, v10

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v5, v0, v13

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v6, v0, v9

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setRearRadarDataAllCmd(BIIIII)V

    const/16 v1, 0x24

    const/4 v2, 0x4

    .line 2803
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v3, v0, v11

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v4, v0, v10

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v5, v0, v13

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v6, v0, v9

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setLeftRadarDataAllCmd(BIIIII)V

    const/16 v1, 0x25

    const/4 v2, 0x4

    .line 2804
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v3, v0, v11

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v4, v0, v10

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v5, v0, v13

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v6, v0, v9

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setRightRadarDataAllCmd(BIIIII)V

    goto/16 :goto_b9

    :pswitch_38
    const/4 v0, 0x1

    .line 2782
    aget-byte v1, v8, v0

    const/16 v2, 0x1d

    if-ne v1, v2, :cond_bc

    .line 2783
    iput-boolean v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    .line 2784
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v11

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontLeftData(II)V

    .line 2785
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v10

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontLeftMidData(II)V

    .line 2786
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v13

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontRightMidData(II)V

    .line 2787
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v9

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontRightData(II)V

    goto/16 :goto_b9

    .line 2788
    :cond_bc
    aget-byte v1, v8, v0

    const/16 v2, 0x1e

    if-ne v1, v2, :cond_1c2

    .line 2789
    iput-boolean v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    .line 2790
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v11

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackLeftData(II)V

    .line 2791
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v10

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackLeftMidData(II)V

    .line 2792
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v13

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackRightMidData(II)V

    .line 2793
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v9

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackRightData(II)V

    goto/16 :goto_b9

    :pswitch_39
    const/4 v0, 0x1

    .line 2766
    aget-byte v1, v8, v0

    const/16 v2, 0x23

    if-ne v1, v2, :cond_bd

    .line 2767
    iput-boolean v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    .line 2768
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v11

    invoke-direct {v7, v0, v10}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontLeftData(II)V

    .line 2769
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v10

    invoke-direct {v7, v0, v10}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontLeftMidData(II)V

    .line 2770
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v13

    invoke-direct {v7, v0, v10}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontRightMidData(II)V

    .line 2771
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v9

    invoke-direct {v7, v0, v10}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontRightData(II)V

    goto/16 :goto_b9

    .line 2772
    :cond_bd
    aget-byte v1, v8, v0

    const/16 v2, 0x22

    if-ne v1, v2, :cond_1c2

    .line 2773
    iput-boolean v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    .line 2774
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v11

    invoke-direct {v7, v0, v10}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackLeftData(II)V

    .line 2775
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v10

    invoke-direct {v7, v0, v10}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackLeftMidData(II)V

    .line 2776
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v13

    invoke-direct {v7, v0, v10}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackRightMidData(II)V

    .line 2777
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v9

    invoke-direct {v7, v0, v10}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackRightData(II)V

    goto/16 :goto_b9

    :pswitch_3a
    const/4 v0, 0x1

    .line 2580
    aget-byte v1, v8, v0

    const/16 v0, 0x23

    if-ne v1, v0, :cond_be

    .line 2581
    iput-boolean v14, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    .line 2582
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v11

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontLeftData(II)V

    .line 2583
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v10

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontLeftMidData(II)V

    .line 2584
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v13

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontRightMidData(II)V

    .line 2585
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v9

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontRightData(II)V

    goto/16 :goto_b9

    :cond_be
    const/4 v0, 0x1

    .line 2586
    aget-byte v0, v8, v0

    const/16 v1, 0x22

    if-ne v0, v1, :cond_1c2

    .line 2587
    iput-boolean v14, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    .line 2588
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v11

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackLeftData(II)V

    .line 2589
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v10

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackLeftMidData(II)V

    .line 2590
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v13

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackRightMidData(II)V

    .line 2591
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v9

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackRightData(II)V

    goto/16 :goto_b9

    :pswitch_3b
    const/4 v0, 0x1

    .line 2563
    aget-byte v1, v8, v0

    const/16 v2, 0x23

    if-ne v1, v2, :cond_bf

    .line 2564
    iput-boolean v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    .line 2565
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v11

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontLeftData(II)V

    .line 2566
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v10

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontLeftMidData(II)V

    .line 2567
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v13

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontRightMidData(II)V

    .line 2568
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v9

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontRightData(II)V

    goto/16 :goto_b9

    .line 2569
    :cond_bf
    aget-byte v1, v8, v0

    const/16 v2, 0x22

    if-ne v1, v2, :cond_1c2

    .line 2570
    iput-boolean v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    .line 2571
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v11

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackLeftData(II)V

    .line 2572
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v10

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackLeftMidData(II)V

    .line 2573
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v13

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackRightMidData(II)V

    .line 2574
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v9

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackRightData(II)V

    goto/16 :goto_b9

    .line 2546
    :pswitch_3c
    iput v14, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->disableData:I

    const/4 v0, 0x1

    .line 2547
    iput-boolean v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    const/4 v1, 0x5

    const/4 v2, 0x4

    .line 2548
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v11

    .line 2549
    invoke-static {v0, v14, v13}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFromByteWithBit(III)I

    move-result v3

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v11

    .line 2550
    invoke-static {v0, v13, v13}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFromByteWithBit(III)I

    move-result v4

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v10

    .line 2551
    invoke-static {v0, v14, v13}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFromByteWithBit(III)I

    move-result v5

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v10

    .line 2552
    invoke-static {v0, v13, v13}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFromByteWithBit(III)I

    move-result v6

    move-object/from16 v0, p0

    .line 2548
    invoke-direct/range {v0 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setRearRadarDataAllCmd(BIIIII)V

    const/4 v1, 0x5

    const/4 v2, 0x4

    .line 2553
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v13

    .line 2554
    invoke-static {v0, v14, v13}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFromByteWithBit(III)I

    move-result v3

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v13

    .line 2555
    invoke-static {v0, v13, v13}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFromByteWithBit(III)I

    move-result v4

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v9

    .line 2556
    invoke-static {v0, v14, v13}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFromByteWithBit(III)I

    move-result v5

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v9

    .line 2557
    invoke-static {v0, v13, v13}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFromByteWithBit(III)I

    move-result v6

    move-object/from16 v0, p0

    .line 2553
    invoke-direct/range {v0 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontRadarDataAllCmd(BIIIII)V

    goto/16 :goto_b9

    .line 2506
    :pswitch_3d
    aget-byte v0, v8, v14

    if-ne v0, v2, :cond_1c2

    const/4 v0, 0x1

    aget-byte v2, v8, v0

    if-ne v2, v1, :cond_1c2

    .line 2507
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftRadarInfo:B

    const/4 v1, 0x6

    aget-byte v2, v8, v1

    if-eq v0, v2, :cond_c0

    .line 2508
    aget-byte v0, v8, v1

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftRadarInfo:B

    .line 2509
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FL_BEFORE_LEFT_HIWORLD:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v1

    const/16 v2, 0xff

    and-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x1a

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2511
    :cond_c0
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftMidRadarInfo:B

    aget-byte v1, v8, v12

    if-eq v0, v1, :cond_c1

    .line 2512
    aget-byte v0, v8, v12

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftMidRadarInfo:B

    .line 2513
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FML_BEFORE_IN_HIWORLD:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v12

    const/16 v2, 0xff

    and-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x1a

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2515
    :cond_c1
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontRightMidRadarInfo:B

    aget-byte v1, v8, v15

    if-eq v0, v1, :cond_c2

    .line 2516
    aget-byte v0, v8, v15

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontRightMidRadarInfo:B

    .line 2517
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FMR_BEFORE_IN_HIWORLD:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v15

    const/16 v2, 0xff

    and-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x1a

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2519
    :cond_c2
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mfrontRightRadarInfo:B

    const/16 v1, 0x9

    aget-byte v2, v8, v1

    if-eq v0, v2, :cond_c3

    .line 2520
    aget-byte v0, v8, v1

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mfrontRightRadarInfo:B

    .line 2521
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FR_BEFORE_RIGHT_HIWORLD:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v1

    const/16 v2, 0xff

    and-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x1a

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2524
    :cond_c3
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftRadarInfo:B

    aget-byte v1, v8, v11

    if-eq v0, v1, :cond_c4

    .line 2525
    aget-byte v0, v8, v11

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftRadarInfo:B

    .line 2526
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->RL_REAR_LEFT_HIWORLD:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v11

    const/16 v2, 0xff

    and-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x1a

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2528
    :cond_c4
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftMidRadarInfo:B

    aget-byte v1, v8, v10

    if-eq v0, v1, :cond_c5

    .line 2529
    aget-byte v0, v8, v10

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftMidRadarInfo:B

    .line 2530
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->RML_REAR_IN_HIWORLD:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v10

    const/16 v2, 0xff

    and-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x1a

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2533
    :cond_c5
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightMidRadarInfo:B

    aget-byte v1, v8, v13

    if-eq v0, v1, :cond_c6

    .line 2534
    aget-byte v0, v8, v13

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightMidRadarInfo:B

    .line 2535
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->RMR_REAR_IN_HIWORLD:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v13

    const/16 v2, 0xff

    and-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x1a

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2537
    :cond_c6
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightRadarInfo:B

    aget-byte v1, v8, v9

    if-eq v0, v1, :cond_1c2

    .line 2538
    aget-byte v0, v8, v9

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightRadarInfo:B

    .line 2539
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->RR_REAR_RIGHT_HIWORLD:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v9

    const/16 v2, 0xff

    and-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x1a

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto/16 :goto_b9

    .line 2439
    :pswitch_3e
    aget-byte v0, v8, v14

    if-ne v0, v2, :cond_ce

    const/4 v0, 0x1

    aget-byte v1, v8, v0

    const/16 v0, 0x1e

    if-ne v1, v0, :cond_ce

    .line 2440
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftRadarInfo:B

    aget-byte v1, v8, v11

    if-eq v0, v1, :cond_c8

    .line 2441
    aget-byte v0, v8, v11

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftRadarInfo:B

    .line 2442
    aget-byte v0, v8, v11

    if-nez v0, :cond_c7

    .line 2443
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0xa

    invoke-direct {v7, v0, v14, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_4d

    .line 2445
    :cond_c7
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v11

    const/16 v2, 0xff

    and-int/2addr v1, v2

    mul-int/2addr v1, v11

    aget-byte v3, v8, v11

    and-int/2addr v3, v2

    add-int/2addr v1, v3

    sub-int/2addr v1, v11

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    :goto_4d
    const-string v0, "REAR_LEFT"

    .line 2446
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "REAR_LEFT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v2, v8, v11

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2448
    :cond_c8
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftMidRadarInfo:B

    aget-byte v1, v8, v10

    if-eq v0, v1, :cond_ca

    .line 2449
    aget-byte v0, v8, v10

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftMidRadarInfo:B

    .line 2450
    aget-byte v0, v8, v10

    if-nez v0, :cond_c9

    .line 2451
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0xa

    invoke-direct {v7, v0, v14, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_4e

    .line 2453
    :cond_c9
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v10

    const/16 v2, 0xff

    and-int/2addr v1, v2

    mul-int/2addr v1, v11

    aget-byte v3, v8, v10

    and-int/2addr v3, v2

    add-int/2addr v1, v3

    sub-int/2addr v1, v11

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    :goto_4e
    const-string v0, "REAR_MID_LEFT"

    .line 2454
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "REAR_MID_LEFT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v2, v8, v10

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2456
    :cond_ca
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightMidRadarInfo:B

    aget-byte v1, v8, v13

    if-eq v0, v1, :cond_cc

    .line 2457
    aget-byte v0, v8, v13

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightMidRadarInfo:B

    .line 2458
    aget-byte v0, v8, v13

    if-nez v0, :cond_cb

    .line 2459
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0xa

    invoke-direct {v7, v0, v14, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_4f

    .line 2461
    :cond_cb
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v13

    const/16 v2, 0xff

    and-int/2addr v1, v2

    mul-int/2addr v1, v11

    aget-byte v3, v8, v13

    and-int/2addr v3, v2

    add-int/2addr v1, v3

    sub-int/2addr v1, v11

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2463
    :cond_cc
    :goto_4f
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightRadarInfo:B

    aget-byte v1, v8, v9

    if-eq v0, v1, :cond_1c2

    .line 2464
    aget-byte v0, v8, v9

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightRadarInfo:B

    .line 2465
    aget-byte v0, v8, v9

    if-nez v0, :cond_cd

    .line 2466
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0xa

    invoke-direct {v7, v0, v14, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto/16 :goto_b9

    .line 2468
    :cond_cd
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v9

    const/16 v2, 0xff

    and-int/2addr v1, v2

    mul-int/2addr v1, v11

    aget-byte v3, v8, v9

    and-int/2addr v2, v3

    add-int/2addr v1, v2

    sub-int/2addr v1, v11

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto/16 :goto_b9

    .line 2470
    :cond_ce
    aget-byte v0, v8, v14

    if-ne v0, v2, :cond_1c2

    const/4 v0, 0x1

    aget-byte v0, v8, v0

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_1c2

    .line 2471
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftRadarInfo:B

    aget-byte v1, v8, v11

    if-eq v0, v1, :cond_d0

    .line 2472
    aget-byte v0, v8, v11

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftRadarInfo:B

    .line 2473
    aget-byte v0, v8, v11

    if-nez v0, :cond_cf

    .line 2474
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0xa

    invoke-direct {v7, v0, v14, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_50

    .line 2476
    :cond_cf
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v11

    const/16 v2, 0xff

    and-int/2addr v1, v2

    mul-int/2addr v1, v11

    aget-byte v3, v8, v11

    and-int/2addr v3, v2

    add-int/2addr v1, v3

    sub-int/2addr v1, v11

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2478
    :cond_d0
    :goto_50
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftMidRadarInfo:B

    aget-byte v1, v8, v10

    if-eq v0, v1, :cond_d2

    .line 2479
    aget-byte v0, v8, v10

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftMidRadarInfo:B

    .line 2480
    aget-byte v0, v8, v10

    if-nez v0, :cond_d1

    .line 2481
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0xa

    invoke-direct {v7, v0, v14, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_51

    .line 2483
    :cond_d1
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v10

    const/16 v2, 0xff

    and-int/2addr v1, v2

    mul-int/2addr v1, v11

    aget-byte v3, v8, v10

    and-int/2addr v3, v2

    add-int/2addr v1, v3

    sub-int/2addr v1, v11

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2485
    :cond_d2
    :goto_51
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontRightMidRadarInfo:B

    aget-byte v1, v8, v13

    if-eq v0, v1, :cond_d4

    .line 2486
    aget-byte v0, v8, v13

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontRightMidRadarInfo:B

    .line 2487
    aget-byte v0, v8, v13

    if-nez v0, :cond_d3

    .line 2488
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0xa

    invoke-direct {v7, v0, v14, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_52

    .line 2490
    :cond_d3
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v13

    const/16 v2, 0xff

    and-int/2addr v1, v2

    mul-int/2addr v1, v11

    aget-byte v3, v8, v13

    and-int/2addr v3, v2

    add-int/2addr v1, v3

    sub-int/2addr v1, v11

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2492
    :cond_d4
    :goto_52
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mfrontRightRadarInfo:B

    aget-byte v1, v8, v9

    if-eq v0, v1, :cond_1c2

    .line 2493
    aget-byte v0, v8, v9

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mfrontRightRadarInfo:B

    .line 2494
    aget-byte v0, v8, v9

    if-nez v0, :cond_d5

    .line 2495
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0xa

    invoke-direct {v7, v0, v14, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto/16 :goto_b9

    .line 2497
    :cond_d5
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v9

    const/16 v2, 0xff

    and-int/2addr v1, v2

    mul-int/2addr v1, v11

    aget-byte v3, v8, v9

    and-int/2addr v2, v3

    add-int/2addr v1, v2

    sub-int/2addr v1, v11

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto/16 :goto_b9

    .line 2330
    :pswitch_3f
    aget-byte v0, v8, v14

    if-ne v0, v2, :cond_1c2

    const/4 v0, 0x1

    aget-byte v2, v8, v0

    if-ne v2, v1, :cond_1c2

    .line 2331
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftRadarInfo:B

    aget-byte v1, v8, v11

    if-eq v0, v1, :cond_d7

    .line 2332
    aget-byte v0, v8, v11

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftRadarInfo:B

    .line 2333
    aget-byte v0, v8, v11

    if-ne v0, v3, :cond_d6

    .line 2334
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0xa

    invoke-direct {v7, v0, v14, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_53

    .line 2336
    :cond_d6
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v11

    const/16 v2, 0xff

    and-int/2addr v1, v2

    rsub-int/lit8 v1, v1, 0x4

    mul-int/2addr v1, v10

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2338
    :cond_d7
    :goto_53
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftMidRadarInfo:B

    aget-byte v1, v8, v10

    if-eq v0, v1, :cond_d9

    .line 2339
    aget-byte v0, v8, v10

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftMidRadarInfo:B

    .line 2340
    aget-byte v0, v8, v10

    if-ne v0, v3, :cond_d8

    .line 2341
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0xa

    invoke-direct {v7, v0, v14, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_54

    .line 2343
    :cond_d8
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v10

    const/16 v2, 0xff

    and-int/2addr v1, v2

    rsub-int/lit8 v1, v1, 0x4

    mul-int/2addr v1, v10

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2345
    :cond_d9
    :goto_54
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightMidRadarInfo:B

    aget-byte v1, v8, v13

    if-eq v0, v1, :cond_db

    .line 2346
    aget-byte v0, v8, v13

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightMidRadarInfo:B

    .line 2347
    aget-byte v0, v8, v13

    if-ne v0, v3, :cond_da

    .line 2348
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0xa

    invoke-direct {v7, v0, v14, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_55

    .line 2350
    :cond_da
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v13

    const/16 v2, 0xff

    and-int/2addr v1, v2

    rsub-int/lit8 v1, v1, 0x4

    mul-int/2addr v1, v10

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2352
    :cond_db
    :goto_55
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightRadarInfo:B

    aget-byte v1, v8, v9

    if-eq v0, v1, :cond_dd

    .line 2353
    aget-byte v0, v8, v9

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightRadarInfo:B

    .line 2354
    aget-byte v0, v8, v9

    if-ne v0, v3, :cond_dc

    .line 2355
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0xa

    invoke-direct {v7, v0, v14, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_56

    .line 2357
    :cond_dc
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v9

    const/16 v2, 0xff

    and-int/2addr v1, v2

    rsub-int/lit8 v1, v1, 0x4

    mul-int/2addr v1, v10

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2359
    :cond_dd
    :goto_56
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftRadarInfo:B

    const/4 v1, 0x6

    aget-byte v2, v8, v1

    if-eq v0, v2, :cond_df

    .line 2360
    aget-byte v0, v8, v1

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftRadarInfo:B

    .line 2361
    aget-byte v0, v8, v1

    if-ne v0, v3, :cond_de

    .line 2362
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0xa

    invoke-direct {v7, v0, v14, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_57

    .line 2364
    :cond_de
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/4 v1, 0x6

    aget-byte v1, v8, v1

    const/16 v2, 0xff

    and-int/2addr v1, v2

    rsub-int/lit8 v1, v1, 0x4

    mul-int/2addr v1, v10

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2366
    :cond_df
    :goto_57
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftMidRadarInfo:B

    aget-byte v1, v8, v12

    if-eq v0, v1, :cond_e1

    .line 2367
    aget-byte v0, v8, v12

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftMidRadarInfo:B

    .line 2368
    aget-byte v0, v8, v12

    if-ne v0, v3, :cond_e0

    .line 2369
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0xa

    invoke-direct {v7, v0, v14, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_58

    .line 2371
    :cond_e0
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v12

    const/16 v2, 0xff

    and-int/2addr v1, v2

    rsub-int/lit8 v1, v1, 0x4

    mul-int/2addr v1, v10

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2373
    :cond_e1
    :goto_58
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontRightMidRadarInfo:B

    aget-byte v1, v8, v15

    if-eq v0, v1, :cond_e3

    .line 2374
    aget-byte v0, v8, v15

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontRightMidRadarInfo:B

    .line 2375
    aget-byte v0, v8, v15

    if-ne v0, v3, :cond_e2

    .line 2376
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0xa

    invoke-direct {v7, v0, v14, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_59

    .line 2378
    :cond_e2
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v15

    const/16 v2, 0xff

    and-int/2addr v1, v2

    rsub-int/lit8 v1, v1, 0x4

    mul-int/2addr v1, v10

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2380
    :cond_e3
    :goto_59
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mfrontRightRadarInfo:B

    const/16 v1, 0x9

    aget-byte v2, v8, v1

    if-eq v0, v2, :cond_1c2

    .line 2381
    aget-byte v0, v8, v1

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mfrontRightRadarInfo:B

    .line 2382
    aget-byte v0, v8, v1

    if-ne v0, v3, :cond_e4

    .line 2383
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0xa

    invoke-direct {v7, v0, v14, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto/16 :goto_b9

    .line 2385
    :cond_e4
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0x9

    aget-byte v1, v8, v1

    const/16 v2, 0xff

    and-int/2addr v1, v2

    sub-int/2addr v13, v1

    mul-int/2addr v13, v10

    const/4 v1, 0x1

    add-int/2addr v13, v1

    const/16 v1, 0xa

    invoke-direct {v7, v0, v13, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto/16 :goto_b9

    .line 2234
    :pswitch_40
    aget-byte v0, v8, v14

    if-ne v0, v2, :cond_f4

    const/4 v0, 0x1

    aget-byte v3, v8, v0

    if-ne v3, v1, :cond_f4

    .line 2235
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftRadarInfo:B

    aget-byte v1, v8, v11

    if-eq v0, v1, :cond_e6

    .line 2236
    aget-byte v0, v8, v11

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftRadarInfo:B

    .line 2237
    aget-byte v0, v8, v11

    const/16 v1, 0xff

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_e5

    .line 2238
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0xa

    invoke-direct {v7, v0, v1, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_5a

    :cond_e5
    const/16 v1, 0xa

    .line 2240
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v3, v8, v11

    mul-int/2addr v3, v1

    div-int/2addr v3, v12

    invoke-direct {v7, v0, v3, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2242
    :cond_e6
    :goto_5a
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftMidRadarInfo:B

    aget-byte v1, v8, v10

    if-eq v0, v1, :cond_e8

    .line 2243
    aget-byte v0, v8, v10

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftMidRadarInfo:B

    .line 2244
    aget-byte v0, v8, v10

    const/16 v1, 0xff

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_e7

    .line 2245
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0xa

    invoke-direct {v7, v0, v1, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_5b

    :cond_e7
    const/16 v1, 0xa

    .line 2247
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v3, v8, v10

    mul-int/2addr v3, v1

    div-int/2addr v3, v12

    invoke-direct {v7, v0, v3, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2249
    :cond_e8
    :goto_5b
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightMidRadarInfo:B

    aget-byte v1, v8, v13

    if-eq v0, v1, :cond_ea

    .line 2250
    aget-byte v0, v8, v13

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightMidRadarInfo:B

    .line 2251
    aget-byte v0, v8, v13

    const/16 v1, 0xff

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_e9

    .line 2252
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0xa

    invoke-direct {v7, v0, v1, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_5c

    :cond_e9
    const/16 v1, 0xa

    .line 2254
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v3, v8, v13

    mul-int/2addr v3, v1

    div-int/2addr v3, v12

    invoke-direct {v7, v0, v3, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2256
    :cond_ea
    :goto_5c
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightRadarInfo:B

    aget-byte v1, v8, v9

    if-eq v0, v1, :cond_ec

    .line 2257
    aget-byte v0, v8, v9

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightRadarInfo:B

    .line 2258
    aget-byte v0, v8, v9

    const/16 v1, 0xff

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_eb

    .line 2259
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0xa

    invoke-direct {v7, v0, v1, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_5d

    :cond_eb
    const/16 v1, 0xa

    .line 2261
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v3, v8, v9

    mul-int/2addr v3, v1

    div-int/2addr v3, v12

    invoke-direct {v7, v0, v3, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2264
    :cond_ec
    :goto_5d
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftRadarInfo:B

    const/4 v1, 0x6

    aget-byte v3, v8, v1

    if-eq v0, v3, :cond_ee

    .line 2265
    aget-byte v0, v8, v1

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftRadarInfo:B

    .line 2266
    aget-byte v0, v8, v1

    const/16 v1, 0xff

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_ed

    .line 2267
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0xa

    invoke-direct {v7, v0, v1, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_5e

    :cond_ed
    const/16 v1, 0xa

    .line 2269
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/4 v3, 0x6

    aget-byte v4, v8, v3

    mul-int/2addr v4, v1

    div-int/2addr v4, v12

    invoke-direct {v7, v0, v4, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2271
    :cond_ee
    :goto_5e
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftMidRadarInfo:B

    aget-byte v1, v8, v12

    if-eq v0, v1, :cond_f0

    .line 2272
    aget-byte v0, v8, v12

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftMidRadarInfo:B

    .line 2273
    aget-byte v0, v8, v12

    const/16 v1, 0xff

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_ef

    .line 2274
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0xa

    invoke-direct {v7, v0, v1, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_5f

    :cond_ef
    const/16 v1, 0xa

    .line 2276
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v3, v8, v12

    mul-int/2addr v3, v1

    div-int/2addr v3, v12

    invoke-direct {v7, v0, v3, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2278
    :cond_f0
    :goto_5f
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontRightMidRadarInfo:B

    aget-byte v1, v8, v15

    if-eq v0, v1, :cond_f2

    .line 2279
    aget-byte v0, v8, v15

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontRightMidRadarInfo:B

    .line 2280
    aget-byte v0, v8, v15

    const/16 v1, 0xff

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_f1

    .line 2281
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0xa

    invoke-direct {v7, v0, v1, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_60

    :cond_f1
    const/16 v1, 0xa

    .line 2283
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v3, v8, v15

    mul-int/2addr v3, v1

    div-int/2addr v3, v12

    invoke-direct {v7, v0, v3, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2285
    :cond_f2
    :goto_60
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mfrontRightRadarInfo:B

    const/16 v1, 0x9

    aget-byte v3, v8, v1

    if-eq v0, v3, :cond_f4

    .line 2286
    aget-byte v0, v8, v1

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mfrontRightRadarInfo:B

    .line 2287
    aget-byte v0, v8, v1

    const/16 v1, 0xff

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_f3

    .line 2288
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0xa

    invoke-direct {v7, v0, v1, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_61

    :cond_f3
    const/16 v1, 0xa

    .line 2290
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v3, 0x9

    aget-byte v4, v8, v3

    mul-int/2addr v4, v1

    div-int/2addr v4, v12

    invoke-direct {v7, v0, v4, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2293
    :cond_f4
    :goto_61
    aget-byte v0, v8, v14

    if-ne v0, v2, :cond_1c2

    const/4 v0, 0x1

    aget-byte v0, v8, v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_1c2

    .line 2295
    aget-byte v0, v8, v11

    const/16 v1, 0xff

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_f5

    .line 2296
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->RIGHT_FRONT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0xa

    invoke-direct {v7, v0, v1, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_62

    :cond_f5
    const/16 v1, 0xa

    .line 2298
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->RIGHT_FRONT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v2, v8, v11

    mul-int/2addr v2, v1

    div-int/2addr v2, v12

    invoke-direct {v7, v0, v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2299
    :goto_62
    aget-byte v0, v8, v10

    const/16 v2, 0xff

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_f6

    .line 2300
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->RIGHT_MID_FRONT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v1, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_63

    .line 2302
    :cond_f6
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->RIGHT_MID_FRONT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v2, v8, v10

    mul-int/2addr v2, v1

    div-int/2addr v2, v12

    invoke-direct {v7, v0, v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2303
    :goto_63
    aget-byte v0, v8, v13

    const/16 v2, 0xff

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_f7

    .line 2304
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->RIGHT_MID_REAR:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v1, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_64

    .line 2306
    :cond_f7
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->RIGHT_MID_REAR:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v2, v8, v13

    mul-int/2addr v2, v1

    div-int/2addr v2, v12

    invoke-direct {v7, v0, v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2307
    :goto_64
    aget-byte v0, v8, v9

    const/16 v2, 0xff

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_f8

    .line 2308
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->RIGHT_REAR:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v1, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    :goto_65
    const/4 v0, 0x6

    goto :goto_66

    .line 2310
    :cond_f8
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->RIGHT_REAR:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v2, v8, v9

    mul-int/2addr v2, v1

    div-int/2addr v2, v12

    invoke-direct {v7, v0, v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_65

    .line 2311
    :goto_66
    aget-byte v2, v8, v0

    const/16 v0, 0xff

    and-int/2addr v2, v0

    if-ne v2, v0, :cond_f9

    .line 2312
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->LEFT_FRONT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v1, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_67

    .line 2314
    :cond_f9
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->LEFT_FRONT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/4 v2, 0x6

    aget-byte v2, v8, v2

    mul-int/2addr v2, v1

    div-int/2addr v2, v12

    invoke-direct {v7, v0, v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2315
    :goto_67
    aget-byte v0, v8, v12

    const/16 v2, 0xff

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_fa

    .line 2316
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->LEFT_MID_FRONT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v1, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_68

    .line 2318
    :cond_fa
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->LEFT_MID_FRONT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v2, v8, v12

    mul-int/2addr v2, v1

    div-int/2addr v2, v12

    invoke-direct {v7, v0, v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2319
    :goto_68
    aget-byte v0, v8, v15

    const/16 v2, 0xff

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_fb

    .line 2320
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->LEFT_MID_REAR:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v1, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    :goto_69
    const/16 v0, 0x9

    goto :goto_6a

    .line 2322
    :cond_fb
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->LEFT_MID_REAR:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v2, v8, v15

    mul-int/2addr v2, v1

    div-int/2addr v2, v12

    invoke-direct {v7, v0, v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_69

    .line 2323
    :goto_6a
    aget-byte v2, v8, v0

    const/16 v0, 0xff

    and-int/2addr v2, v0

    if-ne v2, v0, :cond_fc

    .line 2324
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->LEFT_REAR:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v1, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto/16 :goto_b9

    .line 2326
    :cond_fc
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->LEFT_REAR:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v2, 0x9

    aget-byte v2, v8, v2

    mul-int/2addr v2, v1

    div-int/2addr v2, v12

    invoke-direct {v7, v0, v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto/16 :goto_b9

    .line 2225
    :pswitch_41
    aget-byte v0, v8, v14

    if-ne v0, v2, :cond_1c2

    const/4 v0, 0x1

    aget-byte v2, v8, v0

    if-ne v2, v1, :cond_1c2

    .line 2226
    iput-boolean v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    .line 2227
    iput v15, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->disableData:I

    const/16 v1, 0x41

    const/4 v2, 0x7

    const/4 v3, 0x6

    .line 2228
    aget-byte v3, v8, v3

    add-int/2addr v3, v0

    aget-byte v4, v8, v12

    add-int/2addr v4, v0

    aget-byte v5, v8, v15

    add-int/2addr v5, v0

    const/16 v6, 0x9

    aget-byte v6, v8, v6

    add-int/2addr v6, v0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontRadarDataAllCmd(BIIIII)V

    const/16 v1, 0x41

    const/4 v2, 0x7

    .line 2229
    aget-byte v0, v8, v11

    const/4 v3, 0x1

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v8, v10

    add-int/lit8 v5, v0, 0x1

    aget-byte v0, v8, v13

    add-int/lit8 v6, v0, 0x1

    aget-byte v0, v8, v9

    add-int/lit8 v8, v0, 0x1

    move-object/from16 v0, p0

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setRearRadarDataAllCmd(BIIIII)V

    goto/16 :goto_b9

    .line 2203
    :pswitch_42
    aget-byte v0, v8, v14

    if-ne v0, v2, :cond_1c2

    const/4 v0, 0x1

    aget-byte v2, v8, v0

    if-ne v2, v1, :cond_1c2

    const/16 v1, 0xff

    .line 2205
    iput v1, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->disableData:I

    .line 2206
    iput-boolean v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    const/16 v1, 0x41

    const/4 v2, 0x7

    .line 2207
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    const/4 v3, 0x6

    aget v3, v0, v3

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v4, v0, v12

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v5, v0, v15

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    const/16 v6, 0x9

    aget v6, v0, v6

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontRadarDataAllCmd(BIIIII)V

    const/16 v1, 0x41

    const/4 v2, 0x7

    .line 2208
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v3, v0, v11

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v4, v0, v10

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v5, v0, v13

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v6, v0, v9

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setRearRadarDataAllCmd(BIIIII)V

    goto/16 :goto_b9

    :pswitch_43
    const/16 v0, 0xfe

    .line 2127
    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->disableData:I

    .line 2128
    aget-byte v0, v8, v11

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-direct {v7, v0, v11}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackLeftData(II)V

    .line 2129
    aget-byte v0, v8, v10

    sub-int/2addr v0, v1

    invoke-direct {v7, v0, v10}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackLeftMidData(II)V

    .line 2130
    aget-byte v0, v8, v13

    sub-int/2addr v0, v1

    invoke-direct {v7, v0, v10}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackRightMidData(II)V

    .line 2131
    aget-byte v0, v8, v9

    sub-int/2addr v0, v1

    invoke-direct {v7, v0, v11}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackRightData(II)V

    const/4 v0, 0x6

    .line 2132
    aget-byte v0, v8, v0

    sub-int/2addr v0, v1

    invoke-direct {v7, v0, v11}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontLeftData(II)V

    .line 2133
    aget-byte v0, v8, v12

    sub-int/2addr v0, v1

    invoke-direct {v7, v0, v10}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontLeftMidData(II)V

    .line 2134
    aget-byte v0, v8, v15

    sub-int/2addr v0, v1

    invoke-direct {v7, v0, v10}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontRightMidData(II)V

    const/16 v0, 0x9

    .line 2135
    aget-byte v0, v8, v0

    sub-int/2addr v0, v1

    invoke-direct {v7, v0, v11}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontRightData(II)V

    goto/16 :goto_b9

    .line 2066
    :pswitch_44
    aget-byte v0, v8, v14

    if-ne v0, v2, :cond_104

    const/4 v0, 0x1

    aget-byte v1, v8, v0

    const/16 v0, 0x22

    if-ne v1, v0, :cond_104

    .line 2067
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftRadarInfo:B

    aget-byte v1, v8, v11

    if-eq v0, v1, :cond_fe

    .line 2068
    aget-byte v0, v8, v11

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftRadarInfo:B

    .line 2069
    aget-byte v0, v8, v11

    if-nez v0, :cond_fd

    .line 2070
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0xa

    invoke-direct {v7, v0, v14, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_6b

    .line 2072
    :cond_fd
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v11

    const/16 v2, 0xff

    and-int/2addr v1, v2

    rsub-int/lit8 v1, v1, 0x4

    mul-int/2addr v1, v10

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2074
    :cond_fe
    :goto_6b
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftMidRadarInfo:B

    aget-byte v1, v8, v10

    if-eq v0, v1, :cond_100

    .line 2075
    aget-byte v0, v8, v10

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftMidRadarInfo:B

    .line 2076
    aget-byte v0, v8, v10

    if-nez v0, :cond_ff

    .line 2077
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0xa

    invoke-direct {v7, v0, v14, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_6c

    .line 2079
    :cond_ff
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v10

    const/16 v2, 0xff

    and-int/2addr v1, v2

    rsub-int/lit8 v1, v1, 0x4

    mul-int/2addr v1, v10

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2081
    :cond_100
    :goto_6c
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightMidRadarInfo:B

    aget-byte v1, v8, v13

    if-eq v0, v1, :cond_102

    .line 2082
    aget-byte v0, v8, v13

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightMidRadarInfo:B

    .line 2083
    aget-byte v0, v8, v13

    if-nez v0, :cond_101

    .line 2084
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0xa

    invoke-direct {v7, v0, v14, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_6d

    .line 2086
    :cond_101
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v13

    const/16 v2, 0xff

    and-int/2addr v1, v2

    rsub-int/lit8 v1, v1, 0x4

    mul-int/2addr v1, v10

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2088
    :cond_102
    :goto_6d
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightRadarInfo:B

    aget-byte v1, v8, v9

    if-eq v0, v1, :cond_1c2

    .line 2089
    aget-byte v0, v8, v9

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightRadarInfo:B

    .line 2090
    aget-byte v0, v8, v9

    if-nez v0, :cond_103

    .line 2091
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0xa

    invoke-direct {v7, v0, v14, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto/16 :goto_b9

    .line 2093
    :cond_103
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v9

    const/16 v2, 0xff

    and-int/2addr v1, v2

    sub-int/2addr v13, v1

    mul-int/2addr v13, v10

    const/4 v1, 0x1

    add-int/2addr v13, v1

    const/16 v1, 0xa

    invoke-direct {v7, v0, v13, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto/16 :goto_b9

    .line 2095
    :cond_104
    aget-byte v0, v8, v14

    if-ne v0, v2, :cond_1c2

    const/4 v0, 0x1

    aget-byte v1, v8, v0

    const/16 v0, 0x23

    if-ne v1, v0, :cond_1c2

    .line 2096
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftRadarInfo:B

    aget-byte v1, v8, v11

    if-eq v0, v1, :cond_106

    .line 2097
    aget-byte v0, v8, v11

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftRadarInfo:B

    .line 2098
    aget-byte v0, v8, v11

    if-nez v0, :cond_105

    .line 2099
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0xa

    invoke-direct {v7, v0, v14, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_6e

    .line 2101
    :cond_105
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v11

    const/16 v2, 0xff

    and-int/2addr v1, v2

    rsub-int/lit8 v1, v1, 0x4

    mul-int/2addr v1, v10

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2103
    :cond_106
    :goto_6e
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftMidRadarInfo:B

    aget-byte v1, v8, v10

    if-eq v0, v1, :cond_108

    .line 2104
    aget-byte v0, v8, v10

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftMidRadarInfo:B

    .line 2105
    aget-byte v0, v8, v10

    if-nez v0, :cond_107

    .line 2106
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0xa

    invoke-direct {v7, v0, v14, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_6f

    .line 2108
    :cond_107
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v10

    const/16 v2, 0xff

    and-int/2addr v1, v2

    rsub-int/lit8 v1, v1, 0x4

    mul-int/2addr v1, v10

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2110
    :cond_108
    :goto_6f
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontRightMidRadarInfo:B

    aget-byte v1, v8, v13

    if-eq v0, v1, :cond_10a

    .line 2111
    aget-byte v0, v8, v13

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontRightMidRadarInfo:B

    .line 2112
    aget-byte v0, v8, v13

    if-nez v0, :cond_109

    .line 2113
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0xa

    invoke-direct {v7, v0, v14, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_70

    .line 2115
    :cond_109
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v13

    const/16 v2, 0xff

    and-int/2addr v1, v2

    rsub-int/lit8 v1, v1, 0x4

    mul-int/2addr v1, v10

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2117
    :cond_10a
    :goto_70
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mfrontRightRadarInfo:B

    aget-byte v1, v8, v9

    if-eq v0, v1, :cond_1c2

    .line 2118
    aget-byte v0, v8, v9

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mfrontRightRadarInfo:B

    .line 2119
    aget-byte v0, v8, v9

    if-nez v0, :cond_10b

    .line 2120
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0xa

    invoke-direct {v7, v0, v14, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto/16 :goto_b9

    .line 2122
    :cond_10b
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v9

    const/16 v2, 0xff

    and-int/2addr v1, v2

    sub-int/2addr v13, v1

    mul-int/2addr v13, v10

    const/4 v1, 0x1

    add-int/2addr v13, v1

    const/16 v1, 0xa

    invoke-direct {v7, v0, v13, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto/16 :goto_b9

    .line 1948
    :pswitch_45
    aget-byte v0, v8, v14

    if-ne v0, v2, :cond_11b

    const/4 v0, 0x1

    aget-byte v3, v8, v0

    if-ne v3, v1, :cond_11b

    .line 1949
    iput-boolean v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->isDistanceMode:Z

    .line 1951
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftRadarInfo:B

    aget-byte v1, v8, v11

    if-eq v0, v1, :cond_10d

    .line 1952
    aget-byte v0, v8, v11

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftRadarInfo:B

    .line 1953
    aget-byte v0, v8, v11

    const/16 v1, 0xff

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_10c

    .line 1954
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0xa

    invoke-direct {v7, v0, v14, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_71

    .line 1956
    :cond_10c
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v11

    const/16 v3, 0xff

    and-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x1a

    const/4 v3, 0x1

    add-int/2addr v1, v3

    const/16 v3, 0xa

    invoke-direct {v7, v0, v1, v3}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1959
    :cond_10d
    :goto_71
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftMidRadarInfo:B

    aget-byte v1, v8, v10

    if-eq v0, v1, :cond_10f

    .line 1960
    aget-byte v0, v8, v10

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftMidRadarInfo:B

    .line 1961
    aget-byte v0, v8, v10

    const/16 v1, 0xff

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_10e

    .line 1962
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0xa

    invoke-direct {v7, v0, v14, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_72

    .line 1964
    :cond_10e
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v10

    const/16 v3, 0xff

    and-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x1a

    const/4 v3, 0x1

    add-int/2addr v1, v3

    const/16 v3, 0xa

    invoke-direct {v7, v0, v1, v3}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1967
    :cond_10f
    :goto_72
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightMidRadarInfo:B

    aget-byte v1, v8, v13

    if-eq v0, v1, :cond_111

    .line 1968
    aget-byte v0, v8, v13

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightMidRadarInfo:B

    .line 1969
    aget-byte v0, v8, v13

    const/16 v1, 0xff

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_110

    .line 1970
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0xa

    invoke-direct {v7, v0, v14, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_73

    .line 1972
    :cond_110
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v13

    const/16 v3, 0xff

    and-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x1a

    const/4 v3, 0x1

    add-int/2addr v1, v3

    const/16 v3, 0xa

    invoke-direct {v7, v0, v1, v3}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1975
    :cond_111
    :goto_73
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightRadarInfo:B

    aget-byte v1, v8, v9

    if-eq v0, v1, :cond_113

    .line 1976
    aget-byte v0, v8, v9

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightRadarInfo:B

    .line 1977
    aget-byte v0, v8, v9

    const/16 v1, 0xff

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_112

    .line 1978
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0xa

    invoke-direct {v7, v0, v1, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_74

    .line 1980
    :cond_112
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v9

    const/16 v3, 0xff

    and-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x1a

    const/4 v3, 0x1

    add-int/2addr v1, v3

    const/16 v3, 0xa

    invoke-direct {v7, v0, v1, v3}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1984
    :cond_113
    :goto_74
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftRadarInfo:B

    const/4 v1, 0x6

    aget-byte v3, v8, v1

    if-eq v0, v3, :cond_115

    .line 1985
    aget-byte v0, v8, v1

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftRadarInfo:B

    .line 1986
    aget-byte v0, v8, v1

    const/16 v1, 0xff

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_114

    .line 1987
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0xa

    invoke-direct {v7, v0, v1, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_75

    .line 1989
    :cond_114
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/4 v1, 0x6

    aget-byte v3, v8, v1

    const/16 v1, 0xff

    and-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x1a

    const/4 v1, 0x1

    add-int/2addr v3, v1

    const/16 v1, 0xa

    invoke-direct {v7, v0, v3, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1992
    :cond_115
    :goto_75
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftMidRadarInfo:B

    aget-byte v1, v8, v12

    if-eq v0, v1, :cond_117

    .line 1993
    aget-byte v0, v8, v12

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftMidRadarInfo:B

    .line 1994
    aget-byte v0, v8, v12

    const/16 v1, 0xff

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_116

    .line 1995
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0xa

    invoke-direct {v7, v0, v1, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_76

    .line 1997
    :cond_116
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v12

    const/16 v3, 0xff

    and-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x1a

    const/4 v3, 0x1

    add-int/2addr v1, v3

    const/16 v3, 0xa

    invoke-direct {v7, v0, v1, v3}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2000
    :cond_117
    :goto_76
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontRightMidRadarInfo:B

    aget-byte v1, v8, v15

    if-eq v0, v1, :cond_119

    .line 2001
    aget-byte v0, v8, v15

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontRightMidRadarInfo:B

    .line 2002
    aget-byte v0, v8, v15

    const/16 v1, 0xff

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_118

    .line 2003
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0xa

    invoke-direct {v7, v0, v1, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_77

    .line 2005
    :cond_118
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v15

    const/16 v3, 0xff

    and-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x1a

    const/4 v3, 0x1

    add-int/2addr v1, v3

    const/16 v3, 0xa

    invoke-direct {v7, v0, v1, v3}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2008
    :cond_119
    :goto_77
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mfrontRightRadarInfo:B

    const/16 v1, 0x9

    aget-byte v3, v8, v1

    if-eq v0, v3, :cond_11b

    .line 2009
    aget-byte v0, v8, v1

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mfrontRightRadarInfo:B

    .line 2010
    aget-byte v0, v8, v1

    const/16 v1, 0xff

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_11a

    .line 2011
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0xa

    invoke-direct {v7, v0, v1, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_78

    .line 2013
    :cond_11a
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0x9

    aget-byte v3, v8, v1

    const/16 v1, 0xff

    and-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x1a

    const/4 v1, 0x1

    add-int/2addr v3, v1

    const/16 v1, 0xa

    invoke-direct {v7, v0, v3, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2017
    :cond_11b
    :goto_78
    aget-byte v0, v8, v14

    if-ne v0, v2, :cond_1c2

    const/4 v0, 0x1

    aget-byte v1, v8, v0

    const/16 v0, 0x42

    if-ne v1, v0, :cond_1c2

    .line 2019
    aget-byte v0, v8, v11

    const/16 v1, 0xff

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_11c

    .line 2020
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->RIGHT_FRONT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0xa

    invoke-direct {v7, v0, v14, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    const/16 v2, 0xff

    const/16 v3, 0xa

    goto :goto_79

    .line 2022
    :cond_11c
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->RIGHT_FRONT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v11

    const/16 v2, 0xff

    and-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x1a

    const/4 v3, 0x1

    add-int/2addr v1, v3

    const/16 v3, 0xa

    invoke-direct {v7, v0, v1, v3}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2024
    :goto_79
    aget-byte v0, v8, v10

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_11d

    .line 2025
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->RIGHT_MID_FRONT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v14, v3}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    const/16 v2, 0xff

    const/16 v3, 0xa

    goto :goto_7a

    .line 2027
    :cond_11d
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->RIGHT_MID_FRONT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v10

    const/16 v2, 0xff

    and-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x1a

    const/4 v3, 0x1

    add-int/2addr v1, v3

    const/16 v3, 0xa

    invoke-direct {v7, v0, v1, v3}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2029
    :goto_7a
    aget-byte v0, v8, v13

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_11e

    .line 2030
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->RIGHT_MID_REAR:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v14, v3}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    const/16 v2, 0xff

    const/16 v3, 0xa

    goto :goto_7b

    .line 2032
    :cond_11e
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->RIGHT_MID_REAR:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v13

    const/16 v2, 0xff

    and-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x1a

    const/4 v3, 0x1

    add-int/2addr v1, v3

    const/16 v3, 0xa

    invoke-direct {v7, v0, v1, v3}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2034
    :goto_7b
    aget-byte v0, v8, v9

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_11f

    .line 2035
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->RIGHT_REAR:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v14, v3}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    const/4 v0, 0x6

    const/16 v2, 0xff

    const/16 v3, 0xa

    goto :goto_7c

    .line 2037
    :cond_11f
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->RIGHT_REAR:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v9

    const/16 v2, 0xff

    and-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x1a

    const/4 v3, 0x1

    add-int/2addr v1, v3

    const/16 v3, 0xa

    invoke-direct {v7, v0, v1, v3}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    const/4 v0, 0x6

    .line 2039
    :goto_7c
    aget-byte v1, v8, v0

    and-int/lit16 v0, v1, 0xff

    if-ne v0, v2, :cond_120

    .line 2040
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->LEFT_FRONT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v14, v3}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    const/16 v2, 0xff

    const/16 v3, 0xa

    goto :goto_7d

    .line 2042
    :cond_120
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->LEFT_FRONT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/4 v1, 0x6

    aget-byte v1, v8, v1

    const/16 v2, 0xff

    and-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x1a

    const/4 v3, 0x1

    add-int/2addr v1, v3

    const/16 v3, 0xa

    invoke-direct {v7, v0, v1, v3}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2044
    :goto_7d
    aget-byte v0, v8, v12

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_121

    .line 2045
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->LEFT_MID_FRONT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v14, v3}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    const/16 v2, 0xff

    const/16 v3, 0xa

    goto :goto_7e

    .line 2047
    :cond_121
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->LEFT_MID_FRONT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v12

    const/16 v2, 0xff

    and-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x1a

    const/4 v3, 0x1

    add-int/2addr v1, v3

    const/16 v3, 0xa

    invoke-direct {v7, v0, v1, v3}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2049
    :goto_7e
    aget-byte v0, v8, v15

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_122

    .line 2050
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->LEFT_MID_REAR:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v14, v3}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    const/16 v0, 0x9

    const/16 v2, 0xff

    const/16 v3, 0xa

    goto :goto_7f

    .line 2052
    :cond_122
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->LEFT_MID_REAR:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v15

    const/16 v2, 0xff

    and-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x1a

    const/4 v3, 0x1

    add-int/2addr v1, v3

    const/16 v3, 0xa

    invoke-direct {v7, v0, v1, v3}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    const/16 v0, 0x9

    .line 2054
    :goto_7f
    aget-byte v1, v8, v0

    and-int/lit16 v0, v1, 0xff

    if-ne v0, v2, :cond_123

    .line 2055
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->LEFT_REAR:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v14, v3}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto/16 :goto_b9

    .line 2057
    :cond_123
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->LEFT_REAR:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0x9

    aget-byte v1, v8, v1

    const/16 v2, 0xff

    and-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x1a

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto/16 :goto_b9

    .line 1886
    :pswitch_46
    aget-byte v0, v8, v14

    if-ne v0, v2, :cond_1c2

    const/4 v0, 0x1

    aget-byte v0, v8, v0

    if-ne v0, v1, :cond_1c2

    .line 1887
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftRadarInfo:B

    aget-byte v1, v8, v11

    if-eq v0, v1, :cond_126

    .line 1888
    aget-byte v0, v8, v11

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftRadarInfo:B

    .line 1889
    aget-byte v0, v8, v11

    if-eqz v0, :cond_125

    aget-byte v0, v8, v11

    if-ne v0, v3, :cond_124

    goto :goto_80

    .line 1892
    :cond_124
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v11

    mul-int/2addr v1, v11

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_81

    :cond_125
    :goto_80
    const/16 v2, 0xa

    .line 1890
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v14, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1894
    :cond_126
    :goto_81
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftMidRadarInfo:B

    aget-byte v1, v8, v10

    if-eq v0, v1, :cond_129

    .line 1895
    aget-byte v0, v8, v10

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftMidRadarInfo:B

    .line 1896
    aget-byte v0, v8, v10

    if-eqz v0, :cond_128

    aget-byte v0, v8, v10

    if-ne v0, v3, :cond_127

    goto :goto_82

    .line 1899
    :cond_127
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v10

    mul-int/2addr v1, v11

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_83

    :cond_128
    :goto_82
    const/16 v2, 0xa

    .line 1897
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v14, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1901
    :cond_129
    :goto_83
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightMidRadarInfo:B

    aget-byte v1, v8, v10

    if-eq v0, v1, :cond_12c

    .line 1902
    aget-byte v0, v8, v10

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightMidRadarInfo:B

    .line 1903
    aget-byte v0, v8, v10

    if-eqz v0, :cond_12b

    aget-byte v0, v8, v10

    if-ne v0, v3, :cond_12a

    goto :goto_84

    .line 1906
    :cond_12a
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v10

    mul-int/2addr v1, v11

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_85

    :cond_12b
    :goto_84
    const/16 v2, 0xa

    .line 1904
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v14, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1908
    :cond_12c
    :goto_85
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightRadarInfo:B

    aget-byte v1, v8, v9

    if-eq v0, v1, :cond_12f

    .line 1909
    aget-byte v0, v8, v9

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightRadarInfo:B

    .line 1910
    aget-byte v0, v8, v9

    if-eqz v0, :cond_12e

    aget-byte v0, v8, v9

    if-ne v0, v3, :cond_12d

    goto :goto_86

    .line 1913
    :cond_12d
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v9

    mul-int/2addr v1, v11

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_87

    :cond_12e
    :goto_86
    const/16 v2, 0xa

    .line 1911
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v14, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1916
    :cond_12f
    :goto_87
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftRadarInfo:B

    const/4 v1, 0x6

    aget-byte v2, v8, v1

    if-eq v0, v2, :cond_132

    .line 1917
    aget-byte v0, v8, v1

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftRadarInfo:B

    .line 1918
    aget-byte v0, v8, v1

    if-eqz v0, :cond_131

    aget-byte v0, v8, v1

    if-ne v0, v3, :cond_130

    goto :goto_88

    .line 1921
    :cond_130
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v1

    mul-int/2addr v1, v11

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_89

    :cond_131
    :goto_88
    const/16 v2, 0xa

    .line 1919
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v14, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1923
    :cond_132
    :goto_89
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftMidRadarInfo:B

    aget-byte v1, v8, v12

    if-eq v0, v1, :cond_135

    .line 1924
    aget-byte v0, v8, v12

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftMidRadarInfo:B

    .line 1925
    aget-byte v0, v8, v12

    if-eqz v0, :cond_134

    aget-byte v0, v8, v12

    if-ne v0, v3, :cond_133

    goto :goto_8a

    .line 1928
    :cond_133
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v12

    mul-int/2addr v1, v11

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_8b

    :cond_134
    :goto_8a
    const/16 v2, 0xa

    .line 1926
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v14, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1930
    :cond_135
    :goto_8b
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontRightMidRadarInfo:B

    aget-byte v1, v8, v12

    if-eq v0, v1, :cond_138

    .line 1931
    aget-byte v0, v8, v12

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontRightMidRadarInfo:B

    .line 1932
    aget-byte v0, v8, v12

    if-eqz v0, :cond_137

    aget-byte v0, v8, v12

    if-ne v0, v3, :cond_136

    goto :goto_8c

    .line 1935
    :cond_136
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v12

    mul-int/2addr v1, v11

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_8d

    :cond_137
    :goto_8c
    const/16 v2, 0xa

    .line 1933
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v14, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1937
    :cond_138
    :goto_8d
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mfrontRightRadarInfo:B

    const/16 v1, 0x9

    aget-byte v2, v8, v1

    if-eq v0, v2, :cond_1c2

    .line 1938
    aget-byte v0, v8, v1

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mfrontRightRadarInfo:B

    .line 1939
    aget-byte v0, v8, v1

    if-eqz v0, :cond_13a

    aget-byte v0, v8, v1

    if-ne v0, v3, :cond_139

    goto :goto_8e

    .line 1942
    :cond_139
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v1

    mul-int/2addr v1, v11

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto/16 :goto_b9

    :cond_13a
    :goto_8e
    const/16 v2, 0xa

    .line 1940
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v14, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto/16 :goto_b9

    .line 1717
    :pswitch_47
    aget-byte v0, v8, v14

    if-ne v0, v2, :cond_1c2

    const/4 v0, 0x1

    aget-byte v0, v8, v0

    if-ne v0, v1, :cond_1c2

    .line 1718
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftRadarInfo:B

    aget-byte v1, v8, v11

    if-eq v0, v1, :cond_13c

    .line 1719
    aget-byte v0, v8, v11

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftRadarInfo:B

    .line 1720
    aget-byte v0, v8, v11

    const/16 v1, 0xff

    if-ne v0, v1, :cond_13b

    .line 1721
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0xa

    invoke-direct {v7, v0, v14, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_8f

    :cond_13b
    const/16 v1, 0xa

    .line 1723
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v2, v8, v11

    mul-int/2addr v2, v11

    invoke-direct {v7, v0, v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1725
    :cond_13c
    :goto_8f
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftMidRadarInfo:B

    aget-byte v1, v8, v10

    if-eq v0, v1, :cond_13e

    .line 1726
    aget-byte v0, v8, v10

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftMidRadarInfo:B

    .line 1727
    aget-byte v0, v8, v10

    const/16 v1, 0xff

    if-ne v0, v1, :cond_13d

    .line 1728
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0xa

    invoke-direct {v7, v0, v14, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_90

    :cond_13d
    const/16 v1, 0xa

    .line 1730
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v2, v8, v10

    mul-int/2addr v2, v11

    invoke-direct {v7, v0, v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1732
    :cond_13e
    :goto_90
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightMidRadarInfo:B

    aget-byte v1, v8, v13

    if-eq v0, v1, :cond_140

    .line 1733
    aget-byte v0, v8, v13

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightMidRadarInfo:B

    .line 1734
    aget-byte v0, v8, v13

    const/16 v1, 0xff

    if-ne v0, v1, :cond_13f

    .line 1735
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0xa

    invoke-direct {v7, v0, v14, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_91

    :cond_13f
    const/16 v1, 0xa

    .line 1737
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v2, v8, v13

    mul-int/2addr v2, v11

    invoke-direct {v7, v0, v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1739
    :cond_140
    :goto_91
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightRadarInfo:B

    aget-byte v1, v8, v9

    if-eq v0, v1, :cond_1c2

    .line 1740
    aget-byte v0, v8, v9

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightRadarInfo:B

    .line 1741
    aget-byte v0, v8, v9

    const/16 v1, 0xff

    if-ne v0, v1, :cond_141

    .line 1742
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0xa

    invoke-direct {v7, v0, v14, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto/16 :goto_b9

    :cond_141
    const/16 v1, 0xa

    .line 1744
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v2, v8, v9

    mul-int/2addr v2, v11

    invoke-direct {v7, v0, v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto/16 :goto_b9

    :pswitch_48
    const/4 v0, 0x1

    .line 1677
    aget-byte v1, v8, v0

    const/16 v0, 0x72

    if-ne v1, v0, :cond_1c2

    .line 1678
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftRadarInfo:B

    aget-byte v1, v8, v15

    if-eq v0, v1, :cond_142

    .line 1679
    aget-byte v0, v8, v15

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftRadarInfo:B

    .line 1680
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v15

    const/16 v2, 0xff

    and-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x1a

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1682
    :cond_142
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftMidRadarInfo:B

    const/16 v1, 0x9

    aget-byte v2, v8, v1

    if-eq v0, v2, :cond_143

    .line 1683
    aget-byte v0, v8, v1

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftMidRadarInfo:B

    .line 1684
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v1

    const/16 v2, 0xff

    and-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x1a

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1686
    :cond_143
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightMidRadarInfo:B

    const/16 v1, 0xa

    aget-byte v2, v8, v1

    if-eq v0, v2, :cond_144

    .line 1687
    aget-byte v0, v8, v1

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightMidRadarInfo:B

    .line 1688
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v2, v8, v1

    const/16 v3, 0xff

    and-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x1a

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-direct {v7, v0, v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1690
    :cond_144
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightRadarInfo:B

    const/16 v1, 0xb

    aget-byte v1, v8, v1

    if-eq v0, v1, :cond_145

    const/16 v0, 0xb

    .line 1691
    aget-byte v0, v8, v0

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightRadarInfo:B

    .line 1692
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0xb

    aget-byte v1, v8, v1

    const/16 v2, 0xff

    and-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x1a

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1695
    :cond_145
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftRadarInfo:B

    const/16 v1, 0xc

    aget-byte v1, v8, v1

    if-eq v0, v1, :cond_146

    const/16 v0, 0xc

    .line 1696
    aget-byte v0, v8, v0

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftRadarInfo:B

    .line 1697
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0xc

    aget-byte v1, v8, v1

    const/16 v2, 0xff

    and-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x1a

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1699
    :cond_146
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftMidRadarInfo:B

    const/16 v1, 0xd

    aget-byte v2, v8, v1

    if-eq v0, v2, :cond_147

    .line 1700
    aget-byte v0, v8, v1

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftMidRadarInfo:B

    .line 1701
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v1

    const/16 v2, 0xff

    and-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x1a

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1703
    :cond_147
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontRightMidRadarInfo:B

    const/16 v1, 0xe

    aget-byte v2, v8, v1

    if-eq v0, v2, :cond_148

    .line 1704
    aget-byte v0, v8, v1

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontRightMidRadarInfo:B

    .line 1705
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v1

    const/16 v2, 0xff

    and-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x1a

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1707
    :cond_148
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mfrontRightRadarInfo:B

    const/16 v1, 0xf

    aget-byte v2, v8, v1

    if-eq v0, v2, :cond_1c2

    .line 1708
    aget-byte v0, v8, v1

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mfrontRightRadarInfo:B

    .line 1709
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v1

    const/16 v2, 0xff

    and-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x1a

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto/16 :goto_b9

    .line 1645
    :pswitch_49
    aget-byte v0, v8, v14

    if-ne v0, v2, :cond_1c2

    const/4 v0, 0x1

    aget-byte v2, v8, v0

    if-ne v2, v1, :cond_1c2

    .line 1646
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftRadarInfo:B

    aget-byte v1, v8, v11

    if-eq v0, v1, :cond_149

    .line 1647
    aget-byte v0, v8, v11

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftRadarInfo:B

    .line 1648
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v11

    const/16 v2, 0xff

    and-int/2addr v1, v2

    rsub-int/lit8 v1, v1, 0x4

    mul-int/2addr v1, v10

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1650
    :cond_149
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftMidRadarInfo:B

    aget-byte v1, v8, v10

    if-eq v0, v1, :cond_14a

    .line 1651
    aget-byte v0, v8, v10

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftMidRadarInfo:B

    .line 1652
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v10

    const/16 v2, 0xff

    and-int/2addr v1, v2

    rsub-int/lit8 v1, v1, 0x4

    mul-int/2addr v1, v10

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1654
    :cond_14a
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightMidRadarInfo:B

    aget-byte v1, v8, v13

    if-eq v0, v1, :cond_14b

    .line 1655
    aget-byte v0, v8, v13

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightMidRadarInfo:B

    .line 1656
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v13

    const/16 v2, 0xff

    and-int/2addr v1, v2

    rsub-int/lit8 v1, v1, 0x4

    mul-int/2addr v1, v10

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1658
    :cond_14b
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightRadarInfo:B

    aget-byte v1, v8, v9

    if-eq v0, v1, :cond_14c

    .line 1659
    aget-byte v0, v8, v9

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightRadarInfo:B

    .line 1660
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v9

    const/16 v2, 0xff

    and-int/2addr v1, v2

    rsub-int/lit8 v1, v1, 0x4

    mul-int/2addr v1, v10

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1663
    :cond_14c
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftRadarInfo:B

    const/4 v1, 0x6

    aget-byte v2, v8, v1

    if-eq v0, v2, :cond_14d

    .line 1664
    aget-byte v0, v8, v1

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftRadarInfo:B

    .line 1665
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v1

    const/16 v2, 0xff

    and-int/2addr v1, v2

    rsub-int/lit8 v1, v1, 0x4

    mul-int/2addr v1, v10

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1667
    :cond_14d
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mfrontRightRadarInfo:B

    const/16 v1, 0x9

    aget-byte v2, v8, v1

    if-eq v0, v2, :cond_1c2

    .line 1668
    aget-byte v0, v8, v1

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mfrontRightRadarInfo:B

    .line 1669
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v1

    const/16 v2, 0xff

    and-int/2addr v1, v2

    sub-int/2addr v13, v1

    mul-int/2addr v13, v10

    const/4 v1, 0x1

    add-int/2addr v13, v1

    const/16 v1, 0xa

    invoke-direct {v7, v0, v13, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto/16 :goto_b9

    :pswitch_4a
    const/4 v0, 0x1

    .line 1610
    aget-byte v1, v8, v0

    if-ne v1, v13, :cond_1c2

    .line 1611
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftRadarInfo:B

    aget-byte v1, v8, v10

    if-eq v0, v1, :cond_14f

    .line 1612
    aget-byte v0, v8, v10

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftRadarInfo:B

    .line 1613
    aget-byte v0, v8, v10

    if-nez v0, :cond_14e

    .line 1614
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/4 v1, 0x1

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_92

    .line 1616
    :cond_14e
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v10

    const/16 v2, 0xff

    and-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x10

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1618
    :cond_14f
    :goto_92
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightRadarInfo:B

    aget-byte v1, v8, v13

    if-eq v0, v1, :cond_151

    .line 1619
    aget-byte v0, v8, v13

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightRadarInfo:B

    .line 1620
    aget-byte v0, v8, v13

    if-nez v0, :cond_150

    .line 1621
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/4 v1, 0x1

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_93

    .line 1623
    :cond_150
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v13

    const/16 v2, 0xff

    and-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x10

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1625
    :cond_151
    :goto_93
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftMidRadarInfo:B

    aget-byte v1, v8, v9

    if-eq v0, v1, :cond_153

    .line 1626
    aget-byte v0, v8, v9

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftMidRadarInfo:B

    .line 1627
    aget-byte v0, v8, v9

    if-nez v0, :cond_152

    .line 1628
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/4 v1, 0x1

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_94

    .line 1630
    :cond_152
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v9

    const/16 v2, 0xff

    and-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x10

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1632
    :cond_153
    :goto_94
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightMidRadarInfo:B

    const/4 v1, 0x6

    aget-byte v2, v8, v1

    if-eq v0, v2, :cond_1c2

    .line 1633
    aget-byte v0, v8, v1

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightMidRadarInfo:B

    .line 1634
    aget-byte v0, v8, v1

    if-nez v0, :cond_154

    .line 1635
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/4 v1, 0x1

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto/16 :goto_b9

    .line 1637
    :cond_154
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/4 v1, 0x6

    aget-byte v1, v8, v1

    const/16 v2, 0xff

    and-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x10

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto/16 :goto_b9

    .line 1578
    :pswitch_4b
    aget-byte v0, v8, v14

    if-ne v0, v2, :cond_1c2

    const/4 v0, 0x1

    aget-byte v1, v8, v0

    const/16 v0, 0x22

    if-ne v1, v0, :cond_1c2

    .line 1579
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftRadarInfo:B

    aget-byte v1, v8, v11

    if-eq v0, v1, :cond_156

    .line 1580
    aget-byte v0, v8, v11

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftRadarInfo:B

    .line 1581
    aget-byte v0, v8, v11

    if-nez v0, :cond_155

    .line 1582
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0xa

    invoke-direct {v7, v0, v14, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_95

    .line 1584
    :cond_155
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v11

    const/16 v2, 0xff

    and-int/2addr v1, v2

    rsub-int/lit8 v1, v1, 0x4

    mul-int/2addr v1, v10

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1586
    :cond_156
    :goto_95
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftMidRadarInfo:B

    aget-byte v1, v8, v10

    if-eq v0, v1, :cond_158

    .line 1587
    aget-byte v0, v8, v10

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftMidRadarInfo:B

    .line 1588
    aget-byte v0, v8, v10

    if-nez v0, :cond_157

    .line 1589
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0xa

    invoke-direct {v7, v0, v14, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_96

    .line 1591
    :cond_157
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v10

    const/16 v2, 0xff

    and-int/2addr v1, v2

    rsub-int/lit8 v1, v1, 0x4

    mul-int/2addr v1, v10

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1593
    :cond_158
    :goto_96
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightMidRadarInfo:B

    aget-byte v1, v8, v13

    if-eq v0, v1, :cond_15a

    .line 1594
    aget-byte v0, v8, v13

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightMidRadarInfo:B

    .line 1595
    aget-byte v0, v8, v13

    if-nez v0, :cond_159

    .line 1596
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0xa

    invoke-direct {v7, v0, v14, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_97

    .line 1598
    :cond_159
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v13

    const/16 v2, 0xff

    and-int/2addr v1, v2

    rsub-int/lit8 v1, v1, 0x4

    mul-int/2addr v1, v10

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1600
    :cond_15a
    :goto_97
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightRadarInfo:B

    aget-byte v1, v8, v9

    if-eq v0, v1, :cond_1c2

    .line 1601
    aget-byte v0, v8, v9

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightRadarInfo:B

    .line 1602
    aget-byte v0, v8, v9

    if-nez v0, :cond_15b

    .line 1603
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0xa

    invoke-direct {v7, v0, v14, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto/16 :goto_b9

    .line 1605
    :cond_15b
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v9

    const/16 v2, 0xff

    and-int/2addr v1, v2

    sub-int/2addr v13, v1

    mul-int/2addr v13, v10

    const/4 v1, 0x1

    add-int/2addr v13, v1

    const/16 v1, 0xa

    invoke-direct {v7, v0, v13, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto/16 :goto_b9

    :pswitch_4c
    const/4 v0, 0x1

    .line 1554
    aget-byte v2, v8, v0

    if-ne v2, v1, :cond_1c2

    const-string/jumbo v0, "test889"

    .line 1555
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCanbusInfo[2] == 0xFF ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v2, v8, v11

    const/16 v3, 0xff

    if-ne v2, v3, :cond_15c

    const/4 v3, 0x1

    goto :goto_98

    :cond_15c
    move v3, v14

    :goto_98
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    aget-byte v0, v8, v11

    const/16 v1, 0xff

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_15d

    .line 1557
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0xa

    invoke-direct {v7, v0, v14, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    const/16 v2, 0xff

    const/16 v3, 0xa

    goto :goto_99

    .line 1559
    :cond_15d
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v11

    const/16 v2, 0xff

    and-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x1c

    const/4 v3, 0x1

    add-int/2addr v1, v3

    const/16 v3, 0xa

    invoke-direct {v7, v0, v1, v3}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1561
    :goto_99
    aget-byte v0, v8, v10

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_15e

    .line 1562
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v14, v3}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    const/16 v2, 0xff

    const/16 v3, 0xa

    goto :goto_9a

    .line 1564
    :cond_15e
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v10

    const/16 v2, 0xff

    and-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x1c

    const/4 v3, 0x1

    add-int/2addr v1, v3

    const/16 v3, 0xa

    invoke-direct {v7, v0, v1, v3}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1566
    :goto_9a
    aget-byte v0, v8, v13

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_15f

    .line 1567
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v14, v3}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    const/16 v2, 0xff

    const/16 v3, 0xa

    goto :goto_9b

    .line 1569
    :cond_15f
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v13

    const/16 v2, 0xff

    and-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x1c

    const/4 v3, 0x1

    add-int/2addr v1, v3

    const/16 v3, 0xa

    invoke-direct {v7, v0, v1, v3}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1571
    :goto_9b
    aget-byte v0, v8, v9

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_160

    .line 1572
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v14, v3}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto/16 :goto_b9

    .line 1574
    :cond_160
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v9

    const/16 v2, 0xff

    and-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x1c

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto/16 :goto_b9

    :pswitch_4d
    const/4 v0, 0x1

    .line 1502
    aget-byte v1, v8, v0

    const/16 v2, 0x32

    if-ne v1, v2, :cond_1c2

    .line 1504
    aget-byte v1, v8, v10

    if-nez v1, :cond_161

    .line 1505
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v2, 0xa

    invoke-direct {v7, v1, v0, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_9c

    :cond_161
    const/16 v2, 0xa

    .line 1507
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v3, v8, v10

    mul-int/2addr v3, v11

    add-int/2addr v3, v0

    invoke-direct {v7, v1, v3, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1510
    :goto_9c
    aget-byte v1, v8, v13

    if-nez v1, :cond_162

    .line 1511
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v1, v0, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_9d

    .line 1513
    :cond_162
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v3, v8, v13

    mul-int/2addr v3, v11

    add-int/2addr v3, v0

    invoke-direct {v7, v1, v3, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1516
    :goto_9d
    aget-byte v1, v8, v13

    if-nez v1, :cond_163

    .line 1517
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v1, v0, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_9e

    .line 1519
    :cond_163
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v3, v8, v13

    mul-int/2addr v3, v11

    add-int/2addr v3, v0

    invoke-direct {v7, v1, v3, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1522
    :goto_9e
    aget-byte v1, v8, v9

    if-nez v1, :cond_164

    .line 1523
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v1, v0, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_9f

    .line 1525
    :cond_164
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v3, v8, v9

    mul-int/2addr v3, v11

    add-int/2addr v3, v0

    invoke-direct {v7, v1, v3, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    :goto_9f
    const/4 v1, 0x6

    .line 1528
    aget-byte v3, v8, v1

    if-nez v3, :cond_165

    .line 1529
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v1, v0, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_a0

    .line 1531
    :cond_165
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/4 v3, 0x6

    aget-byte v3, v8, v3

    mul-int/2addr v3, v11

    add-int/2addr v3, v0

    invoke-direct {v7, v1, v3, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1534
    :goto_a0
    aget-byte v1, v8, v12

    if-nez v1, :cond_166

    .line 1535
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v1, v0, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_a1

    .line 1537
    :cond_166
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v3, v8, v12

    mul-int/2addr v3, v11

    add-int/2addr v3, v0

    invoke-direct {v7, v1, v3, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1540
    :goto_a1
    aget-byte v1, v8, v12

    if-nez v1, :cond_167

    .line 1541
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v1, v0, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_a2

    .line 1543
    :cond_167
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v3, v8, v12

    mul-int/2addr v3, v11

    add-int/2addr v3, v0

    invoke-direct {v7, v1, v3, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1546
    :goto_a2
    aget-byte v1, v8, v15

    if-nez v1, :cond_168

    .line 1547
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v1, v0, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto/16 :goto_b9

    .line 1549
    :cond_168
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v3, v8, v15

    mul-int/2addr v3, v11

    add-int/2addr v3, v0

    invoke-direct {v7, v1, v3, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto/16 :goto_b9

    .line 1487
    :pswitch_4e
    aget-byte v0, v8, v11

    if-ne v0, v11, :cond_1c2

    .line 1489
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v10

    mul-int/2addr v1, v11

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/16 v3, 0xa

    invoke-direct {v7, v0, v1, v3}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1490
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v13

    mul-int/2addr v1, v11

    add-int/2addr v1, v2

    invoke-direct {v7, v0, v1, v3}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1491
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v13

    mul-int/2addr v1, v11

    add-int/2addr v1, v2

    invoke-direct {v7, v0, v1, v3}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1492
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v9

    mul-int/2addr v1, v11

    add-int/2addr v1, v2

    invoke-direct {v7, v0, v1, v3}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1494
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/4 v1, 0x6

    aget-byte v1, v8, v1

    mul-int/2addr v1, v11

    add-int/2addr v1, v2

    invoke-direct {v7, v0, v1, v3}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1495
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v12

    mul-int/2addr v1, v11

    add-int/2addr v1, v2

    invoke-direct {v7, v0, v1, v3}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1496
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v12

    mul-int/2addr v1, v11

    add-int/2addr v1, v2

    invoke-direct {v7, v0, v1, v3}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1497
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v15

    mul-int/2addr v1, v11

    add-int/2addr v1, v2

    invoke-direct {v7, v0, v1, v3}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto/16 :goto_b9

    :pswitch_4f
    const/4 v0, 0x1

    .line 1458
    aget-byte v1, v8, v0

    const/16 v2, 0x22

    if-ne v1, v2, :cond_16a

    const/4 v1, 0x6

    .line 1459
    aget-byte v2, v8, v1

    if-eqz v2, :cond_169

    .line 1460
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v2, v8, v11

    shl-int/2addr v2, v0

    int-to-byte v2, v2

    const/16 v3, 0xa

    invoke-direct {v7, v1, v2, v3}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1461
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v2, v8, v10

    shl-int/2addr v2, v0

    int-to-byte v2, v2

    invoke-direct {v7, v1, v2, v3}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1462
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v2, v8, v13

    shl-int/2addr v2, v0

    int-to-byte v2, v2

    invoke-direct {v7, v1, v2, v3}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1463
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v2, v8, v9

    shl-int/2addr v2, v0

    int-to-byte v0, v2

    invoke-direct {v7, v1, v0, v3}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_a3

    .line 1465
    :cond_169
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0xa

    invoke-direct {v7, v0, v14, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1466
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v14, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1467
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v14, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1468
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v14, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    :goto_a3
    const/4 v0, 0x1

    .line 1471
    :cond_16a
    aget-byte v1, v8, v0

    const/16 v2, 0x23

    if-ne v1, v2, :cond_1c2

    const/4 v1, 0x6

    .line 1472
    aget-byte v1, v8, v1

    if-eqz v1, :cond_16b

    .line 1473
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v2, v8, v11

    shl-int/2addr v2, v0

    int-to-byte v2, v2

    const/16 v3, 0xa

    invoke-direct {v7, v1, v2, v3}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1474
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v2, v8, v10

    shl-int/2addr v2, v0

    int-to-byte v2, v2

    invoke-direct {v7, v1, v2, v3}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1475
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v2, v8, v13

    shl-int/2addr v2, v0

    int-to-byte v2, v2

    invoke-direct {v7, v1, v2, v3}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1476
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v2, v8, v9

    shl-int/lit8 v0, v2, 0x1

    int-to-byte v0, v0

    invoke-direct {v7, v1, v0, v3}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto/16 :goto_b9

    .line 1478
    :cond_16b
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0xa

    invoke-direct {v7, v0, v14, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1479
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v14, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1480
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v14, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1481
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v14, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto/16 :goto_b9

    :pswitch_50
    const/4 v0, 0x1

    .line 1450
    iput-boolean v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    .line 1451
    aget-byte v1, v8, v0

    const/16 v0, 0x22

    if-ne v1, v0, :cond_16c

    const/16 v1, 0x22

    const/4 v2, 0x5

    .line 1452
    aget-byte v3, v8, v11

    aget-byte v4, v8, v10

    aget-byte v5, v8, v13

    aget-byte v6, v8, v9

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setRearRadarDataAllCmd(BIIIII)V

    goto/16 :goto_b9

    :cond_16c
    const/4 v0, 0x1

    .line 1453
    aget-byte v0, v8, v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_1c2

    const/16 v1, 0x23

    const/4 v2, 0x5

    .line 1454
    aget-byte v3, v8, v11

    aget-byte v4, v8, v10

    aget-byte v5, v8, v13

    aget-byte v6, v8, v9

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontRadarDataAllCmd(BIIIII)V

    goto/16 :goto_b9

    :pswitch_51
    const/4 v0, 0x1

    .line 1360
    aget-byte v1, v8, v0

    if-ne v1, v13, :cond_172

    .line 1361
    aget-byte v0, v8, v11

    if-eqz v0, :cond_171

    .line 1363
    aget-byte v0, v8, v10

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftRadarInfo:B

    .line 1364
    aget-byte v0, v8, v10

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16d

    .line 1365
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v11, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_a4

    .line 1366
    :cond_16d
    aget-byte v0, v8, v10

    if-ne v0, v11, :cond_16e

    .line 1367
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v13, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_a4

    .line 1369
    :cond_16e
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v14, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1373
    :goto_a4
    aget-byte v0, v8, v13

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftMidRadarInfo:B

    .line 1375
    aget-byte v0, v8, v13

    const/16 v1, 0xa

    mul-int/2addr v0, v1

    const/4 v2, 0x6

    div-int/2addr v0, v2

    .line 1376
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v2, v0, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1379
    aget-byte v0, v8, v9

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightMidRadarInfo:B

    .line 1381
    aget-byte v0, v8, v9

    mul-int/2addr v0, v1

    const/4 v2, 0x6

    div-int/2addr v0, v2

    .line 1382
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v3, v0, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1385
    aget-byte v0, v8, v2

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightRadarInfo:B

    .line 1386
    aget-byte v0, v8, v2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16f

    .line 1387
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v11, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_a5

    .line 1388
    :cond_16f
    aget-byte v0, v8, v2

    if-ne v0, v11, :cond_170

    .line 1389
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v13, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_a5

    .line 1391
    :cond_170
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v14, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_a5

    .line 1395
    :cond_171
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v14, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1396
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v14, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1397
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v14, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1398
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v14, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    :cond_172
    :goto_a5
    const/4 v0, 0x1

    .line 1402
    aget-byte v1, v8, v0

    if-ne v1, v9, :cond_1c2

    .line 1403
    aget-byte v0, v8, v11

    if-eqz v0, :cond_177

    .line 1405
    aget-byte v0, v8, v10

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftRadarInfo:B

    .line 1406
    aget-byte v0, v8, v10

    const/4 v1, 0x1

    if-ne v0, v1, :cond_173

    .line 1407
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v11, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_a6

    .line 1408
    :cond_173
    aget-byte v0, v8, v10

    if-ne v0, v11, :cond_174

    .line 1409
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v13, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_a6

    .line 1411
    :cond_174
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v14, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1415
    :goto_a6
    aget-byte v0, v8, v13

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftMidRadarInfo:B

    .line 1417
    aget-byte v0, v8, v13

    const/16 v1, 0xa

    mul-int/2addr v0, v1

    div-int/2addr v0, v13

    .line 1418
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v3, 0xff

    and-int/2addr v0, v3

    int-to-byte v0, v0

    invoke-direct {v7, v2, v0, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1421
    aget-byte v0, v8, v9

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontRightMidRadarInfo:B

    .line 1423
    aget-byte v0, v8, v9

    mul-int/2addr v0, v1

    div-int/2addr v0, v13

    .line 1424
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v2, v0, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    const/4 v0, 0x6

    .line 1428
    aget-byte v1, v8, v0

    iput-byte v1, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mfrontRightRadarInfo:B

    .line 1429
    aget-byte v1, v8, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_175

    .line 1430
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v11, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto/16 :goto_b9

    .line 1431
    :cond_175
    aget-byte v0, v8, v0

    if-ne v0, v11, :cond_176

    .line 1432
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v13, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto/16 :goto_b9

    .line 1434
    :cond_176
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v14, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto/16 :goto_b9

    .line 1438
    :cond_177
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v14, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1439
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v14, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1440
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v14, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1441
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v14, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto/16 :goto_b9

    :pswitch_52
    const/4 v0, 0x1

    .line 1289
    aget-byte v1, v8, v0

    const/16 v0, 0x22

    if-ne v1, v0, :cond_180

    .line 1290
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftRadarInfo:B

    aget-byte v1, v8, v11

    if-eq v0, v1, :cond_17a

    .line 1291
    aget-byte v0, v8, v11

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftRadarInfo:B

    .line 1292
    aget-byte v0, v8, v11

    const/4 v1, 0x1

    if-ne v0, v1, :cond_178

    .line 1293
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v11, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_a7

    .line 1294
    :cond_178
    aget-byte v0, v8, v11

    if-ne v0, v11, :cond_179

    .line 1295
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v13, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_a7

    .line 1296
    :cond_179
    aget-byte v0, v8, v11

    if-nez v0, :cond_17a

    .line 1297
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v14, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1300
    :cond_17a
    :goto_a7
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftMidRadarInfo:B

    aget-byte v1, v8, v10

    if-eq v0, v1, :cond_17b

    .line 1301
    aget-byte v0, v8, v10

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftMidRadarInfo:B

    .line 1303
    aget-byte v0, v8, v10

    const/16 v1, 0xa

    mul-int/2addr v0, v1

    const/4 v2, 0x6

    div-int/2addr v0, v2

    .line 1304
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v2, v0, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1306
    :cond_17b
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightMidRadarInfo:B

    aget-byte v1, v8, v13

    if-eq v0, v1, :cond_17c

    .line 1307
    aget-byte v0, v8, v13

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightMidRadarInfo:B

    .line 1309
    aget-byte v0, v8, v13

    const/16 v1, 0xa

    mul-int/2addr v0, v1

    const/4 v2, 0x6

    div-int/2addr v0, v2

    .line 1310
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v2, v0, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1312
    :cond_17c
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightRadarInfo:B

    aget-byte v1, v8, v9

    if-eq v0, v1, :cond_17f

    .line 1313
    aget-byte v0, v8, v9

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightRadarInfo:B

    .line 1314
    aget-byte v0, v8, v9

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17d

    .line 1315
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v11, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_a8

    .line 1316
    :cond_17d
    aget-byte v0, v8, v9

    if-ne v0, v11, :cond_17e

    .line 1317
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v13, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_a8

    .line 1318
    :cond_17e
    aget-byte v0, v8, v9

    if-nez v0, :cond_17f

    .line 1319
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v14, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1322
    :cond_17f
    :goto_a8
    array-length v0, v8

    const/4 v1, 0x6

    if-le v0, v1, :cond_1c2

    const/4 v0, 0x1

    .line 1323
    iput-boolean v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    .line 1324
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_LEFT_PROBE:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v1

    invoke-direct {v7, v0, v1, v11}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setProbeRadarData(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1325
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_RIGHT_PROBE:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v12

    invoke-direct {v7, v0, v1, v11}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setProbeRadarData(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto/16 :goto_b9

    :cond_180
    const/4 v0, 0x1

    .line 1327
    aget-byte v1, v8, v0

    const/16 v0, 0x23

    if-ne v1, v0, :cond_1c2

    .line 1328
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftRadarInfo:B

    aget-byte v1, v8, v11

    if-eq v0, v1, :cond_183

    .line 1329
    aget-byte v0, v8, v11

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftRadarInfo:B

    .line 1330
    aget-byte v0, v8, v11

    const/4 v1, 0x1

    if-ne v0, v1, :cond_181

    .line 1331
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v11, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_a9

    .line 1332
    :cond_181
    aget-byte v0, v8, v11

    if-ne v0, v11, :cond_182

    .line 1333
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v13, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_a9

    .line 1334
    :cond_182
    aget-byte v0, v8, v11

    if-nez v0, :cond_183

    .line 1335
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v14, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    :cond_183
    :goto_a9
    const/4 v0, 0x1

    .line 1338
    iput-boolean v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    .line 1339
    aget-byte v0, v8, v10

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontLeftMidData(II)V

    .line 1340
    aget-byte v0, v8, v13

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontRightMidData(II)V

    .line 1341
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightRadarInfo:B

    aget-byte v1, v8, v9

    if-eq v0, v1, :cond_186

    .line 1342
    aget-byte v0, v8, v9

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightRadarInfo:B

    .line 1343
    aget-byte v0, v8, v9

    const/4 v1, 0x1

    if-ne v0, v1, :cond_184

    .line 1344
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v11, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_aa

    .line 1345
    :cond_184
    aget-byte v0, v8, v9

    if-ne v0, v11, :cond_185

    .line 1346
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v13, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_aa

    .line 1347
    :cond_185
    aget-byte v0, v8, v9

    if-nez v0, :cond_186

    .line 1348
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v14, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1351
    :cond_186
    :goto_aa
    array-length v0, v8

    const/4 v1, 0x6

    if-le v0, v1, :cond_1c2

    .line 1352
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_LEFT_PROBE:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v1

    invoke-direct {v7, v0, v1, v11}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setProbeRadarData(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1353
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_RIGHT_PROBE:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v12

    invoke-direct {v7, v0, v1, v11}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setProbeRadarData(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto/16 :goto_b9

    :pswitch_53
    const/4 v0, 0x1

    .line 1849
    iput-boolean v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->isDistanceMode:Z

    .line 1850
    aget-byte v3, v8, v14

    if-ne v3, v2, :cond_1c2

    aget-byte v0, v8, v0

    if-ne v0, v1, :cond_1c2

    .line 1852
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftRadarInfo:B

    aget-byte v1, v8, v11

    if-eq v0, v1, :cond_187

    .line 1853
    aget-byte v0, v8, v11

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftRadarInfo:B

    .line 1854
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0xa

    invoke-direct {v7, v0, v14, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1856
    :cond_187
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftMidRadarInfo:B

    aget-byte v1, v8, v10

    if-eq v0, v1, :cond_188

    .line 1857
    aget-byte v0, v8, v10

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftMidRadarInfo:B

    .line 1858
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0xa

    invoke-direct {v7, v0, v14, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1860
    :cond_188
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightMidRadarInfo:B

    aget-byte v1, v8, v13

    if-eq v0, v1, :cond_189

    .line 1861
    aget-byte v0, v8, v13

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightMidRadarInfo:B

    .line 1862
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0xa

    invoke-direct {v7, v0, v14, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1864
    :cond_189
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightRadarInfo:B

    aget-byte v1, v8, v9

    if-eq v0, v1, :cond_1c2

    .line 1865
    aget-byte v0, v8, v9

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightRadarInfo:B

    .line 1866
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0xa

    invoke-direct {v7, v0, v14, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto/16 :goto_b9

    :pswitch_54
    const/16 v0, 0xd

    .line 1871
    aget-byte v0, v8, v0

    if-nez v0, :cond_1c2

    .line 1872
    iput-boolean v14, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->isDistanceMode:Z

    const/4 v0, 0x1

    .line 1873
    iput-boolean v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    const/16 v0, 0xff

    .line 1874
    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->disableData:I

    .line 1875
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v11

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackLeftData(II)V

    .line 1876
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v10

    invoke-direct {v7, v0, v12}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackLeftMidData(II)V

    .line 1877
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v13

    invoke-direct {v7, v0, v12}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackRightMidData(II)V

    .line 1878
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v9

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackRightData(II)V

    .line 1879
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    const/4 v1, 0x6

    aget v0, v0, v1

    invoke-direct {v7, v0, v11}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontLeftData(II)V

    .line 1880
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v12

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontLeftMidData(II)V

    .line 1881
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v15

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontRightMidData(II)V

    .line 1882
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    const/16 v1, 0x9

    aget v0, v0, v1

    invoke-direct {v7, v0, v11}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontRightData(II)V

    goto/16 :goto_b9

    :pswitch_55
    const/16 v0, 0xd

    .line 1750
    aget-byte v4, v8, v0

    if-nez v4, :cond_199

    .line 1751
    iput-boolean v14, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->isDistanceMode:Z

    .line 1752
    aget-byte v0, v8, v14

    if-ne v0, v2, :cond_1c2

    const/4 v0, 0x1

    aget-byte v0, v8, v0

    if-ne v0, v1, :cond_1c2

    .line 1753
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftRadarInfo:B

    aget-byte v1, v8, v11

    if-eq v0, v1, :cond_18b

    .line 1754
    aget-byte v0, v8, v11

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftRadarInfo:B

    .line 1755
    aget-byte v0, v8, v11

    if-ne v0, v3, :cond_18a

    .line 1756
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0xa

    invoke-direct {v7, v0, v1, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_ab

    :cond_18a
    const/16 v1, 0xa

    .line 1758
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v2, v8, v11

    mul-int/2addr v2, v11

    invoke-direct {v7, v0, v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1760
    :cond_18b
    :goto_ab
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftMidRadarInfo:B

    aget-byte v1, v8, v10

    if-eq v0, v1, :cond_18d

    .line 1761
    aget-byte v0, v8, v10

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftMidRadarInfo:B

    .line 1762
    aget-byte v0, v8, v10

    if-ne v0, v3, :cond_18c

    .line 1763
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0xa

    invoke-direct {v7, v0, v1, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_ac

    :cond_18c
    const/16 v1, 0xa

    .line 1765
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v2, v8, v10

    mul-int/2addr v2, v11

    invoke-direct {v7, v0, v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1767
    :cond_18d
    :goto_ac
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightMidRadarInfo:B

    aget-byte v1, v8, v13

    if-eq v0, v1, :cond_18f

    .line 1768
    aget-byte v0, v8, v13

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightMidRadarInfo:B

    .line 1769
    aget-byte v0, v8, v13

    if-ne v0, v3, :cond_18e

    .line 1770
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0xa

    invoke-direct {v7, v0, v1, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_ad

    :cond_18e
    const/16 v1, 0xa

    .line 1772
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v2, v8, v13

    mul-int/2addr v2, v11

    invoke-direct {v7, v0, v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1774
    :cond_18f
    :goto_ad
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightRadarInfo:B

    aget-byte v1, v8, v9

    if-eq v0, v1, :cond_191

    .line 1775
    aget-byte v0, v8, v9

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightRadarInfo:B

    .line 1776
    aget-byte v0, v8, v9

    if-ne v0, v3, :cond_190

    .line 1777
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0xa

    invoke-direct {v7, v0, v1, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_ae

    :cond_190
    const/16 v1, 0xa

    .line 1779
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v2, v8, v9

    mul-int/2addr v2, v11

    invoke-direct {v7, v0, v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1781
    :cond_191
    :goto_ae
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftRadarInfo:B

    const/4 v1, 0x6

    aget-byte v2, v8, v1

    if-eq v0, v2, :cond_193

    .line 1782
    aget-byte v0, v8, v1

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftRadarInfo:B

    .line 1783
    aget-byte v0, v8, v1

    if-ne v0, v3, :cond_192

    .line 1784
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0xa

    invoke-direct {v7, v0, v1, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_af

    :cond_192
    const/16 v1, 0xa

    .line 1786
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/4 v2, 0x6

    aget-byte v2, v8, v2

    mul-int/2addr v2, v11

    invoke-direct {v7, v0, v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1788
    :cond_193
    :goto_af
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftMidRadarInfo:B

    aget-byte v1, v8, v12

    if-eq v0, v1, :cond_195

    .line 1789
    aget-byte v0, v8, v12

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftMidRadarInfo:B

    .line 1790
    aget-byte v0, v8, v12

    if-ne v0, v3, :cond_194

    .line 1791
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0xa

    invoke-direct {v7, v0, v1, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_b0

    :cond_194
    const/16 v1, 0xa

    .line 1793
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v2, v8, v12

    mul-int/2addr v2, v11

    invoke-direct {v7, v0, v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1795
    :cond_195
    :goto_b0
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontRightMidRadarInfo:B

    aget-byte v1, v8, v15

    if-eq v0, v1, :cond_197

    .line 1796
    aget-byte v0, v8, v15

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontRightMidRadarInfo:B

    .line 1797
    aget-byte v0, v8, v15

    if-ne v0, v3, :cond_196

    .line 1798
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0xa

    invoke-direct {v7, v0, v1, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_b1

    :cond_196
    const/16 v1, 0xa

    .line 1800
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v2, v8, v15

    mul-int/2addr v2, v11

    invoke-direct {v7, v0, v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1802
    :cond_197
    :goto_b1
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mfrontRightRadarInfo:B

    const/16 v1, 0x9

    aget-byte v2, v8, v1

    if-eq v0, v2, :cond_1c2

    .line 1803
    aget-byte v0, v8, v1

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mfrontRightRadarInfo:B

    .line 1804
    aget-byte v0, v8, v1

    if-ne v0, v3, :cond_198

    .line 1805
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0xa

    invoke-direct {v7, v0, v1, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto/16 :goto_b9

    :cond_198
    const/16 v1, 0xa

    .line 1807
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v2, 0x9

    aget-byte v2, v8, v2

    mul-int/2addr v2, v11

    invoke-direct {v7, v0, v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto/16 :goto_b9

    :cond_199
    const/16 v0, 0xd

    .line 1810
    aget-byte v0, v8, v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1c2

    .line 1811
    iput-boolean v3, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->isDistanceMode:Z

    .line 1812
    aget-byte v0, v8, v14

    if-ne v0, v2, :cond_1c2

    aget-byte v0, v8, v3

    if-ne v0, v1, :cond_1c2

    .line 1813
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftRadarInfo:B

    aget-byte v1, v8, v11

    if-eq v0, v1, :cond_19a

    .line 1814
    aget-byte v0, v8, v11

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftRadarInfo:B

    .line 1815
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v11

    const/16 v2, 0xff

    and-int/2addr v1, v2

    const/16 v2, 0xf

    div-int/2addr v1, v2

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1817
    :cond_19a
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftMidRadarInfo:B

    aget-byte v1, v8, v10

    if-eq v0, v1, :cond_19b

    .line 1818
    aget-byte v0, v8, v10

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftMidRadarInfo:B

    .line 1819
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v10

    const/16 v2, 0xff

    and-int/2addr v1, v2

    const/16 v2, 0xf

    div-int/2addr v1, v2

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1821
    :cond_19b
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightMidRadarInfo:B

    aget-byte v1, v8, v13

    if-eq v0, v1, :cond_19c

    .line 1822
    aget-byte v0, v8, v13

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightMidRadarInfo:B

    .line 1823
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v13

    const/16 v2, 0xff

    and-int/2addr v1, v2

    const/16 v2, 0xf

    div-int/2addr v1, v2

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1825
    :cond_19c
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightRadarInfo:B

    aget-byte v1, v8, v9

    if-eq v0, v1, :cond_19d

    .line 1826
    aget-byte v0, v8, v9

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightRadarInfo:B

    .line 1827
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v9

    const/16 v2, 0xff

    and-int/2addr v1, v2

    const/16 v2, 0xf

    div-int/2addr v1, v2

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1829
    :cond_19d
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftRadarInfo:B

    const/4 v1, 0x6

    aget-byte v2, v8, v1

    if-eq v0, v2, :cond_19e

    .line 1830
    aget-byte v0, v8, v1

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftRadarInfo:B

    .line 1831
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v1

    const/16 v2, 0xff

    and-int/2addr v1, v2

    const/16 v2, 0xf

    div-int/2addr v1, v2

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1833
    :cond_19e
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftMidRadarInfo:B

    aget-byte v1, v8, v12

    if-eq v0, v1, :cond_19f

    .line 1834
    aget-byte v0, v8, v12

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontLeftMidRadarInfo:B

    .line 1835
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v12

    const/16 v2, 0xff

    and-int/2addr v1, v2

    const/16 v2, 0xf

    div-int/2addr v1, v2

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1837
    :cond_19f
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontRightMidRadarInfo:B

    aget-byte v1, v8, v15

    if-eq v0, v1, :cond_1a0

    .line 1838
    aget-byte v0, v8, v15

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mFrontRightMidRadarInfo:B

    .line 1839
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v15

    const/16 v2, 0xff

    and-int/2addr v1, v2

    const/16 v2, 0xf

    div-int/2addr v1, v2

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 1841
    :cond_1a0
    iget-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mfrontRightRadarInfo:B

    const/16 v1, 0x9

    aget-byte v2, v8, v1

    if-eq v0, v2, :cond_1c2

    .line 1842
    aget-byte v0, v8, v1

    iput-byte v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mfrontRightRadarInfo:B

    .line 1843
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v1, v8, v1

    const/16 v2, 0xff

    and-int/2addr v1, v2

    const/16 v2, 0xf

    div-int/2addr v1, v2

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto/16 :goto_b9

    :pswitch_56
    const/4 v0, 0x1

    .line 3145
    aget-byte v1, v8, v0

    const/16 v2, 0x32

    if-ne v1, v2, :cond_1c2

    .line 3146
    aget-byte v1, v8, v11

    if-nez v1, :cond_1a1

    .line 3147
    iput-boolean v14, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->isDistanceMode:Z

    .line 3148
    iput-boolean v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    .line 3149
    aget-byte v1, v8, v10

    iput v1, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->disableData:I

    const/16 v1, 0x32

    .line 3150
    aget-byte v2, v8, v10

    aget-byte v3, v8, v13

    add-int/2addr v3, v0

    aget-byte v4, v8, v9

    add-int/2addr v4, v0

    const/4 v5, 0x6

    aget-byte v5, v8, v5

    add-int/2addr v5, v0

    aget-byte v6, v8, v12

    add-int/2addr v6, v0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setRearRadarDataAllCmd(BIIIII)V

    .line 3152
    :cond_1a1
    aget-byte v0, v8, v11

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c2

    .line 3153
    iput-boolean v1, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->isDistanceMode:Z

    .line 3155
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 3156
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 3157
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 3158
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto/16 :goto_b9

    :pswitch_57
    const/4 v0, 0x1

    .line 3126
    aget-byte v1, v8, v0

    const/16 v2, 0x32

    if-ne v1, v2, :cond_1c2

    .line 3127
    aget-byte v1, v8, v11

    if-nez v1, :cond_1a2

    .line 3128
    iput-boolean v14, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->isDistanceMode:Z

    .line 3129
    iput-boolean v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    .line 3130
    aget-byte v1, v8, v10

    iput v1, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->disableData:I

    const/16 v1, 0x32

    .line 3131
    aget-byte v2, v8, v10

    aget-byte v3, v8, v13

    add-int/2addr v3, v0

    aget-byte v4, v8, v9

    add-int/2addr v4, v0

    const/4 v5, 0x6

    aget-byte v5, v8, v5

    add-int/2addr v5, v0

    aget-byte v6, v8, v12

    add-int/2addr v6, v0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setRearRadarDataAllCmd(BIIIII)V

    .line 3133
    :cond_1a2
    aget-byte v0, v8, v11

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c2

    .line 3134
    iput-boolean v1, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->isDistanceMode:Z

    .line 3136
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v2, 0xa

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 3137
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 3138
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 3139
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto/16 :goto_b9

    .line 2934
    :pswitch_58
    aget-byte v0, v8, v14

    if-ne v0, v2, :cond_1c2

    const/4 v0, 0x1

    .line 2935
    aget-byte v1, v8, v0

    const/16 v2, 0x32

    if-ne v1, v2, :cond_1a4

    .line 2936
    aget-byte v1, v8, v11

    if-ne v1, v0, :cond_1a3

    .line 2937
    iput-boolean v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->isDistanceMode:Z

    .line 2939
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v2, 0xa

    invoke-direct {v7, v1, v0, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2940
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v1, v0, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2941
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v1, v0, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2942
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v1, v0, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    :goto_b2
    const/4 v0, 0x1

    goto :goto_b3

    .line 2944
    :cond_1a3
    iput-boolean v14, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->isDistanceMode:Z

    const/4 v0, 0x1

    .line 2945
    iput-boolean v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    .line 2946
    iget-object v1, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v1, v1, v10

    add-int/2addr v1, v0

    iput v1, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->disableData:I

    const/16 v1, 0x32

    .line 2947
    iget-object v2, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v2, v2, v10

    add-int/2addr v2, v0

    iget-object v3, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v3, v3, v13

    add-int/2addr v3, v0

    iget-object v4, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v4, v4, v9

    add-int/2addr v4, v0

    iget-object v5, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    const/4 v6, 0x6

    aget v5, v5, v6

    add-int/2addr v5, v0

    iget-object v6, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v6, v6, v12

    add-int/2addr v6, v0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setRearRadarDataAllCmd(BIIIII)V

    goto :goto_b2

    .line 2950
    :cond_1a4
    :goto_b3
    aget-byte v1, v8, v0

    const/16 v2, 0x33

    if-ne v1, v2, :cond_1c2

    .line 2951
    aget-byte v1, v8, v11

    if-ne v1, v0, :cond_1a5

    .line 2952
    iput-boolean v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->isDistanceMode:Z

    .line 2954
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v2, 0xa

    invoke-direct {v7, v1, v0, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2955
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v1, v0, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2956
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v1, v0, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2957
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v1, v0, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto/16 :goto_b9

    .line 2959
    :cond_1a5
    iput-boolean v14, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->isDistanceMode:Z

    const/4 v0, 0x1

    .line 2960
    iput-boolean v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    .line 2961
    iget-object v1, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v1, v1, v10

    add-int/2addr v1, v0

    iput v1, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->disableData:I

    const/16 v1, 0x33

    .line 2962
    iget-object v2, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v2, v2, v10

    add-int/2addr v2, v0

    iget-object v3, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v3, v3, v13

    add-int/2addr v3, v0

    iget-object v4, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v4, v4, v9

    add-int/2addr v4, v0

    iget-object v5, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    const/4 v6, 0x6

    aget v5, v5, v6

    add-int/2addr v5, v0

    iget-object v6, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v6, v6, v12

    add-int/2addr v6, v0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontRadarDataAllCmd(BIIIII)V

    goto/16 :goto_b9

    .line 2661
    :pswitch_59
    aget-byte v0, v8, v14

    if-ne v0, v2, :cond_1c2

    const/4 v0, 0x1

    .line 2662
    aget-byte v2, v8, v0

    if-ne v2, v1, :cond_1af

    const/16 v1, 0xd

    .line 2663
    aget-byte v2, v8, v1

    if-ne v2, v0, :cond_1a6

    .line 2664
    iput-boolean v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->isDistanceMode:Z

    .line 2666
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v2, 0xa

    invoke-direct {v7, v1, v0, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2667
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v1, v0, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2668
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v1, v0, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2669
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v1, v0, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2671
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v1, v0, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2672
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v1, v0, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2673
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v1, v0, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2674
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v1, v0, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    :goto_b4
    const/4 v0, 0x1

    goto/16 :goto_b5

    .line 2677
    :cond_1a6
    iput-boolean v14, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->isDistanceMode:Z

    const/4 v0, 0x1

    .line 2679
    iput-boolean v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    .line 2681
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    const/4 v1, 0x6

    aget v0, v0, v1

    const/16 v2, 0xff

    if-ne v0, v2, :cond_1a7

    .line 2682
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aput v14, v0, v1

    .line 2684
    :cond_1a7
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v12

    const/16 v1, 0xff

    if-ne v0, v1, :cond_1a8

    .line 2685
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aput v14, v0, v12

    .line 2687
    :cond_1a8
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v15

    const/16 v1, 0xff

    if-ne v0, v1, :cond_1a9

    .line 2688
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aput v14, v0, v15

    .line 2690
    :cond_1a9
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    const/16 v1, 0x9

    aget v0, v0, v1

    const/16 v2, 0xff

    if-ne v0, v2, :cond_1aa

    .line 2691
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aput v14, v0, v1

    .line 2693
    :cond_1aa
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v11

    const/16 v1, 0xff

    if-ne v0, v1, :cond_1ab

    .line 2694
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aput v14, v0, v11

    .line 2696
    :cond_1ab
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v10

    const/16 v1, 0xff

    if-ne v0, v1, :cond_1ac

    .line 2697
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aput v14, v0, v10

    .line 2699
    :cond_1ac
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v13

    const/16 v1, 0xff

    if-ne v0, v1, :cond_1ad

    .line 2700
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aput v14, v0, v13

    .line 2702
    :cond_1ad
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v9

    const/16 v1, 0xff

    if-ne v0, v1, :cond_1ae

    .line 2703
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aput v14, v0, v9

    .line 2705
    :cond_1ae
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    const/4 v1, 0x6

    aget v0, v0, v1

    invoke-direct {v7, v0, v11}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontLeftData(II)V

    .line 2706
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v12

    invoke-direct {v7, v0, v10}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontLeftMidData(II)V

    .line 2707
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v15

    invoke-direct {v7, v0, v10}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontRightMidData(II)V

    .line 2708
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    const/16 v1, 0x9

    aget v0, v0, v1

    invoke-direct {v7, v0, v11}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontRightData(II)V

    .line 2711
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v11

    invoke-direct {v7, v0, v11}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackLeftData(II)V

    .line 2712
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v10

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackLeftMidData(II)V

    .line 2713
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v13

    invoke-direct {v7, v0, v13}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackRightMidData(II)V

    .line 2714
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v9

    invoke-direct {v7, v0, v11}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackRightData(II)V

    goto/16 :goto_b4

    .line 2722
    :cond_1af
    :goto_b5
    aget-byte v1, v8, v0

    const/16 v2, 0x42

    if-ne v1, v2, :cond_1c2

    const/16 v1, 0xd

    .line 2723
    aget-byte v1, v8, v1

    if-ne v1, v0, :cond_1b0

    .line 2724
    iput-boolean v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->isDistanceMode:Z

    .line 2726
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->LEFT_FRONT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v2, 0xa

    invoke-direct {v7, v1, v0, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2727
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->LEFT_MID_FRONT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v1, v0, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2728
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->LEFT_MID_REAR:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v1, v0, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2729
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->LEFT_REAR:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v1, v0, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2731
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->RIGHT_FRONT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v1, v0, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2732
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->RIGHT_MID_FRONT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v1, v0, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2733
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->RIGHT_MID_REAR:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v1, v0, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2734
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->RIGHT_REAR:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v1, v0, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto/16 :goto_b9

    .line 2736
    :cond_1b0
    iput-boolean v14, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->isDistanceMode:Z

    const/4 v0, 0x1

    .line 2738
    iput-boolean v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    const-string v0, "HHHHHHH6"

    .line 2753
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v2, v2, v11

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x42

    const/4 v2, 0x2

    .line 2754
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v3, v0, v11

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v6, v0, v9

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setRightRadarDataAllCmd(BIIIII)V

    const/16 v1, 0x42

    const/4 v2, 0x2

    .line 2755
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    const/4 v3, 0x6

    aget v3, v0, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    const/16 v6, 0x9

    aget v6, v0, v6

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setLeftRadarDataAllCmd(BIIIII)V

    goto/16 :goto_b9

    .line 2597
    :pswitch_5a
    aget-byte v0, v8, v14

    if-ne v0, v2, :cond_1c2

    const/4 v0, 0x1

    aget-byte v2, v8, v0

    if-ne v2, v1, :cond_1c2

    const/16 v1, 0xd

    .line 2598
    aget-byte v1, v8, v1

    if-ne v1, v0, :cond_1b1

    .line 2599
    iput-boolean v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->isDistanceMode:Z

    .line 2601
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v2, 0xa

    invoke-direct {v7, v1, v0, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2602
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v1, v0, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2603
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v1, v0, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2604
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v1, v0, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2606
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v1, v0, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2607
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v1, v0, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2608
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v1, v0, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2609
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->FRONT_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v1, v0, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto/16 :goto_b9

    .line 2614
    :cond_1b1
    iput-boolean v14, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->isDistanceMode:Z

    const/4 v0, 0x1

    .line 2616
    iput-boolean v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->minIsClose:Z

    .line 2618
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    const/4 v1, 0x6

    aget v0, v0, v1

    const/16 v2, 0xff

    if-ne v0, v2, :cond_1b2

    .line 2619
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aput v14, v0, v1

    .line 2621
    :cond_1b2
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v12

    const/16 v1, 0xff

    if-ne v0, v1, :cond_1b3

    .line 2622
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aput v14, v0, v12

    .line 2624
    :cond_1b3
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v15

    const/16 v1, 0xff

    if-ne v0, v1, :cond_1b4

    .line 2625
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aput v14, v0, v15

    .line 2627
    :cond_1b4
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    const/16 v1, 0x9

    aget v0, v0, v1

    const/16 v2, 0xff

    if-ne v0, v2, :cond_1b5

    .line 2628
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aput v14, v0, v1

    .line 2630
    :cond_1b5
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v11

    const/16 v1, 0xff

    if-ne v0, v1, :cond_1b6

    .line 2631
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aput v14, v0, v11

    .line 2633
    :cond_1b6
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v10

    const/16 v1, 0xff

    if-ne v0, v1, :cond_1b7

    .line 2634
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aput v14, v0, v10

    .line 2636
    :cond_1b7
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v13

    const/16 v1, 0xff

    if-ne v0, v1, :cond_1b8

    .line 2637
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aput v14, v0, v13

    .line 2639
    :cond_1b8
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v9

    const/16 v1, 0xff

    if-ne v0, v1, :cond_1b9

    .line 2640
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aput v14, v0, v9

    .line 2642
    :cond_1b9
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    const/4 v1, 0x6

    aget v0, v0, v1

    invoke-direct {v7, v0, v10}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontLeftData(II)V

    .line 2643
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v12

    invoke-direct {v7, v0, v10}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontLeftMidData(II)V

    .line 2644
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v15

    invoke-direct {v7, v0, v10}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontRightMidData(II)V

    .line 2645
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    const/16 v1, 0x9

    aget v0, v0, v1

    invoke-direct {v7, v0, v10}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFrontRightData(II)V

    .line 2648
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v11

    invoke-direct {v7, v0, v10}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackLeftData(II)V

    .line 2649
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v10

    invoke-direct {v7, v0, v10}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackLeftMidData(II)V

    .line 2650
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v13

    invoke-direct {v7, v0, v10}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackRightMidData(II)V

    .line 2651
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mCanbusInfoIntArray:[I

    aget v0, v0, v9

    invoke-direct {v7, v0, v10}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setBackRightData(II)V

    goto/16 :goto_b9

    .line 2390
    :pswitch_5b
    aget-byte v0, v8, v14

    if-ne v0, v2, :cond_1c2

    const/4 v0, 0x1

    aget-byte v1, v8, v0

    const/16 v2, 0x32

    if-ne v1, v2, :cond_1c2

    .line 2391
    aget-byte v1, v8, v11

    if-ne v1, v0, :cond_1ba

    .line 2392
    iput-boolean v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->isDistanceMode:Z

    .line 2394
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v2, 0xa

    invoke-direct {v7, v1, v0, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2395
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v1, v0, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2396
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v1, v0, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2397
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    invoke-direct {v7, v1, v0, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto/16 :goto_b9

    .line 2400
    :cond_1ba
    iput-boolean v14, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->isDistanceMode:Z

    .line 2402
    aget-byte v0, v8, v10

    .line 2404
    iget-byte v1, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftRadarInfo:B

    aget-byte v2, v8, v13

    if-eq v1, v2, :cond_1bc

    .line 2405
    aget-byte v1, v8, v13

    iput-byte v1, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftRadarInfo:B

    .line 2406
    aget-byte v1, v8, v13

    if-ne v1, v3, :cond_1bb

    .line 2407
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v2, 0xa

    invoke-direct {v7, v1, v14, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_b6

    :cond_1bb
    const/16 v2, 0xa

    .line 2409
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v4, v8, v13

    const/16 v5, 0xff

    and-int/2addr v4, v5

    mul-int/2addr v4, v2

    div-int/2addr v4, v0

    const/4 v5, 0x1

    add-int/2addr v4, v5

    invoke-direct {v7, v1, v4, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2412
    :cond_1bc
    :goto_b6
    iget-byte v1, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftMidRadarInfo:B

    aget-byte v2, v8, v9

    if-eq v1, v2, :cond_1be

    .line 2413
    aget-byte v1, v8, v9

    iput-byte v1, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackLeftMidRadarInfo:B

    .line 2414
    aget-byte v1, v8, v9

    if-ne v1, v3, :cond_1bd

    .line 2415
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v2, 0xa

    invoke-direct {v7, v1, v14, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_b7

    :cond_1bd
    const/16 v2, 0xa

    .line 2417
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_LEFT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v4, v8, v9

    const/16 v5, 0xff

    and-int/2addr v4, v5

    mul-int/2addr v4, v2

    div-int/2addr v4, v0

    const/4 v5, 0x1

    add-int/2addr v4, v5

    invoke-direct {v7, v1, v4, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2420
    :cond_1be
    :goto_b7
    iget-byte v1, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightMidRadarInfo:B

    const/4 v2, 0x6

    aget-byte v4, v8, v2

    if-eq v1, v4, :cond_1c0

    .line 2421
    aget-byte v1, v8, v2

    iput-byte v1, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightMidRadarInfo:B

    .line 2422
    aget-byte v1, v8, v2

    if-ne v1, v3, :cond_1bf

    .line 2423
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v2, 0xa

    invoke-direct {v7, v1, v14, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_b8

    :cond_1bf
    const/16 v2, 0xa

    .line 2425
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_MID_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/4 v4, 0x6

    aget-byte v4, v8, v4

    const/16 v5, 0xff

    and-int/2addr v4, v5

    mul-int/2addr v4, v2

    div-int/2addr v4, v0

    const/4 v5, 0x1

    add-int/2addr v4, v5

    invoke-direct {v7, v1, v4, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    .line 2428
    :cond_1c0
    :goto_b8
    iget-byte v1, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightRadarInfo:B

    aget-byte v2, v8, v12

    if-eq v1, v2, :cond_1c2

    .line 2429
    aget-byte v1, v8, v12

    iput-byte v1, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->mBackRightRadarInfo:B

    .line 2430
    aget-byte v1, v8, v12

    if-ne v1, v3, :cond_1c1

    .line 2431
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    const/16 v1, 0xa

    invoke-direct {v7, v0, v14, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V

    goto :goto_b9

    :cond_1c1
    const/16 v1, 0xa

    .line 2433
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;->REAR_RIGHT:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;

    aget-byte v3, v8, v12

    const/16 v4, 0xff

    and-int/2addr v3, v4

    mul-int/2addr v3, v1

    div-int/2addr v3, v0

    const/4 v0, 0x1

    add-int/2addr v3, v0

    invoke-direct {v7, v2, v3, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->setFordImageResourceByName(Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3228
    :catch_0
    :cond_1c2
    :goto_b9
    :pswitch_5c
    iget-object v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo;->map:Ljava/util/HashMap;

    return-object v0

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_16
        :pswitch_16
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_14
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xd
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_17
        :pswitch_1b
        :pswitch_1b
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
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
        :pswitch_19
        :pswitch_18
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_55
        :pswitch_54
        :pswitch_53
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x46
        :pswitch_5c
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4e
        :pswitch_4d
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_25
        :pswitch_26
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
    .end packed-switch
.end method
