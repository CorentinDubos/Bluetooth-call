.class public Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;
.super Ljava/lang/Object;
.source "UIshowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;,
        Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Gear;
    }
.end annotation


# static fields
.field public static isFrontRadarOpen:Z = false

.field private static isPanoramicExit:Z = false

.field public static isRearRadarOpen:Z = false

.field private static isShowRadar:Z = true

.field public static isShowRadarForHw:Z = false

.field public static isShowTrackForHw:Z = false

.field public static mIsShowFrontRear:Z

.field static mRadio:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;


# instance fields
.field public epsInfo:[B

.field public frontRadarInfo:[B

.field private lastFrontRadarInfo:[B

.field private lastLeftRadarInfo:[B

.field private lastRearRadarInfo:[B

.field private lastRightRadarInfo:[B

.field private lastTrackInfo:[B

.field public mGear:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Gear;

.field public mVehicleSpeed:I

.field public rearRadarInfo:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;

    invoke-direct {v0}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;-><init>()V

    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->mRadio:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 38
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->rearRadarInfo:[B

    const/16 v0, 0xa

    new-array v0, v0, [B

    .line 40
    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->frontRadarInfo:[B

    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 42
    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->epsInfo:[B

    return-void

    :array_0
    .array-data 1
        0x2t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x3t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x7t
        0x0t
        0x0t
    .end array-data
.end method

.method private getBackLevelValue(I)B
    .locals 2

    const/16 v0, 0x3c

    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/16 v1, 0x78

    if-le p1, v0, :cond_1

    if-gt p1, v1, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    if-le p1, v1, :cond_2

    const/16 v0, 0xb4

    if-gt p1, v0, :cond_2

    const/4 p1, 0x3

    return p1

    :cond_2
    const/4 p1, 0x4

    return p1
.end method

.method private getCurrentCarId()I
    .locals 2

    .line 1406
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->CAN_DIFFERENT_ID:Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getSharedInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;
    .locals 2

    const-class v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->mRadio:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;

    if-nez v1, :cond_0

    .line 32
    new-instance v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;

    invoke-direct {v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;-><init>()V

    sput-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->mRadio:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;

    .line 34
    :cond_0
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->mRadio:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getLevelValue(I)B
    .locals 2

    const/16 v0, 0x1e

    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/16 v1, 0x3c

    if-le p1, v0, :cond_1

    if-gt p1, v1, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    if-le p1, v1, :cond_2

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_2

    const/4 p1, 0x3

    return p1

    :cond_2
    const/4 p1, 0x4

    return p1
.end method


# virtual methods
.method public getReversingCameraInfo(Landroid/content/Context;[B)Ljava/util/HashMap;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[B)",
            "Ljava/util/HashMap<",
            "Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 80
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 83
    :try_start_0
    array-length v3, v1

    new-array v3, v3, [I

    const/4 v4, 0x0

    move v5, v4

    .line 84
    :goto_0
    array-length v6, v1

    if-ge v5, v6, :cond_1

    .line 86
    aget-byte v6, v1, v5

    and-int/lit16 v6, v6, 0x80

    if-nez v6, :cond_0

    .line 87
    aget-byte v6, v1, v5

    aput v6, v3, v5

    goto :goto_1

    .line 89
    :cond_0
    aget-byte v6, v1, v5

    and-int/lit16 v6, v6, 0xff

    aput v6, v3, v5

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 92
    :cond_1
    aget-byte v5, v1, v4

    const/16 v6, 0x72

    const/4 v8, 0x7

    const/16 v11, 0x11

    const/16 v14, 0x8

    const/4 v7, 0x3

    const/4 v9, 0x6

    const/4 v13, 0x2

    const/4 v10, 0x1

    if-eq v5, v13, :cond_55

    aget-byte v5, v1, v4

    if-eq v5, v7, :cond_55

    aget-byte v5, v1, v4

    if-ne v5, v8, :cond_2

    goto/16 :goto_1b

    .line 111
    :cond_2
    aget-byte v5, v1, v4

    const/16 v15, 0x55

    if-ne v5, v15, :cond_5b

    .line 113
    array-length v5, v1

    new-array v5, v5, [I

    move v15, v4

    .line 114
    :goto_2
    array-length v12, v1

    if-ge v15, v12, :cond_4

    .line 115
    aget-byte v12, v1, v15

    and-int/lit16 v12, v12, 0x80

    if-nez v12, :cond_3

    .line 116
    aget-byte v12, v1, v15

    aput v12, v5, v15

    goto :goto_3

    .line 118
    :cond_3
    aget-byte v12, v1, v15

    and-int/lit16 v12, v12, 0xff

    aput v12, v5, v15

    :goto_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 121
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isCanbusCmdPorting(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_30

    .line 122
    sget-object v12, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v15

    invoke-virtual {v15}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v15

    aget v12, v12, v15

    packed-switch v12, :pswitch_data_0

    goto/16 :goto_1d

    .line 279
    :pswitch_0
    aget v1, v5, v10

    if-ne v1, v11, :cond_6

    .line 281
    aget v1, v5, v14

    mul-int/lit16 v1, v1, 0x100

    const/16 v3, 0x9

    aget v3, v5, v3

    add-int/2addr v1, v3

    if-ltz v1, :cond_5

    const/16 v3, 0x21c

    if-gt v1, v3, :cond_5

    .line 284
    iget-object v3, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->epsInfo:[B

    aput-byte v4, v3, v10

    .line 285
    iget-object v3, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->epsInfo:[B

    mul-int/lit8 v1, v1, 0x28

    div-int/lit16 v1, v1, 0x21c

    int-to-byte v1, v1

    aput-byte v1, v3, v13

    .line 286
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    iget-object v3, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->epsInfo:[B

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_5
    const v3, 0xfde3

    if-lt v1, v3, :cond_6

    const v3, 0xffff

    if-gt v1, v3, :cond_6

    const v3, 0xffff

    sub-int/2addr v3, v1

    .line 289
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->epsInfo:[B

    mul-int/lit8 v3, v3, 0x28

    div-int/lit16 v3, v3, 0x21c

    int-to-byte v3, v3

    aput-byte v3, v1, v10

    .line 290
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->epsInfo:[B

    aput-byte v4, v1, v13

    .line 291
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    iget-object v3, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->epsInfo:[B

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_4
    return-object v2

    .line 160
    :pswitch_1
    aget v3, v5, v10

    if-ne v3, v6, :cond_23

    .line 163
    iget-object v3, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->epsInfo:[B

    aget v6, v5, v8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v3, v10

    .line 164
    iget-object v3, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->epsInfo:[B

    aget v6, v5, v9

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v3, v13

    .line 165
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    iget-object v6, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->epsInfo:[B

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v3, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->rearRadarInfo:[B

    aget v6, v5, v14

    int-to-byte v6, v6

    and-int/lit16 v6, v6, 0xff

    invoke-direct {v0, v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->getBackLevelValue(I)B

    move-result v6

    aput-byte v6, v3, v10

    .line 169
    iget-object v3, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->rearRadarInfo:[B

    const/16 v6, 0x9

    aget v6, v5, v6

    int-to-byte v6, v6

    and-int/lit16 v6, v6, 0xff

    invoke-direct {v0, v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->getBackLevelValue(I)B

    move-result v6

    aput-byte v6, v3, v13

    .line 170
    iget-object v3, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->rearRadarInfo:[B

    const/16 v6, 0xa

    aget v6, v5, v6

    int-to-byte v6, v6

    and-int/lit16 v6, v6, 0xff

    invoke-direct {v0, v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->getBackLevelValue(I)B

    move-result v6

    aput-byte v6, v3, v7

    .line 171
    iget-object v3, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->rearRadarInfo:[B

    const/16 v6, 0xb

    aget v6, v5, v6

    int-to-byte v6, v6

    and-int/lit16 v6, v6, 0xff

    invoke-direct {v0, v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->getBackLevelValue(I)B

    move-result v6

    const/4 v11, 0x4

    aput-byte v6, v3, v11

    .line 173
    iget-object v3, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->frontRadarInfo:[B

    const/16 v6, 0xc

    aget v11, v5, v6

    int-to-byte v6, v11

    and-int/lit16 v6, v6, 0xff

    invoke-direct {v0, v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->getLevelValue(I)B

    move-result v6

    aput-byte v6, v3, v10

    .line 174
    iget-object v3, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->frontRadarInfo:[B

    const/16 v6, 0xd

    aget v6, v5, v6

    int-to-byte v6, v6

    and-int/lit16 v6, v6, 0xff

    invoke-direct {v0, v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->getLevelValue(I)B

    move-result v6

    aput-byte v6, v3, v13

    .line 175
    iget-object v3, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->frontRadarInfo:[B

    const/16 v6, 0xe

    aget v6, v5, v6

    int-to-byte v6, v6

    and-int/lit16 v6, v6, 0xff

    invoke-direct {v0, v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->getLevelValue(I)B

    move-result v6

    aput-byte v6, v3, v7

    .line 176
    iget-object v3, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->frontRadarInfo:[B

    const/16 v6, 0xf

    aget v11, v5, v6

    int-to-byte v6, v11

    and-int/lit16 v6, v6, 0xff

    invoke-direct {v0, v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->getLevelValue(I)B

    move-result v6

    const/4 v11, 0x4

    aput-byte v6, v3, v11

    .line 177
    aget-byte v3, v1, v7

    invoke-static {v3, v8}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntByteWithBit(BI)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->rearRadarInfo:[B

    aput-byte v4, v3, v10

    .line 178
    :cond_7
    aget-byte v3, v1, v7

    invoke-static {v3, v9}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntByteWithBit(BI)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->rearRadarInfo:[B

    aput-byte v4, v3, v13

    .line 179
    :cond_8
    aget-byte v3, v1, v7

    const/4 v6, 0x5

    invoke-static {v3, v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntByteWithBit(BI)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->rearRadarInfo:[B

    aput-byte v4, v3, v7

    .line 180
    :cond_9
    aget-byte v3, v1, v7

    const/4 v6, 0x4

    invoke-static {v3, v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntByteWithBit(BI)Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->rearRadarInfo:[B

    aput-byte v4, v3, v6

    .line 182
    :cond_a
    aget-byte v3, v1, v7

    invoke-static {v3, v7}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntByteWithBit(BI)Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->frontRadarInfo:[B

    aput-byte v4, v3, v10

    .line 183
    :cond_b
    aget-byte v3, v1, v7

    invoke-static {v3, v13}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntByteWithBit(BI)Z

    move-result v3

    if-nez v3, :cond_c

    iget-object v3, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->frontRadarInfo:[B

    aput-byte v4, v3, v13

    .line 184
    :cond_c
    aget-byte v3, v1, v7

    invoke-static {v3, v10}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntByteWithBit(BI)Z

    move-result v3

    if-nez v3, :cond_d

    iget-object v3, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->frontRadarInfo:[B

    aput-byte v4, v3, v7

    .line 185
    :cond_d
    aget-byte v3, v1, v7

    invoke-static {v3, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntByteWithBit(BI)Z

    move-result v3

    if-nez v3, :cond_e

    iget-object v3, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->frontRadarInfo:[B

    const/4 v6, 0x4

    aput-byte v4, v3, v6

    .line 188
    :cond_e
    aget v3, v5, v14

    const/16 v3, 0xc

    .line 189
    aget v6, v5, v3

    .line 190
    aget v3, v5, v14

    and-int/lit16 v3, v3, 0xff

    move v6, v14

    :goto_5
    const/16 v8, 0xf

    if-gt v6, v8, :cond_10

    .line 192
    aget v8, v5, v6

    and-int/lit16 v8, v8, 0xff

    if-le v3, v8, :cond_f

    aget v3, v5, v6

    and-int/lit16 v3, v3, 0xff

    :cond_f
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 194
    :cond_10
    sget-object v6, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->FrontRadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    iget-object v8, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->frontRadarInfo:[B

    invoke-virtual {v2, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v6, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RearRadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    iget-object v8, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->rearRadarInfo:[B

    invoke-virtual {v2, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    aget-byte v6, v1, v7

    and-int/lit16 v6, v6, 0xf0

    if-eqz v6, :cond_15

    aget-byte v6, v1, v7

    const/16 v8, 0xf

    and-int/2addr v6, v8

    if-nez v6, :cond_15

    .line 201
    aget v1, v5, v14

    :goto_6
    const/16 v3, 0xb

    if-gt v14, v3, :cond_12

    .line 203
    aget v3, v5, v14

    and-int/lit16 v3, v3, 0xff

    if-le v1, v3, :cond_11

    aget v1, v5, v14

    and-int/lit16 v1, v1, 0xff

    :cond_11
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    :cond_12
    int-to-byte v3, v1

    const/16 v5, 0xb4

    if-le v1, v5, :cond_13

    const/4 v3, -0x1

    .line 209
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->rearRadarInfo:[B

    aput-byte v10, v1, v9

    .line 210
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->frontRadarInfo:[B

    aput-byte v10, v1, v9

    goto/16 :goto_b

    :cond_13
    const/16 v5, 0x3c

    if-gt v1, v5, :cond_14

    const/4 v3, -0x2

    .line 214
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->rearRadarInfo:[B

    aput-byte v13, v1, v9

    .line 215
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->frontRadarInfo:[B

    aput-byte v13, v1, v9

    goto/16 :goto_b

    .line 217
    :cond_14
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->rearRadarInfo:[B

    aput-byte v4, v1, v9

    .line 218
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->frontRadarInfo:[B

    aput-byte v4, v1, v9

    goto/16 :goto_b

    .line 221
    :cond_15
    aget-byte v6, v1, v7

    const/16 v8, 0xf

    and-int/2addr v6, v8

    if-eqz v6, :cond_1a

    aget-byte v6, v1, v7

    and-int/lit16 v6, v6, 0xf0

    if-nez v6, :cond_1a

    const/16 v6, 0xc

    .line 222
    aget v1, v5, v6

    const/16 v15, 0xc

    :goto_7
    if-gt v15, v8, :cond_17

    .line 224
    aget v3, v5, v15

    and-int/lit16 v3, v3, 0xff

    if-le v1, v3, :cond_16

    aget v1, v5, v15

    and-int/lit16 v1, v1, 0xff

    :cond_16
    add-int/lit8 v15, v15, 0x1

    const/16 v8, 0xf

    goto :goto_7

    :cond_17
    int-to-byte v3, v1

    const/16 v5, 0x5a

    if-le v1, v5, :cond_18

    const/4 v3, -0x1

    .line 230
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->rearRadarInfo:[B

    aput-byte v10, v1, v9

    .line 231
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->frontRadarInfo:[B

    aput-byte v10, v1, v9

    goto/16 :goto_b

    :cond_18
    const/16 v5, 0x1e

    if-gt v1, v5, :cond_19

    const/4 v3, -0x2

    .line 235
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->rearRadarInfo:[B

    aput-byte v13, v1, v9

    .line 236
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->frontRadarInfo:[B

    aput-byte v13, v1, v9

    goto/16 :goto_b

    .line 238
    :cond_19
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->rearRadarInfo:[B

    aput-byte v4, v1, v9

    .line 239
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->frontRadarInfo:[B

    aput-byte v4, v1, v9

    goto/16 :goto_b

    .line 241
    :cond_1a
    aget-byte v1, v1, v7

    if-nez v1, :cond_1b

    .line 244
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->rearRadarInfo:[B

    aput-byte v10, v1, v9

    .line 245
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->frontRadarInfo:[B

    aput-byte v10, v1, v9

    return-object v2

    :cond_1b
    int-to-byte v3, v3

    .line 249
    aget v1, v5, v14

    :goto_8
    const/16 v6, 0xb

    if-gt v14, v6, :cond_1d

    .line 251
    aget v6, v5, v14

    and-int/lit16 v6, v6, 0xff

    if-le v1, v6, :cond_1c

    aget v1, v5, v14

    and-int/lit16 v1, v1, 0xff

    :cond_1c
    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    :cond_1d
    const/16 v6, 0xc

    .line 253
    aget v7, v5, v6

    const/16 v6, 0xf

    const/16 v15, 0xc

    :goto_9
    if-gt v15, v6, :cond_1f

    .line 255
    aget v6, v5, v15

    and-int/lit16 v6, v6, 0xff

    if-le v7, v6, :cond_1e

    aget v6, v5, v15

    and-int/lit16 v6, v6, 0xff

    move v7, v6

    :cond_1e
    add-int/lit8 v15, v15, 0x1

    const/16 v6, 0xf

    goto :goto_9

    :cond_1f
    const/16 v5, 0xb4

    if-le v1, v5, :cond_20

    const/16 v5, 0x5a

    if-le v7, v5, :cond_20

    const/4 v3, -0x1

    .line 260
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->rearRadarInfo:[B

    aput-byte v10, v1, v9

    .line 261
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->frontRadarInfo:[B

    aput-byte v10, v1, v9

    goto :goto_b

    :cond_20
    const/16 v5, 0x3c

    if-le v1, v5, :cond_22

    const/16 v1, 0x1e

    if-gt v7, v1, :cond_21

    goto :goto_a

    .line 269
    :cond_21
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->rearRadarInfo:[B

    aput-byte v4, v1, v9

    .line 270
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->frontRadarInfo:[B

    aput-byte v4, v1, v9

    goto :goto_b

    :cond_22
    :goto_a
    const/4 v3, -0x2

    .line 266
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->rearRadarInfo:[B

    aput-byte v13, v1, v9

    .line 267
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->frontRadarInfo:[B

    aput-byte v13, v1, v9

    .line 273
    :goto_b
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->rearRadarInfo:[B

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    const/4 v4, 0x5

    aput-byte v3, v1, v4

    .line 274
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->frontRadarInfo:[B

    aput-byte v3, v1, v4

    :cond_23
    return-object v2

    .line 145
    :pswitch_2
    aget-byte v12, v1, v10

    const/16 v15, 0x1e

    if-eq v12, v15, :cond_27

    aget-byte v12, v1, v10

    const/16 v15, 0x1d

    if-ne v12, v15, :cond_24

    goto :goto_d

    .line 150
    :cond_24
    aget-byte v12, v1, v10

    const/16 v15, 0x29

    if-ne v12, v15, :cond_25

    .line 151
    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1d

    .line 152
    :cond_25
    aget v12, v5, v10

    const/16 v15, 0x32

    if-ne v12, v15, :cond_5b

    .line 153
    aget v1, v5, v13

    invoke-static {v1, v13}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntByteWithBit(II)Z

    move-result v1

    sput-boolean v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->isPanoramicExit:Z

    if-nez v1, :cond_26

    .line 154
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->ShowRadarUI:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    .line 155
    :cond_26
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->ShowRadarUI:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_c
    return-object v2

    .line 146
    :cond_27
    :goto_d
    sget-boolean v5, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->isPanoramicExit:Z

    if-nez v5, :cond_28

    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->ShowRadarUI:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v2, v5, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    .line 147
    :cond_28
    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->ShowRadarUI:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v2, v5, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    :goto_e
    sget-boolean v5, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->isPanoramicExit:Z

    if-eqz v5, :cond_5b

    return-object v2

    .line 126
    :pswitch_3
    aget-byte v12, v1, v10

    const/16 v15, 0x1e

    if-eq v12, v15, :cond_2c

    aget-byte v12, v1, v10

    const/16 v15, 0x1d

    if-ne v12, v15, :cond_29

    goto :goto_10

    .line 134
    :cond_29
    aget-byte v12, v1, v10

    const/16 v15, 0x29

    if-ne v12, v15, :cond_2a

    .line 135
    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1d

    .line 136
    :cond_2a
    aget v12, v5, v10

    const/16 v15, 0x32

    if-ne v12, v15, :cond_5b

    .line 137
    aget v1, v5, v13

    invoke-static {v1, v13}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntByteWithBit(II)Z

    move-result v1

    sput-boolean v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->isPanoramicExit:Z

    .line 138
    sget-boolean v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->isShowRadar:Z

    if-eqz v3, :cond_2b

    if-nez v1, :cond_2b

    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->ShowRadarUI:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    .line 139
    :cond_2b
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->ShowRadarUI:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_f
    return-object v2

    .line 127
    :cond_2c
    :goto_10
    aget-byte v5, v1, v10

    const/16 v12, 0x1e

    if-ne v5, v12, :cond_2d

    .line 128
    aget-byte v5, v1, v9

    invoke-static {v5, v8}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntByteWithBit(BI)Z

    move-result v5

    sput-boolean v5, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->isShowRadar:Z

    .line 130
    :cond_2d
    sget-boolean v5, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->isShowRadar:Z

    if-eqz v5, :cond_2e

    sget-boolean v5, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->isPanoramicExit:Z

    if-nez v5, :cond_2e

    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->ShowRadarUI:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v2, v5, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    .line 131
    :cond_2e
    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->ShowRadarUI:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v2, v5, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :goto_11
    sget-boolean v5, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->isShowRadar:Z

    if-eqz v5, :cond_2f

    sget-boolean v5, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->isPanoramicExit:Z

    if-eqz v5, :cond_5b

    :cond_2f
    return-object v2

    .line 297
    :cond_30
    sget-object v12, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v15

    invoke-virtual {v15}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v15

    aget v12, v12, v15

    if-eq v12, v10, :cond_52

    if-eq v12, v13, :cond_52

    if-eq v12, v7, :cond_52

    const/4 v15, 0x4

    if-eq v12, v15, :cond_52

    if-eq v12, v9, :cond_34

    if-eq v12, v8, :cond_31

    goto/16 :goto_1d

    .line 426
    :cond_31
    aget v1, v5, v10

    if-ne v1, v11, :cond_33

    .line 428
    aget v1, v5, v14

    mul-int/lit16 v1, v1, 0x100

    const/16 v3, 0x9

    aget v3, v5, v3

    add-int/2addr v1, v3

    if-ltz v1, :cond_32

    const/16 v3, 0x21c

    if-gt v1, v3, :cond_32

    .line 431
    iget-object v3, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->epsInfo:[B

    aput-byte v4, v3, v10

    .line 432
    iget-object v3, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->epsInfo:[B

    mul-int/lit8 v1, v1, 0x28

    div-int/lit16 v1, v1, 0x21c

    int-to-byte v1, v1

    aput-byte v1, v3, v13

    .line 433
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    iget-object v3, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->epsInfo:[B

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    :cond_32
    const v3, 0xfde3

    if-lt v1, v3, :cond_33

    const v3, 0xffff

    if-gt v1, v3, :cond_33

    const v3, 0xffff

    sub-int/2addr v3, v1

    .line 436
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->epsInfo:[B

    mul-int/lit8 v3, v3, 0x28

    div-int/lit16 v3, v3, 0x21c

    int-to-byte v3, v3

    aput-byte v3, v1, v10

    .line 437
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->epsInfo:[B

    aput-byte v4, v1, v13

    .line 438
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    iget-object v3, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->epsInfo:[B

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_33
    :goto_12
    return-object v2

    .line 307
    :cond_34
    aget v3, v5, v10

    if-ne v3, v6, :cond_51

    .line 310
    iget-object v3, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->epsInfo:[B

    aget v6, v5, v8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v3, v10

    .line 311
    iget-object v3, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->epsInfo:[B

    aget v6, v5, v9

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v3, v13

    .line 312
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    iget-object v6, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->epsInfo:[B

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    iget-object v3, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->rearRadarInfo:[B

    aget v6, v5, v14

    int-to-byte v6, v6

    and-int/lit16 v6, v6, 0xff

    invoke-direct {v0, v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->getBackLevelValue(I)B

    move-result v6

    aput-byte v6, v3, v10

    .line 316
    iget-object v3, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->rearRadarInfo:[B

    const/16 v6, 0x9

    aget v6, v5, v6

    int-to-byte v6, v6

    and-int/lit16 v6, v6, 0xff

    invoke-direct {v0, v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->getBackLevelValue(I)B

    move-result v6

    aput-byte v6, v3, v13

    .line 317
    iget-object v3, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->rearRadarInfo:[B

    const/16 v6, 0xa

    aget v6, v5, v6

    int-to-byte v6, v6

    and-int/lit16 v6, v6, 0xff

    invoke-direct {v0, v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->getBackLevelValue(I)B

    move-result v6

    aput-byte v6, v3, v7

    .line 318
    iget-object v3, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->rearRadarInfo:[B

    const/16 v6, 0xb

    aget v6, v5, v6

    int-to-byte v6, v6

    and-int/lit16 v6, v6, 0xff

    invoke-direct {v0, v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->getBackLevelValue(I)B

    move-result v6

    const/4 v11, 0x4

    aput-byte v6, v3, v11

    .line 320
    iget-object v3, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->frontRadarInfo:[B

    const/16 v6, 0xc

    aget v11, v5, v6

    int-to-byte v6, v11

    and-int/lit16 v6, v6, 0xff

    invoke-direct {v0, v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->getLevelValue(I)B

    move-result v6

    aput-byte v6, v3, v10

    .line 321
    iget-object v3, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->frontRadarInfo:[B

    const/16 v6, 0xd

    aget v6, v5, v6

    int-to-byte v6, v6

    and-int/lit16 v6, v6, 0xff

    invoke-direct {v0, v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->getLevelValue(I)B

    move-result v6

    aput-byte v6, v3, v13

    .line 322
    iget-object v3, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->frontRadarInfo:[B

    const/16 v6, 0xe

    aget v6, v5, v6

    int-to-byte v6, v6

    and-int/lit16 v6, v6, 0xff

    invoke-direct {v0, v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->getLevelValue(I)B

    move-result v6

    aput-byte v6, v3, v7

    .line 323
    iget-object v3, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->frontRadarInfo:[B

    const/16 v6, 0xf

    aget v11, v5, v6

    int-to-byte v6, v11

    and-int/lit16 v6, v6, 0xff

    invoke-direct {v0, v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->getLevelValue(I)B

    move-result v6

    const/4 v11, 0x4

    aput-byte v6, v3, v11

    .line 324
    aget-byte v3, v1, v7

    invoke-static {v3, v8}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntByteWithBit(BI)Z

    move-result v3

    if-nez v3, :cond_35

    iget-object v3, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->rearRadarInfo:[B

    aput-byte v4, v3, v10

    .line 325
    :cond_35
    aget-byte v3, v1, v7

    invoke-static {v3, v9}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntByteWithBit(BI)Z

    move-result v3

    if-nez v3, :cond_36

    iget-object v3, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->rearRadarInfo:[B

    aput-byte v4, v3, v13

    .line 326
    :cond_36
    aget-byte v3, v1, v7

    const/4 v6, 0x5

    invoke-static {v3, v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntByteWithBit(BI)Z

    move-result v3

    if-nez v3, :cond_37

    iget-object v3, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->rearRadarInfo:[B

    aput-byte v4, v3, v7

    .line 327
    :cond_37
    aget-byte v3, v1, v7

    const/4 v6, 0x4

    invoke-static {v3, v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntByteWithBit(BI)Z

    move-result v3

    if-nez v3, :cond_38

    iget-object v3, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->rearRadarInfo:[B

    aput-byte v4, v3, v6

    .line 329
    :cond_38
    aget-byte v3, v1, v7

    invoke-static {v3, v7}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntByteWithBit(BI)Z

    move-result v3

    if-nez v3, :cond_39

    iget-object v3, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->frontRadarInfo:[B

    aput-byte v4, v3, v10

    .line 330
    :cond_39
    aget-byte v3, v1, v7

    invoke-static {v3, v13}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntByteWithBit(BI)Z

    move-result v3

    if-nez v3, :cond_3a

    iget-object v3, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->frontRadarInfo:[B

    aput-byte v4, v3, v13

    .line 331
    :cond_3a
    aget-byte v3, v1, v7

    invoke-static {v3, v10}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntByteWithBit(BI)Z

    move-result v3

    if-nez v3, :cond_3b

    iget-object v3, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->frontRadarInfo:[B

    aput-byte v4, v3, v7

    .line 332
    :cond_3b
    aget-byte v3, v1, v7

    invoke-static {v3, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntByteWithBit(BI)Z

    move-result v3

    if-nez v3, :cond_3c

    iget-object v3, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->frontRadarInfo:[B

    const/4 v6, 0x4

    aput-byte v4, v3, v6

    .line 335
    :cond_3c
    aget v3, v5, v14

    const/16 v3, 0xc

    .line 336
    aget v6, v5, v3

    .line 337
    aget v3, v5, v14

    and-int/lit16 v3, v3, 0xff

    move v6, v14

    :goto_13
    const/16 v8, 0xf

    if-gt v6, v8, :cond_3e

    .line 339
    aget v8, v5, v6

    and-int/lit16 v8, v8, 0xff

    if-le v3, v8, :cond_3d

    aget v3, v5, v6

    and-int/lit16 v3, v3, 0xff

    :cond_3d
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    .line 341
    :cond_3e
    sget-object v6, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->FrontRadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    iget-object v8, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->frontRadarInfo:[B

    invoke-virtual {v2, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    sget-object v6, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RearRadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    iget-object v8, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->rearRadarInfo:[B

    invoke-virtual {v2, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    aget-byte v6, v1, v7

    and-int/lit16 v6, v6, 0xf0

    if-eqz v6, :cond_43

    aget-byte v6, v1, v7

    const/16 v8, 0xf

    and-int/2addr v6, v8

    if-nez v6, :cond_43

    .line 348
    aget v1, v5, v14

    :goto_14
    const/16 v3, 0xb

    if-gt v14, v3, :cond_40

    .line 350
    aget v3, v5, v14

    and-int/lit16 v3, v3, 0xff

    if-le v1, v3, :cond_3f

    aget v1, v5, v14

    and-int/lit16 v1, v1, 0xff

    :cond_3f
    add-int/lit8 v14, v14, 0x1

    goto :goto_14

    :cond_40
    int-to-byte v3, v1

    const/16 v5, 0xb4

    if-le v1, v5, :cond_41

    const/4 v3, -0x1

    .line 356
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->rearRadarInfo:[B

    aput-byte v10, v1, v9

    .line 357
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->frontRadarInfo:[B

    aput-byte v10, v1, v9

    goto/16 :goto_19

    :cond_41
    const/16 v5, 0x3c

    if-gt v1, v5, :cond_42

    const/4 v3, -0x2

    .line 361
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->rearRadarInfo:[B

    aput-byte v13, v1, v9

    .line 362
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->frontRadarInfo:[B

    aput-byte v13, v1, v9

    goto/16 :goto_19

    .line 364
    :cond_42
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->rearRadarInfo:[B

    aput-byte v4, v1, v9

    .line 365
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->frontRadarInfo:[B

    aput-byte v4, v1, v9

    goto/16 :goto_19

    .line 368
    :cond_43
    aget-byte v6, v1, v7

    const/16 v8, 0xf

    and-int/2addr v6, v8

    if-eqz v6, :cond_48

    aget-byte v6, v1, v7

    and-int/lit16 v6, v6, 0xf0

    if-nez v6, :cond_48

    const/16 v6, 0xc

    .line 369
    aget v1, v5, v6

    const/16 v15, 0xc

    :goto_15
    if-gt v15, v8, :cond_45

    .line 371
    aget v3, v5, v15

    and-int/lit16 v3, v3, 0xff

    if-le v1, v3, :cond_44

    aget v1, v5, v15

    and-int/lit16 v1, v1, 0xff

    :cond_44
    add-int/lit8 v15, v15, 0x1

    const/16 v8, 0xf

    goto :goto_15

    :cond_45
    int-to-byte v3, v1

    const/16 v5, 0x5a

    if-le v1, v5, :cond_46

    const/4 v3, -0x1

    .line 377
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->rearRadarInfo:[B

    aput-byte v10, v1, v9

    .line 378
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->frontRadarInfo:[B

    aput-byte v10, v1, v9

    goto/16 :goto_19

    :cond_46
    const/16 v5, 0x1e

    if-gt v1, v5, :cond_47

    const/4 v3, -0x2

    .line 382
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->rearRadarInfo:[B

    aput-byte v13, v1, v9

    .line 383
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->frontRadarInfo:[B

    aput-byte v13, v1, v9

    goto/16 :goto_19

    .line 385
    :cond_47
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->rearRadarInfo:[B

    aput-byte v4, v1, v9

    .line 386
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->frontRadarInfo:[B

    aput-byte v4, v1, v9

    goto/16 :goto_19

    .line 388
    :cond_48
    aget-byte v1, v1, v7

    if-nez v1, :cond_49

    .line 391
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->rearRadarInfo:[B

    aput-byte v10, v1, v9

    .line 392
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->frontRadarInfo:[B

    aput-byte v10, v1, v9

    return-object v2

    :cond_49
    int-to-byte v3, v3

    .line 396
    aget v1, v5, v14

    :goto_16
    const/16 v6, 0xb

    if-gt v14, v6, :cond_4b

    .line 398
    aget v6, v5, v14

    and-int/lit16 v6, v6, 0xff

    if-le v1, v6, :cond_4a

    aget v1, v5, v14

    and-int/lit16 v1, v1, 0xff

    :cond_4a
    add-int/lit8 v14, v14, 0x1

    goto :goto_16

    :cond_4b
    const/16 v6, 0xc

    .line 400
    aget v7, v5, v6

    const/16 v6, 0xf

    const/16 v15, 0xc

    :goto_17
    if-gt v15, v6, :cond_4d

    .line 402
    aget v6, v5, v15

    and-int/lit16 v6, v6, 0xff

    if-le v7, v6, :cond_4c

    aget v6, v5, v15

    and-int/lit16 v6, v6, 0xff

    move v7, v6

    :cond_4c
    add-int/lit8 v15, v15, 0x1

    const/16 v6, 0xf

    goto :goto_17

    :cond_4d
    const/16 v5, 0xb4

    if-le v1, v5, :cond_4e

    const/16 v5, 0x5a

    if-le v7, v5, :cond_4e

    const/4 v3, -0x1

    .line 407
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->rearRadarInfo:[B

    aput-byte v10, v1, v9

    .line 408
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->frontRadarInfo:[B

    aput-byte v10, v1, v9

    goto :goto_19

    :cond_4e
    const/16 v5, 0x3c

    if-le v1, v5, :cond_50

    const/16 v1, 0x1e

    if-gt v7, v1, :cond_4f

    goto :goto_18

    .line 416
    :cond_4f
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->rearRadarInfo:[B

    aput-byte v4, v1, v9

    .line 417
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->frontRadarInfo:[B

    aput-byte v4, v1, v9

    goto :goto_19

    :cond_50
    :goto_18
    const/4 v3, -0x2

    .line 413
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->rearRadarInfo:[B

    aput-byte v13, v1, v9

    .line 414
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->frontRadarInfo:[B

    aput-byte v13, v1, v9

    .line 420
    :goto_19
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->rearRadarInfo:[B

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    const/4 v4, 0x5

    aput-byte v3, v1, v4

    .line 421
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->frontRadarInfo:[B

    aput-byte v3, v1, v4

    :cond_51
    return-object v2

    .line 302
    :cond_52
    aget v1, v5, v10

    const/16 v3, 0x32

    if-ne v1, v3, :cond_53

    aget v1, v5, v13

    invoke-static {v1, v13}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntByteWithBit(II)Z

    move-result v1

    sput-boolean v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->isPanoramicExit:Z

    .line 303
    :cond_53
    sget-boolean v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->isShowRadar:Z

    if-eqz v1, :cond_54

    sget-boolean v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->isPanoramicExit:Z

    if-nez v1, :cond_54

    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->ShowRadarUI:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    .line 304
    :cond_54
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->ShowRadarUI:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1a
    return-object v2

    .line 94
    :cond_55
    :goto_1b
    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v12

    invoke-virtual {v12}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v12

    aget v5, v5, v12

    if-eq v5, v10, :cond_56

    if-eq v5, v13, :cond_56

    if-eq v5, v7, :cond_56

    const/4 v12, 0x4

    if-eq v5, v12, :cond_56

    goto :goto_1d

    .line 99
    :cond_56
    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isCanbusCmdPorting(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_57

    goto :goto_1d

    .line 103
    :cond_57
    aget-byte v5, v1, v4

    if-ne v5, v13, :cond_59

    const/4 v5, 0x5

    .line 104
    aget-byte v12, v1, v5

    invoke-static {v12, v8}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntByteWithBit(BI)Z

    move-result v5

    sput-boolean v5, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->isShowRadar:Z

    if-eqz v5, :cond_58

    .line 105
    sget-boolean v5, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->isPanoramicExit:Z

    if-nez v5, :cond_58

    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->ShowRadarUI:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v2, v5, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    .line 106
    :cond_58
    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->ShowRadarUI:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v2, v5, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :cond_59
    :goto_1c
    sget-boolean v5, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->isShowRadar:Z

    if-eqz v5, :cond_5a

    sget-boolean v5, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->isPanoramicExit:Z

    if-eqz v5, :cond_5b

    :cond_5a
    aget-byte v5, v1, v4

    if-eq v5, v13, :cond_f6

    aget-byte v5, v1, v4

    if-ne v5, v7, :cond_5b

    goto/16 :goto_3a

    .line 446
    :cond_5b
    :goto_1d
    aget-byte v5, v1, v4

    const/16 v12, 0x55

    if-ne v5, v12, :cond_f3

    .line 447
    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isCanbusCmdPorting(Landroid/content/Context;)Z

    move-result v5

    const/16 v12, 0x24

    const/16 v15, 0x25

    const/16 v11, 0x23

    const/16 v8, 0x22

    if-eqz v5, :cond_81

    .line 449
    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v16

    aget v5, v5, v16

    packed-switch v5, :pswitch_data_1

    :pswitch_4
    goto/16 :goto_26

    .line 671
    :pswitch_5
    aget-byte v5, v1, v10

    const/16 v6, 0x1c

    if-ne v5, v6, :cond_5c

    .line 672
    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_26

    .line 673
    :cond_5c
    aget-byte v5, v1, v10

    if-ne v5, v12, :cond_81

    .line 674
    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_26

    .line 666
    :pswitch_6
    aget-byte v5, v1, v10

    if-ne v5, v14, :cond_81

    .line 667
    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_26

    .line 655
    :pswitch_7
    aget-byte v5, v1, v10

    if-ne v5, v15, :cond_5d

    .line 656
    aget-byte v5, v1, v13

    invoke-static {v5}, Lcom/hzbhd/midwareproxy/utils/DataHandleUtils;->getBoolBit1(I)Z

    move-result v5

    sput-boolean v5, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->isShowRadar:Z

    .line 657
    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->ShowRadarUI:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    sget-boolean v6, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->isShowRadar:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    :cond_5d
    aget-byte v5, v1, v10

    if-eq v5, v8, :cond_5e

    aget-byte v5, v1, v10

    if-ne v5, v11, :cond_81

    .line 660
    :cond_5e
    sget-boolean v5, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->isShowRadar:Z

    if-eqz v5, :cond_81

    .line 661
    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_26

    .line 650
    :pswitch_8
    aget-byte v5, v1, v10

    const/4 v6, 0x4

    if-ne v5, v6, :cond_81

    .line 651
    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_26

    .line 645
    :pswitch_9
    aget-byte v5, v1, v10

    if-eq v5, v7, :cond_5f

    aget-byte v5, v1, v10

    const/4 v6, 0x4

    if-ne v5, v6, :cond_81

    .line 646
    :cond_5f
    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_26

    .line 633
    :pswitch_a
    aget-byte v5, v1, v10

    if-eq v5, v11, :cond_61

    aget-byte v5, v1, v10

    if-ne v5, v8, :cond_60

    goto :goto_1e

    .line 635
    :cond_60
    aget-byte v5, v1, v10

    const/16 v6, 0x26

    if-ne v5, v6, :cond_81

    .line 636
    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_26

    .line 634
    :cond_61
    :goto_1e
    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_26

    .line 613
    :pswitch_b
    aget-byte v5, v1, v10

    if-ne v5, v8, :cond_62

    .line 615
    iget-object v5, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->lastRearRadarInfo:[B

    invoke-static {v5, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-nez v5, :cond_81

    .line 616
    array-length v5, v1

    invoke-static {v1, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    iput-object v5, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->lastRearRadarInfo:[B

    .line 617
    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_26

    .line 619
    :cond_62
    aget-byte v5, v1, v10

    if-ne v5, v11, :cond_63

    .line 620
    iget-object v5, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->lastFrontRadarInfo:[B

    invoke-static {v5, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-nez v5, :cond_81

    .line 621
    array-length v5, v1

    invoke-static {v1, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    iput-object v5, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->lastFrontRadarInfo:[B

    .line 622
    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_26

    .line 624
    :cond_63
    aget-byte v5, v1, v10

    const/16 v6, 0x35

    if-ne v5, v6, :cond_81

    .line 625
    iget-object v5, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->lastTrackInfo:[B

    invoke-static {v5, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-nez v5, :cond_81

    .line 626
    array-length v5, v1

    invoke-static {v1, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    iput-object v5, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->lastTrackInfo:[B

    .line 627
    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_26

    .line 594
    :pswitch_c
    aget-byte v5, v1, v10

    const/16 v6, 0xf

    if-ne v5, v6, :cond_67

    .line 595
    aget-byte v5, v1, v13

    const/16 v6, 0xfe

    if-ne v5, v6, :cond_64

    const/4 v5, 0x5

    aget-byte v6, v1, v5

    const/16 v5, 0xfe

    if-eq v6, v5, :cond_65

    .line 596
    :cond_64
    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    :cond_65
    aget-byte v5, v1, v13

    const/16 v6, 0xfe

    if-ne v5, v6, :cond_66

    const/4 v5, 0x5

    aget-byte v6, v1, v5

    const/16 v5, 0xfe

    if-ne v6, v5, :cond_66

    .line 599
    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->ShowRadarUI:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_26

    .line 601
    :cond_66
    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->ShowRadarUI:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_26

    .line 603
    :cond_67
    aget-byte v5, v1, v10

    const/16 v6, 0x10

    if-ne v5, v6, :cond_81

    .line 604
    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_26

    .line 586
    :pswitch_d
    aget-byte v5, v1, v10

    if-eq v5, v8, :cond_69

    aget-byte v5, v1, v10

    if-ne v5, v11, :cond_68

    goto :goto_1f

    .line 588
    :cond_68
    aget-byte v5, v1, v10

    const/16 v6, 0x26

    if-ne v5, v6, :cond_81

    .line 589
    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_26

    .line 587
    :cond_69
    :goto_1f
    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_26

    .line 568
    :pswitch_e
    aget-byte v5, v1, v10

    if-ne v5, v15, :cond_6a

    .line 569
    aget-byte v5, v1, v13

    invoke-static {v5, v7}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntByteWithBit(BI)Z

    move-result v5

    sput-boolean v5, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->isRearRadarOpen:Z

    .line 571
    :cond_6a
    aget-byte v5, v1, v10

    if-ne v5, v8, :cond_6b

    sget-boolean v5, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->isRearRadarOpen:Z

    if-eqz v5, :cond_6b

    .line 572
    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_26

    .line 573
    :cond_6b
    aget-byte v5, v1, v10

    const/16 v6, 0x29

    if-ne v5, v6, :cond_81

    .line 574
    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_26

    .line 559
    :pswitch_f
    aget-byte v5, v1, v10

    if-ne v5, v9, :cond_6c

    .line 560
    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_26

    .line 561
    :cond_6c
    aget-byte v5, v1, v10

    const/4 v6, 0x5

    if-ne v5, v6, :cond_81

    .line 562
    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_26

    .line 551
    :pswitch_10
    aget-byte v5, v1, v10

    const/16 v6, 0x9

    if-ne v5, v6, :cond_6d

    .line 552
    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_26

    .line 553
    :cond_6d
    aget-byte v5, v1, v10

    if-ne v5, v9, :cond_81

    .line 554
    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_26

    .line 542
    :pswitch_11
    aget-byte v5, v1, v10

    const/4 v6, 0x4

    if-ne v5, v6, :cond_6e

    .line 543
    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    :cond_6e
    aget-byte v5, v1, v10

    const/16 v6, 0x7d

    if-ne v5, v6, :cond_81

    aget-byte v5, v1, v13

    if-ne v5, v14, :cond_81

    .line 546
    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_26

    .line 537
    :pswitch_12
    aget-byte v5, v1, v10

    const/4 v6, 0x4

    if-ne v5, v6, :cond_81

    .line 538
    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_26

    .line 532
    :pswitch_13
    aget-byte v5, v1, v10

    if-eq v5, v8, :cond_6f

    aget-byte v5, v1, v10

    if-ne v5, v11, :cond_81

    .line 533
    :cond_6f
    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_26

    .line 524
    :pswitch_14
    aget-byte v5, v1, v10

    const/16 v6, 0x29

    if-ne v5, v6, :cond_81

    .line 525
    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_26

    .line 499
    :pswitch_15
    aget-byte v5, v1, v10

    if-eq v5, v8, :cond_71

    aget-byte v5, v1, v10

    if-ne v5, v11, :cond_70

    goto :goto_20

    .line 501
    :cond_70
    aget-byte v5, v1, v10

    const/16 v6, 0x29

    if-ne v5, v6, :cond_81

    .line 502
    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_26

    .line 500
    :cond_71
    :goto_20
    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_26

    .line 470
    :pswitch_16
    aget-byte v5, v1, v10

    const/16 v6, 0x29

    if-ne v5, v6, :cond_72

    .line 471
    iget-object v5, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->lastTrackInfo:[B

    invoke-static {v5, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-nez v5, :cond_81

    .line 472
    array-length v5, v1

    invoke-static {v1, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    iput-object v5, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->lastTrackInfo:[B

    .line 473
    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_26

    .line 475
    :cond_72
    aget-byte v5, v1, v10

    if-ne v5, v8, :cond_73

    .line 476
    iget-object v5, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->lastRearRadarInfo:[B

    invoke-static {v5, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-nez v5, :cond_81

    .line 477
    array-length v5, v1

    invoke-static {v1, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    iput-object v5, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->lastRearRadarInfo:[B

    .line 478
    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_26

    .line 480
    :cond_73
    aget-byte v5, v1, v10

    if-ne v5, v11, :cond_74

    .line 481
    iget-object v5, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->lastFrontRadarInfo:[B

    invoke-static {v5, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-nez v5, :cond_81

    .line 482
    array-length v5, v1

    invoke-static {v1, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    iput-object v5, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->lastFrontRadarInfo:[B

    .line 483
    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_26

    .line 485
    :cond_74
    aget-byte v5, v1, v10

    const/16 v6, 0x32

    if-ne v5, v6, :cond_75

    .line 486
    iget-object v5, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->lastLeftRadarInfo:[B

    invoke-static {v5, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-nez v5, :cond_81

    .line 487
    array-length v5, v1

    invoke-static {v1, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    iput-object v5, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->lastLeftRadarInfo:[B

    .line 488
    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_26

    .line 490
    :cond_75
    aget-byte v5, v1, v10

    const/16 v6, 0x33

    if-ne v5, v6, :cond_81

    .line 491
    iget-object v5, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->lastRightRadarInfo:[B

    invoke-static {v5, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-nez v5, :cond_81

    .line 492
    array-length v5, v1

    invoke-static {v1, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    iput-object v5, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->lastRightRadarInfo:[B

    .line 493
    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_26

    .line 452
    :pswitch_17
    aget-byte v5, v1, v10

    const/16 v6, 0x41

    if-ne v5, v6, :cond_76

    aget-byte v5, v1, v13

    if-ne v5, v13, :cond_76

    const/4 v5, 0x5

    .line 453
    aget-byte v6, v1, v5

    and-int/lit16 v5, v6, 0xff

    shl-int/2addr v5, v14

    aget-byte v6, v1, v9

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x64

    iput v5, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->mVehicleSpeed:I

    .line 455
    :cond_76
    aget-byte v5, v1, v10

    if-ne v5, v12, :cond_79

    .line 456
    aget-byte v5, v1, v13

    shr-int/2addr v5, v10

    and-int/2addr v5, v10

    if-nez v5, :cond_77

    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Gear;->P:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Gear;

    iput-object v5, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->mGear:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Gear;

    goto :goto_21

    .line 457
    :cond_77
    aget-byte v5, v1, v13

    and-int/2addr v5, v10

    if-ne v5, v10, :cond_78

    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Gear;->R:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Gear;

    iput-object v5, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->mGear:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Gear;

    goto :goto_21

    .line 458
    :cond_78
    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Gear;->N:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Gear;

    iput-object v5, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->mGear:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Gear;

    .line 461
    :cond_79
    :goto_21
    iget-object v5, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->mGear:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Gear;

    sget-object v6, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Gear;->P:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Gear;

    if-eq v5, v6, :cond_7a

    iget-object v5, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->mGear:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Gear;

    sget-object v6, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Gear;->R:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Gear;

    if-eq v5, v6, :cond_7a

    iget v5, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->mVehicleSpeed:I

    if-lez v5, :cond_7a

    move v5, v10

    goto :goto_22

    :cond_7a
    move v5, v4

    :goto_22
    sput-boolean v5, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->mIsShowFrontRear:Z

    .line 462
    aget-byte v5, v1, v10

    if-eq v5, v8, :cond_7c

    aget-byte v5, v1, v10

    if-ne v5, v11, :cond_7b

    goto :goto_23

    .line 464
    :cond_7b
    aget-byte v5, v1, v10

    const/16 v6, 0x26

    if-ne v5, v6, :cond_81

    .line 465
    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_26

    .line 463
    :cond_7c
    :goto_23
    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_26

    .line 506
    :pswitch_18
    aget-byte v5, v1, v10

    const/16 v6, 0x1d

    if-eq v5, v6, :cond_7e

    aget-byte v5, v1, v10

    const/16 v6, 0x1e

    if-ne v5, v6, :cond_7d

    goto :goto_24

    .line 508
    :cond_7d
    aget-byte v5, v1, v10

    const/16 v6, 0x29

    if-ne v5, v6, :cond_81

    .line 509
    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_26

    .line 507
    :cond_7e
    :goto_24
    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_26

    .line 516
    :pswitch_19
    aget-byte v5, v1, v10

    const/16 v6, 0x1d

    if-eq v5, v6, :cond_80

    aget-byte v5, v1, v10

    const/16 v6, 0x1e

    if-ne v5, v6, :cond_7f

    goto :goto_25

    .line 518
    :cond_7f
    aget-byte v5, v1, v10

    const/16 v6, 0x29

    if-ne v5, v6, :cond_81

    .line 519
    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_26

    .line 517
    :cond_80
    :goto_25
    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    :cond_81
    :goto_26
    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v6

    invoke-virtual {v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_2

    goto/16 :goto_3a

    .line 1380
    :pswitch_1a
    aget-byte v3, v1, v10

    const/4 v4, 0x7

    if-ne v3, v4, :cond_82

    .line 1381
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 1383
    :cond_82
    aget-byte v3, v1, v10

    if-ne v3, v14, :cond_f6

    .line 1384
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1385
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->ShowRadarUI:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 1375
    :pswitch_1b
    aget-byte v3, v1, v10

    if-ne v3, v15, :cond_f6

    .line 1376
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 1366
    :pswitch_1c
    invoke-direct/range {p0 .. p0}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->getCurrentCarId()I

    move-result v3

    if-ne v3, v10, :cond_83

    .line 1367
    aget-byte v3, v1, v10

    if-ne v3, v15, :cond_f6

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 1369
    :cond_83
    invoke-direct/range {p0 .. p0}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->getCurrentCarId()I

    move-result v3

    if-nez v3, :cond_f6

    .line 1370
    aget-byte v3, v1, v10

    if-ne v3, v12, :cond_f6

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 1358
    :pswitch_1d
    aget-byte v3, v1, v10

    if-ne v3, v12, :cond_84

    .line 1359
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1361
    :cond_84
    aget-byte v3, v1, v10

    const/16 v4, 0x30

    if-ne v3, v4, :cond_f6

    .line 1362
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 1347
    :pswitch_1e
    invoke-direct/range {p0 .. p0}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->getCurrentCarId()I

    move-result v3

    if-ne v3, v13, :cond_85

    .line 1348
    aget-byte v3, v1, v10

    if-ne v3, v15, :cond_f6

    .line 1349
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 1352
    :cond_85
    aget-byte v3, v1, v10

    if-ne v3, v12, :cond_f6

    .line 1353
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 1342
    :pswitch_1f
    aget-byte v3, v1, v10

    const/16 v4, 0x30

    if-ne v3, v4, :cond_f6

    .line 1343
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 1337
    :pswitch_20
    aget-byte v3, v1, v10

    if-eq v3, v8, :cond_86

    aget-byte v3, v1, v10

    if-ne v3, v11, :cond_f6

    .line 1338
    :cond_86
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 1329
    :pswitch_21
    aget-byte v3, v1, v10

    if-ne v3, v8, :cond_87

    .line 1330
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1332
    :cond_87
    aget-byte v3, v1, v10

    const/16 v4, 0x26

    if-ne v3, v4, :cond_f6

    .line 1333
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 1321
    :pswitch_22
    aget-byte v3, v1, v10

    const/16 v4, 0x29

    if-ne v3, v4, :cond_88

    .line 1322
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1324
    :cond_88
    aget-byte v3, v1, v10

    if-eq v3, v8, :cond_89

    aget-byte v3, v1, v10

    if-ne v3, v11, :cond_f6

    .line 1325
    :cond_89
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 1313
    :pswitch_23
    aget-byte v3, v1, v10

    const/16 v4, 0x29

    if-ne v3, v4, :cond_8a

    .line 1314
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1316
    :cond_8a
    aget-byte v3, v1, v10

    if-eq v3, v8, :cond_8b

    aget-byte v3, v1, v10

    if-ne v3, v11, :cond_f6

    .line 1317
    :cond_8b
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 1305
    :pswitch_24
    aget-byte v3, v1, v10

    const/16 v4, 0x29

    if-ne v3, v4, :cond_8c

    .line 1306
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1308
    :cond_8c
    aget-byte v3, v1, v10

    const/16 v4, 0x32

    if-ne v3, v4, :cond_f6

    .line 1309
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 1297
    :pswitch_25
    aget-byte v3, v1, v10

    const/16 v4, 0x29

    if-ne v3, v4, :cond_8d

    .line 1298
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1300
    :cond_8d
    aget-byte v3, v1, v10

    const/16 v4, 0x32

    if-ne v3, v4, :cond_f6

    .line 1301
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 1292
    :pswitch_26
    aget-byte v3, v1, v10

    if-ne v3, v12, :cond_f6

    .line 1293
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 1280
    :pswitch_27
    aget-byte v3, v1, v10

    const/16 v5, 0x11

    if-ne v3, v5, :cond_8e

    .line 1281
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 1283
    :cond_8e
    aget-byte v3, v1, v10

    const/16 v5, 0x41

    if-ne v3, v5, :cond_f6

    .line 1284
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->ShowRadarUI:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    const/16 v5, 0xc

    aget-byte v6, v1, v5

    if-ne v6, v10, :cond_8f

    move v6, v10

    goto :goto_27

    :cond_8f
    move v6, v4

    :goto_27
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1285
    aget-byte v3, v1, v5

    if-ne v3, v10, :cond_90

    move v4, v10

    :cond_90
    sput-boolean v4, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->isShowRadarForHw:Z

    if-eqz v4, :cond_f6

    .line 1287
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 1272
    :pswitch_28
    aget-byte v3, v1, v10

    if-eq v3, v8, :cond_91

    aget-byte v3, v1, v10

    if-ne v3, v11, :cond_92

    .line 1273
    :cond_91
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1275
    :cond_92
    aget-byte v3, v1, v10

    const/16 v4, 0x29

    if-ne v3, v4, :cond_f6

    .line 1276
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 1259
    :pswitch_29
    aget-byte v3, v1, v10

    const/16 v4, 0x11

    if-ne v3, v4, :cond_93

    .line 1261
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->ShowRadarUI:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    aget-byte v4, v1, v13

    invoke-static {v4}, Lcom/hzbhd/midwareproxy/utils/DataHandleUtils;->getBoolBit5(I)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1262
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1264
    :cond_93
    aget-byte v3, v1, v10

    const/16 v4, 0x41

    if-ne v3, v4, :cond_f6

    .line 1265
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 1251
    :pswitch_2a
    aget v4, v3, v10

    const/16 v5, 0x11

    if-ne v4, v5, :cond_94

    .line 1252
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 1253
    :cond_94
    aget v3, v3, v10

    const/16 v4, 0x41

    if-ne v3, v4, :cond_f6

    .line 1254
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 1245
    :pswitch_2b
    aget-byte v3, v1, v10

    if-ne v3, v8, :cond_f6

    .line 1246
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 1238
    :pswitch_2c
    aget v4, v3, v10

    if-eq v4, v8, :cond_96

    aget v4, v3, v10

    if-ne v4, v11, :cond_95

    goto :goto_28

    .line 1240
    :cond_95
    aget v3, v3, v10

    const/16 v4, 0x30

    if-ne v3, v4, :cond_f6

    .line 1241
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 1239
    :cond_96
    :goto_28
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 1230
    :pswitch_2d
    aget v4, v3, v10

    const/16 v5, 0x32

    if-eq v4, v5, :cond_98

    aget v4, v3, v10

    const/16 v5, 0x33

    if-ne v4, v5, :cond_97

    goto :goto_29

    .line 1232
    :cond_97
    aget v3, v3, v10

    const/16 v4, 0x31

    if-ne v3, v4, :cond_f6

    .line 1233
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 1231
    :cond_98
    :goto_29
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 1225
    :pswitch_2e
    aget v3, v3, v10

    if-ne v3, v14, :cond_f6

    .line 1226
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 1211
    :pswitch_2f
    aget-byte v3, v1, v10

    if-ne v3, v15, :cond_99

    .line 1212
    aget-byte v3, v1, v13

    invoke-static {v3, v7}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntByteWithBit(BI)Z

    move-result v3

    sput-boolean v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->isRearRadarOpen:Z

    :cond_99
    const-string v3, "HONDA_ACCORD_BINARY"

    .line 1214
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UIshowManager UIshowManager.getInstance().isRearRadarOpen="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->getInstance()Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;

    sget-boolean v5, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->isRearRadarOpen:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    aget-byte v3, v1, v10

    if-eq v3, v8, :cond_9c

    aget-byte v3, v1, v10

    if-ne v3, v15, :cond_9a

    goto :goto_2a

    .line 1217
    :cond_9a
    aget-byte v3, v1, v10

    if-ne v3, v11, :cond_9b

    .line 1218
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 1219
    :cond_9b
    aget-byte v3, v1, v10

    const/16 v4, 0x29

    if-ne v3, v4, :cond_f6

    .line 1220
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 1216
    :cond_9c
    :goto_2a
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 1200
    :pswitch_30
    aget v4, v3, v10

    const/16 v5, 0x72

    if-ne v4, v5, :cond_f6

    .line 1201
    aget v4, v3, v13

    const/4 v5, 0x5

    invoke-static {v4, v5, v10}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getBooleanFromByteWithBit(III)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    sput-boolean v4, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->isShowRadar:Z

    .line 1202
    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->ShowRadarUI:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    aget v3, v3, v13

    invoke-static {v3, v5, v10}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getBooleanFromByteWithBit(III)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1203
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1204
    sget-boolean v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->isShowRadar:Z

    if-eqz v3, :cond_f6

    .line 1205
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 1192
    :pswitch_31
    aget v3, v3, v10

    if-ne v3, v7, :cond_9d

    .line 1193
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 1194
    :cond_9d
    aget-byte v3, v1, v10

    const/16 v4, 0x26

    if-ne v3, v4, :cond_f6

    .line 1195
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 1184
    :pswitch_32
    aget v4, v3, v10

    const/16 v5, 0x1e

    if-eq v4, v5, :cond_9f

    aget v3, v3, v10

    const/16 v4, 0x1d

    if-ne v3, v4, :cond_9e

    goto :goto_2b

    .line 1186
    :cond_9e
    aget-byte v3, v1, v10

    const/16 v4, 0x29

    if-ne v3, v4, :cond_f6

    .line 1187
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 1185
    :cond_9f
    :goto_2b
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 1176
    :pswitch_33
    aget-byte v3, v1, v10

    if-ne v3, v8, :cond_a0

    .line 1177
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 1178
    :cond_a0
    aget-byte v3, v1, v10

    const/16 v4, 0x29

    if-ne v3, v4, :cond_f6

    .line 1179
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 1167
    :pswitch_34
    aget-byte v3, v1, v10

    if-eq v3, v8, :cond_a2

    aget-byte v3, v1, v10

    if-ne v3, v11, :cond_a1

    goto :goto_2c

    .line 1170
    :cond_a1
    aget-byte v3, v1, v10

    const/16 v4, 0x29

    if-ne v3, v4, :cond_f6

    .line 1171
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 1169
    :cond_a2
    :goto_2c
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 1152
    :pswitch_35
    aget v4, v3, v10

    const/16 v5, 0x72

    if-ne v4, v5, :cond_a4

    .line 1153
    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->ShowRadarUI:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    aget v5, v3, v13

    const/4 v6, 0x5

    invoke-static {v5, v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntByteWithBit(II)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1154
    aget v4, v3, v13

    invoke-static {v4, v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntByteWithBit(II)Z

    move-result v4

    sput-boolean v4, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->isShowRadarForHw:Z

    if-eqz v4, :cond_a3

    .line 1156
    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1158
    :cond_a3
    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1160
    :cond_a4
    sget-boolean v4, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->isShowRadarForHw:Z

    if-eqz v4, :cond_a5

    aget v3, v3, v10

    const/16 v4, 0x42

    if-ne v3, v4, :cond_a5

    .line 1162
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a5
    return-object v2

    .line 1139
    :pswitch_36
    invoke-direct/range {p0 .. p0}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->getCurrentCarId()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_a7

    .line 1140
    aget-byte v3, v1, v10

    if-eq v3, v15, :cond_a6

    aget-byte v3, v1, v10

    const/16 v4, 0x26

    if-ne v3, v4, :cond_a7

    .line 1141
    :cond_a6
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1144
    :cond_a7
    aget-byte v3, v1, v10

    const/16 v4, 0x30

    if-ne v3, v4, :cond_f6

    .line 1145
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 1128
    :pswitch_37
    aget-byte v3, v1, v10

    if-eq v3, v8, :cond_a9

    aget-byte v3, v1, v10

    if-eq v3, v11, :cond_a9

    aget-byte v3, v1, v10

    if-eq v3, v12, :cond_a9

    aget-byte v3, v1, v10

    if-ne v3, v15, :cond_a8

    goto :goto_2d

    .line 1133
    :cond_a8
    aget-byte v3, v1, v10

    const/16 v4, 0x30

    if-ne v3, v4, :cond_f6

    .line 1134
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 1132
    :cond_a9
    :goto_2d
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 1118
    :pswitch_38
    aget-byte v3, v1, v10

    const/4 v5, 0x5

    if-ne v3, v5, :cond_f6

    .line 1119
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "RADAR_DISP_CHECK"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v10, :cond_aa

    .line 1120
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1122
    :cond_aa
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 1113
    :pswitch_39
    aget-byte v3, v1, v10

    const/16 v4, 0x29

    if-ne v3, v4, :cond_f6

    .line 1114
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 1104
    :pswitch_3a
    aget-byte v3, v1, v10

    if-eq v3, v8, :cond_ab

    aget-byte v3, v1, v10

    if-ne v3, v11, :cond_ac

    .line 1105
    :cond_ab
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1107
    :cond_ac
    aget-byte v3, v1, v10

    const/16 v4, 0x29

    if-ne v3, v4, :cond_f6

    .line 1108
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 1095
    :pswitch_3b
    aget-byte v3, v1, v10

    const/16 v4, 0x29

    if-ne v3, v4, :cond_ad

    .line 1096
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1099
    :cond_ad
    aget-byte v3, v1, v10

    const/16 v4, 0x1e

    if-eq v3, v4, :cond_ae

    aget-byte v3, v1, v10

    const/16 v4, 0x1d

    if-ne v3, v4, :cond_f6

    .line 1100
    :cond_ae
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 1079
    :pswitch_3c
    aget-byte v3, v1, v10

    if-eq v3, v8, :cond_af

    aget-byte v3, v1, v10

    if-ne v3, v11, :cond_b0

    .line 1080
    :cond_af
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1082
    :cond_b0
    aget-byte v3, v1, v10

    const/16 v4, 0x29

    if-ne v3, v4, :cond_f6

    .line 1083
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 1067
    :pswitch_3d
    aget-byte v3, v1, v10

    const/16 v4, 0x11

    if-ne v3, v4, :cond_b1

    .line 1068
    aget-byte v3, v1, v13

    invoke-static {v3, v9, v10}, Lcom/hzbhd/midwareproxy/utils/DataHandleUtils;->getIntFromByteWithBit(III)I

    move-result v3

    .line 1069
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "Haval_H6_Coupe_Hiworld_Radar_On"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1070
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1072
    :cond_b1
    aget-byte v3, v1, v10

    const/16 v4, 0x41

    if-eq v3, v4, :cond_b2

    aget-byte v3, v1, v10

    const/16 v4, 0x42

    if-ne v3, v4, :cond_f6

    .line 1073
    :cond_b2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "Haval_H6_Coupe_Hiworld_Radar_On"

    invoke-static {v3, v4, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 1075
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 1062
    :pswitch_3e
    aget-byte v3, v1, v10

    const/16 v4, 0x29

    if-ne v3, v4, :cond_f6

    .line 1063
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 1048
    :pswitch_3f
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "Chery_Vehicle_type_config"

    const/16 v6, 0x12

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 1050
    aget-byte v3, v1, v10

    const/16 v5, 0x11

    if-ne v3, v5, :cond_b3

    .line 1051
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1054
    :cond_b3
    aget-byte v3, v1, v10

    const/16 v5, 0x41

    if-ne v3, v5, :cond_f6

    .line 1055
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->ShowRadarUI:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    const/16 v5, 0xc

    aget-byte v5, v1, v5

    if-ne v5, v10, :cond_b4

    move v4, v10

    :cond_b4
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1056
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 1043
    :pswitch_40
    aget-byte v3, v1, v10

    const/16 v4, 0x26

    if-ne v3, v4, :cond_f6

    .line 1044
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 1038
    :pswitch_41
    aget-byte v3, v1, v10

    const/16 v4, 0x29

    if-ne v3, v4, :cond_f6

    .line 1039
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 1027
    :pswitch_42
    aget-byte v3, v1, v10

    if-ne v3, v8, :cond_b5

    .line 1028
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RearRadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    :cond_b5
    aget-byte v3, v1, v10

    if-ne v3, v11, :cond_b6

    .line 1031
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->FrontRadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1033
    :cond_b6
    aget-byte v3, v1, v10

    const/16 v4, 0x29

    if-ne v3, v4, :cond_f6

    .line 1034
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 1017
    :pswitch_43
    aget-byte v3, v1, v10

    const/4 v4, 0x5

    if-ne v3, v4, :cond_f6

    .line 1018
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 1003
    :pswitch_44
    aget-byte v3, v1, v4

    const/16 v4, 0x55

    if-ne v3, v4, :cond_b9

    .line 1004
    aget-byte v3, v1, v10

    const/16 v4, 0x29

    if-ne v3, v4, :cond_b7

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2e

    .line 1005
    :cond_b7
    aget-byte v3, v1, v10

    const/16 v4, 0x1d

    if-eq v3, v4, :cond_b8

    aget-byte v3, v1, v10

    const/16 v4, 0x1e

    if-ne v3, v4, :cond_b9

    :cond_b8
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RearRadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    .line 1006
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1010
    :cond_b9
    :goto_2e
    :pswitch_45
    aget-byte v3, v1, v10

    const/16 v4, 0x32

    if-ne v3, v4, :cond_ba

    .line 1011
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 1012
    :cond_ba
    aget-byte v3, v1, v10

    const/16 v4, 0x29

    if-ne v3, v4, :cond_f6

    .line 1013
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 990
    :pswitch_46
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v3

    sget-object v5, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->CAN_DIFFERENT_ID:Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;

    invoke-virtual {v5}, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getSharedInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v10, :cond_bc

    .line 991
    aget-byte v3, v1, v10

    const/16 v4, 0x41

    if-ne v3, v4, :cond_bb

    .line 992
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 993
    :cond_bb
    aget-byte v3, v1, v10

    const/16 v4, 0x11

    if-ne v3, v4, :cond_f6

    .line 994
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 998
    :cond_bc
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->ShowRadarUI:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 976
    :pswitch_47
    aget-byte v3, v1, v10

    const/16 v5, 0x32

    if-ne v3, v5, :cond_be

    .line 977
    aget-byte v3, v1, v13

    if-ne v3, v13, :cond_bd

    .line 979
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->ShowRadarUI:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2f

    .line 982
    :cond_bd
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->ShowRadarUI:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    :cond_be
    :goto_2f
    aget-byte v3, v1, v10

    const/16 v4, 0x29

    if-ne v3, v4, :cond_f6

    .line 986
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 966
    :pswitch_48
    aget-byte v3, v1, v10

    const/16 v4, 0x41

    if-ne v3, v4, :cond_bf

    .line 967
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    :cond_bf
    aget-byte v3, v1, v10

    const/16 v4, 0x11

    if-ne v3, v4, :cond_f6

    .line 970
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->ShowRadarUI:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    aget-byte v1, v1, v13

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/utils/DataHandleUtils;->getBoolBit5(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 963
    :pswitch_49
    aget-byte v3, v1, v10

    const/16 v4, 0x41

    if-ne v3, v4, :cond_f6

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 958
    :pswitch_4a
    aget-byte v3, v1, v10

    const/16 v4, 0x41

    if-ne v3, v4, :cond_c0

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 959
    :cond_c0
    aget-byte v3, v1, v10

    const/16 v4, 0x72

    if-ne v3, v4, :cond_f6

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    :pswitch_4b
    const/16 v3, 0xc

    .line 951
    aget-byte v3, v1, v3

    if-ne v3, v10, :cond_c1

    .line 952
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->ShowRadarUI:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 953
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 955
    :cond_c1
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->ShowRadarUI:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 938
    :pswitch_4c
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "RADAR_DISP_CHECK"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v10, :cond_c2

    move v4, v10

    :cond_c2
    sput-boolean v4, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->isShowRadar:Z

    .line 939
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->ShowRadarUI:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    sget-boolean v4, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->isShowRadar:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 940
    aget-byte v3, v1, v10

    const/16 v4, 0x41

    if-eq v3, v4, :cond_c4

    aget-byte v3, v1, v10

    const/16 v4, 0x42

    if-ne v3, v4, :cond_c3

    goto :goto_30

    .line 945
    :cond_c3
    aget-byte v3, v1, v10

    const/16 v4, 0x11

    if-ne v3, v4, :cond_f6

    .line 946
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 942
    :cond_c4
    :goto_30
    sget-boolean v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->isShowRadar:Z

    if-eqz v3, :cond_f6

    .line 943
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 921
    :pswitch_4d
    aget-byte v3, v1, v10

    const/16 v5, 0x1a

    if-ne v3, v5, :cond_c5

    .line 922
    aget-byte v3, v1, v13

    invoke-static {v3}, Lcom/hzbhd/midwareproxy/utils/DataHandleUtils;->getBoolBit4(I)Z

    move-result v3

    sput-boolean v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->isShowTrackForHw:Z

    if-eqz v3, :cond_f6

    .line 924
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 926
    :cond_c5
    aget-byte v3, v1, v10

    const/16 v5, 0x41

    if-ne v3, v5, :cond_f6

    const/16 v3, 0xc

    .line 927
    aget-byte v3, v1, v3

    if-ne v3, v10, :cond_c6

    move v4, v10

    :cond_c6
    sput-boolean v4, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->isShowRadarForHw:Z

    .line 928
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->ShowRadarUI:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    sget-boolean v4, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->isShowRadarForHw:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    sget-boolean v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->isShowRadarForHw:Z

    if-eqz v3, :cond_f6

    .line 930
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v3

    sget-object v4, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->CAN_DIFFERENT_ID:Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;

    invoke-virtual {v4}, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getSharedInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v10, :cond_f6

    .line 931
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 910
    :pswitch_4e
    aget-byte v3, v1, v10

    const/16 v4, 0x11

    if-ne v3, v4, :cond_c7

    .line 911
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->ShowRadarUI:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    aget-byte v4, v1, v13

    invoke-static {v4}, Lcom/hzbhd/midwareproxy/utils/DataHandleUtils;->getBoolBit5(I)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 912
    aget-byte v3, v1, v13

    invoke-static {v3}, Lcom/hzbhd/midwareproxy/utils/DataHandleUtils;->getBoolBit5(I)Z

    move-result v3

    sput-boolean v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->isShowRadarForHw:Z

    .line 913
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 915
    :cond_c7
    sget-boolean v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->isShowRadarForHw:Z

    if-eqz v3, :cond_f6

    aget-byte v3, v1, v10

    const/16 v4, 0x41

    if-eq v3, v4, :cond_c8

    aget-byte v3, v1, v10

    const/16 v4, 0x42

    if-ne v3, v4, :cond_f6

    .line 916
    :cond_c8
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 899
    :pswitch_4f
    aget-byte v3, v1, v10

    const/16 v4, 0x11

    if-ne v3, v4, :cond_c9

    .line 900
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v3

    sget-object v4, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->CAN_DIFFERENT_ID:Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;

    invoke-virtual {v4}, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getSharedInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_f6

    .line 901
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 903
    :cond_c9
    aget-byte v3, v1, v10

    const/16 v4, 0x41

    if-ne v3, v4, :cond_f6

    .line 904
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->ShowRadarUI:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 889
    :pswitch_50
    aget-byte v3, v1, v10

    if-ne v3, v12, :cond_ca

    .line 890
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->ShowRadarUI:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 893
    :cond_ca
    aget-byte v3, v1, v10

    const/16 v4, 0x30

    if-ne v3, v4, :cond_f6

    .line 894
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 880
    :pswitch_51
    aget-byte v3, v1, v10

    const/16 v4, 0x29

    if-ne v3, v4, :cond_cb

    .line 881
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 883
    :cond_cb
    aget-byte v3, v1, v10

    if-eq v3, v11, :cond_cc

    aget-byte v3, v1, v10

    if-ne v3, v8, :cond_f6

    .line 884
    :cond_cc
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 885
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->ShowRadarUI:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 875
    :pswitch_52
    aget-byte v3, v1, v10

    const/16 v4, 0x29

    if-ne v3, v4, :cond_f6

    .line 876
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 863
    :pswitch_53
    aget-byte v3, v1, v10

    const/16 v5, 0x11

    if-ne v3, v5, :cond_cd

    .line 864
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 866
    :cond_cd
    aget-byte v3, v1, v10

    const/16 v5, 0x41

    if-ne v3, v5, :cond_f6

    .line 867
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->ShowRadarUI:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    const/16 v5, 0xc

    aget-byte v6, v1, v5

    if-ne v6, v10, :cond_ce

    move v6, v10

    goto :goto_31

    :cond_ce
    move v6, v4

    :goto_31
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 868
    aget-byte v3, v1, v5

    if-ne v3, v10, :cond_cf

    move v4, v10

    :cond_cf
    sput-boolean v4, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->isShowRadarForHw:Z

    if-eqz v4, :cond_f6

    .line 870
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 852
    :pswitch_54
    aget-byte v3, v1, v10

    const/16 v5, 0x11

    if-ne v3, v5, :cond_d0

    .line 853
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    :cond_d0
    aget-byte v3, v1, v10

    const/16 v5, 0x41

    if-ne v3, v5, :cond_f6

    .line 856
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->ShowRadarUI:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    const/16 v5, 0xc

    aget-byte v6, v1, v5

    if-ne v6, v10, :cond_d1

    move v4, v10

    :cond_d1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 857
    aget-byte v3, v1, v5

    if-ne v3, v10, :cond_f6

    .line 858
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 843
    :pswitch_55
    aget-byte v3, v1, v10

    const/16 v4, 0x41

    if-ne v3, v4, :cond_d2

    .line 844
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 846
    :cond_d2
    aget-byte v3, v1, v10

    const/16 v4, 0x11

    if-ne v3, v4, :cond_f6

    .line 847
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 827
    :pswitch_56
    aget-byte v3, v1, v10

    const/16 v5, 0x41

    if-ne v3, v5, :cond_d4

    .line 828
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->ShowRadarUI:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    const/16 v5, 0xc

    aget-byte v6, v1, v5

    and-int/lit16 v6, v6, 0xff

    if-ne v6, v10, :cond_d3

    move v4, v10

    :cond_d3
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 829
    aget-byte v3, v1, v5

    and-int/lit16 v3, v3, 0xff

    if-ne v3, v10, :cond_d4

    .line 830
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    :cond_d4
    aget-byte v3, v1, v10

    const/16 v4, 0x11

    if-ne v3, v4, :cond_f6

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 814
    :pswitch_57
    aget-byte v3, v1, v10

    if-ne v3, v15, :cond_d6

    .line 815
    aget-byte v3, v1, v13

    and-int/2addr v3, v13

    if-eqz v3, :cond_d5

    move v4, v10

    :cond_d5
    sput-boolean v4, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->isShowRadarForHw:Z

    .line 816
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->ShowRadarUI:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    sget-boolean v4, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->isShowRadarForHw:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    :cond_d6
    sget-boolean v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->isShowRadarForHw:Z

    if-eqz v3, :cond_d7

    aget-byte v3, v1, v10

    if-ne v3, v8, :cond_d7

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    :cond_d7
    aget-byte v3, v1, v10

    const/16 v4, 0x29

    if-ne v3, v4, :cond_f6

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 808
    :pswitch_58
    aget-byte v3, v1, v10

    const/4 v5, 0x4

    if-ne v3, v5, :cond_f6

    .line 809
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->ShowRadarUI:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    aget-byte v1, v1, v13

    invoke-static {v1, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntByteWithBit(BI)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 805
    :pswitch_59
    aget-byte v3, v1, v10

    const/16 v4, 0x41

    if-ne v3, v4, :cond_f6

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 801
    :pswitch_5a
    aget-byte v3, v1, v10

    const/16 v4, 0x32

    if-ne v3, v4, :cond_d8

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    :cond_d8
    aget-byte v3, v1, v10

    const/16 v4, 0x29

    if-ne v3, v4, :cond_f6

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 797
    :pswitch_5b
    aget-byte v3, v1, v10

    if-nez v3, :cond_f6

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 792
    :pswitch_5c
    aget-byte v3, v1, v10

    const/16 v4, 0x29

    if-ne v3, v4, :cond_f6

    .line 793
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 784
    :pswitch_5d
    aget-byte v3, v1, v10

    const/16 v4, 0x72

    if-ne v3, v4, :cond_f6

    .line 786
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->ShowRadarUI:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    aget-byte v4, v1, v13

    const/4 v5, 0x5

    invoke-static {v4, v5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntByteWithBit(BI)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 788
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 779
    :pswitch_5e
    aget-byte v3, v1, v10

    const/16 v4, 0x72

    if-ne v3, v4, :cond_f6

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 735
    :pswitch_5f
    aget-byte v3, v1, v10

    if-eq v3, v8, :cond_d9

    aget-byte v3, v1, v10

    if-ne v3, v11, :cond_de

    .line 736
    :cond_d9
    aget-byte v3, v1, v10

    if-ne v3, v8, :cond_da

    .line 737
    aget-byte v3, v1, v9

    invoke-static {v3}, Lcom/hzbhd/midwareproxy/utils/DataHandleUtils;->getBoolBit7(I)Z

    move-result v3

    sput-boolean v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->isRearRadarOpen:Z

    .line 739
    :cond_da
    aget-byte v3, v1, v10

    if-ne v3, v11, :cond_db

    .line 740
    aget-byte v3, v1, v9

    invoke-static {v3}, Lcom/hzbhd/midwareproxy/utils/DataHandleUtils;->getBoolBit7(I)Z

    move-result v3

    sput-boolean v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->isFrontRadarOpen:Z

    .line 742
    :cond_db
    sget-boolean v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->isRearRadarOpen:Z

    if-nez v3, :cond_dd

    sget-boolean v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->isFrontRadarOpen:Z

    if-eqz v3, :cond_dc

    goto :goto_32

    :cond_dc
    move v3, v4

    goto :goto_33

    :cond_dd
    :goto_32
    move v3, v10

    .line 743
    :goto_33
    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->ShowRadarUI:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v3, :cond_de

    .line 745
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    :cond_de
    :pswitch_60
    aget-byte v3, v1, v10

    const/16 v5, 0x9

    if-ne v3, v5, :cond_df

    .line 754
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_34

    .line 755
    :cond_df
    aget-byte v3, v1, v10

    if-ne v3, v8, :cond_e1

    .line 756
    aget-byte v3, v1, v9

    invoke-static {v3}, Lcom/hzbhd/midwareproxy/utils/DataHandleUtils;->getBoolBit7(I)Z

    move-result v3

    sput-boolean v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->isRearRadarOpen:Z

    if-eqz v3, :cond_e0

    .line 758
    array-length v3, v1

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->rearRadarInfo:[B

    goto :goto_34

    .line 760
    :cond_e0
    array-length v1, v1

    new-array v1, v1, [B

    iput-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->rearRadarInfo:[B

    .line 761
    aput-byte v8, v1, v10

    goto :goto_34

    .line 763
    :cond_e1
    aget-byte v3, v1, v10

    if-ne v3, v11, :cond_e3

    .line 764
    aget-byte v3, v1, v9

    invoke-static {v3}, Lcom/hzbhd/midwareproxy/utils/DataHandleUtils;->getBoolBit7(I)Z

    move-result v3

    sput-boolean v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->isFrontRadarOpen:Z

    if-eqz v3, :cond_e2

    .line 766
    array-length v3, v1

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->frontRadarInfo:[B

    goto :goto_34

    .line 768
    :cond_e2
    array-length v1, v1

    new-array v1, v1, [B

    iput-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->frontRadarInfo:[B

    .line 769
    aput-byte v11, v1, v10

    .line 772
    :cond_e3
    :goto_34
    sget-boolean v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->isRearRadarOpen:Z

    if-nez v1, :cond_e4

    sget-boolean v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->isFrontRadarOpen:Z

    if-eqz v1, :cond_e5

    :cond_e4
    move v4, v10

    :cond_e5
    sput-boolean v4, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->isShowRadar:Z

    .line 773
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->ShowRadarUI:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    sget-boolean v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->isShowRadar:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    iget-object v3, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->rearRadarInfo:[B

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->FrontRadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    iget-object v3, v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->frontRadarInfo:[B

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 718
    :pswitch_61
    aget-byte v3, v1, v10

    const/4 v5, 0x4

    if-eq v3, v5, :cond_e7

    aget-byte v3, v1, v10

    const/4 v5, 0x5

    if-ne v3, v5, :cond_e6

    goto :goto_35

    .line 730
    :cond_e6
    aget-byte v3, v1, v10

    const/16 v4, 0xa

    if-ne v3, v4, :cond_f6

    .line 731
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 719
    :cond_e7
    :goto_35
    aget-byte v3, v1, v10

    const/4 v5, 0x4

    if-ne v3, v5, :cond_e9

    .line 720
    aget-byte v3, v1, v13

    if-ne v3, v10, :cond_e8

    move v3, v10

    goto :goto_36

    :cond_e8
    move v3, v4

    :goto_36
    sput-boolean v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->isRearRadarOpen:Z

    .line 722
    :cond_e9
    aget-byte v3, v1, v10

    const/4 v5, 0x5

    if-ne v3, v5, :cond_eb

    .line 723
    aget-byte v3, v1, v13

    if-ne v3, v10, :cond_ea

    move v3, v10

    goto :goto_37

    :cond_ea
    move v3, v4

    :goto_37
    sput-boolean v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->isFrontRadarOpen:Z

    .line 725
    :cond_eb
    sget-boolean v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->isRearRadarOpen:Z

    if-nez v3, :cond_ec

    sget-boolean v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;->isFrontRadarOpen:Z

    if-eqz v3, :cond_ed

    :cond_ec
    move v4, v10

    .line 726
    :cond_ed
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->ShowRadarUI:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v4, :cond_f6

    .line 728
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 712
    :pswitch_62
    aget-byte v3, v1, v10

    if-eq v3, v8, :cond_ef

    aget-byte v3, v1, v10

    if-ne v3, v11, :cond_ee

    goto :goto_38

    .line 713
    :cond_ee
    aget-byte v3, v1, v10

    const/16 v4, 0x29

    if-ne v3, v4, :cond_f6

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 712
    :cond_ef
    :goto_38
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3a

    .line 708
    :pswitch_63
    aget-byte v3, v1, v10

    const/16 v4, 0x29

    if-ne v3, v4, :cond_f6

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3a

    .line 705
    :pswitch_64
    aget-byte v3, v1, v10

    if-eq v3, v8, :cond_f0

    aget-byte v3, v1, v10

    if-ne v3, v11, :cond_f6

    :cond_f0
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3a

    .line 701
    :pswitch_65
    aget-byte v3, v1, v10

    const/16 v4, 0x29

    if-ne v3, v4, :cond_f6

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3a

    .line 696
    :pswitch_66
    aget-byte v3, v1, v10

    const/16 v4, 0x29

    if-ne v3, v4, :cond_f1

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3a

    .line 697
    :cond_f1
    aget-byte v3, v1, v10

    if-ne v3, v11, :cond_f2

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->FrontRadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3a

    .line 698
    :cond_f2
    aget-byte v3, v1, v10

    if-ne v3, v8, :cond_f6

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RearRadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3a

    .line 1389
    :cond_f3
    aget-byte v3, v1, v4

    if-eq v3, v13, :cond_f5

    aget-byte v3, v1, v4

    if-ne v3, v7, :cond_f4

    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isCanbusCmdPorting(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_f4

    goto :goto_39

    .line 1391
    :cond_f4
    aget-byte v3, v1, v4

    const/4 v4, 0x7

    if-ne v3, v4, :cond_f6

    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isCanbusCmdPorting(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_f6

    .line 1392
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3a

    .line 1390
    :cond_f5
    :goto_39
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :catch_0
    :cond_f6
    :goto_3a
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_18
        :pswitch_4
        :pswitch_4
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_16
        :pswitch_15
        :pswitch_15
        :pswitch_14
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x39
        :pswitch_66
        :pswitch_66
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_62
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_5f
        :pswitch_60
        :pswitch_60
        :pswitch_60
        :pswitch_60
        :pswitch_60
        :pswitch_5e
        :pswitch_5d
        :pswitch_5d
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_56
        :pswitch_56
        :pswitch_56
        :pswitch_56
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4c
        :pswitch_4b
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_47
        :pswitch_46
        :pswitch_44
        :pswitch_45
        :pswitch_43
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
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
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
    .end packed-switch
.end method
