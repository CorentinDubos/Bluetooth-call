.class public Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DTVRepCanbus;
.super Ljava/lang/Object;
.source "DTVRepCanbus.java"


# static fields
.field static mRadio:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DTVRepCanbus;

.field private static reportCanbusDtvInfo:[B

.field private static reportCanbusGolfDtvInfo:[B

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

    sput-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DTVRepCanbus;->reportCanbusDtvInfo:[B

    new-array v1, v0, [B

    .line 32
    fill-array-data v1, :array_1

    sput-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DTVRepCanbus;->reportCanbusGolfDtvInfo:[B

    new-array v0, v0, [B

    .line 33
    fill-array-data v0, :array_2

    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DTVRepCanbus;->reportCanbusKiaHyundaiAtvInfo:[B

    .line 39
    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DTVRepCanbus;

    invoke-direct {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DTVRepCanbus;-><init>()V

    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DTVRepCanbus;->mRadio:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DTVRepCanbus;

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

.method static synthetic access$000(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DTVRepCanbus;)[B
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DTVRepCanbus;->reportDedicatedPerSec:[B

    return-object p0
.end method

.method static synthetic access$100(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DTVRepCanbus;Landroid/content/Context;[B)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DTVRepCanbus;->sndDtvMidea(Landroid/content/Context;[B)V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DTVRepCanbus;
    .locals 2

    const-class v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DTVRepCanbus;

    monitor-enter v0

    .line 41
    :try_start_0
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DTVRepCanbus;->mRadio:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DTVRepCanbus;

    if-nez v1, :cond_0

    .line 42
    new-instance v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DTVRepCanbus;

    invoke-direct {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DTVRepCanbus;-><init>()V

    sput-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DTVRepCanbus;->mRadio:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DTVRepCanbus;

    .line 44
    :cond_0
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DTVRepCanbus;->mRadio:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DTVRepCanbus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private sndDtvMidea(Landroid/content/Context;[B)V
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

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->DTV:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

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

.method private sndDtvMideaPerSecNew(Landroid/content/Context;)V
    .locals 7

    .line 48
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DTVRepCanbus;->timerPerSec:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DTVRepCanbus;->timerPerSec:Ljava/util/Timer;

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DTVRepCanbus;->tsPerSec:Ljava/util/TimerTask;

    if-nez v0, :cond_1

    .line 52
    new-instance v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DTVRepCanbus$1;

    invoke-direct {v2, p0, p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DTVRepCanbus$1;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DTVRepCanbus;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DTVRepCanbus;->tsPerSec:Ljava/util/TimerTask;

    .line 57
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DTVRepCanbus;->timerPerSec:Ljava/util/Timer;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_1
    return-void
.end method


# virtual methods
.method public reportCanbusInfo(Landroid/content/Context;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 80
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 84
    new-instance v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DTVRepCanbus$2;

    invoke-direct {v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DTVRepCanbus$2;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DTVRepCanbus;)V

    invoke-static {v0, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface;->sendMsg(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface$CallBack;)V

    .line 91
    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isCanbusCmdPorting(Landroid/content/Context;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "canbus_cur_vol"

    const/16 v7, 0xa

    const/16 v8, 0x9

    const/4 v10, 0x6

    const/4 v12, 0x7

    const/4 v13, 0x5

    const/16 v14, 0x16

    const/4 v15, 0x4

    const/4 v6, 0x2

    const/4 v9, 0x3

    const/4 v5, 0x1

    const/4 v11, 0x0

    if-eqz v2, :cond_2

    .line 93
    :try_start_1
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DTVRepCanbus$3;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v17

    aget v2, v2, v17

    const/16 v4, 0xff

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    .line 148
    :pswitch_0
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE;->TV:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE;

    const-string v4, "            "

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v0, v2, v11, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportHiworldMideaInfo(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE;Z[B)V

    goto/16 :goto_1

    :pswitch_1
    new-array v2, v12, [B

    aput-byte v14, v2, v11

    const/16 v4, -0x7c

    aput-byte v4, v2, v5

    aput-byte v9, v2, v6

    aput-byte v11, v2, v9

    aput-byte v11, v2, v15

    aput-byte v11, v2, v13

    aput-byte v11, v2, v10

    .line 140
    invoke-direct {v1, v0, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DTVRepCanbus;->sndDtvMidea(Landroid/content/Context;[B)V

    goto/16 :goto_1

    :pswitch_2
    new-array v2, v9, [B

    aput-byte v14, v2, v11

    aput-byte v8, v2, v5

    aput-byte v13, v2, v6

    .line 134
    invoke-direct {v1, v0, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DTVRepCanbus;->sndDtvMidea(Landroid/content/Context;[B)V

    goto/16 :goto_1

    :pswitch_3
    new-array v2, v7, [B

    aput-byte v14, v2, v11

    const/16 v4, -0x7e

    aput-byte v4, v2, v5

    aput-byte v9, v2, v6

    aput-byte v11, v2, v9

    aput-byte v11, v2, v15

    aput-byte v11, v2, v13

    aput-byte v11, v2, v10

    aput-byte v11, v2, v12

    const/16 v4, 0x8

    aput-byte v11, v2, v4

    aput-byte v11, v2, v8

    .line 131
    invoke-direct {v1, v0, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DTVRepCanbus;->sndDtvMidea(Landroid/content/Context;[B)V

    goto :goto_1

    .line 127
    :pswitch_4
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_XINBAS_MEDIA_TYPE;->MID_TV:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_XINBAS_MEDIA_TYPE;

    invoke-static {v0, v2, v11}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportXinbasMediaInfo(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_XINBAS_MEDIA_TYPE;Z)V

    goto :goto_1

    .line 116
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v3, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    if-lez v2, :cond_0

    move v2, v15

    goto :goto_0

    :cond_0
    const/16 v2, 0xc

    :goto_0
    int-to-byte v2, v2

    .line 118
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v4

    sget-object v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->BENZ_B200_LUZHENG:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    if-ne v4, v8, :cond_1

    xor-int/lit8 v2, v2, 0x4

    int-to-byte v2, v2

    :cond_1
    const/16 v4, 0xb

    new-array v8, v4, [B

    aput-byte v14, v8, v11

    const/16 v4, -0x7e

    aput-byte v4, v8, v5

    aput-byte v7, v8, v6

    const/4 v4, -0x1

    aput-byte v4, v8, v9

    aput-byte v4, v8, v15

    aput-byte v4, v8, v13

    aput-byte v4, v8, v10

    aput-byte v4, v8, v12

    const/16 v16, 0x8

    aput-byte v2, v8, v16

    const/16 v2, 0x9

    aput-byte v4, v8, v2

    aput-byte v4, v8, v7

    .line 121
    invoke-direct {v1, v0, v8}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DTVRepCanbus;->sndDtvMidea(Landroid/content/Context;[B)V

    goto :goto_1

    .line 107
    :pswitch_6
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->DTV:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;

    invoke-static {v0, v2, v4, v11, v5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportSimpleMediaInfo(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;IZZ)V

    goto :goto_1

    .line 96
    :pswitch_7
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->DTV:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;

    invoke-static {v0, v2, v4, v11, v11}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportSimpleMediaInfo(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;IZZ)V

    :goto_1
    move v2, v5

    goto :goto_3

    :cond_2
    :goto_2
    move v2, v11

    .line 171
    :goto_3
    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DTVRepCanbus$3;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v8

    invoke-virtual {v8}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v8

    aget v4, v4, v8
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v8, "btState"

    if-eq v4, v9, :cond_7

    if-eq v4, v15, :cond_7

    packed-switch v4, :pswitch_data_1

    const/16 v18, -0x40

    const/16 v7, 0xf

    packed-switch v4, :pswitch_data_2

    .line 373
    :try_start_2
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DTVRepCanbus;->reportCanbusDtvInfo:[B

    goto/16 :goto_7

    :pswitch_8
    new-array v3, v10, [B

    aput-byte v14, v3, v11

    const/16 v4, 0x9

    aput-byte v4, v3, v5

    aput-byte v13, v3, v6

    aput-byte v11, v3, v9

    aput-byte v11, v3, v15

    aput-byte v11, v3, v13

    goto/16 :goto_7

    :pswitch_9
    new-array v3, v15, [B

    aput-byte v14, v3, v11

    aput-byte v18, v3, v5

    const/16 v4, 0xc

    aput-byte v4, v3, v6

    aput-byte v11, v3, v9

    goto/16 :goto_7

    :pswitch_a
    const/16 v3, 0xc

    new-array v3, v3, [B

    aput-byte v14, v3, v11

    aput-byte v18, v3, v5

    aput-byte v9, v3, v6

    const/4 v4, -0x1

    aput-byte v4, v3, v9

    aput-byte v11, v3, v15

    aput-byte v11, v3, v13

    aput-byte v11, v3, v10

    aput-byte v11, v3, v12

    const/16 v4, 0x8

    aput-byte v11, v3, v4

    const/16 v4, 0x9

    aput-byte v11, v3, v4

    const/16 v4, 0xa

    aput-byte v11, v3, v4

    const/16 v4, 0xb

    aput-byte v11, v3, v4

    .line 340
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "currentReportPrev"

    invoke-static {v3, v11}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v7, v10}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 341
    invoke-direct {v1, v0, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DTVRepCanbus;->sndDtvMidea(Landroid/content/Context;[B)V

    new-array v3, v9, [B

    aput-byte v14, v3, v11

    const/16 v4, -0x3d

    aput-byte v4, v3, v5

    aput-byte v9, v3, v6

    const-string v4, " "

    .line 342
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v3

    goto/16 :goto_7

    .line 322
    :pswitch_b
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_4

    .line 323
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object v3

    sget-object v4, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {v3, v4}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v3

    sget-object v4, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->DTV:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-eq v3, v4, :cond_3

    .line 324
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object v3

    sget-object v4, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {v3, v4}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v3

    sget-object v4, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->BTPHONE:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-ne v3, v4, :cond_4

    .line 325
    :cond_3
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "action_qz_oringinal_screen_rep_0x83_status"

    .line 326
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "qz_src_mode_status"

    .line 327
    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 328
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "QZ_ORIGINAL_SRC_MODE_PREV_STATUS"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 329
    invoke-virtual {v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v3, "QZ"

    const-string v4, "qz_src_mode_status snd dtv"

    .line 330
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_4
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DTVRepCanbus;->reportCanbusDtvInfo:[B

    move v4, v5

    goto/16 :goto_8

    :pswitch_c
    new-array v3, v10, [B

    aput-byte v14, v3, v11

    const/16 v4, -0x7e

    aput-byte v4, v3, v5

    const/16 v4, 0xb

    aput-byte v4, v3, v6

    aput-byte v11, v3, v9

    aput-byte v11, v3, v15

    const/4 v4, -0x1

    aput-byte v4, v3, v13

    goto/16 :goto_7

    :pswitch_d
    const/16 v3, 0x8

    new-array v3, v3, [B

    aput-byte v14, v3, v11

    const/16 v4, -0x6d

    aput-byte v4, v3, v5

    aput-byte v7, v3, v6

    aput-byte v11, v3, v9

    aput-byte v11, v3, v15

    aput-byte v11, v3, v13

    aput-byte v11, v3, v10

    aput-byte v11, v3, v12

    goto/16 :goto_7

    .line 300
    :pswitch_e
    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->getMpegplayerManager(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->isDiscExist()Z

    move-result v3

    invoke-static {v11, v11, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->setIntByteWithBit(IIZ)I

    move-result v3

    const/16 v4, 0x10

    new-array v4, v4, [B

    aput-byte v14, v4, v11

    const/16 v14, -0x6f

    aput-byte v14, v4, v5

    const/16 v14, 0x8

    aput-byte v14, v4, v6

    int-to-byte v3, v3

    aput-byte v3, v4, v9

    aput-byte v11, v4, v15

    aput-byte v11, v4, v13

    aput-byte v11, v4, v10

    aput-byte v11, v4, v12

    const/16 v3, 0x8

    aput-byte v11, v4, v3

    const/16 v3, 0x9

    aput-byte v11, v4, v3

    const/16 v3, 0xa

    aput-byte v11, v4, v3

    const/16 v3, 0xb

    aput-byte v11, v4, v3

    const/16 v3, 0xc

    aput-byte v11, v4, v3

    const/16 v3, 0xd

    aput-byte v11, v4, v3

    const/16 v3, 0xe

    aput-byte v11, v4, v3

    aput-byte v11, v4, v7

    move-object v3, v4

    goto/16 :goto_7

    :pswitch_f
    const/16 v3, 0xa

    new-array v3, v3, [B

    aput-byte v5, v3, v11

    aput-byte v12, v3, v5

    const/16 v4, 0x30

    aput-byte v4, v3, v6

    aput-byte v11, v3, v9

    aput-byte v11, v3, v15

    aput-byte v11, v3, v13

    aput-byte v11, v3, v10

    aput-byte v11, v3, v12

    const/16 v4, 0x8

    aput-byte v11, v3, v4

    const/16 v4, 0x9

    aput-byte v11, v3, v4

    goto/16 :goto_7

    .line 247
    :pswitch_10
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v3, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    new-array v4, v13, [B

    aput-byte v14, v4, v11

    const/16 v7, 0xc

    aput-byte v7, v4, v5

    const/16 v7, 0x51

    aput-byte v7, v4, v6

    aput-byte v3, v4, v9

    int-to-byte v3, v9

    aput-byte v3, v4, v15

    const-string v3, "DTV"

    .line 249
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v4, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v3

    const/16 v4, 0xe

    .line 250
    invoke-static {v3, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->makeBytesFixedLength([BI)[B

    move-result-object v3

    goto :goto_7

    :pswitch_11
    const/16 v3, -0x6f

    const/16 v4, 0x8

    .line 244
    invoke-static {v3, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->setReportHiworldSrcInfoData(BB)[B

    move-result-object v3

    goto :goto_7

    :pswitch_12
    new-array v3, v7, [B

    aput-byte v14, v3, v11

    const/16 v4, -0x2e

    aput-byte v4, v3, v5

    const/16 v4, 0x14

    aput-byte v4, v3, v6

    :goto_4
    if-ge v9, v7, :cond_8

    const/16 v4, 0x20

    .line 237
    aput-byte v4, v3, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :pswitch_13
    new-array v3, v9, [B

    aput-byte v14, v3, v11

    const/16 v4, -0x70

    aput-byte v4, v3, v5

    aput-byte v12, v3, v6

    const-string v4, "TV"

    .line 210
    invoke-static {v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->string2UnicodeBIG(Ljava/lang/String;)[B

    move-result-object v4

    .line 211
    invoke-static {v3, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v3

    const/16 v4, 0x21

    new-array v6, v4, [B

    move v7, v11

    .line 213
    :goto_5
    array-length v9, v3

    if-ge v7, v9, :cond_6

    if-ne v4, v7, :cond_5

    goto :goto_6

    .line 215
    :cond_5
    aget-byte v9, v3, v7

    aput-byte v9, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_6
    :goto_6
    move-object v3, v6

    goto :goto_7

    :pswitch_14
    new-array v3, v15, [B

    const/16 v4, 0x13

    aput-byte v4, v3, v11

    const/16 v4, 0x8

    aput-byte v4, v3, v5

    aput-byte v11, v3, v6

    int-to-byte v4, v6

    aput-byte v4, v3, v9

    const-string v4, "TV"

    .line 224
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v3

    goto :goto_7

    .line 197
    :pswitch_15
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DTVRepCanbus;->reportCanbusKiaHyundaiAtvInfo:[B

    goto :goto_7

    .line 179
    :cond_7
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DTVRepCanbus;->reportCanbusGolfDtvInfo:[B

    :cond_8
    :goto_7
    move v4, v11

    .line 377
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v5, :cond_c

    .line 378
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object v5

    sget-object v6, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {v5, v6}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v5

    sget-object v6, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->DTV:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-eq v5, v6, :cond_9

    .line 379
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object v5

    sget-object v6, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {v5, v6}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v5

    sget-object v6, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->BTPHONE:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-ne v5, v6, :cond_c

    :cond_9
    if-nez v4, :cond_a

    .line 381
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    :cond_a
    if-nez v2, :cond_c

    if-nez v4, :cond_b

    .line 385
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "currentReport"

    invoke-static {v3, v11}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 386
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "currentReport_disc"

    invoke-static {v3, v11}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_9

    :catch_0
    move-exception v0

    .line 392
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_c
    :goto_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x16
        :pswitch_14
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
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
    .end packed-switch
.end method

.method public reportDestoryCanbusInfo(Landroid/content/Context;)V
    .locals 3

    .line 398
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

    .line 399
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "btState"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 400
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->DTV:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-eq v0, v1, :cond_1

    .line 401
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->BTPHONE:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-ne v0, v1, :cond_2

    .line 402
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

    .line 407
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method
