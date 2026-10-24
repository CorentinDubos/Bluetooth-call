.class public Lcom/hzbhd/midwareproxy/canbus/reportCanbus/ATVRepCanbus;
.super Ljava/lang/Object;
.source "ATVRepCanbus.java"


# static fields
.field static mRadio:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/ATVRepCanbus;

.field private static reportCanbusAtvInfo:[B

.field private static reportCanbusGolfAtvInfo:[B

.field private static reportCanbusKiaHyundaiAtvInfo:[B


# instance fields
.field private reportDedicatedPerSec:[B

.field private timerPerSec:Ljava/util/Timer;

.field private tsPerSec:Ljava/util/TimerTask;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xa

    new-array v1, v0, [B

    .line 31
    fill-array-data v1, :array_0

    sput-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/ATVRepCanbus;->reportCanbusAtvInfo:[B

    new-array v1, v0, [B

    .line 32
    fill-array-data v1, :array_1

    sput-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/ATVRepCanbus;->reportCanbusGolfAtvInfo:[B

    new-array v0, v0, [B

    .line 33
    fill-array-data v0, :array_2

    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/ATVRepCanbus;->reportCanbusKiaHyundaiAtvInfo:[B

    .line 39
    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/ATVRepCanbus;

    invoke-direct {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/ATVRepCanbus;-><init>()V

    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/ATVRepCanbus;->mRadio:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/ATVRepCanbus;

    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x3t
        0x30t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x1t
        0x3t
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
        0x1t
        0x7t
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
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/ATVRepCanbus;)[B
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/ATVRepCanbus;->reportDedicatedPerSec:[B

    return-object p0
.end method

.method static synthetic access$100(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/ATVRepCanbus;Landroid/content/Context;[B)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/ATVRepCanbus;->sndAtvMidea(Landroid/content/Context;[B)V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/ATVRepCanbus;
    .locals 2

    const-class v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/ATVRepCanbus;

    monitor-enter v0

    .line 41
    :try_start_0
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/ATVRepCanbus;->mRadio:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/ATVRepCanbus;

    if-nez v1, :cond_0

    .line 42
    new-instance v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/ATVRepCanbus;

    invoke-direct {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/ATVRepCanbus;-><init>()V

    sput-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/ATVRepCanbus;->mRadio:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/ATVRepCanbus;

    .line 44
    :cond_0
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/ATVRepCanbus;->mRadio:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/ATVRepCanbus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private sndAtvMediaPerSecNew(Landroid/content/Context;)V
    .locals 7

    .line 48
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/ATVRepCanbus;->timerPerSec:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/ATVRepCanbus;->timerPerSec:Ljava/util/Timer;

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/ATVRepCanbus;->tsPerSec:Ljava/util/TimerTask;

    if-nez v0, :cond_1

    .line 52
    new-instance v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/ATVRepCanbus$1;

    invoke-direct {v2, p0, p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/ATVRepCanbus$1;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/ATVRepCanbus;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/ATVRepCanbus;->tsPerSec:Ljava/util/TimerTask;

    .line 57
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/ATVRepCanbus;->timerPerSec:Ljava/util/Timer;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_1
    return-void
.end method

.method private sndAtvMidea(Landroid/content/Context;[B)V
    .locals 4

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "btState"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 63
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->ATV:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-eq v0, v1, :cond_0

    .line 64
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->BTPHONE:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-ne v0, v1, :cond_1

    .line 66
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "currentReport"

    const/4 v2, 0x0

    invoke-static {p2, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 68
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

    .line 71
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public reportCanbusInfo(Landroid/content/Context;)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 79
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 80
    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isCanbusCmdPorting(Landroid/content/Context;)Z

    move-result v2

    const/16 v3, -0x7e

    const/16 v5, 0xa

    const/4 v6, 0x6

    const/4 v7, 0x5

    const/4 v8, 0x7

    const/16 v9, 0x8

    const/4 v10, 0x4

    const/16 v11, 0x16

    const/4 v12, 0x2

    const/4 v13, 0x3

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eqz v2, :cond_0

    .line 82
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/ATVRepCanbus$4;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v16

    aget v2, v2, v16

    const/16 v4, 0xff

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 128
    :pswitch_0
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE;->TV:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE;

    const-string v4, "            "

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v0, v2, v15, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportHiworldMideaInfo(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE;Z[B)V

    goto :goto_0

    :pswitch_1
    new-array v2, v8, [B

    aput-byte v11, v2, v15

    const/16 v4, -0x7c

    aput-byte v4, v2, v14

    aput-byte v13, v2, v12

    aput-byte v15, v2, v13

    aput-byte v15, v2, v10

    aput-byte v15, v2, v7

    aput-byte v15, v2, v6

    .line 120
    invoke-direct {v1, v0, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/ATVRepCanbus;->sndAtvMidea(Landroid/content/Context;[B)V

    goto :goto_0

    :pswitch_2
    new-array v2, v5, [B

    aput-byte v11, v2, v15

    aput-byte v3, v2, v14

    aput-byte v13, v2, v12

    aput-byte v15, v2, v13

    aput-byte v15, v2, v10

    aput-byte v15, v2, v7

    aput-byte v15, v2, v6

    aput-byte v15, v2, v8

    aput-byte v15, v2, v9

    const/16 v4, 0x9

    aput-byte v15, v2, v4

    .line 114
    invoke-direct {v1, v0, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/ATVRepCanbus;->sndAtvMidea(Landroid/content/Context;[B)V

    goto :goto_0

    .line 110
    :pswitch_3
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_XINBAS_MEDIA_TYPE;->MID_TV:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_XINBAS_MEDIA_TYPE;

    invoke-static {v0, v2, v15}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportXinbasMediaInfo(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_XINBAS_MEDIA_TYPE;Z)V

    goto :goto_0

    .line 106
    :pswitch_4
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->ATV:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;

    invoke-static {v0, v2, v4, v15, v14}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportSimpleMediaInfo(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;IZZ)V

    goto :goto_0

    .line 85
    :pswitch_5
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->ATV:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;

    invoke-static {v0, v2, v4, v15, v15}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportSimpleMediaInfo(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;IZZ)V

    :goto_0
    move v2, v14

    goto :goto_2

    :cond_0
    :goto_1
    move v2, v15

    .line 149
    :goto_2
    new-instance v4, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/ATVRepCanbus$2;

    invoke-direct {v4, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/ATVRepCanbus$2;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/ATVRepCanbus;)V

    invoke-static {v0, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface;->sendMsg(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface$CallBack;)V

    .line 157
    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/ATVRepCanbus$4;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v17

    aget v4, v4, v17
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "btState"

    if-eq v4, v13, :cond_6

    if-eq v4, v10, :cond_6

    packed-switch v4, :pswitch_data_1

    const/16 v18, -0x1

    const/16 v19, 0xb

    const/16 v20, -0x40

    packed-switch v4, :pswitch_data_2

    .line 338
    :try_start_1
    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/ATVRepCanbus;->reportCanbusAtvInfo:[B

    goto/16 :goto_6

    :pswitch_6
    new-array v4, v5, [B

    aput-byte v11, v4, v15

    aput-byte v20, v4, v14

    aput-byte v13, v4, v12

    aput-byte v15, v4, v13

    aput-byte v15, v4, v10

    aput-byte v15, v4, v7

    aput-byte v15, v4, v6

    aput-byte v15, v4, v8

    const/16 v5, 0x8

    aput-byte v15, v4, v5

    const/16 v5, 0x9

    aput-byte v15, v4, v5

    goto/16 :goto_6

    :pswitch_7
    new-array v4, v10, [B

    aput-byte v11, v4, v15

    aput-byte v20, v4, v14

    const/16 v5, 0xc

    aput-byte v5, v4, v12

    aput-byte v15, v4, v13

    goto/16 :goto_6

    :pswitch_8
    const/16 v4, 0xc

    new-array v4, v4, [B

    aput-byte v11, v4, v15

    aput-byte v20, v4, v14

    aput-byte v13, v4, v12

    aput-byte v18, v4, v13

    aput-byte v15, v4, v10

    aput-byte v15, v4, v7

    aput-byte v15, v4, v6

    aput-byte v15, v4, v8

    const/16 v6, 0x8

    aput-byte v15, v4, v6

    const/16 v6, 0x9

    aput-byte v15, v4, v6

    aput-byte v15, v4, v5

    aput-byte v15, v4, v19

    .line 316
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "currentReportPrev"

    invoke-static {v4, v15}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 317
    invoke-direct {v1, v0, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/ATVRepCanbus;->sndAtvMidea(Landroid/content/Context;[B)V

    new-array v4, v13, [B

    aput-byte v11, v4, v15

    const/16 v5, -0x3d

    aput-byte v5, v4, v14

    aput-byte v13, v4, v12

    const-string v5, " "

    .line 318
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v4, v5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v4

    goto/16 :goto_6

    .line 298
    :pswitch_9
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v3, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v14, :cond_2

    .line 299
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object v4

    sget-object v5, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {v4, v5}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v4

    sget-object v5, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->ATV:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-eq v4, v5, :cond_1

    .line 300
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object v4

    sget-object v5, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {v4, v5}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v4

    sget-object v5, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->BTPHONE:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-ne v4, v5, :cond_2

    .line 301
    :cond_1
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "action_qz_oringinal_screen_rep_0x83_status"

    .line 302
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "qz_src_mode_status"

    .line 303
    invoke-virtual {v4, v5, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 304
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "QZ_ORIGINAL_SRC_MODE_PREV_STATUS"

    invoke-static {v5, v6, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 305
    invoke-virtual {v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v4, "QZ"

    const-string v5, "qz_src_mode_status snd dtv"

    .line 306
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_2
    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/ATVRepCanbus;->reportCanbusGolfAtvInfo:[B

    move v5, v14

    goto/16 :goto_7

    :pswitch_a
    new-array v4, v6, [B

    aput-byte v11, v4, v15

    const/16 v5, -0x7e

    aput-byte v5, v4, v14

    aput-byte v19, v4, v12

    aput-byte v15, v4, v13

    aput-byte v15, v4, v10

    aput-byte v18, v4, v7

    goto/16 :goto_6

    .line 285
    :pswitch_b
    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->getMpegplayerManager(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->isDiscExist()Z

    move-result v4

    invoke-static {v15, v15, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->setIntByteWithBit(IIZ)I

    move-result v4

    const/16 v9, 0x10

    new-array v9, v9, [B

    aput-byte v11, v9, v15

    const/16 v11, -0x6f

    aput-byte v11, v9, v14

    const/16 v11, 0x8

    aput-byte v11, v9, v12

    int-to-byte v4, v4

    aput-byte v4, v9, v13

    aput-byte v15, v9, v10

    aput-byte v15, v9, v7

    aput-byte v15, v9, v6

    aput-byte v15, v9, v8

    const/16 v4, 0x8

    aput-byte v15, v9, v4

    const/16 v4, 0x9

    aput-byte v15, v9, v4

    aput-byte v15, v9, v5

    aput-byte v15, v9, v19

    const/16 v4, 0xc

    aput-byte v15, v9, v4

    const/16 v4, 0xd

    aput-byte v15, v9, v4

    const/16 v4, 0xe

    aput-byte v15, v9, v4

    const/16 v4, 0xf

    aput-byte v15, v9, v4

    move-object v4, v9

    goto/16 :goto_6

    :pswitch_c
    const/16 v4, 0x8

    new-array v4, v4, [B

    aput-byte v11, v4, v15

    const/16 v5, -0x6d

    aput-byte v5, v4, v14

    const/16 v5, 0xf

    aput-byte v5, v4, v12

    aput-byte v15, v4, v13

    aput-byte v15, v4, v10

    aput-byte v15, v4, v7

    aput-byte v15, v4, v6

    aput-byte v15, v4, v8

    goto/16 :goto_6

    .line 224
    :pswitch_d
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "canbus_cur_vol"

    invoke-static {v4, v5, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    new-array v5, v7, [B

    aput-byte v11, v5, v15

    const/16 v6, 0xc

    aput-byte v6, v5, v14

    const/16 v6, 0x51

    aput-byte v6, v5, v12

    aput-byte v4, v5, v13

    int-to-byte v4, v13

    aput-byte v4, v5, v10

    const-string v4, "ATV"

    .line 226
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v5, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v4

    const/16 v5, 0xe

    .line 227
    invoke-static {v4, v5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->makeBytesFixedLength([BI)[B

    move-result-object v4

    goto/16 :goto_6

    :pswitch_e
    const/16 v4, -0x6f

    const/16 v5, 0x8

    .line 214
    invoke-static {v4, v5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->setReportHiworldSrcInfoData(BB)[B

    move-result-object v4

    goto/16 :goto_6

    :pswitch_f
    const/16 v4, 0xf

    new-array v5, v4, [B

    aput-byte v11, v5, v15

    const/16 v6, -0x2e

    aput-byte v6, v5, v14

    const/16 v6, 0x8

    aput-byte v6, v5, v12

    :goto_3
    if-ge v13, v4, :cond_3

    const/16 v6, 0x20

    .line 207
    aput-byte v6, v5, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_3
    move-object v4, v5

    goto :goto_6

    :pswitch_10
    new-array v4, v13, [B

    aput-byte v11, v4, v15

    const/16 v5, -0x70

    aput-byte v5, v4, v14

    aput-byte v8, v4, v12

    const-string v5, "AUX"

    .line 188
    invoke-static {v5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->string2UnicodeBIG(Ljava/lang/String;)[B

    move-result-object v5

    .line 189
    invoke-static {v4, v5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v4

    const/16 v5, 0x21

    new-array v6, v5, [B

    move v7, v15

    .line 191
    :goto_4
    array-length v8, v4

    if-ge v7, v8, :cond_5

    if-ne v5, v7, :cond_4

    goto :goto_5

    .line 193
    :cond_4
    aget-byte v8, v4, v7

    aput-byte v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    move-object v4, v6

    goto :goto_6

    :pswitch_11
    new-array v4, v10, [B

    const/16 v5, 0x13

    aput-byte v5, v4, v15

    const/16 v5, 0x8

    aput-byte v5, v4, v14

    aput-byte v15, v4, v12

    int-to-byte v5, v12

    aput-byte v5, v4, v13

    const-string v5, "TV"

    .line 219
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v4, v5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v4

    goto :goto_6

    :pswitch_12
    new-array v4, v5, [B

    aput-byte v14, v4, v15

    aput-byte v8, v4, v14

    const/16 v5, 0x30

    aput-byte v5, v4, v12

    aput-byte v15, v4, v13

    aput-byte v15, v4, v10

    aput-byte v15, v4, v7

    aput-byte v15, v4, v6

    aput-byte v15, v4, v8

    const/16 v5, 0x8

    aput-byte v15, v4, v5

    const/16 v5, 0x9

    aput-byte v15, v4, v5

    goto :goto_6

    .line 182
    :pswitch_13
    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/ATVRepCanbus;->reportCanbusKiaHyundaiAtvInfo:[B

    goto :goto_6

    .line 165
    :cond_6
    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/ATVRepCanbus;->reportCanbusGolfAtvInfo:[B

    :goto_6
    move v5, v15

    .line 344
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v3, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v14, :cond_a

    .line 345
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object v3

    sget-object v6, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {v3, v6}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v3

    sget-object v6, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->ATV:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-eq v3, v6, :cond_7

    .line 346
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object v3

    sget-object v6, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {v3, v6}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v3

    sget-object v6, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->BTPHONE:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-ne v3, v6, :cond_a

    :cond_7
    if-nez v5, :cond_8

    .line 348
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    :cond_8
    if-nez v2, :cond_9

    if-nez v5, :cond_9

    .line 352
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "currentReport"

    invoke-static {v4, v15}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 353
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "currentReport_disc"

    invoke-static {v4, v15}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    .line 357
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_a
    :goto_8
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_13
        :pswitch_12
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1e
        :pswitch_11
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public reportDestroyCanbusInfo(Landroid/content/Context;)V
    .locals 3

    .line 362
    :try_start_0
    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/ATVRepCanbus$3;

    invoke-direct {v0, p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/ATVRepCanbus$3;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/ATVRepCanbus;)V

    invoke-static {p1, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface;->sendMsg(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface$CallBack;)V

    .line 368
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

    .line 369
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "btState"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 370
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->ATV:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-eq v0, v1, :cond_1

    .line 371
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->BTPHONE:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-ne v0, v1, :cond_2

    .line 372
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "currentReport"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 377
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 379
    :cond_2
    :goto_0
    invoke-static {p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface;->unbindService(Landroid/content/Context;)V

    return-void
.end method
