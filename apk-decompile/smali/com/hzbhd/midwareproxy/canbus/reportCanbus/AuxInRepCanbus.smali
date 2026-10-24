.class public Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AuxInRepCanbus;
.super Ljava/lang/Object;
.source "AuxInRepCanbus.java"


# static fields
.field static mRadio:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AuxInRepCanbus;

.field private static reportCanbusAuxInfo:[B


# instance fields
.field private reportDedicatedPerSec:[B

.field private timerPerSec:Ljava/util/Timer;

.field private tsPerSec:Ljava/util/TimerTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [B

    .line 35
    fill-array-data v0, :array_0

    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AuxInRepCanbus;->reportCanbusAuxInfo:[B

    .line 36
    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AuxInRepCanbus;

    invoke-direct {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AuxInRepCanbus;-><init>()V

    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AuxInRepCanbus;->mRadio:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AuxInRepCanbus;

    return-void

    nop

    :array_0
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

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AuxInRepCanbus;Landroid/content/Context;[B)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AuxInRepCanbus;->sndAuxMidea(Landroid/content/Context;[B)V

    return-void
.end method

.method static synthetic access$100(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AuxInRepCanbus;)[B
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AuxInRepCanbus;->reportDedicatedPerSec:[B

    return-object p0
.end method

.method public static declared-synchronized getInstance()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AuxInRepCanbus;
    .locals 2

    const-class v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AuxInRepCanbus;

    monitor-enter v0

    .line 41
    :try_start_0
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AuxInRepCanbus;->mRadio:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AuxInRepCanbus;

    if-nez v1, :cond_0

    .line 42
    new-instance v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AuxInRepCanbus;

    invoke-direct {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AuxInRepCanbus;-><init>()V

    sput-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AuxInRepCanbus;->mRadio:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AuxInRepCanbus;

    .line 44
    :cond_0
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AuxInRepCanbus;->mRadio:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AuxInRepCanbus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private sndAuxMediaPerSec(Landroid/content/Context;[B)V
    .locals 7

    .line 47
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AuxInRepCanbus;->timerPerSec:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AuxInRepCanbus;->timerPerSec:Ljava/util/Timer;

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AuxInRepCanbus;->tsPerSec:Ljava/util/TimerTask;

    if-nez v0, :cond_1

    .line 51
    new-instance v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AuxInRepCanbus$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AuxInRepCanbus$1;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AuxInRepCanbus;Landroid/content/Context;[B)V

    iput-object v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AuxInRepCanbus;->tsPerSec:Ljava/util/TimerTask;

    .line 56
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AuxInRepCanbus;->timerPerSec:Ljava/util/Timer;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_1
    return-void
.end method

.method private sndAuxMediaPerSecNew(Landroid/content/Context;)V
    .locals 7

    .line 61
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AuxInRepCanbus;->timerPerSec:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AuxInRepCanbus;->timerPerSec:Ljava/util/Timer;

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AuxInRepCanbus;->tsPerSec:Ljava/util/TimerTask;

    if-nez v0, :cond_1

    .line 65
    new-instance v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AuxInRepCanbus$2;

    invoke-direct {v2, p0, p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AuxInRepCanbus$2;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AuxInRepCanbus;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AuxInRepCanbus;->tsPerSec:Ljava/util/TimerTask;

    .line 70
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AuxInRepCanbus;->timerPerSec:Ljava/util/Timer;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_1
    return-void
.end method

.method private sndAuxMidea(Landroid/content/Context;[B)V
    .locals 4

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "btState"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 84
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->AUX1:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-eq v0, v1, :cond_0

    .line 85
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->AUX2:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-eq v0, v1, :cond_0

    .line 86
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->BTPHONE:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-ne v0, v1, :cond_2

    .line 88
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->AUX2:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-ne v0, v1, :cond_1

    .line 89
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->HONDA_CRV_2012_XINBAS:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    if-ne v0, v1, :cond_1

    return-void

    .line 93
    :cond_1
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "currentReport"

    const/4 v2, 0x0

    invoke-static {p2, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 95
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

    .line 98
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public destroyTsPerSec()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AuxInRepCanbus;->tsPerSec:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AuxInRepCanbus;->timerPerSec:Ljava/util/Timer;

    .line 78
    iput-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AuxInRepCanbus;->tsPerSec:Ljava/util/TimerTask;

    :cond_0
    return-void
.end method

.method public reportCanbusInfo(Landroid/content/Context;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 106
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isCanbusCmdPorting(Landroid/content/Context;)Z

    move-result v2

    const/16 v5, 0xff

    const/16 v6, -0x7e

    const/16 v8, -0x40

    const/16 v9, 0xa

    const/16 v11, 0x9

    const/16 v12, 0x8

    const/4 v14, 0x5

    const/4 v15, 0x6

    const/4 v3, 0x4

    const/4 v13, 0x7

    const/16 v16, 0x16

    const/16 v17, 0x2

    const/4 v4, 0x3

    const/4 v10, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_2

    .line 108
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AuxInRepCanbus$5;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v18

    aget v2, v2, v18

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    new-array v2, v9, [B

    aput-byte v16, v2, v7

    aput-byte v8, v2, v10

    aput-byte v13, v2, v17

    aput-byte v7, v2, v4

    aput-byte v7, v2, v3

    aput-byte v7, v2, v14

    aput-byte v7, v2, v15

    aput-byte v7, v2, v13

    aput-byte v7, v2, v12

    aput-byte v7, v2, v11

    .line 214
    invoke-direct {v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AuxInRepCanbus;->sndAuxMidea(Landroid/content/Context;[B)V

    goto/16 :goto_1

    .line 210
    :pswitch_1
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->AUX:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;

    invoke-static {v1, v2, v5, v7, v10}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportSimpleMediaInfo(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;IZZ)V

    goto/16 :goto_1

    .line 206
    :pswitch_2
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE;->AUX:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE;

    const-string v18, "            "

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v1, v2, v7, v5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportHiworldMideaInfo(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE;Z[B)V

    goto/16 :goto_1

    :pswitch_3
    new-array v2, v13, [B

    aput-byte v16, v2, v7

    const/16 v5, -0x7c

    aput-byte v5, v2, v10

    aput-byte v13, v2, v17

    aput-byte v7, v2, v4

    aput-byte v7, v2, v3

    aput-byte v7, v2, v14

    aput-byte v7, v2, v15

    .line 198
    invoke-direct {v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AuxInRepCanbus;->sndAuxMidea(Landroid/content/Context;[B)V

    goto/16 :goto_1

    :pswitch_4
    new-array v2, v4, [B

    aput-byte v16, v2, v7

    aput-byte v8, v2, v10

    aput-byte v13, v2, v17

    .line 192
    invoke-direct {v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AuxInRepCanbus;->sndAuxMidea(Landroid/content/Context;[B)V

    goto/16 :goto_1

    :pswitch_5
    new-array v2, v9, [B

    aput-byte v16, v2, v7

    aput-byte v6, v2, v10

    aput-byte v13, v2, v17

    aput-byte v7, v2, v4

    aput-byte v7, v2, v3

    aput-byte v7, v2, v14

    aput-byte v7, v2, v15

    aput-byte v7, v2, v13

    aput-byte v7, v2, v12

    aput-byte v7, v2, v11

    .line 183
    invoke-direct {v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AuxInRepCanbus;->sndAuxMidea(Landroid/content/Context;[B)V

    goto/16 :goto_1

    .line 179
    :pswitch_6
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->AUX:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;

    const/16 v5, 0xff

    invoke-static {v1, v2, v5, v7, v10}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportSimpleMediaInfo(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;IZZ)V

    goto/16 :goto_1

    :pswitch_7
    new-array v2, v4, [B

    aput-byte v16, v2, v7

    aput-byte v6, v2, v10

    aput-byte v4, v2, v17

    .line 176
    invoke-direct {v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AuxInRepCanbus;->sndAuxMediaPerSec(Landroid/content/Context;[B)V

    goto/16 :goto_1

    :pswitch_8
    new-array v2, v4, [B

    aput-byte v16, v2, v7

    const/16 v5, -0x7a

    aput-byte v5, v2, v10

    aput-byte v4, v2, v17

    .line 171
    invoke-direct {v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AuxInRepCanbus;->sndAuxMediaPerSec(Landroid/content/Context;[B)V

    goto/16 :goto_1

    :pswitch_9
    new-array v2, v4, [B

    aput-byte v16, v2, v7

    aput-byte v11, v2, v10

    aput-byte v4, v2, v17

    .line 168
    invoke-direct {v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AuxInRepCanbus;->sndAuxMidea(Landroid/content/Context;[B)V

    goto/16 :goto_1

    .line 165
    :pswitch_a
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_XINBAS_MEDIA_TYPE;->MID_AUX:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_XINBAS_MEDIA_TYPE;

    invoke-static {v1, v2, v7}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportXinbasMediaInfo(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_XINBAS_MEDIA_TYPE;Z)V

    goto/16 :goto_1

    .line 154
    :pswitch_b
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "canbus_cur_vol"

    invoke-static {v2, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    if-lez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/16 v2, 0xc

    :goto_0
    int-to-byte v2, v2

    .line 156
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v5

    sget-object v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->BENZ_B200_LUZHENG:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    if-ne v5, v8, :cond_1

    xor-int/lit8 v2, v2, 0x4

    int-to-byte v2, v2

    :cond_1
    const/16 v5, 0xb

    new-array v8, v5, [B

    aput-byte v16, v8, v7

    aput-byte v6, v8, v10

    aput-byte v13, v8, v17

    const/4 v5, -0x1

    aput-byte v5, v8, v4

    aput-byte v5, v8, v3

    aput-byte v5, v8, v14

    aput-byte v5, v8, v15

    aput-byte v5, v8, v13

    aput-byte v2, v8, v12

    aput-byte v5, v8, v11

    aput-byte v5, v8, v9

    .line 159
    invoke-direct {v0, v1, v8}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AuxInRepCanbus;->sndAuxMidea(Landroid/content/Context;[B)V

    goto :goto_1

    .line 144
    :pswitch_c
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "canbus_cur_vol"

    invoke-static {v2, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    const/16 v5, 0xe

    new-array v8, v5, [B

    aput-byte v16, v8, v7

    const/16 v5, 0xc

    aput-byte v5, v8, v10

    const/16 v5, 0x53

    aput-byte v5, v8, v17

    aput-byte v2, v8, v4

    aput-byte v12, v8, v3

    aput-byte v7, v8, v14

    aput-byte v7, v8, v15

    aput-byte v7, v8, v13

    aput-byte v7, v8, v12

    aput-byte v7, v8, v11

    aput-byte v7, v8, v9

    const/16 v2, 0xb

    aput-byte v7, v8, v2

    const/16 v2, 0xc

    aput-byte v7, v8, v2

    const/16 v2, 0xd

    aput-byte v7, v8, v2

    .line 145
    invoke-direct {v0, v1, v8}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AuxInRepCanbus;->sndAuxMidea(Landroid/content/Context;[B)V

    goto :goto_1

    .line 141
    :pswitch_d
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->AUX:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;

    invoke-static {v1, v2, v7, v7, v10}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportSimpleMediaInfo(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;IZZ)V

    goto :goto_1

    .line 138
    :pswitch_e
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->AUX:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;

    const/16 v5, 0xff

    invoke-static {v1, v2, v5, v7, v10}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportSimpleMediaInfo(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;IZZ)V

    goto :goto_1

    .line 113
    :pswitch_f
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->AUX:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;

    invoke-static {v1, v2, v5, v7, v7}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportSimpleMediaInfo(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;IZZ)V

    new-array v2, v12, [B

    aput-byte v16, v2, v7

    const/16 v5, -0x3d

    aput-byte v5, v2, v10

    aput-byte v7, v2, v17

    aput-byte v7, v2, v4

    aput-byte v7, v2, v3

    aput-byte v7, v2, v14

    aput-byte v7, v2, v15

    aput-byte v7, v2, v13

    .line 114
    invoke-direct {v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AuxInRepCanbus;->sndAuxMidea(Landroid/content/Context;[B)V

    :goto_1
    move v2, v10

    goto :goto_3

    :cond_2
    :goto_2
    move v2, v7

    .line 238
    :goto_3
    new-instance v5, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AuxInRepCanbus$3;

    invoke-direct {v5, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AuxInRepCanbus$3;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AuxInRepCanbus;)V

    invoke-static {v1, v5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface;->sendMsg(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface$CallBack;)V

    .line 246
    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AuxInRepCanbus$5;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v8

    invoke-virtual {v8}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v8

    aget v5, v5, v8

    const/16 v8, 0x1c

    if-eq v5, v8, :cond_8

    const/16 v8, 0x2d

    if-eq v5, v8, :cond_7

    const/16 v8, 0xf

    const/16 v6, -0x6f

    packed-switch v5, :pswitch_data_1

    .line 458
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AuxInRepCanbus;->reportCanbusAuxInfo:[B

    :goto_4
    move v4, v7

    goto/16 :goto_7

    .line 435
    :pswitch_10
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->getInstance()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->isMpegDiscExist(Landroid/content/Context;)I

    move-result v5

    int-to-byte v5, v5

    new-array v3, v3, [B

    aput-byte v16, v3, v7

    aput-byte v6, v3, v10

    const/16 v6, 0xc

    aput-byte v6, v3, v17

    aput-byte v5, v3, v4

    const/16 v4, 0x10

    .line 437
    invoke-static {v3, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->CompensateZero([BI)[B

    move-result-object v3

    goto :goto_4

    :pswitch_11
    new-array v3, v4, [B

    aput-byte v16, v3, v7

    const/16 v4, -0x6b

    aput-byte v4, v3, v10

    const/16 v5, 0xc

    aput-byte v5, v3, v17

    const/16 v4, 0x27

    .line 432
    invoke-static {v3, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->CompensateZero([BI)[B

    move-result-object v3

    goto :goto_4

    :pswitch_12
    const/16 v5, 0xc

    new-array v5, v5, [B

    aput-byte v16, v5, v7

    const/16 v6, -0x40

    aput-byte v6, v5, v10

    aput-byte v13, v5, v17

    aput-byte v7, v5, v4

    aput-byte v7, v5, v3

    aput-byte v7, v5, v14

    aput-byte v7, v5, v15

    aput-byte v7, v5, v13

    aput-byte v7, v5, v12

    aput-byte v7, v5, v11

    aput-byte v7, v5, v9

    const/16 v3, 0xb

    aput-byte v7, v5, v3

    goto/16 :goto_5

    :pswitch_13
    new-array v3, v4, [B

    aput-byte v16, v3, v7

    aput-byte v11, v3, v10

    aput-byte v4, v3, v17

    goto :goto_4

    :pswitch_14
    new-array v3, v3, [B

    aput-byte v16, v3, v7

    const/16 v5, -0x40

    aput-byte v5, v3, v10

    const/16 v5, 0xc

    aput-byte v5, v3, v17

    aput-byte v7, v3, v4

    goto :goto_4

    :pswitch_15
    const/16 v5, 0x23

    new-array v5, v5, [B

    aput-byte v16, v5, v7

    const/16 v6, -0x67

    aput-byte v6, v5, v10

    aput-byte v13, v5, v17

    aput-byte v7, v5, v4

    aput-byte v7, v5, v3

    aput-byte v7, v5, v14

    aput-byte v7, v5, v15

    aput-byte v7, v5, v13

    aput-byte v7, v5, v12

    aput-byte v7, v5, v11

    aput-byte v7, v5, v9

    const/16 v3, 0xb

    aput-byte v7, v5, v3

    const/16 v3, 0xc

    aput-byte v7, v5, v3

    const/16 v3, 0xd

    aput-byte v7, v5, v3

    const/16 v3, 0xe

    aput-byte v7, v5, v3

    aput-byte v7, v5, v8

    const/16 v3, 0x10

    aput-byte v7, v5, v3

    const/16 v3, 0x11

    aput-byte v7, v5, v3

    const/16 v3, 0x12

    aput-byte v7, v5, v3

    const/16 v3, 0x13

    aput-byte v7, v5, v3

    const/16 v3, 0x14

    aput-byte v7, v5, v3

    const/16 v3, 0x15

    aput-byte v7, v5, v3

    aput-byte v7, v5, v16

    const/16 v3, 0x17

    aput-byte v7, v5, v3

    const/16 v3, 0x18

    aput-byte v7, v5, v3

    const/16 v3, 0x19

    aput-byte v7, v5, v3

    const/16 v3, 0x1a

    aput-byte v7, v5, v3

    const/16 v3, 0x1b

    aput-byte v7, v5, v3

    const/16 v3, 0x1c

    aput-byte v7, v5, v3

    const/16 v3, 0x1d

    aput-byte v7, v5, v3

    const/16 v3, 0x1e

    aput-byte v7, v5, v3

    const/16 v3, 0x1f

    aput-byte v7, v5, v3

    const/16 v3, 0x20

    aput-byte v7, v5, v3

    const/16 v3, 0x21

    aput-byte v7, v5, v3

    const/16 v3, 0x22

    aput-byte v7, v5, v3

    goto/16 :goto_5

    :pswitch_16
    const/16 v5, 0xe

    new-array v5, v5, [B

    aput-byte v16, v5, v7

    const/16 v6, -0x40

    aput-byte v6, v5, v10

    aput-byte v13, v5, v17

    aput-byte v7, v5, v4

    aput-byte v7, v5, v3

    aput-byte v7, v5, v14

    aput-byte v7, v5, v15

    aput-byte v7, v5, v13

    aput-byte v7, v5, v12

    aput-byte v7, v5, v11

    aput-byte v7, v5, v9

    const/16 v3, 0xb

    aput-byte v7, v5, v3

    const/16 v3, 0xc

    aput-byte v7, v5, v3

    const/16 v3, 0xd

    aput-byte v7, v5, v3

    .line 409
    invoke-direct {v0, v1, v5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AuxInRepCanbus;->sndAuxMidea(Landroid/content/Context;[B)V

    .line 410
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "currentReportPrev"

    invoke-static {v5, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    new-array v3, v4, [B

    aput-byte v16, v3, v7

    const/16 v5, -0x3d

    aput-byte v5, v3, v10

    aput-byte v4, v3, v17

    const-string v4, " "

    .line 411
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v3

    goto/16 :goto_4

    :pswitch_17
    new-array v5, v9, [B

    aput-byte v16, v5, v7

    const/16 v6, -0x40

    aput-byte v6, v5, v10

    aput-byte v13, v5, v17

    const/16 v6, 0x30

    aput-byte v6, v5, v4

    aput-byte v7, v5, v3

    aput-byte v7, v5, v14

    aput-byte v7, v5, v15

    aput-byte v7, v5, v13

    aput-byte v7, v5, v12

    aput-byte v7, v5, v11

    goto/16 :goto_5

    :pswitch_18
    new-array v5, v8, [B

    aput-byte v16, v5, v7

    aput-byte v6, v5, v10

    const/16 v6, 0xc

    aput-byte v6, v5, v17

    aput-byte v7, v5, v4

    aput-byte v7, v5, v3

    aput-byte v7, v5, v14

    aput-byte v7, v5, v15

    aput-byte v7, v5, v13

    aput-byte v7, v5, v12

    aput-byte v7, v5, v11

    aput-byte v7, v5, v9

    const/16 v3, 0xb

    aput-byte v7, v5, v3

    const/16 v3, 0xc

    aput-byte v7, v5, v3

    const/16 v3, 0xd

    aput-byte v7, v5, v3

    const/16 v3, 0xe

    aput-byte v7, v5, v3

    goto/16 :goto_5

    :pswitch_19
    new-array v3, v4, [B

    aput-byte v16, v3, v7

    const/16 v5, -0x7e

    aput-byte v5, v3, v10

    aput-byte v4, v3, v17

    goto/16 :goto_4

    .line 391
    :pswitch_1a
    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->AUX:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;

    const/16 v6, 0xff

    invoke-static {v1, v5, v6, v7, v7}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportSimpleMediaInfo(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;IZZ)V

    new-array v5, v12, [B

    aput-byte v16, v5, v7

    const/16 v6, -0x3d

    aput-byte v6, v5, v10

    aput-byte v7, v5, v17

    aput-byte v7, v5, v4

    aput-byte v7, v5, v3

    aput-byte v7, v5, v14

    aput-byte v7, v5, v15

    aput-byte v7, v5, v13

    goto/16 :goto_5

    :pswitch_1b
    new-array v3, v4, [B

    aput-byte v16, v3, v7

    const/16 v4, -0x40

    aput-byte v4, v3, v10

    aput-byte v13, v3, v17

    goto/16 :goto_4

    .line 368
    :pswitch_1c
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "btState"

    invoke-static {v5, v6, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v10, :cond_4

    .line 369
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object v5

    sget-object v6, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {v5, v6}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v5

    sget-object v6, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->AUX1:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-eq v5, v6, :cond_3

    .line 370
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object v5

    sget-object v6, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {v5, v6}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v5

    sget-object v6, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->AUX2:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-eq v5, v6, :cond_3

    .line 371
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object v5

    sget-object v6, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {v5, v6}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v5

    sget-object v6, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->BTPHONE:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-ne v5, v6, :cond_4

    .line 372
    :cond_3
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string v6, "action_qz_oringinal_screen_rep_0x83_status"

    .line 373
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "qz_src_mode_status"

    .line 374
    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 375
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "QZ_ORIGINAL_SRC_MODE_PREV_STATUS"

    invoke-static {v6, v8, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 376
    invoke-virtual {v1, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v5, "QZ"

    const-string v6, "qz_src_mode_status snd dtv"

    .line 377
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-array v5, v15, [B

    aput-byte v16, v5, v7

    const/16 v6, -0x7e

    aput-byte v6, v5, v10

    const/16 v6, 0xb

    aput-byte v6, v5, v17

    aput-byte v7, v5, v4

    aput-byte v7, v5, v3

    const/4 v3, -0x1

    aput-byte v3, v5, v14

    move-object v3, v5

    move v4, v10

    goto/16 :goto_7

    :pswitch_1d
    new-array v5, v15, [B

    aput-byte v16, v5, v7

    const/16 v6, -0x7e

    aput-byte v6, v5, v10

    aput-byte v11, v5, v17

    const/4 v6, -0x1

    aput-byte v6, v5, v4

    aput-byte v6, v5, v3

    aput-byte v6, v5, v14

    :cond_5
    :goto_5
    move-object v3, v5

    goto/16 :goto_4

    :pswitch_1e
    new-array v5, v12, [B

    aput-byte v16, v5, v7

    const/16 v6, -0x6d

    aput-byte v6, v5, v10

    aput-byte v4, v5, v17

    aput-byte v7, v5, v4

    aput-byte v7, v5, v3

    aput-byte v7, v5, v14

    aput-byte v7, v5, v15

    aput-byte v7, v5, v13

    goto :goto_5

    .line 346
    :pswitch_1f
    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->getMpegplayerManager(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->isDiscExist()Z

    move-result v5

    invoke-static {v7, v7, v5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->setIntByteWithBit(IIZ)I

    move-result v5

    const/16 v8, 0x10

    new-array v8, v8, [B

    aput-byte v16, v8, v7

    aput-byte v6, v8, v10

    const/16 v6, 0xc

    aput-byte v6, v8, v17

    int-to-byte v5, v5

    aput-byte v5, v8, v4

    aput-byte v7, v8, v3

    aput-byte v7, v8, v14

    aput-byte v7, v8, v15

    aput-byte v7, v8, v13

    aput-byte v7, v8, v12

    aput-byte v7, v8, v11

    aput-byte v7, v8, v9

    const/16 v3, 0xb

    aput-byte v7, v8, v3

    const/16 v3, 0xc

    aput-byte v7, v8, v3

    const/16 v3, 0xd

    aput-byte v7, v8, v3

    const/16 v3, 0xe

    aput-byte v7, v8, v3

    const/16 v3, 0xf

    aput-byte v7, v8, v3

    move v4, v7

    move-object v3, v8

    goto/16 :goto_7

    :pswitch_20
    new-array v3, v4, [B

    aput-byte v16, v3, v7

    const/16 v4, -0x70

    aput-byte v4, v3, v10

    aput-byte v13, v3, v17

    const-string v4, "AUX"

    .line 294
    invoke-static {v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->string2UnicodeBIG(Ljava/lang/String;)[B

    move-result-object v4

    .line 295
    invoke-static {v3, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v3

    const/16 v4, 0x21

    new-array v5, v4, [B

    move v6, v7

    .line 297
    :goto_6
    array-length v8, v3

    if-ge v6, v8, :cond_5

    if-ne v4, v6, :cond_6

    goto :goto_5

    .line 299
    :cond_6
    aget-byte v8, v3, v6

    aput-byte v8, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :pswitch_21
    const/16 v3, 0xc

    .line 285
    invoke-static {v6, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->setReportHiworldSrcInfoData(BB)[B

    move-result-object v3

    goto/16 :goto_4

    :pswitch_22
    new-array v3, v3, [B

    aput-byte v16, v3, v7

    const/16 v5, -0x40

    aput-byte v5, v3, v10

    aput-byte v13, v3, v17

    aput-byte v7, v3, v4

    goto/16 :goto_4

    :cond_7
    new-array v3, v3, [B

    const/16 v5, 0x13

    aput-byte v5, v3, v7

    const/16 v5, 0xc

    aput-byte v5, v3, v10

    aput-byte v7, v3, v17

    int-to-byte v5, v15

    aput-byte v5, v3, v4

    const-string v4, "AUX-IN"

    .line 260
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v3

    goto/16 :goto_4

    :cond_8
    new-array v3, v3, [B

    const/16 v5, 0x13

    aput-byte v5, v3, v7

    const/16 v5, 0x53

    aput-byte v5, v3, v10

    aput-byte v7, v3, v17

    int-to-byte v5, v15

    aput-byte v5, v3, v4

    const-string v4, "AUX-IN"

    .line 266
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v3

    goto/16 :goto_4

    .line 463
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "btState"

    invoke-static {v5, v6, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v10, :cond_c

    .line 464
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object v5

    sget-object v6, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {v5, v6}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v5

    sget-object v6, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->AUX1:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-eq v5, v6, :cond_9

    .line 465
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object v5

    sget-object v6, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {v5, v6}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v5

    sget-object v6, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->AUX2:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-eq v5, v6, :cond_9

    .line 466
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object v5

    sget-object v6, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {v5, v6}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v5

    sget-object v6, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->BTPHONE:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-ne v5, v6, :cond_c

    :cond_9
    if-nez v4, :cond_a

    .line 468
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    :cond_a
    if-nez v2, :cond_c

    if-nez v4, :cond_b

    .line 471
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "currentReport"

    invoke-static {v3, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 472
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "currentReport_disc"

    invoke-static {v3, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_c
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x30
        :pswitch_22
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
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
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method public reportDestoryCanbusInfo(Landroid/content/Context;)V
    .locals 3

    .line 482
    :try_start_0
    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AuxInRepCanbus$4;

    invoke-direct {v0, p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AuxInRepCanbus$4;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AuxInRepCanbus;)V

    invoke-static {p1, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface;->sendMsg(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface$CallBack;)V

    .line 489
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

    .line 490
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "btState"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 491
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->AUX1:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-eq v0, v1, :cond_1

    .line 492
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->AUX2:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-eq v0, v1, :cond_1

    .line 493
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->BTPHONE:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-ne v0, v1, :cond_2

    .line 494
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "currentReport"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 497
    :cond_2
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AuxInRepCanbus;->destroyTsPerSec()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 500
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 503
    :goto_0
    invoke-static {p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface;->unbindService(Landroid/content/Context;)V

    return-void
.end method
