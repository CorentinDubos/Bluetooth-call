.class public Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;
.super Ljava/lang/Object;
.source "BTMusicRepCanbus.java"


# static fields
.field static mRadio:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;

.field private static reportCanbusA2dpInfo:[B


# instance fields
.field private mBtMusicAlbum:Ljava/lang/String;

.field private mBtMusicArtist:Ljava/lang/String;

.field private mBtMusicTitle:Ljava/lang/String;

.field private reportDedicatedPerSec:[B

.field private timerPerSec:Ljava/util/Timer;

.field private tsPerSec:Ljava/util/TimerTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;

    invoke-direct {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;-><init>()V

    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;->mRadio:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;

    const/16 v0, 0xa

    new-array v0, v0, [B

    .line 38
    fill-array-data v0, :array_0

    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;->reportCanbusA2dpInfo:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0xbt
        0x30t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 35
    iput-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;->mBtMusicTitle:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;->mBtMusicArtist:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;->mBtMusicAlbum:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;Landroid/content/Context;[B)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;->sndA2dpMidea(Landroid/content/Context;[B)V

    return-void
.end method

.method static synthetic access$100(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;)[B
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;->reportDedicatedPerSec:[B

    return-object p0
.end method

.method public static declared-synchronized getInstance()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;
    .locals 2

    const-class v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;

    monitor-enter v0

    .line 40
    :try_start_0
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;->mRadio:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;

    if-nez v1, :cond_0

    .line 41
    new-instance v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;

    invoke-direct {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;-><init>()V

    sput-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;->mRadio:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;

    .line 43
    :cond_0
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;->mRadio:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private sndA2dpMediaPerSec(Landroid/content/Context;[B)V
    .locals 7

    .line 48
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;->timerPerSec:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;->timerPerSec:Ljava/util/Timer;

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;->tsPerSec:Ljava/util/TimerTask;

    if-nez v0, :cond_1

    .line 52
    new-instance v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus$1;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;Landroid/content/Context;[B)V

    iput-object v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;->tsPerSec:Ljava/util/TimerTask;

    .line 57
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;->timerPerSec:Ljava/util/Timer;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_1
    return-void
.end method

.method private sndA2dpMediaPerSecNew(Landroid/content/Context;)V
    .locals 7

    .line 62
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;->timerPerSec:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;->timerPerSec:Ljava/util/Timer;

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;->tsPerSec:Ljava/util/TimerTask;

    if-nez v0, :cond_1

    .line 66
    new-instance v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus$2;

    invoke-direct {v2, p0, p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus$2;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;->tsPerSec:Ljava/util/TimerTask;

    .line 71
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;->timerPerSec:Ljava/util/Timer;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_1
    return-void
.end method

.method private sndA2dpMidea(Landroid/content/Context;[B)V
    .locals 4

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "btState"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 85
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->BTAUDIO:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-eq v0, v1, :cond_0

    .line 86
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->BTPHONE:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-ne v0, v1, :cond_1

    .line 88
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "currentReport"

    const/4 v2, 0x0

    invoke-static {p2, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 90
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

    .line 93
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public destroyTsPerSec()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;->tsPerSec:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;->timerPerSec:Ljava/util/Timer;

    .line 79
    iput-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;->tsPerSec:Ljava/util/TimerTask;

    :cond_0
    return-void
.end method

.method public reportA2dpId3Info(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 554
    iput-object p2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;->mBtMusicTitle:Ljava/lang/String;

    .line 555
    iput-object p3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;->mBtMusicArtist:Ljava/lang/String;

    .line 556
    iput-object p4, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;->mBtMusicAlbum:Ljava/lang/String;

    .line 558
    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus$5;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus$5;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface;->sendMsg(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface$CallBack;)V

    return-void
.end method

.method public reportCanbusInfo(Landroid/content/Context;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 105
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getFactoryCanType()I

    .line 106
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 107
    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isCanbusCmdPorting(Landroid/content/Context;)Z

    move-result v0

    const/16 v9, -0x7e

    const/16 v10, -0x40

    const/16 v12, 0x9

    const/16 v13, 0x8

    const/4 v14, 0x7

    const/16 v15, 0xa

    const/16 v5, 0xb

    const/16 v16, 0x5

    const/4 v3, 0x6

    const/4 v7, 0x4

    const/16 v17, 0x16

    const/4 v4, 0x2

    const/4 v8, 0x3

    const/4 v6, 0x1

    const/4 v11, 0x0

    if-eqz v0, :cond_2

    .line 109
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus$6;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v18

    aget v0, v0, v18

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    new-array v0, v15, [B

    aput-byte v17, v0, v11

    aput-byte v10, v0, v6

    aput-byte v5, v0, v4

    aput-byte v11, v0, v8

    aput-byte v11, v0, v7

    aput-byte v11, v0, v16

    aput-byte v11, v0, v3

    aput-byte v11, v0, v14

    aput-byte v11, v0, v13

    aput-byte v11, v0, v12

    .line 218
    invoke-direct {v1, v2, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;->sndA2dpMidea(Landroid/content/Context;[B)V

    goto/16 :goto_1

    .line 207
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v10, "canbus_cur_vol"

    invoke-static {v0, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    int-to-byte v0, v0

    if-lez v0, :cond_0

    move v0, v7

    goto :goto_0

    :cond_0
    const/16 v0, 0xc

    :goto_0
    int-to-byte v0, v0

    .line 209
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v10

    sget-object v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->BENZ_B200_LUZHENG:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    if-ne v10, v15, :cond_1

    xor-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    :cond_1
    new-array v10, v5, [B

    aput-byte v17, v10, v11

    aput-byte v9, v10, v6

    aput-byte v12, v10, v4

    const/4 v15, -0x1

    aput-byte v15, v10, v8

    aput-byte v15, v10, v7

    aput-byte v15, v10, v16

    aput-byte v15, v10, v3

    aput-byte v15, v10, v14

    aput-byte v0, v10, v13

    aput-byte v15, v10, v12

    const/16 v0, 0xa

    aput-byte v15, v10, v0

    .line 212
    invoke-direct {v1, v2, v10}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;->sndA2dpMidea(Landroid/content/Context;[B)V

    goto/16 :goto_1

    .line 203
    :pswitch_2
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->A2DP:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;

    const/16 v10, 0x12

    invoke-static {v2, v0, v10, v11, v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportSimpleMediaInfo(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;IZZ)V

    goto/16 :goto_1

    .line 199
    :pswitch_3
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE;->A2DP:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE;

    const-string v10, "            "

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-static {v2, v0, v11, v10}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportHiworldMideaInfo(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE;Z[B)V

    goto/16 :goto_1

    .line 191
    :pswitch_4
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    new-array v10, v14, [B

    aput-byte v17, v10, v11

    const/16 v15, -0x7c

    aput-byte v15, v10, v6

    const/16 v15, 0xa

    aput-byte v15, v10, v4

    aput-byte v11, v10, v8

    aput-byte v11, v10, v7

    aput-byte v11, v10, v16

    aput-byte v11, v10, v3

    invoke-virtual {v0, v10}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_1

    .line 185
    :pswitch_5
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->A2DP:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;

    const/16 v10, 0x40

    invoke-static {v2, v0, v10, v11, v11}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportSimpleMediaInfo(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;IZZ)V

    goto/16 :goto_1

    .line 181
    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v10, "canbus_cur_vol"

    invoke-static {v0, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    int-to-byte v0, v0

    const/16 v10, 0xe

    new-array v15, v10, [B

    aput-byte v17, v15, v11

    const/16 v10, 0xc

    aput-byte v10, v15, v6

    const/16 v10, 0x40

    aput-byte v10, v15, v4

    aput-byte v0, v15, v8

    aput-byte v13, v15, v7

    aput-byte v11, v15, v16

    aput-byte v11, v15, v3

    aput-byte v11, v15, v14

    aput-byte v11, v15, v13

    aput-byte v11, v15, v12

    const/16 v0, 0xa

    aput-byte v11, v15, v0

    aput-byte v11, v15, v5

    const/16 v0, 0xc

    aput-byte v11, v15, v0

    const/16 v0, 0xd

    aput-byte v11, v15, v0

    .line 182
    invoke-direct {v1, v2, v15}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;->sndA2dpMidea(Landroid/content/Context;[B)V

    goto/16 :goto_1

    :pswitch_7
    move v0, v15

    new-array v10, v0, [B

    aput-byte v17, v10, v11

    aput-byte v9, v10, v6

    aput-byte v5, v10, v4

    aput-byte v11, v10, v8

    aput-byte v11, v10, v7

    aput-byte v11, v10, v16

    aput-byte v11, v10, v3

    aput-byte v11, v10, v14

    aput-byte v11, v10, v13

    aput-byte v11, v10, v12

    .line 171
    invoke-direct {v1, v2, v10}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;->sndA2dpMidea(Landroid/content/Context;[B)V

    goto/16 :goto_1

    .line 167
    :pswitch_8
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->A2DP:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;

    const/16 v10, 0x40

    invoke-static {v2, v0, v10, v11, v11}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportSimpleMediaInfo(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;IZZ)V

    goto/16 :goto_1

    :pswitch_9
    new-array v0, v8, [B

    aput-byte v17, v0, v11

    aput-byte v9, v0, v6

    aput-byte v16, v0, v4

    .line 164
    invoke-direct {v1, v2, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;->sndA2dpMediaPerSec(Landroid/content/Context;[B)V

    goto/16 :goto_1

    :pswitch_a
    new-array v0, v8, [B

    aput-byte v17, v0, v11

    aput-byte v9, v0, v6

    aput-byte v3, v0, v4

    .line 161
    invoke-direct {v1, v2, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;->sndA2dpMediaPerSec(Landroid/content/Context;[B)V

    goto/16 :goto_1

    :pswitch_b
    new-array v0, v8, [B

    aput-byte v17, v0, v11

    const/16 v10, -0x7a

    aput-byte v10, v0, v6

    aput-byte v3, v0, v4

    .line 157
    invoke-direct {v1, v2, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;->sndA2dpMediaPerSec(Landroid/content/Context;[B)V

    goto :goto_1

    .line 154
    :pswitch_c
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->A2DP:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;

    const/16 v10, 0x30

    invoke-static {v2, v0, v10, v11, v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportSimpleMediaInfo(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;IZZ)V

    goto :goto_1

    .line 151
    :pswitch_d
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_XINBAS_MEDIA_TYPE;->MID_A2DP:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_XINBAS_MEDIA_TYPE;

    invoke-static {v2, v0, v11}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportXinbasMediaInfo(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_XINBAS_MEDIA_TYPE;Z)V

    goto :goto_1

    .line 147
    :pswitch_e
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->A2DP:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;

    const/16 v10, 0x30

    invoke-static {v2, v0, v10, v11, v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportSimpleMediaInfo(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;IZZ)V

    goto :goto_1

    .line 133
    :pswitch_f
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->A2DP:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;

    const/16 v10, 0x11

    invoke-static {v2, v0, v10, v11, v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportSimpleMediaInfo(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;IZZ)V

    goto :goto_1

    .line 127
    :pswitch_10
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->A2DP:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;

    const/16 v10, 0xff

    invoke-static {v2, v0, v10, v11, v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportSimpleMediaInfo(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;IZZ)V

    goto :goto_1

    .line 121
    :pswitch_11
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->A2DP:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;

    const/16 v10, 0x30

    invoke-static {v2, v0, v10, v11, v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportSimpleMediaInfo(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;IZZ)V

    goto :goto_1

    :pswitch_12
    const/16 v10, 0x30

    .line 117
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->A2DP:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;

    invoke-static {v2, v0, v10, v11, v11}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportSimpleMediaInfo(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;IZZ)V

    new-array v0, v13, [B

    aput-byte v17, v0, v11

    const/16 v10, -0x3d

    aput-byte v10, v0, v6

    aput-byte v11, v0, v4

    aput-byte v11, v0, v8

    aput-byte v11, v0, v7

    aput-byte v11, v0, v16

    aput-byte v11, v0, v3

    aput-byte v11, v0, v14

    .line 118
    invoke-direct {v1, v2, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;->sndA2dpMidea(Landroid/content/Context;[B)V

    goto :goto_1

    .line 113
    :pswitch_13
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->A2DP:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;

    const/16 v10, 0xff

    invoke-static {v2, v0, v10, v11, v11}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportSimpleMediaInfo(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;IZZ)V

    new-array v0, v13, [B

    aput-byte v17, v0, v11

    const/16 v10, -0x3d

    aput-byte v10, v0, v6

    aput-byte v11, v0, v4

    aput-byte v11, v0, v8

    aput-byte v11, v0, v7

    aput-byte v11, v0, v16

    aput-byte v11, v0, v3

    aput-byte v11, v0, v14

    .line 114
    invoke-direct {v1, v2, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;->sndA2dpMidea(Landroid/content/Context;[B)V

    :goto_1
    move v10, v6

    goto :goto_3

    :cond_2
    :goto_2
    move v10, v11

    .line 240
    :goto_3
    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus$3;

    invoke-direct {v0, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus$3;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;)V

    invoke-static {v2, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface;->sendMsg(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface$CallBack;)V

    .line 248
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus$6;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v15

    invoke-virtual {v15}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v15

    aget v0, v0, v15

    const/16 v15, 0x24

    if-eq v0, v15, :cond_9

    const/16 v15, 0x2a

    if-eq v0, v15, :cond_8

    packed-switch v0, :pswitch_data_1

    .line 493
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;->reportCanbusA2dpInfo:[B

    :goto_4
    move v3, v11

    goto/16 :goto_7

    :pswitch_14
    new-array v0, v8, [B

    aput-byte v17, v0, v11

    aput-byte v12, v0, v6

    aput-byte v5, v0, v4

    .line 489
    invoke-direct {v1, v2, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;->sndA2dpMidea(Landroid/content/Context;[B)V

    new-array v0, v8, [B

    aput-byte v17, v0, v11

    aput-byte v12, v0, v6

    const/16 v3, 0x11

    aput-byte v3, v0, v4

    goto :goto_4

    :pswitch_15
    new-array v0, v7, [B

    aput-byte v17, v0, v11

    const/16 v3, -0x40

    aput-byte v3, v0, v6

    aput-byte v5, v0, v4

    aput-byte v11, v0, v8

    const/16 v3, 0xa

    .line 486
    invoke-static {v0, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->makeBytesFixedLength([BI)[B

    move-result-object v0

    goto :goto_4

    :pswitch_16
    new-array v0, v4, [B

    aput-byte v17, v0, v11

    const/16 v3, -0x7d

    aput-byte v3, v0, v6

    const-string v3, "BT MUSIC"

    .line 464
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v0, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v0

    const/16 v3, 0xe

    .line 465
    invoke-static {v0, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->makeBytesFixedLength([BI)[B

    move-result-object v0

    goto :goto_4

    :pswitch_17
    new-array v3, v11, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v0, "BT MUSIC"

    const-string v5, "Unicode"

    .line 452
    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    new-array v0, v8, [B

    aput-byte v17, v0, v11

    const/16 v5, -0x6b

    aput-byte v5, v0, v6

    const/16 v5, 0xa

    aput-byte v5, v0, v4

    .line 453
    invoke-static {v0, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v3

    .line 454
    array-length v0, v3

    const/16 v4, 0x27

    if-ge v0, v4, :cond_3

    const/16 v0, 0x27

    .line 455
    invoke-static {v3, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->CompensateZero([BI)[B

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :cond_3
    move-object v0, v3

    goto :goto_4

    :catch_0
    move-exception v0

    move-object/from16 v19, v3

    move-object v3, v0

    move-object/from16 v0, v19

    .line 458
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :pswitch_18
    new-array v0, v8, [B

    aput-byte v17, v0, v11

    const/16 v3, -0x40

    aput-byte v3, v0, v6

    aput-byte v5, v0, v4

    const/16 v3, 0xa

    .line 440
    invoke-static {v0, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->CompensateZero([BI)[B

    move-result-object v0

    new-array v3, v8, [B

    aput-byte v17, v3, v11

    const/16 v5, 0x70

    aput-byte v5, v3, v6

    const/16 v5, 0x10

    aput-byte v5, v3, v4

    const-string v4, "BT MUSIC"

    .line 443
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 444
    invoke-static {v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->phoneNum2UnicodeLittleExtra([B)[B

    move-result-object v4

    .line 445
    invoke-static {v3, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v3

    .line 446
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_4

    :pswitch_19
    const/16 v0, 0xc

    new-array v0, v0, [B

    aput-byte v17, v0, v11

    const/16 v9, -0x40

    aput-byte v9, v0, v6

    aput-byte v5, v0, v4

    aput-byte v11, v0, v8

    aput-byte v11, v0, v7

    aput-byte v11, v0, v16

    aput-byte v11, v0, v3

    aput-byte v11, v0, v14

    aput-byte v11, v0, v13

    aput-byte v11, v0, v12

    const/16 v3, 0xa

    aput-byte v11, v0, v3

    aput-byte v11, v0, v5

    goto/16 :goto_4

    :pswitch_1a
    new-array v0, v3, [B

    aput-byte v17, v0, v11

    aput-byte v12, v0, v6

    aput-byte v5, v0, v4

    aput-byte v11, v0, v8

    aput-byte v11, v0, v7

    aput-byte v11, v0, v16

    goto/16 :goto_4

    :pswitch_1b
    new-array v0, v7, [B

    aput-byte v17, v0, v11

    const/16 v3, -0x3c

    aput-byte v3, v0, v6

    aput-byte v5, v0, v4

    aput-byte v11, v0, v8

    goto/16 :goto_4

    :pswitch_1c
    new-array v0, v11, [B

    .line 427
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v3

    new-array v7, v7, [B

    aput-byte v17, v7, v11

    const/16 v9, -0x40

    aput-byte v9, v7, v6

    aput-byte v5, v7, v4

    aput-byte v11, v7, v8

    invoke-virtual {v3, v7}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_4

    :pswitch_1d
    const/16 v0, 0xe

    new-array v0, v0, [B

    aput-byte v17, v0, v11

    const/16 v9, -0x40

    aput-byte v9, v0, v6

    aput-byte v5, v0, v4

    aput-byte v11, v0, v8

    aput-byte v11, v0, v7

    aput-byte v11, v0, v16

    aput-byte v11, v0, v3

    aput-byte v11, v0, v14

    aput-byte v11, v0, v13

    aput-byte v11, v0, v12

    const/16 v3, 0xa

    aput-byte v11, v0, v3

    aput-byte v11, v0, v5

    const/16 v3, 0xc

    aput-byte v11, v0, v3

    const/16 v3, 0xd

    aput-byte v11, v0, v3

    .line 420
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "currentReportPrev"

    invoke-static {v0, v11}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v5, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 421
    invoke-direct {v1, v2, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;->sndA2dpMidea(Landroid/content/Context;[B)V

    new-array v0, v8, [B

    aput-byte v17, v0, v11

    const/16 v3, -0x3d

    aput-byte v3, v0, v6

    aput-byte v8, v0, v4

    const-string v3, " "

    .line 422
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v0, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v0

    goto/16 :goto_4

    :pswitch_1e
    const/16 v0, 0xa

    new-array v0, v0, [B

    aput-byte v17, v0, v11

    const/16 v9, -0x40

    aput-byte v9, v0, v6

    aput-byte v5, v0, v4

    aput-byte v11, v0, v8

    aput-byte v11, v0, v7

    aput-byte v11, v0, v16

    aput-byte v11, v0, v3

    aput-byte v11, v0, v14

    aput-byte v11, v0, v13

    aput-byte v11, v0, v12

    goto/16 :goto_4

    :pswitch_1f
    const/16 v0, 0xf

    new-array v0, v0, [B

    aput-byte v17, v0, v11

    const/16 v9, -0x6f

    aput-byte v9, v0, v6

    const/16 v9, -0x7b

    aput-byte v9, v0, v4

    aput-byte v11, v0, v8

    aput-byte v11, v0, v7

    aput-byte v11, v0, v16

    aput-byte v11, v0, v3

    aput-byte v11, v0, v14

    aput-byte v11, v0, v13

    aput-byte v11, v0, v12

    const/16 v3, 0xa

    aput-byte v11, v0, v3

    aput-byte v11, v0, v5

    const/16 v3, 0xc

    aput-byte v11, v0, v3

    const/16 v3, 0xd

    aput-byte v11, v0, v3

    const/16 v3, 0xe

    aput-byte v11, v0, v3

    goto/16 :goto_4

    :pswitch_20
    new-array v0, v8, [B

    aput-byte v17, v0, v11

    aput-byte v9, v0, v6

    aput-byte v3, v0, v4

    goto/16 :goto_4

    .line 403
    :pswitch_21
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->A2DP:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;

    const/16 v5, 0xff

    invoke-static {v2, v0, v5, v11, v11}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportSimpleMediaInfo(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;IZZ)V

    new-array v0, v13, [B

    aput-byte v17, v0, v11

    const/16 v5, -0x3d

    aput-byte v5, v0, v6

    aput-byte v11, v0, v4

    aput-byte v11, v0, v8

    aput-byte v11, v0, v7

    aput-byte v11, v0, v16

    aput-byte v11, v0, v3

    aput-byte v11, v0, v14

    goto/16 :goto_4

    :pswitch_22
    const/16 v0, 0xa

    new-array v0, v0, [B

    aput-byte v17, v0, v11

    const/16 v9, -0x40

    aput-byte v9, v0, v6

    aput-byte v5, v0, v4

    aput-byte v11, v0, v8

    aput-byte v11, v0, v7

    aput-byte v11, v0, v16

    aput-byte v11, v0, v3

    aput-byte v11, v0, v14

    aput-byte v11, v0, v13

    aput-byte v11, v0, v12

    goto/16 :goto_4

    .line 379
    :pswitch_23
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v12, "btState"

    invoke-static {v0, v12, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v6, :cond_5

    .line 380
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object v0

    sget-object v12, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {v0, v12}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v0

    sget-object v12, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->BTAUDIO:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-eq v0, v12, :cond_4

    .line 381
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object v0

    sget-object v12, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {v0, v12}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v0

    sget-object v12, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->BTPHONE:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-ne v0, v12, :cond_5

    .line 383
    :cond_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v12, "action_qz_oringinal_screen_rep_0x83_status"

    .line 384
    invoke-virtual {v0, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "qz_src_mode_status"

    .line 385
    invoke-virtual {v0, v12, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 386
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "QZ_ORIGINAL_SRC_MODE_PREV_STATUS"

    invoke-static {v12, v13, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 387
    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v0, "QZ"

    const-string v12, "qz_src_mode_status snd android"

    .line 388
    invoke-static {v0, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    new-array v0, v3, [B

    aput-byte v17, v0, v11

    aput-byte v9, v0, v6

    aput-byte v5, v0, v4

    aput-byte v11, v0, v8

    aput-byte v11, v0, v7

    const/4 v3, -0x1

    aput-byte v3, v0, v16

    move v3, v6

    goto/16 :goto_7

    :pswitch_24
    new-array v0, v3, [B

    aput-byte v17, v0, v11

    aput-byte v9, v0, v6

    const/16 v3, 0xa

    aput-byte v3, v0, v4

    const/4 v3, -0x1

    aput-byte v3, v0, v8

    aput-byte v3, v0, v7

    aput-byte v3, v0, v16

    goto/16 :goto_4

    :pswitch_25
    const-string v0, "0010256 6666"

    .line 365
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    new-array v3, v8, [B

    aput-byte v17, v3, v11

    const/16 v5, -0x6f

    aput-byte v5, v3, v6

    const/16 v5, -0x7b

    aput-byte v5, v3, v4

    .line 367
    invoke-static {v3, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v0

    goto/16 :goto_4

    .line 355
    :pswitch_26
    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->getMpegplayerManager(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->isDiscExist()Z

    move-result v0

    invoke-static {v11, v11, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->setIntByteWithBit(IIZ)I

    move-result v0

    const/16 v9, 0x10

    new-array v9, v9, [B

    aput-byte v17, v9, v11

    const/16 v15, -0x6f

    aput-byte v15, v9, v6

    const/16 v15, 0xa

    aput-byte v15, v9, v4

    int-to-byte v0, v0

    aput-byte v0, v9, v8

    aput-byte v11, v9, v7

    aput-byte v11, v9, v16

    aput-byte v11, v9, v3

    aput-byte v11, v9, v14

    aput-byte v11, v9, v13

    aput-byte v11, v9, v12

    const/16 v0, 0xa

    aput-byte v11, v9, v0

    aput-byte v11, v9, v5

    const/16 v0, 0xc

    aput-byte v11, v9, v0

    const/16 v0, 0xd

    aput-byte v11, v9, v0

    const/16 v0, 0xe

    aput-byte v11, v9, v0

    const/16 v0, 0xf

    aput-byte v11, v9, v0

    .line 357
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    move-object v0, v9

    goto/16 :goto_4

    :pswitch_27
    new-array v0, v8, [B

    aput-byte v17, v0, v11

    const/16 v3, -0x2e

    aput-byte v3, v0, v6

    const/16 v3, 0xa

    aput-byte v3, v0, v4

    const-string v3, "            "

    .line 335
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v0, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v0

    goto/16 :goto_4

    :pswitch_28
    const/16 v0, 0xa

    new-array v0, v0, [B

    aput-byte v6, v0, v11

    aput-byte v14, v0, v6

    const/16 v5, 0x30

    aput-byte v5, v0, v4

    aput-byte v11, v0, v8

    aput-byte v11, v0, v7

    aput-byte v11, v0, v16

    aput-byte v11, v0, v3

    aput-byte v11, v0, v14

    aput-byte v11, v0, v13

    aput-byte v11, v0, v12

    goto/16 :goto_4

    :pswitch_29
    new-array v0, v8, [B

    aput-byte v17, v0, v11

    const/16 v3, -0x70

    aput-byte v3, v0, v6

    aput-byte v16, v0, v4

    const-string v3, "A2DP"

    .line 280
    invoke-static {v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->string2UnicodeBIG(Ljava/lang/String;)[B

    move-result-object v3

    .line 281
    invoke-static {v0, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v0

    const/16 v3, 0x21

    new-array v4, v3, [B

    move v5, v11

    .line 284
    :goto_5
    array-length v7, v0

    if-ge v5, v7, :cond_7

    if-ne v3, v5, :cond_6

    goto :goto_6

    .line 287
    :cond_6
    aget-byte v7, v0, v5

    aput-byte v7, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_7
    :goto_6
    move-object v0, v4

    goto/16 :goto_4

    :pswitch_2a
    new-array v0, v7, [B

    aput-byte v17, v0, v11

    const/16 v3, -0x40

    aput-byte v3, v0, v6

    aput-byte v5, v0, v4

    aput-byte v11, v0, v8

    goto/16 :goto_4

    :cond_8
    new-array v0, v7, [B

    const/16 v3, 0x13

    aput-byte v3, v0, v11

    const/16 v3, 0x15

    aput-byte v3, v0, v6

    aput-byte v11, v0, v4

    int-to-byte v3, v7

    aput-byte v3, v0, v8

    const-string v3, "A2DP"

    .line 263
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v0, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v0

    goto/16 :goto_4

    :cond_9
    new-array v0, v7, [B

    const/16 v5, 0x13

    aput-byte v5, v0, v11

    const/16 v5, 0x53

    aput-byte v5, v0, v6

    aput-byte v11, v0, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v8

    const-string v3, "AUX-IN"

    .line 269
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v0, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v0

    goto/16 :goto_4

    .line 497
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "btState"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_d

    .line 498
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object v4

    sget-object v5, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {v4, v5}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v4

    sget-object v5, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->BTAUDIO:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-eq v4, v5, :cond_a

    .line 499
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object v4

    sget-object v5, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {v4, v5}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v4

    sget-object v5, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->BTPHONE:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-ne v4, v5, :cond_d

    :cond_a
    if-nez v3, :cond_b

    .line 502
    :try_start_3
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto :goto_8

    :catch_1
    move-exception v0

    goto :goto_9

    :cond_b
    :goto_8
    if-nez v10, :cond_d

    if-nez v3, :cond_c

    .line 506
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "currentReport"

    invoke-static {v0, v11}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 507
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "currentReport_disc"

    invoke-static {v0, v11}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_a

    .line 511
    :goto_9
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_a

    :catch_2
    move-exception v0

    .line 518
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_d
    :goto_a
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2e
        :pswitch_2a
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_27
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
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
    .end packed-switch
.end method

.method public reportDestroyCanbusInfo(Landroid/content/Context;)V
    .locals 3

    .line 523
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "btState"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 525
    :try_start_0
    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus$4;

    invoke-direct {v0, p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus$4;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;)V

    invoke-static {p1, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface;->sendMsg(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface$CallBack;)V

    .line 531
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getFactoryCanType()I

    move-result v0

    const/16 v1, 0x79

    if-eq v0, v1, :cond_0

    .line 532
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getFactoryCanType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 533
    :cond_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->BTAUDIO:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-eq v0, v1, :cond_1

    .line 534
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->BTPHONE:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-ne v0, v1, :cond_2

    .line 535
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "currentReport"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 538
    :cond_2
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTMusicRepCanbus;->destroyTsPerSec()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 540
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method
