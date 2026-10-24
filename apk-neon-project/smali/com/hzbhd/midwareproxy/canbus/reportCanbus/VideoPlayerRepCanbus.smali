.class public Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus;
.super Ljava/lang/Object;
.source "VideoPlayerRepCanbus.java"


# static fields
.field static mRadio:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus;


# instance fields
.field private CurrentAllMinute:B

.field private CurrentAllMinuteStr:Ljava/lang/String;

.field private CurrentHour:B

.field private CurrentHourStr:Ljava/lang/String;

.field private CurrentMinute:B

.field private CurrentMinuteStr:Ljava/lang/String;

.field private CurrentPlayingIndexHigh:B

.field private CurrentPlayingIndexLow:B

.field private CurrentPos:I

.field private CurrentSecond:B

.field private CurrentSecondStr:Ljava/lang/String;

.field private PlayRatio:B

.field private TotalCount:I

.field currentIndex:I

.field private isPlaying:Z

.field private mStoagePath:B

.field private playMode:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus;

    invoke-direct {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus;-><init>()V

    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus;->mRadio:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1072
    iput v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus;->currentIndex:I

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus;
    .locals 2

    const-class v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus;

    monitor-enter v0

    .line 37
    :try_start_0
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus;->mRadio:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus;

    if-nez v1, :cond_0

    .line 38
    new-instance v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus;

    invoke-direct {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus;-><init>()V

    sput-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus;->mRadio:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus;

    .line 40
    :cond_0
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus;->mRadio:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private hodaAccordgetDeviceStatus(Landroid/content/Context;)B
    .locals 5

    const/4 v0, 0x0

    .line 61
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "PhoneState"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    const/4 p1, 0x3

    if-eq v1, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    move v0, p1

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_0

    .line 63
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "btState"

    invoke-static {p1, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, v4, :cond_4

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception p1

    .line 81
    invoke-virtual {p1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    :cond_4
    :goto_0
    return v0
.end method

.method private sndVideoMidea(Landroid/content/Context;[B)V
    .locals 4

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "btState"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 45
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->VIDEO:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-eq v0, v1, :cond_0

    .line 46
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->BTPHONE:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-ne v0, v1, :cond_1

    .line 48
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "currentReport"

    const/4 v2, 0x0

    invoke-static {p2, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 50
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

    .line 53
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public destroy(Landroid/content/Context;)V
    .locals 3

    .line 1076
    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus$3;

    invoke-direct {v0, p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus$3;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus;)V

    invoke-static {p1, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface;->sendMsg(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface$CallBack;)V

    .line 1083
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

    .line 1084
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "btState"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 1085
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->VIDEO:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-eq v0, v1, :cond_1

    .line 1086
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->CAMERA:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-eq v0, v1, :cond_1

    .line 1087
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->BTPHONE:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-ne v0, v1, :cond_2

    .line 1088
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "currentReport"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1093
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public reportToCanBus(BLandroid/content/Context;BBIBBBLjava/lang/String;BBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IBZI)V
    .locals 43

    move-object/from16 v15, p0

    move/from16 v1, p1

    move-object/from16 v14, p2

    move/from16 v2, p3

    move/from16 v13, p4

    move/from16 v12, p5

    move/from16 v11, p6

    move/from16 v10, p7

    move/from16 v9, p8

    move-object/from16 v8, p9

    move/from16 v3, p10

    move/from16 v7, p11

    move-object/from16 v6, p12

    move-object/from16 v5, p13

    move-object/from16 v4, p14

    move/from16 v14, p15

    move/from16 v14, p16

    .line 96
    iput-byte v1, v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus;->mStoagePath:B

    .line 97
    iput-byte v2, v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus;->PlayRatio:B

    .line 98
    iput-byte v13, v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus;->CurrentPlayingIndexLow:B

    .line 99
    iput v12, v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus;->TotalCount:I

    .line 100
    iput-byte v11, v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus;->CurrentHour:B

    .line 101
    iput-byte v10, v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus;->CurrentMinute:B

    .line 102
    iput-byte v9, v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus;->CurrentSecond:B

    .line 103
    iput-byte v3, v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus;->CurrentPlayingIndexHigh:B

    .line 104
    iput-byte v7, v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus;->CurrentAllMinute:B

    .line 105
    iput-byte v14, v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus;->playMode:B

    .line 106
    iput-object v8, v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus;->CurrentAllMinuteStr:Ljava/lang/String;

    .line 107
    iput-object v6, v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus;->CurrentHourStr:Ljava/lang/String;

    .line 108
    iput-object v5, v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus;->CurrentMinuteStr:Ljava/lang/String;

    .line 109
    iput-object v4, v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus;->CurrentSecondStr:Ljava/lang/String;

    move v8, v14

    move/from16 v14, p15

    .line 110
    iput v14, v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus;->CurrentPos:I

    move/from16 v14, p17

    .line 111
    iput-boolean v14, v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus;->isPlaying:Z

    const-string v6, "LcdLog"

    const-string v7, "VideoPlayerRepCanbus|reportToCanBus"

    move-object/from16 v14, p2

    move/from16 v2, p15

    .line 112
    invoke-static {v14, v6, v7}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->WLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    and-int/lit16 v6, v12, 0xff

    int-to-byte v7, v6

    shr-int/lit8 v6, v12, 0x8

    const/16 v12, 0xff

    and-int/2addr v6, v12

    int-to-byte v6, v6

    .line 119
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getFactoryCanType()I

    move-result v12

    move/from16 v16, v12

    const/16 v12, 0x9

    if-ne v1, v12, :cond_0

    const/16 v20, 0x1

    goto :goto_0

    :cond_0
    const/16 v20, 0x0

    .line 121
    :goto_0
    invoke-static/range {p2 .. p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isCanbusCmdPorting(Landroid/content/Context;)Z

    move-result v19
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_8

    const/16 v22, -0x7e

    const/16 v23, 0xe

    const-string v12, ":"

    const/16 v28, -0x40

    if-eqz v19, :cond_1b

    .line 123
    :try_start_1
    sget-object v19, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus$4;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v38

    aget v19, v19, v38

    packed-switch v19, :pswitch_data_0

    move/from16 v13, p5

    move v2, v1

    move v1, v3

    move/from16 v38, v6

    move-object v11, v12

    move-object v4, v14

    const/16 v5, 0x8

    const/16 v8, 0xa

    const/4 v14, 0x1

    const/16 v17, 0xc

    const/16 v18, 0x16

    const/16 v19, 0x2

    const/16 v25, 0xf

    const/16 v26, 0x6

    const/16 v27, 0x3

    const/16 v30, 0x4

    const/16 v31, 0x7

    const/16 v32, 0x5

    const/16 v33, 0x0

    move/from16 v12, p17

    move/from16 v34, p3

    goto/16 :goto_16

    :pswitch_0
    const/16 v8, 0x8

    if-ne v1, v8, :cond_1

    move-object/from16 v17, v12

    const/16 v8, 0xa

    new-array v12, v8, [B

    const/16 v8, 0x16

    const/16 v26, 0x0

    aput-byte v8, v12, v26

    const/4 v8, 0x1

    aput-byte v28, v12, v8

    const/16 v8, 0x8

    const/16 v19, 0x2

    aput-byte v8, v12, v19

    const/16 v8, 0x13

    const/16 v24, 0x3

    aput-byte v8, v12, v24

    const/4 v8, 0x4

    aput-byte v13, v12, v8

    const/4 v8, 0x5

    aput-byte v3, v12, v8

    const/4 v8, 0x6

    aput-byte v7, v12, v8

    const/4 v8, 0x7

    aput-byte v6, v12, v8

    const/16 v8, 0x8

    aput-byte v10, v12, v8

    const/16 v8, 0x9

    aput-byte v9, v12, v8

    .line 376
    invoke-direct {v15, v14, v12}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus;->sndVideoMidea(Landroid/content/Context;[B)V

    goto/16 :goto_4

    :cond_1
    move/from16 v13, p5

    move v2, v1

    move v1, v3

    move/from16 v38, v6

    move v5, v8

    move-object v11, v12

    move-object v4, v14

    const/16 v8, 0xa

    const/4 v14, 0x1

    const/16 v17, 0xc

    const/16 v18, 0x16

    const/16 v19, 0x2

    const/16 v25, 0xf

    const/16 v26, 0x6

    const/16 v27, 0x3

    const/16 v30, 0x4

    const/16 v31, 0x7

    const/16 v32, 0x5

    const/16 v33, 0x0

    move/from16 v12, p17

    goto/16 :goto_15

    :pswitch_1
    move-object/from16 v17, v12

    if-eqz v20, :cond_2

    move/from16 v1, v23

    goto :goto_1

    :cond_2
    const/16 v1, 0x16

    .line 362
    :goto_1
    div-int/lit16 v8, v2, 0x3e8

    div-int/lit16 v8, v8, 0xe10

    const/16 v12, 0x9

    if-le v8, v12, :cond_3

    const/16 v8, 0x9

    .line 364
    :cond_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 365
    new-instance v12, Ljava/text/DecimalFormat;

    const-string v2, "0000"

    invoke-direct {v12, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    shl-int/lit8 v2, v3, 0x8

    or-int/2addr v2, v13

    int-to-long v4, v2

    .line 366
    invoke-virtual {v12, v4, v5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    .line 367
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "   "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    new-array v5, v4, [B

    const/16 v4, 0x16

    const/4 v8, 0x0

    aput-byte v4, v5, v8

    const/16 v4, -0x2e

    const/4 v8, 0x1

    aput-byte v4, v5, v8

    const/4 v4, 0x2

    aput-byte v1, v5, v4

    .line 369
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v5, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v2

    .line 370
    invoke-direct {v15, v14, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus;->sndVideoMidea(Landroid/content/Context;[B)V

    goto :goto_3

    :pswitch_2
    move-object/from16 v17, v12

    shl-int/lit8 v2, v3, 0x6

    or-int/2addr v2, v9

    int-to-byte v2, v2

    if-eqz v20, :cond_4

    const/16 v4, 0x9

    goto :goto_2

    :cond_4
    const/16 v4, 0x8

    :goto_2
    const/4 v5, 0x3

    if-le v3, v5, :cond_5

    const/4 v3, 0x3

    :cond_5
    const/4 v5, 0x7

    new-array v8, v5, [B

    const/16 v5, 0x16

    const/4 v12, 0x0

    aput-byte v5, v8, v12

    const/16 v5, -0x7c

    const/16 v18, 0x1

    aput-byte v5, v8, v18

    const/4 v5, 0x2

    aput-byte v4, v8, v5

    const/4 v4, 0x3

    aput-byte v12, v8, v4

    const/4 v4, 0x4

    aput-byte v13, v8, v4

    const/4 v4, 0x5

    aput-byte v2, v8, v4

    const/4 v2, 0x6

    aput-byte v10, v8, v2

    .line 344
    invoke-direct {v15, v14, v8}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus;->sndVideoMidea(Landroid/content/Context;[B)V

    :goto_3
    move/from16 v34, p3

    move/from16 v13, p5

    move/from16 v12, p17

    move/from16 v38, v6

    move-object v4, v14

    move-object/from16 v11, v17

    const/16 v5, 0x8

    const/16 v8, 0xa

    const/4 v14, 0x1

    const/16 v17, 0xc

    const/16 v18, 0x16

    const/16 v19, 0x2

    const/16 v25, 0xf

    const/16 v26, 0x6

    const/16 v27, 0x3

    const/16 v30, 0x4

    const/16 v31, 0x7

    const/16 v32, 0x5

    const/16 v33, 0x0

    const/16 v35, 0x1

    move v6, v1

    goto/16 :goto_17

    :pswitch_3
    move-object/from16 v17, v12

    if-nez v20, :cond_6

    .line 328
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->USB:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;

    const/16 v4, 0x13

    const/4 v5, 0x1

    const/4 v8, 0x0

    invoke-static {v14, v2, v4, v5, v8}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportSimpleMediaInfo(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;IZZ)V

    move/from16 v13, p5

    move/from16 v12, p17

    move v2, v1

    move v1, v3

    move/from16 v38, v6

    move/from16 v33, v8

    move-object v4, v14

    move-object/from16 v11, v17

    const/16 v5, 0x8

    const/16 v8, 0xa

    const/4 v14, 0x1

    const/16 v17, 0xc

    const/16 v18, 0x16

    const/16 v19, 0x2

    const/16 v25, 0xf

    const/16 v26, 0x6

    const/16 v27, 0x3

    const/16 v30, 0x4

    const/16 v31, 0x7

    const/16 v32, 0x5

    goto/16 :goto_15

    :cond_6
    :goto_4
    move/from16 v13, p5

    move/from16 v12, p17

    move v2, v1

    move v1, v3

    move/from16 v38, v6

    move-object v4, v14

    move-object/from16 v11, v17

    const/16 v5, 0x8

    const/16 v8, 0xa

    const/4 v14, 0x1

    const/16 v17, 0xc

    const/16 v18, 0x16

    const/16 v19, 0x2

    const/16 v25, 0xf

    goto/16 :goto_e

    :pswitch_4
    move-object/from16 v17, v12

    const/4 v8, 0x0

    if-eqz v20, :cond_7

    const/4 v2, 0x3

    new-array v4, v2, [B

    const/16 v2, 0x16

    aput-byte v2, v4, v8

    const/16 v5, 0x9

    const/4 v12, 0x1

    aput-byte v5, v4, v12

    const/16 v19, 0xc

    const/16 v27, 0x2

    aput-byte v19, v4, v27

    .line 317
    invoke-direct {v15, v14, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus;->sndVideoMidea(Landroid/content/Context;[B)V

    const/16 v4, 0x8

    new-array v5, v4, [B

    aput-byte v2, v5, v8

    const/16 v2, 0x9

    aput-byte v2, v5, v12

    aput-byte v19, v5, v27

    const/4 v2, 0x3

    aput-byte v3, v5, v2

    const/4 v2, 0x4

    aput-byte v13, v5, v2

    const/4 v2, 0x5

    aput-byte v11, v5, v2

    const/4 v2, 0x6

    aput-byte v10, v5, v2

    const/4 v2, 0x7

    aput-byte v9, v5, v2

    .line 318
    invoke-direct {v15, v14, v5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus;->sndVideoMidea(Landroid/content/Context;[B)V

    goto :goto_4

    :cond_7
    const/4 v2, 0x3

    new-array v4, v2, [B

    const/16 v2, 0x16

    const/4 v5, 0x0

    aput-byte v2, v4, v5

    const/16 v8, 0x9

    const/4 v12, 0x1

    aput-byte v8, v4, v12

    const/16 v19, 0xd

    const/16 v29, 0x2

    aput-byte v19, v4, v29

    .line 321
    invoke-direct {v15, v14, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus;->sndVideoMidea(Landroid/content/Context;[B)V

    const/16 v4, 0x8

    new-array v8, v4, [B

    aput-byte v2, v8, v5

    const/16 v2, 0x9

    aput-byte v2, v8, v12

    aput-byte v19, v8, v29

    const/4 v2, 0x3

    aput-byte v3, v8, v2

    const/4 v2, 0x4

    aput-byte v13, v8, v2

    const/4 v2, 0x5

    aput-byte v11, v8, v2

    const/4 v2, 0x6

    aput-byte v10, v8, v2

    const/4 v2, 0x7

    aput-byte v9, v8, v2

    .line 322
    invoke-direct {v15, v14, v8}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus;->sndVideoMidea(Landroid/content/Context;[B)V

    goto/16 :goto_4

    :pswitch_5
    move-object/from16 v17, v12

    if-eqz v20, :cond_8

    const/16 v2, 0xa

    new-array v4, v2, [B

    const/16 v2, 0x16

    const/4 v5, 0x0

    aput-byte v2, v4, v5

    const/4 v2, 0x1

    aput-byte v22, v4, v2

    const/16 v2, 0x9

    const/4 v5, 0x2

    aput-byte v2, v4, v5

    const/4 v2, 0x3

    aput-byte v5, v4, v2

    const/4 v2, 0x4

    aput-byte v13, v4, v2

    const/4 v2, 0x5

    aput-byte v3, v4, v2

    const/4 v2, 0x6

    aput-byte v7, v4, v2

    const/4 v2, 0x7

    aput-byte v6, v4, v2

    const/16 v2, 0x8

    aput-byte v10, v4, v2

    const/16 v2, 0x9

    aput-byte v9, v4, v2

    .line 305
    invoke-direct {v15, v14, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus;->sndVideoMidea(Landroid/content/Context;[B)V

    goto/16 :goto_4

    :cond_8
    const/16 v2, 0xa

    new-array v4, v2, [B

    const/16 v2, 0x16

    const/4 v5, 0x0

    aput-byte v2, v4, v5

    const/4 v2, 0x1

    aput-byte v22, v4, v2

    const/16 v2, 0x8

    const/4 v5, 0x2

    aput-byte v2, v4, v5

    const/4 v2, 0x3

    aput-byte v5, v4, v2

    const/4 v2, 0x4

    aput-byte v13, v4, v2

    const/4 v2, 0x5

    aput-byte v3, v4, v2

    const/4 v2, 0x6

    aput-byte v7, v4, v2

    const/4 v2, 0x7

    aput-byte v6, v4, v2

    const/16 v2, 0x8

    aput-byte v10, v4, v2

    const/16 v2, 0x9

    aput-byte v9, v4, v2

    .line 308
    invoke-direct {v15, v14, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus;->sndVideoMidea(Landroid/content/Context;[B)V

    goto/16 :goto_4

    :pswitch_6
    move-object/from16 v17, v12

    const/4 v2, 0x3

    new-array v4, v2, [B

    const/16 v2, 0x16

    const/4 v5, 0x0

    aput-byte v2, v4, v5

    const/4 v2, 0x1

    aput-byte v22, v4, v2

    const/4 v5, 0x4

    const/4 v8, 0x2

    aput-byte v5, v4, v8

    .line 256
    invoke-direct {v15, v14, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus;->sndVideoMidea(Landroid/content/Context;[B)V

    xor-int/lit8 v4, v20, 0x1

    const/4 v5, 0x7

    shl-int/2addr v4, v5

    move/from16 v8, p16

    move v12, v2

    if-eqz v8, :cond_9

    if-eq v8, v12, :cond_b

    const/4 v2, 0x2

    if-eq v8, v2, :cond_a

    :cond_9
    move/from16 v5, p15

    const/4 v2, 0x0

    goto :goto_5

    :cond_a
    move/from16 v5, p15

    const/4 v2, 0x2

    goto :goto_5

    :cond_b
    move/from16 v5, p15

    const/4 v2, 0x3

    :goto_5
    if-nez p3, :cond_c

    goto :goto_6

    :cond_c
    move/from16 v12, p3

    :goto_6
    const/16 v5, 0x64

    if-ne v12, v5, :cond_d

    const/4 v12, 0x0

    :cond_d
    and-int/lit16 v5, v3, 0xff

    const/16 v35, 0x8

    shl-int/lit8 v5, v5, 0x8

    and-int/lit16 v8, v13, 0xff

    or-int/2addr v5, v8

    const/4 v8, 0x3

    .line 280
    invoke-static {v5, v8}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getDecimalBit(II)I

    move-result v38

    const/4 v8, 0x4

    shl-int/lit8 v14, v38, 0x4

    and-int/lit16 v14, v14, 0xf0

    const/4 v8, 0x2

    invoke-static {v5, v8}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getDecimalBit(II)I

    move-result v38

    const/16 v25, 0xf

    and-int/lit8 v8, v38, 0xf

    or-int/2addr v8, v14

    const/4 v14, 0x1

    .line 282
    invoke-static {v5, v14}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getDecimalBit(II)I

    move-result v38

    const/4 v14, 0x4

    shl-int/lit8 v1, v38, 0x4

    and-int/lit16 v1, v1, 0xf0

    const/4 v14, 0x0

    invoke-static {v5, v14}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getDecimalBit(II)I

    move-result v5

    and-int/lit8 v5, v5, 0xf

    or-int/2addr v1, v5

    move/from16 v14, p5

    const/4 v5, 0x3

    .line 284
    invoke-static {v14, v5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getDecimalBit(II)I

    move-result v38

    const/4 v5, 0x4

    shl-int/lit8 v3, v38, 0x4

    and-int/lit16 v3, v3, 0xf0

    const/4 v5, 0x2

    invoke-static {v14, v5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getDecimalBit(II)I

    move-result v38

    and-int/lit8 v5, v38, 0xf

    or-int/2addr v3, v5

    const/4 v5, 0x1

    .line 286
    invoke-static {v14, v5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getDecimalBit(II)I

    move-result v38

    const/4 v5, 0x4

    shl-int/lit8 v13, v38, 0x4

    and-int/lit16 v13, v13, 0xf0

    const/4 v5, 0x0

    invoke-static {v14, v5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getDecimalBit(II)I

    move-result v38

    and-int/lit8 v5, v38, 0xf

    or-int/2addr v5, v13

    .line 288
    div-int/lit8 v13, v11, 0xa

    const/16 v36, 0x4

    shl-int/lit8 v13, v13, 0x4

    and-int/lit16 v13, v13, 0xf0

    rem-int/lit8 v38, v11, 0xa

    and-int/lit8 v38, v38, 0xf

    or-int v13, v13, v38

    .line 290
    div-int/lit8 v38, v10, 0xa

    shl-int/lit8 v11, v38, 0x4

    and-int/lit16 v11, v11, 0xf0

    rem-int/lit8 v38, v10, 0xa

    and-int/lit8 v38, v38, 0xf

    or-int v11, v11, v38

    .line 292
    div-int/lit8 v38, v9, 0xa

    shl-int/lit8 v14, v38, 0x4

    and-int/lit16 v14, v14, 0xf0

    rem-int/lit8 v38, v9, 0xa

    and-int/lit8 v38, v38, 0xf

    or-int v14, v14, v38

    .line 294
    div-int/lit8 v38, v12, 0xa

    shl-int/lit8 v9, v38, 0x4

    and-int/lit16 v9, v9, 0xf0

    rem-int/lit8 v38, v12, 0xa

    and-int/lit8 v38, v38, 0xf

    or-int v9, v9, v38

    move/from16 p3, v12

    const/16 v12, 0xd

    new-array v10, v12, [B

    const/16 v26, 0x16

    const/16 v29, 0x0

    aput-byte v26, v10, v29

    const/16 v29, -0x7b

    const/16 v18, 0x1

    aput-byte v29, v10, v18

    int-to-byte v4, v4

    const/16 v19, 0x2

    aput-byte v4, v10, v19

    move-object/from16 v4, p2

    move/from16 v12, p17

    move/from16 v38, v6

    int-to-byte v6, v12

    const/16 v37, 0x3

    aput-byte v6, v10, v37

    int-to-byte v2, v2

    const/4 v6, 0x4

    aput-byte v2, v10, v6

    int-to-byte v2, v8

    const/4 v6, 0x5

    aput-byte v2, v10, v6

    int-to-byte v1, v1

    const/4 v2, 0x6

    aput-byte v1, v10, v2

    int-to-byte v1, v3

    const/4 v2, 0x7

    aput-byte v1, v10, v2

    int-to-byte v1, v5

    const/16 v2, 0x8

    aput-byte v1, v10, v2

    int-to-byte v1, v13

    const/16 v2, 0x9

    aput-byte v1, v10, v2

    int-to-byte v1, v11

    const/16 v2, 0xa

    aput-byte v1, v10, v2

    int-to-byte v1, v14

    const/16 v2, 0xb

    aput-byte v1, v10, v2

    int-to-byte v1, v9

    const/16 v2, 0xc

    aput-byte v1, v10, v2

    .line 296
    invoke-direct {v15, v4, v10}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus;->sndVideoMidea(Landroid/content/Context;[B)V

    move/from16 v6, p1

    move/from16 v34, p3

    move/from16 v13, p5

    move/from16 v10, p7

    move/from16 v9, p8

    move/from16 v3, p10

    move-object/from16 v11, v17

    const/16 v5, 0x8

    const/16 v8, 0xa

    const/4 v14, 0x1

    const/16 v17, 0xc

    const/16 v18, 0x16

    const/16 v19, 0x2

    const/16 v26, 0x6

    const/16 v27, 0x3

    const/16 v30, 0x4

    const/16 v31, 0x7

    const/16 v32, 0x5

    const/16 v33, 0x0

    const/16 v35, 0x1

    goto/16 :goto_17

    :pswitch_7
    move/from16 v38, v6

    move-object/from16 v17, v12

    move-object v4, v14

    const/4 v1, 0x3

    const/16 v25, 0xf

    move/from16 v12, p17

    new-array v2, v1, [B

    const/16 v1, 0x16

    const/4 v3, 0x0

    aput-byte v1, v2, v3

    const/4 v1, 0x1

    aput-byte v22, v2, v1

    const/4 v1, 0x4

    const/4 v3, 0x2

    aput-byte v1, v2, v3

    .line 253
    invoke-direct {v15, v4, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus;->sndVideoMidea(Landroid/content/Context;[B)V

    goto :goto_7

    :pswitch_8
    move/from16 v38, v6

    move-object/from16 v17, v12

    move-object v4, v14

    const/4 v1, 0x3

    const/16 v25, 0xf

    move/from16 v12, p17

    new-array v2, v1, [B

    const/16 v1, 0x16

    const/4 v3, 0x0

    aput-byte v1, v2, v3

    const/16 v1, -0x7a

    const/4 v3, 0x1

    aput-byte v1, v2, v3

    const/4 v1, 0x4

    const/4 v3, 0x2

    aput-byte v1, v2, v3

    .line 249
    invoke-direct {v15, v4, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus;->sndVideoMidea(Landroid/content/Context;[B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_7
    move/from16 v2, p1

    move/from16 v13, p5

    move/from16 v10, p7

    move/from16 v9, p8

    move/from16 v1, p10

    goto/16 :goto_c

    :pswitch_9
    move/from16 v38, v6

    move-object/from16 v17, v12

    move-object v4, v14

    const/16 v25, 0xf

    move/from16 v12, p17

    .line 236
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "PhoneState"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_f

    .line 237
    invoke-direct {v15, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus;->hodaAccordgetDeviceStatus(Landroid/content/Context;)B

    move-result v1

    if-lez v1, :cond_e

    .line 238
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->getInstance()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;

    move-result-object v1

    invoke-direct {v15, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus;->hodaAccordgetDeviceStatus(Landroid/content/Context;)B

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v4, v3, v3, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->reportSimpleHondaAccordDeviceStatus(Landroid/content/Context;ZZB)V

    goto :goto_8

    .line 240
    :cond_e
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->getInstance()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v4, v2, v3, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->reportSimpleHondaAccordDeviceStatus(Landroid/content/Context;ZZB)V
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_8

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 244
    :try_start_3
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    :cond_f
    :goto_8
    const/16 v1, 0xa

    new-array v2, v1, [B

    const/16 v1, 0x16

    const/4 v3, 0x0

    aput-byte v1, v2, v3

    const/4 v1, 0x1

    aput-byte v28, v2, v1

    const/16 v1, 0x8

    const/4 v3, 0x2

    aput-byte v1, v2, v3

    const/16 v1, 0x11

    const/4 v3, 0x3

    aput-byte v1, v2, v3

    const/4 v1, 0x4

    aput-byte v7, v2, v1

    const/4 v1, 0x5

    aput-byte v38, v2, v1

    const/4 v1, 0x6

    aput-byte p4, v2, v1

    move/from16 v1, p10

    const/4 v3, 0x7

    aput-byte v1, v2, v3

    move/from16 v10, p7

    const/16 v3, 0x8

    aput-byte v10, v2, v3

    move/from16 v9, p8

    const/16 v3, 0x9

    aput-byte v9, v2, v3

    .line 246
    invoke-direct {v15, v4, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus;->sndVideoMidea(Landroid/content/Context;[B)V

    move/from16 v2, p1

    move/from16 v13, p5

    goto/16 :goto_c

    :pswitch_a
    move v1, v3

    move/from16 v38, v6

    move-object/from16 v17, v12

    move-object v4, v14

    const/16 v25, 0xf

    move/from16 v12, p17

    const/16 v2, 0x63

    move/from16 v13, p5

    if-lt v13, v2, :cond_10

    const/16 v2, 0x63

    goto :goto_9

    :cond_10
    int-to-byte v2, v13

    :goto_9
    const/4 v3, 0x4

    new-array v5, v3, [B

    const/16 v3, 0x16

    const/4 v6, 0x0

    aput-byte v3, v5, v6

    const/4 v3, 0x1

    aput-byte v28, v5, v3

    const/16 v3, 0x8

    const/4 v6, 0x2

    aput-byte v3, v5, v6

    const/4 v6, 0x3

    const/16 v14, 0x13

    aput-byte v14, v5, v6

    .line 230
    invoke-direct {v15, v4, v5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus;->sndVideoMidea(Landroid/content/Context;[B)V

    new-array v5, v3, [B

    const/16 v3, 0x16

    const/4 v6, 0x0

    aput-byte v3, v5, v6

    const/16 v3, -0x3d

    const/4 v8, 0x1

    aput-byte v3, v5, v8

    const/4 v3, 0x2

    aput-byte v2, v5, v3

    const/4 v2, 0x3

    aput-byte v6, v5, v2

    const/4 v2, 0x4

    aput-byte p4, v5, v2

    const/4 v2, 0x5

    aput-byte v1, v5, v2

    const/4 v2, 0x6

    aput-byte v10, v5, v2

    const/4 v2, 0x7

    aput-byte v9, v5, v2

    .line 231
    invoke-direct {v15, v4, v5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus;->sndVideoMidea(Landroid/content/Context;[B)V

    goto :goto_b

    :pswitch_b
    move/from16 v13, p5

    move v1, v3

    move/from16 v38, v6

    move-object/from16 v17, v12

    move-object v4, v14

    const/16 v14, 0x13

    const/16 v25, 0xf

    move/from16 v12, p17

    const/16 v2, 0x63

    if-lt v13, v2, :cond_11

    const/16 v2, 0x63

    goto :goto_a

    :cond_11
    int-to-byte v2, v13

    :goto_a
    const/4 v3, 0x4

    new-array v5, v3, [B

    const/16 v3, 0x16

    const/4 v6, 0x0

    aput-byte v3, v5, v6

    const/4 v3, 0x1

    aput-byte v28, v5, v3

    const/16 v3, 0x8

    const/4 v6, 0x2

    aput-byte v3, v5, v6

    const/16 v6, 0x11

    const/4 v8, 0x3

    aput-byte v6, v5, v8

    .line 220
    invoke-direct {v15, v4, v5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus;->sndVideoMidea(Landroid/content/Context;[B)V

    new-array v5, v3, [B

    const/16 v3, 0x16

    const/4 v6, 0x0

    aput-byte v3, v5, v6

    const/16 v3, -0x3d

    const/4 v8, 0x1

    aput-byte v3, v5, v8

    const/4 v3, 0x2

    aput-byte v2, v5, v3

    const/4 v2, 0x3

    aput-byte v6, v5, v2

    const/4 v2, 0x4

    aput-byte p4, v5, v2

    const/4 v2, 0x5

    aput-byte v1, v5, v2

    const/4 v2, 0x6

    aput-byte v10, v5, v2

    const/4 v2, 0x7

    aput-byte v9, v5, v2

    .line 221
    invoke-direct {v15, v4, v5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus;->sndVideoMidea(Landroid/content/Context;[B)V

    goto :goto_b

    :pswitch_c
    move/from16 v13, p5

    move v1, v3

    move/from16 v38, v6

    move-object/from16 v17, v12

    move-object v4, v14

    const/16 v14, 0x13

    const/16 v25, 0xf

    move/from16 v12, p17

    if-eqz v20, :cond_12

    .line 206
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_XINBAS_MEDIA_TYPE;->MID_SD:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_XINBAS_MEDIA_TYPE;

    const/4 v3, 0x1

    invoke-static {v4, v2, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportXinbasMediaInfo(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_XINBAS_MEDIA_TYPE;Z)V

    :goto_b
    move/from16 v2, p1

    goto :goto_c

    :cond_12
    const/16 v2, 0x21

    and-int/lit16 v3, v1, 0xc0

    int-to-byte v3, v3

    const/4 v5, 0x7

    new-array v6, v5, [B

    const/16 v5, 0x16

    const/4 v8, 0x0

    aput-byte v5, v6, v8

    const/16 v5, -0x7c

    const/4 v8, 0x1

    aput-byte v5, v6, v8

    const/16 v5, 0x8

    const/4 v8, 0x2

    aput-byte v5, v6, v8

    const/4 v5, 0x3

    aput-byte v2, v6, v5

    const/4 v2, 0x4

    aput-byte p4, v6, v2

    or-int v2, v3, v9

    int-to-byte v2, v2

    const/4 v3, 0x5

    aput-byte v2, v6, v3

    const/4 v2, 0x6

    aput-byte v10, v6, v2

    .line 210
    invoke-direct {v15, v4, v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus;->sndVideoMidea(Landroid/content/Context;[B)V

    goto :goto_b

    :pswitch_d
    move/from16 v13, p5

    move v2, v1

    move v1, v3

    move/from16 v38, v6

    move-object/from16 v17, v12

    move-object v4, v14

    const/16 v3, 0xff

    const/16 v5, 0x9

    const/16 v14, 0x13

    const/16 v25, 0xf

    move/from16 v12, p17

    if-eq v2, v5, :cond_13

    .line 200
    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->USB_VIDEO:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;

    const/4 v6, 0x1

    invoke-static {v4, v5, v3, v6, v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportSimpleMediaInfo(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;IZZ)V

    :cond_13
    :goto_c
    move-object/from16 v11, v17

    const/16 v5, 0x8

    const/16 v8, 0xa

    const/4 v14, 0x1

    const/16 v17, 0xc

    :goto_d
    const/16 v18, 0x16

    const/16 v19, 0x2

    :goto_e
    const/16 v26, 0x6

    const/16 v27, 0x3

    const/16 v30, 0x4

    const/16 v31, 0x7

    const/16 v32, 0x5

    const/16 v33, 0x0

    goto/16 :goto_15

    :pswitch_e
    move/from16 v13, p5

    move v2, v1

    move v1, v3

    move/from16 v38, v6

    move-object/from16 v17, v12

    move-object v4, v14

    const/16 v14, 0x13

    const/16 v25, 0xf

    move/from16 v12, p17

    if-eqz v20, :cond_14

    const/16 v3, 0x9

    goto :goto_f

    :cond_14
    const/16 v3, 0x8

    :goto_f
    const/16 v5, 0xa

    new-array v6, v5, [B

    const/16 v5, 0x16

    const/4 v8, 0x0

    aput-byte v5, v6, v8

    const/4 v5, 0x1

    aput-byte v28, v6, v5

    int-to-byte v3, v3

    const/4 v5, 0x2

    aput-byte v3, v6, v5

    const/16 v3, 0x11

    const/4 v5, 0x3

    aput-byte v3, v6, v5

    const/4 v3, 0x4

    aput-byte v7, v6, v3

    const/4 v3, 0x5

    aput-byte v38, v6, v3

    const/4 v3, 0x6

    aput-byte p4, v6, v3

    const/4 v3, 0x7

    aput-byte v1, v6, v3

    const/16 v3, 0x8

    aput-byte v10, v6, v3

    const/16 v3, 0x9

    aput-byte v9, v6, v3

    .line 179
    invoke-direct {v15, v4, v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus;->sndVideoMidea(Landroid/content/Context;[B)V

    goto :goto_c

    :pswitch_f
    move/from16 v13, p5

    move v2, v1

    move v1, v3

    move/from16 v38, v6

    move-object/from16 v17, v12

    move-object v4, v14

    const/16 v14, 0x13

    const/16 v25, 0xf

    move/from16 v12, p17

    .line 163
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "canbus_cur_vol"

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    if-lez v3, :cond_15

    const/4 v3, 0x4

    goto :goto_10

    :cond_15
    const/16 v3, 0xc

    :goto_10
    int-to-byte v3, v3

    .line 165
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v5

    sget-object v6, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->BENZ_B200_LUZHENG:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    if-ne v5, v6, :cond_16

    xor-int/lit8 v3, v3, 0x4

    int-to-byte v3, v3

    :cond_16
    if-eqz v20, :cond_17

    const/16 v5, 0xb

    new-array v6, v5, [B

    const/16 v5, 0x16

    const/4 v8, 0x0

    aput-byte v5, v6, v8

    const/4 v5, 0x1

    aput-byte v22, v6, v5

    const/4 v5, 0x3

    const/4 v8, 0x2

    aput-byte v5, v6, v8

    const/4 v8, -0x1

    aput-byte v8, v6, v5

    const/4 v5, -0x1

    const/4 v8, 0x4

    aput-byte v5, v6, v8

    const/4 v5, 0x5

    aput-byte v1, v6, v5

    const/4 v5, 0x6

    aput-byte p4, v6, v5

    const/4 v5, -0x1

    const/4 v8, 0x7

    aput-byte v5, v6, v8

    const/16 v5, 0x8

    aput-byte v3, v6, v5

    const/16 v3, 0x9

    aput-byte v10, v6, v3

    const/16 v3, 0xa

    aput-byte v9, v6, v3

    .line 169
    invoke-direct {v15, v4, v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus;->sndVideoMidea(Landroid/content/Context;[B)V

    const/16 v8, 0xb

    goto/16 :goto_c

    :cond_17
    const/16 v8, 0xb

    new-array v5, v8, [B

    const/16 v6, 0x16

    const/4 v11, 0x0

    aput-byte v6, v5, v11

    const/4 v6, 0x1

    aput-byte v22, v5, v6

    const/4 v6, 0x4

    const/4 v11, 0x2

    aput-byte v6, v5, v11

    const/4 v11, -0x1

    const/16 v24, 0x3

    aput-byte v11, v5, v24

    const/4 v11, -0x1

    aput-byte v11, v5, v6

    const/4 v6, 0x5

    aput-byte v1, v5, v6

    const/4 v6, 0x6

    aput-byte p4, v5, v6

    const/4 v6, -0x1

    const/4 v11, 0x7

    aput-byte v6, v5, v11

    const/16 v6, 0x8

    aput-byte v3, v5, v6

    const/16 v3, 0x9

    aput-byte v10, v5, v3

    const/16 v3, 0xa

    aput-byte v9, v5, v3

    .line 172
    invoke-direct {v15, v4, v5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus;->sndVideoMidea(Landroid/content/Context;[B)V

    goto/16 :goto_c

    :pswitch_10
    move/from16 v13, p5

    move v2, v1

    move v1, v3

    move/from16 v38, v6

    move-object/from16 v17, v12

    move-object v4, v14

    const/16 v8, 0xb

    const/16 v14, 0x13

    const/16 v25, 0xf

    move/from16 v12, p17

    .line 149
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "canbus_cur_vol"

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    .line 151
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v11, v17

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-eqz v20, :cond_18

    const/4 v6, 0x5

    new-array v8, v6, [B

    const/16 v6, 0x16

    const/16 v17, 0x0

    aput-byte v6, v8, v17

    const/16 v6, 0xc

    const/16 v17, 0x1

    aput-byte v6, v8, v17

    const/16 v6, 0x55

    const/16 v17, 0x2

    aput-byte v6, v8, v17

    const/4 v6, 0x3

    aput-byte v3, v8, v6

    const/16 v3, 0x8

    const/4 v6, 0x4

    aput-byte v3, v8, v6

    const/16 v17, 0xc

    goto :goto_11

    :cond_18
    const/4 v6, 0x5

    new-array v8, v6, [B

    const/16 v6, 0x16

    const/16 v17, 0x0

    aput-byte v6, v8, v17

    const/4 v6, 0x1

    const/16 v17, 0xc

    aput-byte v17, v8, v6

    const/16 v6, 0x54

    const/16 v19, 0x2

    aput-byte v6, v8, v19

    const/4 v6, 0x3

    aput-byte v3, v8, v6

    const/16 v3, 0x8

    const/4 v6, 0x4

    aput-byte v3, v8, v6

    .line 157
    :goto_11
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {v8, v3, v5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[BB)[B

    move-result-object v3

    .line 158
    invoke-direct {v15, v4, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus;->sndVideoMidea(Landroid/content/Context;[B)V

    goto :goto_12

    :pswitch_11
    move/from16 v13, p5

    move v2, v1

    move v1, v3

    move/from16 v38, v6

    move-object v11, v12

    move-object v4, v14

    const/16 v3, 0x9

    const/16 v14, 0x13

    const/16 v17, 0xc

    const/16 v25, 0xf

    move/from16 v12, p17

    if-ne v2, v3, :cond_19

    const/16 v5, 0xa

    new-array v6, v5, [B

    const/16 v5, 0x16

    const/4 v8, 0x0

    aput-byte v5, v6, v8

    const/4 v5, 0x1

    aput-byte v28, v6, v5

    const/4 v5, 0x2

    aput-byte v3, v6, v5

    const/16 v3, 0x20

    const/4 v5, 0x3

    aput-byte v3, v6, v5

    const/4 v3, 0x4

    aput-byte v7, v6, v3

    const/4 v3, 0x5

    aput-byte v38, v6, v3

    const/4 v3, 0x6

    aput-byte p4, v6, v3

    const/4 v3, 0x7

    aput-byte v1, v6, v3

    const/16 v3, 0x8

    const/4 v5, 0x0

    aput-byte v5, v6, v3

    const/16 v3, 0x9

    aput-byte v5, v6, v3

    .line 143
    invoke-direct {v15, v4, v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus;->sndVideoMidea(Landroid/content/Context;[B)V

    :goto_12
    const/16 v5, 0x8

    const/16 v8, 0xa

    goto :goto_13

    :cond_19
    const/16 v8, 0xa

    new-array v3, v8, [B

    const/16 v5, 0x16

    const/4 v6, 0x0

    aput-byte v5, v3, v6

    const/4 v5, 0x1

    aput-byte v28, v3, v5

    const/16 v5, 0x8

    const/4 v6, 0x2

    aput-byte v5, v3, v6

    const/16 v5, 0x20

    const/4 v6, 0x3

    aput-byte v5, v3, v6

    const/4 v5, 0x4

    aput-byte v7, v3, v5

    const/4 v5, 0x5

    aput-byte v38, v3, v5

    const/4 v5, 0x6

    aput-byte p4, v3, v5

    const/4 v5, 0x7

    aput-byte v1, v3, v5

    const/16 v5, 0x8

    const/4 v6, 0x0

    aput-byte v6, v3, v5

    const/16 v5, 0x9

    aput-byte v6, v3, v5

    .line 145
    invoke-direct {v15, v4, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus;->sndVideoMidea(Landroid/content/Context;[B)V

    const/16 v5, 0x8

    :goto_13
    const/4 v14, 0x1

    goto/16 :goto_d

    :pswitch_12
    move/from16 v13, p5

    move v2, v1

    move v1, v3

    move/from16 v38, v6

    move-object v11, v12

    move-object v4, v14

    const/16 v6, 0x9

    const/16 v8, 0xa

    const/16 v14, 0x13

    const/16 v17, 0xc

    const/16 v25, 0xf

    move/from16 v12, p17

    if-ne v2, v6, :cond_1a

    .line 127
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->SD:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;

    const/16 v5, 0x20

    const/4 v6, 0x0

    const/4 v14, 0x1

    invoke-static {v4, v3, v5, v14, v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportSimpleMediaInfo(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;IZZ)V

    goto :goto_14

    :cond_1a
    const/4 v6, 0x0

    const/4 v14, 0x1

    .line 129
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->USB:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;

    const/16 v5, 0x20

    invoke-static {v4, v3, v5, v14, v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportSimpleMediaInfo(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;IZZ)V

    :goto_14
    const/16 v5, 0x8

    new-array v3, v5, [B

    const/16 v18, 0x16

    aput-byte v18, v3, v6

    const/16 v6, -0x3d

    aput-byte v6, v3, v14

    const/16 v19, 0x2

    aput-byte v7, v3, v19

    const/16 v27, 0x3

    aput-byte v38, v3, v27

    const/16 v30, 0x4

    aput-byte p4, v3, v30

    const/16 v32, 0x5

    aput-byte v1, v3, v32

    const/16 v26, 0x6

    const/16 v33, 0x0

    aput-byte v33, v3, v26

    const/16 v31, 0x7

    aput-byte v33, v3, v31

    .line 131
    invoke-direct {v15, v4, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus;->sndVideoMidea(Landroid/content/Context;[B)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_15
    move/from16 v34, p3

    move v3, v1

    move v6, v2

    move/from16 v35, v14

    goto :goto_17

    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v5, v15

    goto/16 :goto_3c

    :cond_1b
    move/from16 v13, p5

    move v2, v1

    move v1, v3

    move/from16 v38, v6

    move-object v11, v12

    move-object v4, v14

    const/16 v5, 0x8

    const/16 v8, 0xa

    const/4 v14, 0x1

    const/16 v17, 0xc

    const/16 v18, 0x16

    const/16 v19, 0x2

    const/16 v25, 0xf

    const/16 v26, 0x6

    const/16 v27, 0x3

    const/16 v30, 0x4

    const/16 v31, 0x7

    const/16 v32, 0x5

    const/16 v33, 0x0

    move/from16 v12, p17

    move/from16 v34, p3

    move v3, v1

    :goto_16
    move v6, v2

    move/from16 v35, v33

    .line 408
    :goto_17
    :try_start_4
    new-instance v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus$1;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_8

    move-object v1, v2

    move-object/from16 v39, v2

    move-object/from16 v2, p0

    move/from16 p1, v3

    move v3, v6

    move/from16 v4, v34

    move/from16 v36, v5

    move/from16 v5, p4

    move/from16 v40, v6

    move/from16 v21, v38

    const/16 v37, 0x9

    move/from16 v6, p5

    move/from16 v38, v7

    move/from16 v7, p6

    move/from16 v27, v32

    const/16 v26, 0xd

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v17, v11

    move/from16 v11, p1

    move/from16 v41, v16

    move-object/from16 v42, v17

    move/from16 v14, v37

    move/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move/from16 v16, p15

    move/from16 v17, p16

    move/from16 v18, p17

    move/from16 v19, p18

    :try_start_5
    invoke-direct/range {v1 .. v19}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus$1;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus;BBBIBBBLjava/lang/String;BBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IBZI)V

    move-object/from16 v1, p2

    move-object/from16 v2, v39

    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface;->sendMsg(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface$CallBack;)V

    .line 417
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus$4;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_37

    const/4 v4, 0x2

    if-eq v2, v4, :cond_37

    const/16 v5, 0x2b

    if-eq v2, v5, :cond_34

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    packed-switch v2, :pswitch_data_3

    const/16 v2, 0x1f

    move/from16 v5, v41

    if-ne v5, v2, :cond_1c

    const/16 v2, 0xb

    const/16 v8, 0x8

    goto :goto_18

    :cond_1c
    move/from16 v8, v40

    const/16 v2, 0xb

    :goto_18
    new-array v2, v2, [B

    const/4 v5, 0x0

    aput-byte v3, v2, v5

    aput-byte v8, v2, v3

    const/16 v6, 0x13

    aput-byte v6, v2, v4

    move/from16 v7, p4

    const/4 v8, 0x3

    aput-byte v7, v2, v8

    move/from16 v9, p1

    const/4 v10, 0x4

    aput-byte v9, v2, v10

    aput-byte v5, v2, v27

    move/from16 v11, p6

    const/4 v12, 0x6

    aput-byte v11, v2, v12

    move/from16 v13, p7

    const/4 v14, 0x7

    aput-byte v13, v2, v14

    move/from16 v15, p8

    const/16 v6, 0x8

    aput-byte v15, v2, v6

    const/16 v6, 0x9

    aput-byte v6, v2, v6

    move/from16 v9, p16

    const/16 v12, 0xa

    aput-byte v9, v2, v12

    goto :goto_19

    :pswitch_13
    move/from16 v7, p4

    move/from16 v11, p6

    move/from16 v13, p7

    move/from16 v15, p8

    move/from16 v9, p16

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v8, 0x3

    const/4 v10, 0x4

    const/16 v12, 0xa

    new-array v2, v10, [B

    const/16 v10, 0x16

    aput-byte v10, v2, v5

    aput-byte v28, v2, v3

    aput-byte v6, v2, v4

    aput-byte v5, v2, v8

    .line 979
    invoke-static {v2, v12}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->makeBytesFixedLength([BI)[B

    move-result-object v2

    :goto_19
    move-object/from16 v5, p0

    move-object v3, v2

    move v2, v9

    goto/16 :goto_1e

    :pswitch_14
    move/from16 v9, p1

    move/from16 v7, p4

    move/from16 v11, p6

    move/from16 v13, p7

    move/from16 v15, p8

    const/16 v2, 0x16

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v8, 0x3

    const/4 v10, 0x4

    const/4 v12, 0x6

    const/4 v14, 0x7

    if-nez v20, :cond_1d

    new-array v14, v14, [B

    aput-byte v2, v14, v5

    aput-byte v28, v14, v3

    aput-byte v6, v14, v4

    aput-byte v5, v14, v8

    aput-byte v5, v14, v10

    aput-byte v5, v14, v27

    const/16 v6, 0x10

    aput-byte v6, v14, v12

    new-array v6, v8, [B

    aput-byte v2, v6, v5

    const/16 v8, 0x70

    aput-byte v8, v6, v3

    const/16 v8, 0x10

    aput-byte v8, v6, v4

    .line 936
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    add-int/2addr v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p12

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, v42

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p13

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p14

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 937
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-static {v8}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->phoneNum2UnicodeLittleExtra([B)[B

    move-result-object v8

    .line 938
    new-instance v9, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus$2;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_7

    move-object/from16 v10, p0

    :try_start_6
    invoke-direct {v9, v10, v6, v8}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus$2;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus;[B[B)V

    .line 951
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2

    move/from16 v2, p16

    move-object v5, v10

    move v4, v11

    move-object v3, v14

    goto/16 :goto_2d

    :catch_2
    move-exception v0

    move-object v1, v0

    move-object v5, v10

    goto/16 :goto_3c

    :cond_1d
    move-object/from16 v12, p0

    move/from16 v2, p16

    goto/16 :goto_2b

    :pswitch_15
    move/from16 v9, p1

    move/from16 v7, p4

    move/from16 v6, p5

    move/from16 v11, p6

    move/from16 v13, p7

    move/from16 v15, p8

    const/16 v2, 0x16

    const/4 v5, 0x0

    const/4 v8, 0x3

    const/4 v10, 0x4

    const/4 v12, 0x6

    const/16 v14, 0xa

    if-eqz v20, :cond_1e

    move/from16 v12, v23

    goto :goto_1a

    :cond_1e
    move/from16 v12, v26

    .line 925
    :goto_1a
    :try_start_7
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->getInstance()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;

    move-result-object v14

    invoke-virtual {v14, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->isMpegDiscExist(Landroid/content/Context;)I

    move-result v14

    int-to-byte v14, v14

    new-array v8, v10, [B

    aput-byte v2, v8, v5

    const/16 v16, -0x6f

    aput-byte v16, v8, v3

    int-to-byte v12, v12

    aput-byte v12, v8, v4

    const/4 v12, 0x3

    aput-byte v14, v8, v12

    const/16 v12, 0xa

    new-array v12, v12, [B

    aput-byte v9, v12, v5

    aput-byte v7, v12, v3

    const/16 v9, 0x2f

    aput-byte v9, v12, v4

    int-to-byte v6, v6

    const/4 v9, 0x3

    aput-byte v6, v12, v9

    const/16 v6, 0x20

    aput-byte v6, v12, v10

    aput-byte v11, v12, v27

    const/16 v6, 0x3a

    const/4 v9, 0x6

    aput-byte v6, v12, v9

    const/4 v6, 0x7

    aput-byte v13, v12, v6

    const/16 v6, 0x3a

    const/16 v9, 0x8

    aput-byte v6, v12, v9

    const/16 v14, 0x9

    aput-byte v15, v12, v14

    .line 930
    invoke-static {v8, v12}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v6

    const/16 v8, 0x10

    invoke-static {v6, v8}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->CompensateZero([BI)[B

    move-result-object v6

    move-object/from16 v5, p0

    move/from16 v2, p16

    move-object v3, v6

    goto/16 :goto_1e

    :pswitch_16
    move/from16 v7, p4

    move/from16 v6, p5

    move/from16 v11, p6

    move/from16 v13, p7

    move/from16 v15, p8

    move-object/from16 v9, p12

    move-object/from16 v12, p13

    move-object/from16 v8, p14

    move-object/from16 v10, v42

    const/16 v2, 0x16

    const/4 v5, 0x0

    if-eqz v20, :cond_1f

    const/4 v14, 0x3

    new-array v14, v14, [B

    aput-byte v2, v14, v5

    const/16 v16, -0x6b

    aput-byte v16, v14, v3

    aput-byte v23, v14, v4

    goto :goto_1b

    :cond_1f
    const/4 v14, 0x3

    new-array v14, v14, [B

    aput-byte v2, v14, v5

    const/16 v16, -0x6b

    aput-byte v16, v14, v3

    aput-byte v26, v14, v4

    .line 906
    :goto_1b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_7

    :try_start_8
    const-string v4, "Unicode"

    .line 917
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->exceptBOMHead([B)[B

    move-result-object v3

    invoke-static {v14, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v14
    :try_end_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_1c

    :catch_3
    move-exception v0

    move-object v3, v0

    .line 919
    :try_start_9
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_1c
    const/16 v3, 0x27

    .line 921
    invoke-static {v14, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->makeBytesFixedLength([BI)[B

    move-result-object v3

    goto :goto_1d

    :pswitch_17
    move/from16 v7, p4

    move/from16 v11, p6

    move/from16 v13, p7

    move/from16 v15, p8

    const/16 v2, 0x16

    const/4 v5, 0x0

    const/4 v10, 0x4

    const/16 v14, 0x9

    if-eqz v20, :cond_20

    const/4 v3, 0x6

    new-array v3, v3, [B

    aput-byte v2, v3, v5

    const/4 v4, 0x1

    aput-byte v14, v3, v4

    const/16 v4, 0xc

    const/4 v6, 0x2

    aput-byte v4, v3, v6

    const/4 v4, 0x3

    aput-byte v5, v3, v4

    aput-byte v5, v3, v10

    aput-byte v5, v3, v27

    goto :goto_1d

    :cond_20
    const/4 v3, 0x6

    new-array v3, v3, [B

    aput-byte v2, v3, v5

    const/4 v4, 0x1

    aput-byte v14, v3, v4

    const/4 v4, 0x2

    aput-byte v26, v3, v4

    const/4 v4, 0x3

    aput-byte v5, v3, v4

    aput-byte v5, v3, v10

    aput-byte v5, v3, v27

    goto :goto_1d

    :pswitch_18
    move/from16 v7, p4

    move/from16 v11, p6

    move/from16 v13, p7

    move/from16 v15, p8

    const/16 v2, 0x16

    const/4 v5, 0x0

    const/4 v10, 0x4

    new-array v3, v10, [B

    aput-byte v2, v3, v5

    const/4 v4, 0x1

    aput-byte v28, v3, v4

    const/16 v4, 0x8

    const/4 v6, 0x2

    aput-byte v4, v3, v6

    const/4 v4, 0x3

    aput-byte v5, v3, v4

    :goto_1d
    move-object/from16 v5, p0

    move/from16 v2, p16

    :goto_1e
    move v4, v11

    goto/16 :goto_2d

    :pswitch_19
    move/from16 v7, p4

    move/from16 v6, p5

    move/from16 v11, p6

    move/from16 v13, p7

    move/from16 v15, p8

    move-object/from16 v3, v42

    const/16 v2, 0x16

    const/4 v5, 0x0

    const/4 v10, 0x4

    if-eqz v20, :cond_21

    const/4 v4, 0x3

    const/4 v8, 0x6

    goto :goto_1f

    :cond_21
    move v8, v10

    const/4 v4, 0x3

    :goto_1f
    new-array v4, v4, [B

    aput-byte v2, v4, v5

    const/16 v9, -0x67

    const/4 v10, 0x1

    aput-byte v9, v4, v10

    int-to-byte v8, v8

    const/4 v9, 0x2

    aput-byte v8, v4, v9

    .line 857
    new-instance v8, Ljava/text/DecimalFormat;

    const-string v9, "00"

    invoke-direct {v8, v9}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    int-to-long v9, v13

    invoke-virtual {v8, v9, v10}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v8

    .line 858
    new-instance v9, Ljava/text/DecimalFormat;

    const-string v10, "00"

    invoke-direct {v9, v10}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    move-object/from16 v42, v3

    int-to-long v2, v15

    invoke-virtual {v9, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    .line 859
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "  "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, v42

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 866
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 867
    invoke-static {v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->phoneNum2UnicodeLittleExtra([B)[B

    move-result-object v2

    invoke-static {v4, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v2

    const/16 v3, 0x23

    .line 868
    invoke-static {v2, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->makeBytesFixedLength([BI)[B

    move-result-object v2

    move-object/from16 v5, p0

    move-object v3, v2

    move v4, v11

    move v14, v15

    move/from16 v2, p16

    goto/16 :goto_37

    :pswitch_1a
    move/from16 v9, p1

    move/from16 v7, p4

    move/from16 v11, p6

    move/from16 v13, p7

    move/from16 v15, p8

    move/from16 v2, p16

    const/16 v3, 0xb

    const/16 v4, 0xc

    const/4 v5, 0x0

    const/4 v10, 0x4

    const/16 v14, 0x9

    if-eqz v20, :cond_22

    new-array v4, v4, [B

    const/16 v6, 0x16

    aput-byte v6, v4, v5

    const/4 v6, 0x1

    aput-byte v28, v4, v6

    const/4 v8, 0x2

    aput-byte v14, v4, v8

    const/4 v8, 0x3

    aput-byte v6, v4, v8

    aput-byte v21, v4, v10

    aput-byte v38, v4, v27

    const/4 v6, 0x6

    aput-byte v9, v4, v6

    const/4 v6, 0x7

    aput-byte v7, v4, v6

    const/16 v6, 0x8

    aput-byte v5, v4, v6

    aput-byte v5, v4, v14

    const/16 v6, 0xa

    aput-byte v5, v4, v6

    aput-byte v5, v4, v3
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_7

    move-object/from16 v12, p0

    .line 843
    :try_start_a
    invoke-direct {v12, v1, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus;->sndVideoMidea(Landroid/content/Context;[B)V

    goto :goto_20

    :cond_22
    move-object/from16 v12, p0

    new-array v4, v4, [B

    const/16 v6, 0x16

    aput-byte v6, v4, v5

    const/4 v6, 0x1

    aput-byte v28, v4, v6

    const/16 v8, 0x8

    const/16 v16, 0x2

    aput-byte v8, v4, v16

    const/4 v8, 0x3

    aput-byte v6, v4, v8

    aput-byte v21, v4, v10

    aput-byte v38, v4, v27

    const/4 v6, 0x6

    aput-byte v9, v4, v6

    const/4 v6, 0x7

    aput-byte v7, v4, v6

    const/16 v6, 0x8

    aput-byte v5, v4, v6

    aput-byte v5, v4, v14

    const/16 v6, 0xa

    aput-byte v5, v4, v6

    aput-byte v5, v4, v3

    .line 847
    invoke-direct {v12, v1, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus;->sndVideoMidea(Landroid/content/Context;[B)V

    .line 849
    :goto_20
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "currentReportPrev"

    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v6, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v3, 0x3

    new-array v4, v3, [B

    const/16 v6, 0x16

    aput-byte v6, v4, v5

    const/16 v6, -0x3d

    const/4 v8, 0x1

    aput-byte v6, v4, v8

    const/4 v6, 0x2

    aput-byte v3, v4, v6

    const-string v3, " "

    .line 850
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v4, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v3

    goto/16 :goto_2c

    :pswitch_1b
    move-object/from16 v12, p0

    move/from16 v7, p4

    move/from16 v11, p6

    move/from16 v13, p7

    move/from16 v15, p8

    move/from16 v2, p16

    const/4 v5, 0x0

    const/4 v10, 0x4

    const/16 v14, 0x9

    if-eqz v20, :cond_23

    const/16 v3, 0xa

    new-array v3, v3, [B

    const/16 v4, 0x16

    aput-byte v4, v3, v5

    const/4 v4, 0x1

    aput-byte v28, v3, v4

    const/4 v4, 0x2

    aput-byte v14, v3, v4

    const/16 v4, 0x10

    const/4 v6, 0x3

    aput-byte v4, v3, v6

    aput-byte v5, v3, v10

    aput-byte v5, v3, v27

    const/4 v4, 0x6

    aput-byte v5, v3, v4

    const/4 v4, 0x7

    aput-byte v5, v3, v4

    const/16 v4, 0x8

    aput-byte v5, v3, v4

    aput-byte v5, v3, v14

    goto/16 :goto_2c

    :cond_23
    const/16 v3, 0xa

    new-array v3, v3, [B

    const/16 v4, 0x16

    aput-byte v4, v3, v5

    const/4 v4, 0x1

    aput-byte v28, v3, v4

    const/16 v4, 0x8

    const/4 v6, 0x2

    aput-byte v4, v3, v6

    const/16 v4, 0x10

    const/4 v6, 0x3

    aput-byte v4, v3, v6

    aput-byte v5, v3, v10

    aput-byte v5, v3, v27

    const/4 v4, 0x6

    aput-byte v5, v3, v4

    const/4 v4, 0x7

    aput-byte v5, v3, v4

    const/16 v4, 0x8

    aput-byte v5, v3, v4

    aput-byte v5, v3, v14

    goto/16 :goto_2c

    :pswitch_1c
    move-object/from16 v12, p0

    move/from16 v7, p4

    move/from16 v11, p6

    move/from16 v13, p7

    move/from16 v15, p8

    move/from16 v2, p16

    const/16 v3, 0xb

    const/16 v4, 0xc

    const/4 v5, 0x0

    const/4 v10, 0x4

    const/16 v14, 0x9

    if-eqz v20, :cond_24

    const/16 v6, 0xf

    new-array v6, v6, [B

    const/16 v8, 0x16

    aput-byte v8, v6, v5

    const/16 v8, -0x6f

    const/4 v9, 0x1

    aput-byte v8, v6, v9

    const/16 v8, 0x19

    const/4 v9, 0x2

    aput-byte v8, v6, v9

    const/4 v8, 0x3

    aput-byte v5, v6, v8

    aput-byte v5, v6, v10

    aput-byte v5, v6, v27

    const/4 v8, 0x6

    aput-byte v5, v6, v8

    const/4 v8, 0x7

    aput-byte v5, v6, v8

    const/16 v8, 0x8

    aput-byte v5, v6, v8

    aput-byte v5, v6, v14

    const/16 v8, 0xa

    aput-byte v5, v6, v8

    aput-byte v5, v6, v3

    aput-byte v5, v6, v4

    aput-byte v5, v6, v26

    aput-byte v5, v6, v23

    goto :goto_21

    :cond_24
    const/16 v6, 0xf

    new-array v6, v6, [B

    const/16 v8, 0x16

    aput-byte v8, v6, v5

    const/16 v8, -0x6f

    const/4 v9, 0x1

    aput-byte v8, v6, v9

    const/4 v8, 0x2

    aput-byte v26, v6, v8

    const/4 v8, 0x3

    aput-byte v5, v6, v8

    aput-byte v5, v6, v10

    aput-byte v5, v6, v27

    const/4 v8, 0x6

    aput-byte v5, v6, v8

    const/4 v8, 0x7

    aput-byte v5, v6, v8

    const/16 v8, 0x8

    aput-byte v5, v6, v8

    aput-byte v5, v6, v14

    const/16 v8, 0xa

    aput-byte v5, v6, v8

    aput-byte v5, v6, v3

    aput-byte v5, v6, v4

    aput-byte v5, v6, v26

    aput-byte v5, v6, v23

    :goto_21
    move-object v3, v6

    goto/16 :goto_2c

    :pswitch_1d
    move-object/from16 v12, p0

    move/from16 v9, p1

    move/from16 v7, p4

    move/from16 v11, p6

    move/from16 v13, p7

    move/from16 v15, p8

    move/from16 v2, p16

    const/16 v3, 0xa

    const/4 v5, 0x0

    const/4 v10, 0x4

    const/16 v14, 0x9

    new-array v3, v3, [B

    const/16 v4, 0x16

    aput-byte v4, v3, v5

    const/4 v4, 0x1

    aput-byte v28, v3, v4

    const/16 v4, 0x8

    const/4 v6, 0x2

    aput-byte v4, v3, v6

    const/4 v4, 0x3

    aput-byte v21, v3, v4

    aput-byte v38, v3, v10

    aput-byte v9, v3, v27

    const/4 v4, 0x6

    aput-byte v7, v3, v4

    const/4 v4, 0x7

    aput-byte v11, v3, v4

    const/16 v4, 0x8

    aput-byte v13, v3, v4

    aput-byte v15, v3, v14

    goto/16 :goto_2c

    :pswitch_1e
    move-object/from16 v12, p0

    move/from16 v7, p4

    move/from16 v11, p6

    move/from16 v13, p7

    move/from16 v15, p8

    move/from16 v2, p16

    const/4 v5, 0x0

    const/4 v10, 0x4

    if-eqz v20, :cond_25

    goto/16 :goto_2b

    :cond_25
    const/4 v3, 0x3

    new-array v3, v3, [B

    const/16 v4, 0x16

    aput-byte v4, v3, v5

    const/4 v4, 0x1

    aput-byte v22, v3, v4

    const/4 v4, 0x2

    aput-byte v10, v3, v4

    goto/16 :goto_2c

    :pswitch_1f
    move-object/from16 v12, p0

    move/from16 v7, p4

    move/from16 v11, p6

    move/from16 v13, p7

    move/from16 v15, p8

    move/from16 v2, p16

    const/4 v5, 0x0

    const/4 v10, 0x4

    .line 777
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object v3

    sget-object v4, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {v3, v4}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v3

    sget-object v4, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->MUSIC:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-eq v3, v4, :cond_26

    .line 778
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object v3

    sget-object v4, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {v3, v4}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v3

    sget-object v4, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->BTPHONE:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-ne v3, v4, :cond_2f

    .line 779
    :cond_26
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "btState"

    const/4 v6, 0x1

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v6, :cond_2f

    .line 780
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "action_qz_oringinal_screen_rep_0x83_status"

    .line 781
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "qz_src_mode_status"

    .line 782
    invoke-virtual {v3, v4, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 783
    invoke-virtual {v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v3, "QZ"

    const-string v4, "qz_src_mode_status snd android"

    .line 784
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2b

    :pswitch_20
    move-object/from16 v12, p0

    move/from16 v9, p1

    move/from16 v7, p4

    move/from16 v11, p6

    move/from16 v13, p7

    move/from16 v15, p8

    move/from16 v2, p16

    const/4 v5, 0x0

    const/4 v10, 0x4

    if-eqz v20, :cond_27

    const/4 v3, 0x6

    new-array v3, v3, [B

    const/16 v4, 0x16

    aput-byte v4, v3, v5

    const/4 v4, 0x1

    aput-byte v22, v3, v4

    const/4 v4, 0x3

    const/4 v6, 0x2

    aput-byte v4, v3, v6

    aput-byte v9, v3, v4

    aput-byte v7, v3, v10

    const/4 v4, -0x1

    aput-byte v4, v3, v27

    goto/16 :goto_2c

    :cond_27
    const/4 v3, 0x6

    new-array v3, v3, [B

    const/16 v4, 0x16

    aput-byte v4, v3, v5

    const/4 v4, 0x1

    aput-byte v22, v3, v4

    const/4 v4, 0x2

    aput-byte v10, v3, v4

    const/4 v4, 0x3

    aput-byte v9, v3, v4

    aput-byte v7, v3, v10

    const/4 v4, -0x1

    aput-byte v4, v3, v27

    goto/16 :goto_2c

    :pswitch_21
    move-object/from16 v12, p0

    move/from16 v7, p4

    move/from16 v11, p6

    move/from16 v13, p7

    move/from16 v15, p8

    move/from16 v2, p16

    move/from16 v8, v40

    const/16 v3, 0xb

    const/16 v4, 0xc

    const/4 v5, 0x0

    const/16 v6, 0xf

    const/4 v10, 0x4

    const/16 v14, 0x9

    if-ne v8, v14, :cond_28

    move/from16 v8, v23

    goto :goto_22

    :cond_28
    move/from16 v8, v26

    .line 736
    :goto_22
    invoke-static/range {p2 .. p2}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->getMpegplayerManager(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->isDiscExist()Z

    move-result v9

    invoke-static {v5, v5, v9}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->setIntByteWithBit(IIZ)I

    move-result v9

    const/16 v6, 0x10

    new-array v6, v6, [B

    const/16 v16, 0x16

    aput-byte v16, v6, v5

    const/16 v16, -0x6f

    const/16 v17, 0x1

    aput-byte v16, v6, v17

    const/16 v16, 0x2

    aput-byte v8, v6, v16

    int-to-byte v8, v9

    const/4 v9, 0x3

    aput-byte v8, v6, v9

    aput-byte v5, v6, v10

    aput-byte v5, v6, v27

    const/4 v8, 0x6

    aput-byte v5, v6, v8

    const/4 v8, 0x7

    aput-byte v5, v6, v8

    const/16 v8, 0x8

    aput-byte v5, v6, v8

    aput-byte v5, v6, v14

    const/16 v8, 0xa

    aput-byte v5, v6, v8

    aput-byte v5, v6, v3

    aput-byte v5, v6, v4

    aput-byte v5, v6, v26

    aput-byte v5, v6, v23

    const/16 v3, 0xf

    aput-byte v5, v6, v3

    goto/16 :goto_21

    :pswitch_22
    move-object/from16 v12, p0

    move/from16 v9, p1

    move/from16 v7, p4

    move/from16 v11, p6

    move/from16 v13, p7

    move/from16 v15, p8

    move/from16 v2, p16

    move/from16 v8, v40

    const/4 v5, 0x0

    const/4 v10, 0x4

    const/16 v14, 0x9

    if-ne v8, v14, :cond_29

    move v8, v10

    goto :goto_23

    :cond_29
    move/from16 v8, v27

    :goto_23
    if-eqz p17, :cond_2a

    const/4 v3, 0x2

    goto :goto_24

    :cond_2a
    move v3, v5

    :goto_24
    const/16 v4, 0x8

    new-array v4, v4, [B

    const/16 v6, 0x16

    aput-byte v6, v4, v5

    const/16 v6, -0x6d

    const/4 v14, 0x1

    aput-byte v6, v4, v14

    const/4 v6, 0x2

    aput-byte v8, v4, v6

    const/4 v6, 0x3

    aput-byte v5, v4, v6

    mul-int/lit16 v6, v9, 0x100

    add-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v4, v10

    aput-byte v3, v4, v27

    const/4 v3, 0x6

    aput-byte v5, v4, v3

    const/4 v3, 0x7

    aput-byte v5, v4, v3

    move-object v3, v4

    goto/16 :goto_2c

    :pswitch_23
    move-object/from16 v12, p0

    move/from16 v7, p4

    move/from16 v11, p6

    move/from16 v13, p7

    move/from16 v15, p8

    move/from16 v2, p16

    const/16 v3, 0xa

    const/4 v5, 0x0

    const/4 v10, 0x4

    const/16 v14, 0x9

    new-array v3, v3, [B

    const/4 v4, 0x1

    aput-byte v4, v3, v5

    const/4 v6, 0x7

    aput-byte v6, v3, v4

    const/16 v4, 0x30

    const/4 v6, 0x2

    aput-byte v4, v3, v6

    const/4 v4, 0x3

    aput-byte v5, v3, v4

    aput-byte v5, v3, v10

    aput-byte v5, v3, v27

    const/4 v4, 0x6

    aput-byte v5, v3, v4

    const/4 v4, 0x7

    aput-byte v5, v3, v4

    const/16 v4, 0x8

    aput-byte v5, v3, v4

    aput-byte v5, v3, v14

    goto/16 :goto_2c

    :pswitch_24
    move-object/from16 v12, p0

    move/from16 v7, p4

    move/from16 v11, p6

    move/from16 v13, p7

    move/from16 v15, p8

    move-object/from16 v8, p14

    move/from16 v2, p16

    move/from16 v4, v40

    move-object/from16 v6, v42

    const/4 v5, 0x0

    const/4 v10, 0x4

    const/16 v14, 0x9

    if-ne v4, v14, :cond_2b

    .line 586
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SD "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p9

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x6

    goto :goto_25

    :cond_2b
    move-object/from16 v4, p9

    .line 589
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "USB "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move v8, v10

    .line 592
    :goto_25
    invoke-static {v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->string2UnicodeBIG(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [B

    const/16 v6, 0x16

    aput-byte v6, v4, v5

    const/16 v6, -0x70

    const/4 v9, 0x1

    aput-byte v6, v4, v9

    const/4 v6, 0x2

    aput-byte v8, v4, v6

    .line 594
    invoke-static {v4, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v3

    const/16 v4, 0x21

    new-array v6, v4, [B

    move v8, v5

    .line 596
    :goto_26
    array-length v9, v3

    if-ge v8, v9, :cond_30

    if-ne v4, v8, :cond_2c

    goto/16 :goto_2c

    .line 598
    :cond_2c
    aget-byte v9, v3, v8

    aput-byte v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_26

    :pswitch_25
    move-object/from16 v12, p0

    move/from16 v9, p1

    move/from16 v7, p4

    move/from16 v11, p6

    move/from16 v13, p7

    move/from16 v2, p16

    const/4 v10, 0x4

    move/from16 v14, p8

    const/16 v3, 0x8

    :goto_27
    const/16 v4, 0xb

    goto/16 :goto_33

    :pswitch_26
    move-object/from16 v12, p0

    move/from16 v9, p1

    move/from16 v7, p4

    move/from16 v11, p6

    move/from16 v13, p7

    move/from16 v2, p16

    move/from16 v4, v40

    const/16 v8, 0x13

    const/4 v10, 0x4

    move/from16 v14, p8

    const/16 v3, 0x8

    :goto_28
    const/16 v5, 0xb

    goto/16 :goto_34

    :pswitch_27
    move-object/from16 v12, p0

    move/from16 v9, p1

    move/from16 v7, p4

    move/from16 v6, p5

    move/from16 v11, p6

    move/from16 v13, p7

    move/from16 v15, p8

    move/from16 v2, p16

    const/16 v3, 0x8

    const/4 v5, 0x0

    const/16 v8, 0x13

    const/4 v10, 0x4

    const/16 v4, 0x63

    if-lt v6, v4, :cond_2d

    const/16 v4, 0x63

    goto :goto_29

    :cond_2d
    int-to-byte v4, v6

    :goto_29
    if-nez v20, :cond_2e

    .line 525
    sget-object v6, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->USB:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;

    const/4 v14, 0x1

    invoke-static {v1, v6, v8, v14, v5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportSimpleMediaInfo(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;IZZ)V

    goto :goto_2a

    :cond_2e
    const/4 v14, 0x1

    .line 528
    sget-object v6, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->SD:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;

    invoke-static {v1, v6, v8, v14, v5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportSimpleMediaInfo(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;IZZ)V

    :goto_2a
    new-array v3, v3, [B

    const/16 v6, 0x16

    aput-byte v6, v3, v5

    const/16 v6, -0x3d

    aput-byte v6, v3, v14

    const/4 v6, 0x2

    aput-byte v4, v3, v6

    const/4 v4, 0x3

    aput-byte v5, v3, v4

    aput-byte v7, v3, v10

    aput-byte v9, v3, v27

    const/4 v4, 0x6

    aput-byte v13, v3, v4

    const/4 v4, 0x7

    aput-byte v15, v3, v4

    .line 531
    invoke-direct {v12, v1, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus;->sndVideoMidea(Landroid/content/Context;[B)V

    :cond_2f
    :goto_2b
    const/4 v3, 0x0

    :cond_30
    :goto_2c
    move v4, v11

    move-object v5, v12

    :goto_2d
    move v14, v15

    goto/16 :goto_37

    :pswitch_28
    move-object/from16 v12, p0

    move/from16 v9, p1

    move/from16 v7, p4

    move/from16 v11, p6

    move/from16 v13, p7

    move/from16 v15, p8

    move/from16 v2, p16

    move-object/from16 v6, v42

    const/4 v5, 0x0

    .line 454
    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "00"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    and-int/lit16 v4, v13, 0xff

    move-object/from16 v42, v6

    int-to-long v5, v4

    invoke-virtual {v3, v5, v6}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    .line 455
    new-instance v4, Ljava/text/DecimalFormat;

    const-string v5, "00"

    invoke-direct {v4, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    and-int/lit16 v5, v15, 0xff

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    .line 456
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/text/DecimalFormat;

    const-string v8, "000"

    invoke-direct {v6, v8}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    mul-int/lit16 v8, v9, 0x100

    add-int/2addr v8, v7

    int-to-long v8, v8

    invoke-virtual {v6, v8, v9}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v42

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v20, :cond_31

    goto :goto_2e

    :cond_31
    move/from16 v23, v26

    :goto_2e
    const/4 v4, 0x3

    new-array v4, v4, [B

    const/16 v5, 0x16

    const/4 v6, 0x0

    aput-byte v5, v4, v6

    const/16 v5, -0x6f

    const/4 v6, 0x1

    aput-byte v5, v4, v6

    const/4 v5, 0x2

    aput-byte v23, v4, v5

    .line 468
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v4, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v3
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_2c

    :catch_4
    move-exception v0

    move-object v1, v0

    move-object v5, v12

    goto/16 :goto_3c

    :pswitch_29
    move-object/from16 v12, p0

    move/from16 v9, p1

    move/from16 v7, p4

    move/from16 v11, p6

    move/from16 v13, p7

    move/from16 v15, p8

    move/from16 v2, p16

    move/from16 v4, v40

    move-object/from16 v3, v42

    const/16 v14, 0x9

    .line 438
    :try_start_b
    new-instance v5, Ljava/text/DecimalFormat;

    const-string v6, "00"

    invoke-direct {v5, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    and-int/lit16 v6, v13, 0xff

    int-to-long v14, v6

    invoke-virtual {v5, v14, v15}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v5

    .line 439
    new-instance v6, Ljava/text/DecimalFormat;

    const-string v8, "00"

    invoke-direct {v6, v8}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    move/from16 v14, p8

    and-int/lit16 v8, v14, 0xff

    int-to-long v10, v8

    invoke-virtual {v6, v10, v11}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v6

    .line 440
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v10, Ljava/text/DecimalFormat;

    const-string v11, "000"

    invoke-direct {v10, v11}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    mul-int/lit16 v9, v9, 0x100

    add-int/2addr v9, v7

    int-to-long v11, v9

    invoke-virtual {v10, v11, v12}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x3

    new-array v5, v5, [B

    const/16 v6, 0x16

    const/4 v8, 0x0

    aput-byte v6, v5, v8

    const/16 v6, -0x2e

    const/4 v8, 0x1

    aput-byte v6, v5, v8

    const/4 v6, 0x2

    aput-byte v26, v5, v6

    const/16 v8, 0x9

    if-ne v4, v8, :cond_32

    aput-byte v23, v5, v6

    goto :goto_2f

    :cond_32
    aput-byte v26, v5, v6

    .line 447
    :goto_2f
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v5, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v3

    move-object/from16 v5, p0

    goto :goto_31

    :pswitch_2a
    move/from16 v9, p1

    move/from16 v7, p4

    move/from16 v13, p7

    move/from16 v14, p8

    move/from16 v2, p16

    const/16 v3, 0x8

    const/16 v4, 0xa

    const/4 v10, 0x4

    new-array v4, v4, [B

    const/16 v5, 0x16

    const/4 v6, 0x0

    aput-byte v5, v4, v6

    const/4 v5, 0x1

    aput-byte v28, v4, v5

    const/4 v5, 0x2

    aput-byte v3, v4, v5

    const/16 v5, 0x10

    const/4 v6, 0x3

    aput-byte v5, v4, v6

    aput-byte v7, v4, v10

    aput-byte v9, v4, v27

    const/4 v5, 0x6

    aput-byte v38, v4, v5

    const/4 v5, 0x7

    aput-byte v21, v4, v5

    aput-byte v13, v4, v3

    const/16 v3, 0x9

    aput-byte v14, v4, v3

    :goto_30
    move-object/from16 v5, p0

    move-object v3, v4

    :goto_31
    move/from16 v4, p6

    goto/16 :goto_37

    :pswitch_2b
    move/from16 v9, p1

    move/from16 v7, p4

    move/from16 v13, p7

    move/from16 v14, p8

    move/from16 v2, p16

    move/from16 v4, v40

    const/16 v3, 0x8

    const/16 v5, 0xa

    const/4 v10, 0x4

    new-array v5, v5, [B

    const/4 v6, 0x1

    const/4 v8, 0x0

    aput-byte v6, v5, v8

    aput-byte v4, v5, v6

    const/4 v4, 0x2

    aput-byte v4, v5, v4

    const/4 v4, 0x3

    aput-byte v7, v5, v4

    aput-byte v9, v5, v10

    aput-byte v38, v5, v27

    const/4 v4, 0x6

    aput-byte v21, v5, v4

    const/4 v4, 0x7

    aput-byte v13, v5, v4

    aput-byte v14, v5, v3

    const/16 v3, 0x9

    aput-byte v2, v5, v3

    :goto_32
    move/from16 v4, p6

    move-object v3, v5

    move-object/from16 v5, p0

    goto/16 :goto_37

    :pswitch_2c
    move/from16 v9, p1

    move/from16 v7, p4

    move/from16 v13, p7

    move/from16 v14, p8

    move/from16 v2, p16

    const/16 v3, 0x8

    const/4 v10, 0x4

    goto/16 :goto_27

    :goto_33
    new-array v4, v4, [B

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput-byte v5, v4, v6

    aput-byte v3, v4, v5

    const/16 v5, 0x11

    const/4 v8, 0x2

    aput-byte v5, v4, v8

    const/4 v5, 0x3

    aput-byte v6, v4, v5

    aput-byte v6, v4, v10

    aput-byte v7, v4, v27

    const/4 v5, 0x6

    aput-byte v9, v4, v5

    const/4 v5, 0x7

    aput-byte p11, v4, v5

    aput-byte v14, v4, v3

    const/16 v3, 0x9

    aput-byte v3, v4, v3

    const/16 v3, 0xa

    aput-byte v2, v4, v3

    goto :goto_30

    :pswitch_2d
    move/from16 v9, p1

    move/from16 v7, p4

    move/from16 v13, p7

    move/from16 v14, p8

    move/from16 v2, p16

    move/from16 v4, v40

    const/16 v3, 0x8

    const/16 v8, 0x13

    const/4 v10, 0x4

    goto/16 :goto_28

    :goto_34
    new-array v5, v5, [B

    const/4 v6, 0x1

    const/4 v11, 0x0

    aput-byte v6, v5, v11

    aput-byte v4, v5, v6

    const/4 v4, 0x2

    aput-byte v8, v5, v4

    const/4 v4, 0x3

    aput-byte v11, v5, v4

    aput-byte v34, v5, v10

    aput-byte v7, v5, v27

    const/4 v4, 0x6

    aput-byte v9, v5, v4

    const/4 v4, 0x7

    aput-byte p11, v5, v4

    aput-byte v14, v5, v3

    const/16 v3, 0x9

    aput-byte v3, v5, v3

    const/16 v3, 0xa

    aput-byte v2, v5, v3
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_7

    goto :goto_32

    :pswitch_2e
    move-object/from16 v5, p0

    move/from16 v7, p4

    move/from16 v13, p7

    move/from16 v14, p8

    move-object/from16 v9, p12

    move-object/from16 v12, p13

    move-object/from16 v8, p14

    move/from16 v2, p16

    move/from16 v4, v40

    move-object/from16 v3, v42

    const/16 v6, 0x13

    const/4 v10, 0x4

    .line 566
    :try_start_c
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v8, 0x9

    if-ne v4, v8, :cond_33

    const/16 v4, 0x55

    goto :goto_35

    :cond_33
    const/16 v4, 0x54

    :goto_35
    new-array v8, v10, [B

    const/4 v9, 0x0

    aput-byte v6, v8, v9

    const/4 v6, 0x1

    aput-byte v4, v8, v6

    const/16 v4, 0x9

    const/4 v6, 0x2

    aput-byte v4, v8, v6

    .line 572
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    int-to-byte v4, v4

    const/4 v6, 0x3

    aput-byte v4, v8, v6

    .line 573
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v8, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v3

    goto/16 :goto_31

    :pswitch_2f
    move-object/from16 v5, p0

    move/from16 v9, p1

    move/from16 v7, p4

    move/from16 v13, p7

    move/from16 v14, p8

    move/from16 v2, p16

    move/from16 v4, v40

    const/16 v3, 0x8

    const/16 v6, 0xb

    const/4 v10, 0x4

    new-array v6, v6, [B

    const/4 v8, 0x1

    const/4 v11, 0x0

    aput-byte v8, v6, v11

    aput-byte v4, v6, v8

    const/16 v4, 0x11

    const/4 v8, 0x2

    aput-byte v4, v6, v8

    const/4 v4, 0x3

    aput-byte v11, v6, v4

    aput-byte v11, v6, v10

    aput-byte v7, v6, v27

    const/4 v4, 0x6

    aput-byte v9, v6, v4

    const/4 v4, 0x7

    aput-byte p11, v6, v4

    aput-byte v14, v6, v3

    const/16 v3, 0x9

    aput-byte v3, v6, v3

    const/16 v3, 0xa

    aput-byte v2, v6, v3

    move/from16 v4, p6

    move-object v3, v6

    goto/16 :goto_37

    :cond_34
    move-object/from16 v5, p0

    move/from16 v9, p1

    move/from16 v7, p4

    move/from16 v13, p7

    move/from16 v14, p8

    move-object/from16 v12, p13

    move-object/from16 v8, p14

    move/from16 v2, p16

    move/from16 v4, v40

    const/16 v3, 0x8

    const/16 v6, 0x13

    const/4 v10, 0x4

    const/16 v11, 0x9

    if-ne v4, v11, :cond_35

    goto :goto_36

    :cond_35
    move/from16 v23, v26

    :goto_36
    move/from16 v4, p15

    .line 609
    div-int/lit16 v4, v4, 0x3e8

    div-int/lit16 v4, v4, 0xe10

    if-le v4, v11, :cond_36

    const/16 v4, 0x9

    .line 611
    :cond_36
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 612
    new-instance v8, Ljava/text/DecimalFormat;

    const-string v11, "0000"

    invoke-direct {v8, v11}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    shl-int/lit8 v3, v9, 0x8

    or-int/2addr v3, v7

    const/4 v9, 0x1

    add-int/2addr v3, v9

    int-to-long v11, v3

    .line 613
    invoke-virtual {v8, v11, v12}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    .line 614
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v10, [B

    const/4 v8, 0x0

    aput-byte v6, v4, v8

    const/4 v6, 0x1

    aput-byte v23, v4, v6

    const/16 v6, 0x9

    const/4 v8, 0x2

    aput-byte v6, v4, v8

    .line 615
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    int-to-byte v6, v6

    const/4 v8, 0x3

    aput-byte v6, v4, v8

    .line 616
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v4, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v3

    goto/16 :goto_31

    :cond_37
    move-object/from16 v5, p0

    move/from16 v7, p4

    move/from16 v6, p5

    move/from16 v13, p7

    move/from16 v14, p8

    move/from16 v2, p16

    move/from16 v4, v40

    const/16 v3, 0x8

    const/4 v10, 0x4

    const/16 v8, 0xb

    new-array v8, v8, [B

    const/4 v9, 0x1

    const/4 v11, 0x0

    aput-byte v9, v8, v11

    aput-byte v4, v8, v9

    const/16 v4, 0x10

    const/4 v9, 0x2

    aput-byte v4, v8, v9

    const/4 v4, 0x3

    aput-byte v11, v8, v4

    aput-byte v7, v8, v10

    int-to-byte v4, v6

    aput-byte v4, v8, v27

    move/from16 v4, p6

    const/4 v6, 0x6

    aput-byte v4, v8, v6

    const/4 v6, 0x7

    aput-byte v13, v8, v6

    aput-byte v14, v8, v3

    const/16 v3, 0x9

    aput-byte v3, v8, v3

    const/16 v3, 0xa

    aput-byte v2, v8, v3

    move-object v3, v8

    .line 997
    :goto_37
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "btState"

    const/4 v9, 0x1

    invoke-static {v6, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v9, :cond_39

    .line 998
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object v6

    sget-object v8, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {v6, v8}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v6

    sget-object v8, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->VIDEO:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-eq v6, v8, :cond_38

    .line 999
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object v6

    sget-object v8, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {v6, v8}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v6

    sget-object v8, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->BTPHONE:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_6

    if-ne v6, v8, :cond_39

    :cond_38
    if-eqz v3, :cond_39

    .line 1002
    :try_start_d
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    if-nez v35, :cond_39

    .line 1004
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "currentReport"

    const/4 v9, 0x0

    invoke-static {v3, v9}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v8, v10}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1005
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "currentReport_disc"

    invoke-static {v3, v9}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v8, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_5

    goto :goto_38

    :catch_5
    move-exception v0

    move-object v3, v0

    .line 1010
    :try_start_e
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_39
    :goto_38
    const-string v3, "LcdLog"

    const-string v6, "VideoPlayerRepCanbus|SMALL_LCD_FUNCTION"

    .line 1013
    invoke-static {v1, v3, v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->WLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "LcdLog"

    .line 1014
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VideoPlayerRepCanbus|hzbhd_LCD_isFloatView"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "hzbhd_LCD_isFloatView"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v3, v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->WLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "LcdLog"

    .line 1015
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VideoPlayerRepCanbus|SourceSwitchRepCanbus_device"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "SourceSwitchRepCanbus_device"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v3, v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->WLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v3

    sget-object v6, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->SMALL_LCD_FUNCTION:Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;

    invoke-virtual {v6}, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getSharedBool(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 1017
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "hzbhd_LCD_isFloatView"

    const/4 v8, 0x0

    invoke-static {v3, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_3a

    return-void

    .line 1018
    :cond_3a
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v9, "SourceSwitchRepCanbus_device"

    invoke-static {v3, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v6, :cond_3b

    return-void

    .line 1019
    :cond_3b
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "LCD_MEDIA_SOURCE_ID"

    invoke-static {v3, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const-string v6, "LcdLog"

    .line 1020
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "VideoPlayerRepCanbus|sourceType ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->values()[Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v9

    aget-object v9, v9, v3

    invoke-virtual {v9}, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v6, v8}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->WLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    sget-object v6, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->VIDEO:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    invoke-virtual {v6}, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->ordinal()I

    move-result v6

    if-eq v3, v6, :cond_3c

    sget-object v6, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->BTPHONE:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    invoke-virtual {v6}, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->ordinal()I

    move-result v6

    if-eq v3, v6, :cond_3c

    return-void

    .line 1022
    :cond_3c
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "LCD_START_TIMER"

    const/4 v8, 0x0

    invoke-static {v3, v6, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1024
    iget v3, v5, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus;->currentIndex:I

    if-eq v3, v7, :cond_3e

    .line 1025
    iput v7, v5, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus;->currentIndex:I

    .line 1026
    invoke-static/range {p2 .. p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isYHT(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    move-result-object v2

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->KT:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    if-ne v2, v3, :cond_3d

    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;->E_ICON_COLON:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;Z)[B

    .line 1027
    :cond_3d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TRA "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "0000"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    int-to-long v6, v7

    invoke-virtual {v3, v6, v7}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_lcdPrintfString(Landroid/content/Context;[B)[B

    move-result-object v2

    .line 1028
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->getInstance()Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;

    move-result-object v3

    const/16 v4, 0x16

    invoke-virtual {v3, v2, v1, v4}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->reportLcdInfor([BLandroid/content/Context;I)V

    goto/16 :goto_3a

    .line 1030
    :cond_3e
    new-instance v3, Ljava/text/DecimalFormat;

    const-string v6, "00"

    invoke-direct {v3, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    int-to-long v8, v4

    invoke-virtual {v3, v8, v9}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    .line 1031
    new-instance v4, Ljava/text/DecimalFormat;

    const-string v6, "00"

    invoke-direct {v4, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    int-to-long v8, v13

    invoke-virtual {v4, v8, v9}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    .line 1032
    new-instance v6, Ljava/text/DecimalFormat;

    const-string v8, "00"

    invoke-direct {v6, v8}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    int-to-long v8, v14

    invoke-virtual {v6, v8, v9}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v6

    .line 1033
    sget-object v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus$4;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$Util$SingleSpinMachine:[I

    invoke-static/range {p2 .. p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isYHT(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    move-result-object v9

    invoke-virtual {v9}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_4

    goto/16 :goto_3a

    .line 1060
    :pswitch_30
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_lcdPrintfString(Landroid/content/Context;[B)[B

    move-result-object v2

    .line 1061
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->getInstance()Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;

    move-result-object v3

    const/16 v4, 0x15

    invoke-virtual {v3, v2, v1, v4}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->reportLcdInfor([BLandroid/content/Context;I)V

    .line 1062
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "LCD_VIDEO"

    const/4 v6, 0x0

    invoke-static {v2, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_3a

    .line 1035
    :pswitch_31
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;->E_ICON_COLON:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;

    const/4 v8, 0x1

    invoke-static {v1, v3, v8}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;Z)[B

    .line 1036
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;->E_ICON_ORDER:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;

    const/4 v8, 0x0

    invoke-static {v1, v3, v8}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;Z)[B

    .line 1037
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;->E_ICON_REPEAT:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;

    invoke-static {v1, v3, v8}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;Z)[B

    .line 1038
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;->E_ICON_SHUFFLE:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;

    invoke-static {v1, v3, v8}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;Z)[B

    if-eqz v2, :cond_41

    const/4 v3, 0x1

    if-eq v2, v3, :cond_40

    const/4 v8, 0x2

    if-eq v2, v8, :cond_3f

    goto :goto_39

    .line 1047
    :cond_3f
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;->E_ICON_ORDER:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;

    invoke-static {v1, v2, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;Z)[B

    goto :goto_39

    .line 1044
    :cond_40
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;->E_ICON_SHUFFLE:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;

    invoke-static {v1, v2, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;Z)[B

    goto :goto_39

    :cond_41
    const/4 v3, 0x1

    .line 1041
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;->E_ICON_REPEAT:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;

    invoke-static {v1, v2, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;Z)[B

    .line 1050
    :goto_39
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "0000"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    int-to-long v6, v7

    invoke-virtual {v3, v6, v7}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_lcdPrintfString(Landroid/content/Context;[B)[B

    move-result-object v2

    .line 1051
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->getInstance()Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;

    move-result-object v3

    const/16 v4, 0x15

    invoke-virtual {v3, v2, v1, v4}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->reportLcdInfor([BLandroid/content/Context;I)V

    .line 1052
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "LCD_VIDEO"

    const/4 v6, 0x0

    invoke-static {v2, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_42
    :goto_3a
    const-string v2, "LcdLog"

    const-string v3, "RadioRepCanbus|SUCCEED"

    .line 1067
    invoke-static {v1, v2, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->WLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_6

    goto :goto_3d

    :catch_6
    move-exception v0

    goto :goto_3b

    :catch_7
    move-exception v0

    move-object/from16 v5, p0

    goto :goto_3b

    :catch_8
    move-exception v0

    move-object v5, v15

    :goto_3b
    move-object v1, v0

    .line 1069
    :goto_3c
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_3d
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_f
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
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2e
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1b
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2d
        :pswitch_2d
        :pswitch_2b
        :pswitch_2b
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2e
        :pswitch_2a
        :pswitch_29
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_25
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_1a
        :pswitch_19
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_31
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_30
    .end packed-switch
.end method
