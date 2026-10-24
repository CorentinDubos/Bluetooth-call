.class public Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;
.super Ljava/lang/Object;
.source "MusicRepCanbus.java"


# static fields
.field static mRadio:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;


# instance fields
.field private CurrentAllMinute:B

.field private CurrentAllMinuteStr:B

.field private CurrentHour:B

.field private CurrentHourStr:Ljava/lang/String;

.field private CurrentMinute:B

.field private CurrentMinuteStr:Ljava/lang/String;

.field private CurrentPlayingIndexHigh:B

.field private CurrentPlayingIndexLow:B

.field private CurrentPos:J

.field private CurrentSecond:B

.field private CurrentSecondStr:Ljava/lang/String;

.field private PlayRatio:B

.field private TotalCount:I

.field private TotalCountNow:I

.field currentIndex:I

.field private isIndexChange:Z

.field private isPlaying:Z

.field private mCurrentLrc:Ljava/lang/String;

.field private mPlayIndex:I

.field private mPlayIndexNow:I

.field private mStoagePath:B

.field private playModel:B

.field private songAlbum:Ljava/lang/String;

.field private songAlbumNow:Ljava/lang/String;

.field private songArtist:Ljava/lang/String;

.field private songArtistNow:Ljava/lang/String;

.field private songTitle:Ljava/lang/String;

.field private songTitleNow:Ljava/lang/String;

.field private totalTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;

    invoke-direct {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;-><init>()V

    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->mRadio:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 97
    iput-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->mCurrentLrc:Ljava/lang/String;

    .line 98
    iput-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->songTitleNow:Ljava/lang/String;

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->songAlbumNow:Ljava/lang/String;

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->songArtistNow:Ljava/lang/String;

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->songTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->songAlbum:Ljava/lang/String;

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->songArtist:Ljava/lang/String;

    const/4 v0, 0x0

    .line 101
    iput v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->currentIndex:I

    return-void
.end method

.method static synthetic access$000(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;)Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->songTitleNow:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->songTitleNow:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;)Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->songAlbumNow:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->songAlbumNow:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;)Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->songArtistNow:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->songArtistNow:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;[BBLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->reportID3InfoSimpleFinal([BBLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;
    .locals 2

    const-class v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;

    monitor-enter v0

    .line 42
    :try_start_0
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->mRadio:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;

    if-nez v1, :cond_0

    .line 43
    new-instance v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;

    invoke-direct {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;-><init>()V

    sput-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->mRadio:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;

    .line 45
    :cond_0
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->mRadio:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;
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

    .line 51
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

    .line 53
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

    .line 71
    invoke-virtual {p1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    :cond_4
    :goto_0
    return v0
.end method

.method private reportID3InfoSimple([BBBBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 12

    .line 1313
    new-instance v11, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$6;

    move-object v0, v11

    move-object v1, p0

    move/from16 v2, p8

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object v6, p1

    move v7, p2

    move-object/from16 v8, p9

    move v9, p3

    move/from16 v10, p4

    invoke-direct/range {v0 .. v10}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$6;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[BBLjava/lang/String;BB)V

    .line 1338
    invoke-virtual {v11}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$6;->start()V

    return-void
.end method

.method private reportID3InfoSimpleFinal([BBLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1343
    :try_start_0
    invoke-static {p1, p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->addBytes([BB)[B

    move-result-object p1

    .line 1344
    invoke-virtual {p3, p4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->exceptBOMHead([B)[B

    move-result-object p2

    .line 1345
    invoke-static {p1, p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object p1

    .line 1346
    invoke-static {p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1348
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private simplePSACleanID3Info(BBBB)V
    .locals 7

    .line 1284
    new-instance v6, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$5;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$5;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;BBBB)V

    .line 1300
    invoke-virtual {v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$5;->start()V

    return-void
.end method

.method private sndMusicMidea(Landroid/content/Context;[B)V
    .locals 4

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "btState"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 78
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->MUSIC:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-eq v0, v1, :cond_0

    .line 79
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->BTPHONE:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-ne v0, v1, :cond_1

    .line 81
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "currentReport"

    const/4 v2, 0x0

    invoke-static {p2, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 83
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

    .line 86
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public reportCanbusInfo(BLandroid/content/Context;BBIBBBBBBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JBIZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 55

    move-object/from16 v15, p0

    move/from16 v7, p1

    move-object/from16 v14, p2

    move/from16 v8, p3

    move/from16 v13, p4

    move/from16 v12, p5

    move/from16 v11, p6

    move/from16 v10, p7

    move/from16 v9, p8

    move/from16 v6, p9

    move/from16 v5, p10

    move/from16 v4, p11

    move-object/from16 v3, p12

    move-object/from16 v2, p13

    move-object/from16 v1, p14

    move/from16 v14, p17

    move/from16 v1, p18

    .line 128
    iput-byte v7, v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->mStoagePath:B

    .line 129
    iput-byte v8, v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->PlayRatio:B

    .line 130
    iput-byte v13, v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->CurrentPlayingIndexLow:B

    .line 131
    iput-byte v11, v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->CurrentHour:B

    .line 132
    iput-byte v10, v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->CurrentMinute:B

    .line 133
    iput-byte v9, v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->CurrentSecond:B

    .line 134
    iput-byte v6, v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->CurrentAllMinuteStr:B

    .line 135
    iput-byte v5, v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->CurrentPlayingIndexHigh:B

    .line 136
    iput-byte v4, v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->CurrentAllMinute:B

    .line 137
    iput-byte v14, v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->playModel:B

    .line 138
    iput v12, v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->TotalCount:I

    .line 139
    iput v1, v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->mPlayIndex:I

    .line 140
    iput-object v3, v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->CurrentHourStr:Ljava/lang/String;

    .line 141
    iput-object v2, v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->CurrentMinuteStr:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 142
    iput-object v1, v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->CurrentSecondStr:Ljava/lang/String;

    move-wide/from16 v3, p15

    .line 143
    iput-wide v3, v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->CurrentPos:J

    move-wide/from16 v3, p20

    .line 144
    iput-wide v3, v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->totalTime:J

    move/from16 v14, p19

    .line 145
    iput-boolean v14, v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->isPlaying:Z

    move-object/from16 v14, p22

    .line 146
    iput-object v14, v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->songTitle:Ljava/lang/String;

    move-object/from16 v14, p23

    .line 147
    iput-object v14, v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->songAlbum:Ljava/lang/String;

    move-object/from16 v14, p24

    .line 148
    iput-object v14, v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->songArtist:Ljava/lang/String;

    const-string v1, "LcdLog"

    const-string v2, "MusicRepCanbus|reportCanbusInfo"

    move-object/from16 v14, p2

    move/from16 v8, p17

    .line 149
    invoke-static {v14, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->WLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x9

    if-ne v7, v2, :cond_0

    const/16 v27, 0x1

    goto :goto_0

    :cond_0
    const/16 v27, 0x0

    :goto_0
    and-int/lit16 v2, v12, 0xff

    int-to-byte v2, v2

    shr-int/lit8 v1, v12, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    mul-int/lit16 v6, v11, 0xe10

    mul-int/lit8 v19, v10, 0x3c

    add-int v6, v6, v19

    add-int/2addr v6, v9

    shr-int/lit8 v7, v6, 0x8

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    const-wide/16 v19, 0x3e8

    .line 159
    div-long v19, v3, v19

    move/from16 v21, v7

    const/16 v7, 0x8

    shr-long v22, v19, v7

    const-wide/16 v24, 0xff

    and-long v7, v22, v24

    long-to-int v7, v7

    int-to-byte v8, v7

    const-wide/16 v22, 0xff

    and-long v3, v19, v22

    long-to-int v3, v3

    int-to-byte v7, v3

    .line 163
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getFactoryCanType()I

    move-result v4

    .line 164
    invoke-static/range {p2 .. p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isCanbusCmdPorting(Landroid/content/Context;)Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_7

    const/16 v28, -0x7e

    move/from16 v19, v8

    const-string v8, ":"

    move/from16 v24, v7

    const/16 v30, -0x40

    const/16 v35, 0x16

    if-eqz v3, :cond_1

    .line 166
    :try_start_1
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$8;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v38

    aget v3, v3, v38

    packed-switch v3, :pswitch_data_0

    :cond_1
    move/from16 v39, v1

    move/from16 v40, v2

    move/from16 v42, v4

    move/from16 v43, v6

    move-object v11, v8

    move v7, v12

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/16 v6, 0xa

    const/16 v8, 0xb

    const/16 v12, 0x9

    const/16 v16, 0xc

    const/16 v17, 0x2

    const/16 v18, 0x1

    const/16 v22, 0x3

    const/16 v25, 0x4

    const/16 v26, 0x5

    const/16 v29, 0x6

    const/16 v32, 0x7

    const/16 v44, 0xf

    move/from16 v2, p1

    move/from16 v1, p19

    goto/16 :goto_1a

    :pswitch_0
    const/16 v3, 0xa

    new-array v7, v3, [B

    const/4 v3, 0x0

    aput-byte v35, v7, v3

    const/16 v16, 0x1

    aput-byte v30, v7, v16

    const/16 v18, 0x8

    const/16 v26, 0x2

    aput-byte v18, v7, v26

    const/16 v18, 0x13

    const/16 v37, 0x3

    aput-byte v18, v7, v37

    const/16 v18, 0x4

    aput-byte v13, v7, v18

    const/16 v18, 0x5

    aput-byte v5, v7, v18

    const/16 v18, 0x6

    aput-byte v2, v7, v18

    const/16 v18, 0x7

    aput-byte v1, v7, v18

    const/16 v18, 0x8

    aput-byte v10, v7, v18

    const/16 v17, 0x9

    aput-byte v9, v7, v17

    .line 467
    invoke-direct {v15, v14, v7}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->sndMusicMidea(Landroid/content/Context;[B)V

    .line 468
    new-instance v7, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$1;

    move/from16 v39, v1

    move/from16 v3, v16

    move-object/from16 v16, v8

    move-object/from16 v8, p14

    move-object v1, v7

    move/from16 v40, v2

    move/from16 v12, v17

    move-object/from16 v2, p0

    move-object/from16 v3, p22

    move/from16 v42, v4

    move-object/from16 v4, p23

    move-object/from16 v5, p24

    move/from16 v43, v6

    move/from16 v6, p25

    invoke-direct/range {v1 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$1;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 508
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    move/from16 v2, p1

    move/from16 v7, p5

    move/from16 v1, p19

    move-object/from16 v11, v16

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/16 v6, 0xa

    const/16 v8, 0xb

    const/16 v16, 0xc

    const/16 v17, 0x2

    const/16 v18, 0x1

    goto/16 :goto_6

    :pswitch_1
    move/from16 v39, v1

    move/from16 v40, v2

    move/from16 v42, v4

    move/from16 v43, v6

    move-object/from16 v16, v8

    const/16 v12, 0x9

    move-object/from16 v8, p14

    if-eqz v27, :cond_2

    const/16 v1, 0xe

    goto :goto_1

    :cond_2
    const/16 v1, 0xd

    :goto_1
    if-lt v11, v12, :cond_3

    move v2, v12

    goto :goto_2

    :cond_3
    move v2, v11

    .line 456
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v7, p13

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 457
    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "0000"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    move/from16 v4, p10

    shl-int/lit8 v5, v4, 0x8

    or-int/2addr v5, v13

    int-to-long v5, v5

    .line 458
    invoke-virtual {v3, v5, v6}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    .line 459
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "   "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v5, v3, [B

    const/4 v3, 0x0

    aput-byte v35, v5, v3

    const/16 v3, -0x2e

    const/4 v6, 0x1

    aput-byte v3, v5, v6

    const/4 v3, 0x2

    aput-byte v1, v5, v3

    .line 461
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v5, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v2

    .line 462
    invoke-direct {v15, v14, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->sndMusicMidea(Landroid/content/Context;[B)V

    move/from16 v33, p3

    move/from16 v7, p5

    move v5, v1

    move v2, v4

    move/from16 v18, v6

    move/from16 v41, v18

    move-object/from16 v11, v16

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/16 v6, 0xa

    const/16 v8, 0xb

    const/16 v16, 0xc

    const/16 v17, 0x2

    const/16 v22, 0x3

    const/16 v25, 0x4

    const/16 v26, 0x5

    const/16 v29, 0x6

    const/16 v32, 0x7

    const/16 v44, 0xf

    move/from16 v1, p19

    goto/16 :goto_1c

    :pswitch_2
    move-object/from16 v7, p13

    move/from16 v39, v1

    move/from16 v40, v2

    move/from16 v42, v4

    move v4, v5

    move/from16 v43, v6

    move-object/from16 v16, v8

    const/4 v6, 0x1

    const/16 v12, 0x9

    move-object/from16 v8, p14

    shl-int/lit8 v1, v4, 0x6

    or-int/2addr v1, v9

    int-to-byte v1, v1

    if-eqz v27, :cond_4

    move v2, v12

    goto :goto_3

    :cond_4
    const/16 v2, 0x8

    :goto_3
    const/4 v3, 0x3

    if-le v4, v3, :cond_5

    const/4 v3, 0x7

    const/4 v4, 0x3

    goto :goto_4

    :cond_5
    const/4 v3, 0x7

    :goto_4
    new-array v5, v3, [B

    const/4 v3, 0x0

    aput-byte v35, v5, v3

    const/16 v17, -0x7c

    aput-byte v17, v5, v6

    const/16 v17, 0x2

    aput-byte v2, v5, v17

    const/4 v2, 0x3

    aput-byte v3, v5, v2

    const/4 v2, 0x4

    aput-byte v13, v5, v2

    const/4 v2, 0x5

    aput-byte v1, v5, v2

    const/4 v1, 0x6

    aput-byte v10, v5, v1

    .line 437
    invoke-direct {v15, v14, v5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->sndMusicMidea(Landroid/content/Context;[B)V

    move/from16 v5, p1

    move/from16 v33, p3

    move/from16 v7, p5

    move/from16 v1, p19

    move v2, v4

    move/from16 v18, v6

    move/from16 v41, v18

    move-object/from16 v11, v16

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/16 v6, 0xa

    const/16 v8, 0xb

    const/16 v16, 0xc

    const/16 v17, 0x2

    const/16 v22, 0x3

    const/16 v25, 0x4

    const/16 v26, 0x5

    const/16 v29, 0x6

    const/16 v32, 0x7

    const/16 v44, 0xf

    goto/16 :goto_1c

    :pswitch_3
    move-object/from16 v7, p13

    move/from16 v39, v1

    move/from16 v40, v2

    move/from16 v42, v4

    move v4, v5

    move/from16 v43, v6

    move-object/from16 v16, v8

    const/4 v6, 0x1

    const/16 v12, 0x9

    move-object/from16 v8, p14

    if-eqz v27, :cond_6

    const/4 v1, 0x3

    new-array v2, v1, [B

    const/4 v1, 0x0

    aput-byte v35, v2, v1

    aput-byte v12, v2, v6

    const/16 v3, 0xc

    const/4 v5, 0x2

    aput-byte v3, v2, v5

    .line 410
    invoke-direct {v15, v14, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->sndMusicMidea(Landroid/content/Context;[B)V

    const/16 v2, 0x8

    new-array v3, v2, [B

    aput-byte v35, v3, v1

    aput-byte v12, v3, v6

    const/16 v1, 0xc

    aput-byte v1, v3, v5

    const/4 v1, 0x3

    aput-byte v4, v3, v1

    const/4 v1, 0x4

    aput-byte v13, v3, v1

    const/4 v1, 0x5

    aput-byte v11, v3, v1

    const/4 v1, 0x6

    aput-byte v10, v3, v1

    const/4 v1, 0x7

    aput-byte v9, v3, v1

    .line 411
    invoke-direct {v15, v14, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->sndMusicMidea(Landroid/content/Context;[B)V

    goto/16 :goto_5

    :cond_6
    const/4 v1, 0x3

    new-array v2, v1, [B

    const/4 v1, 0x0

    aput-byte v35, v2, v1

    aput-byte v12, v2, v6

    const/16 v3, 0xd

    const/4 v5, 0x2

    aput-byte v3, v2, v5

    .line 414
    invoke-direct {v15, v14, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->sndMusicMidea(Landroid/content/Context;[B)V

    const/16 v2, 0x8

    new-array v3, v2, [B

    aput-byte v35, v3, v1

    aput-byte v12, v3, v6

    const/16 v1, 0xd

    aput-byte v1, v3, v5

    const/4 v1, 0x3

    aput-byte v4, v3, v1

    const/4 v1, 0x4

    aput-byte v13, v3, v1

    const/4 v1, 0x5

    aput-byte v11, v3, v1

    const/4 v1, 0x6

    aput-byte v10, v3, v1

    const/4 v1, 0x7

    aput-byte v9, v3, v1

    .line 415
    invoke-direct {v15, v14, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->sndMusicMidea(Landroid/content/Context;[B)V

    goto :goto_5

    :pswitch_4
    move-object/from16 v7, p13

    move/from16 v39, v1

    move/from16 v40, v2

    move/from16 v42, v4

    move v4, v5

    move/from16 v43, v6

    move-object/from16 v16, v8

    const/4 v6, 0x1

    const/16 v12, 0x9

    move-object/from16 v8, p14

    if-eqz v27, :cond_7

    const/16 v1, 0xa

    new-array v2, v1, [B

    const/4 v1, 0x0

    aput-byte v35, v2, v1

    aput-byte v28, v2, v6

    const/4 v1, 0x2

    aput-byte v12, v2, v1

    const/4 v3, 0x3

    aput-byte v1, v2, v3

    const/4 v1, 0x4

    aput-byte v13, v2, v1

    const/4 v1, 0x5

    aput-byte v4, v2, v1

    const/4 v1, 0x6

    aput-byte v40, v2, v1

    const/4 v1, 0x7

    aput-byte v39, v2, v1

    const/16 v1, 0x8

    aput-byte v10, v2, v1

    aput-byte v9, v2, v12

    .line 398
    invoke-direct {v15, v14, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->sndMusicMidea(Landroid/content/Context;[B)V

    goto :goto_5

    :cond_7
    const/16 v1, 0xa

    new-array v2, v1, [B

    const/4 v1, 0x0

    aput-byte v35, v2, v1

    aput-byte v28, v2, v6

    const/16 v1, 0x8

    const/4 v3, 0x2

    aput-byte v1, v2, v3

    const/4 v1, 0x3

    aput-byte v3, v2, v1

    const/4 v1, 0x4

    aput-byte v13, v2, v1

    const/4 v1, 0x5

    aput-byte v4, v2, v1

    const/4 v1, 0x6

    aput-byte v40, v2, v1

    const/4 v1, 0x7

    aput-byte v39, v2, v1

    const/16 v1, 0x8

    aput-byte v10, v2, v1

    aput-byte v9, v2, v12

    .line 401
    invoke-direct {v15, v14, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->sndMusicMidea(Landroid/content/Context;[B)V

    :goto_5
    move/from16 v2, p1

    move/from16 v7, p5

    move/from16 v1, p19

    move/from16 v18, v6

    move-object/from16 v11, v16

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/16 v6, 0xa

    const/16 v8, 0xb

    const/16 v16, 0xc

    const/16 v17, 0x2

    :goto_6
    const/16 v22, 0x3

    const/16 v25, 0x4

    const/16 v26, 0x5

    const/16 v29, 0x6

    const/16 v32, 0x7

    const/16 v44, 0xf

    goto/16 :goto_19

    :pswitch_5
    move-object/from16 v7, p13

    move/from16 v39, v1

    move/from16 v40, v2

    move/from16 v42, v4

    move v4, v5

    move/from16 v43, v6

    move-object/from16 v16, v8

    const/4 v1, 0x3

    const/4 v6, 0x1

    const/16 v12, 0x9

    move-object/from16 v8, p14

    new-array v2, v1, [B

    const/4 v1, 0x0

    aput-byte v35, v2, v1

    aput-byte v28, v2, v6

    const/4 v1, 0x4

    const/4 v3, 0x2

    aput-byte v1, v2, v3

    .line 349
    invoke-direct {v15, v14, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->sndMusicMidea(Landroid/content/Context;[B)V

    xor-int/lit8 v1, v27, 0x1

    const/4 v2, 0x7

    shl-int/2addr v1, v2

    move/from16 v2, p17

    if-eqz v2, :cond_8

    if-eq v2, v6, :cond_a

    const/4 v3, 0x2

    if-eq v2, v3, :cond_9

    :cond_8
    move v5, v2

    const/4 v2, 0x0

    goto :goto_7

    :cond_9
    move v5, v2

    const/4 v2, 0x2

    goto :goto_7

    :cond_a
    move v5, v2

    const/4 v2, 0x3

    :goto_7
    if-nez p3, :cond_b

    move v3, v6

    goto :goto_8

    :cond_b
    move/from16 v3, p3

    :goto_8
    const/16 v12, 0x64

    if-ne v3, v12, :cond_c

    const/4 v3, 0x0

    :cond_c
    and-int/lit16 v12, v4, 0xff

    const/16 v26, 0x8

    shl-int/lit8 v12, v12, 0x8

    and-int/lit16 v6, v13, 0xff

    or-int/2addr v6, v12

    const/4 v12, 0x3

    .line 373
    invoke-static {v6, v12}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getDecimalBit(II)I

    move-result v44

    const/4 v12, 0x4

    shl-int/lit8 v5, v44, 0x4

    and-int/lit16 v5, v5, 0xf0

    const/4 v12, 0x2

    invoke-static {v6, v12}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getDecimalBit(II)I

    move-result v44

    const/16 v12, 0xf

    and-int/lit8 v22, v44, 0xf

    or-int v5, v5, v22

    const/4 v12, 0x1

    .line 375
    invoke-static {v6, v12}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getDecimalBit(II)I

    move-result v44

    const/4 v12, 0x4

    shl-int/lit8 v7, v44, 0x4

    and-int/lit16 v7, v7, 0xf0

    const/4 v12, 0x0

    invoke-static {v6, v12}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getDecimalBit(II)I

    move-result v6

    const/16 v12, 0xf

    and-int/2addr v6, v12

    or-int/2addr v6, v7

    move/from16 v7, p5

    const/4 v12, 0x3

    .line 377
    invoke-static {v7, v12}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getDecimalBit(II)I

    move-result v17

    const/4 v12, 0x4

    shl-int/lit8 v8, v17, 0x4

    and-int/lit16 v8, v8, 0xf0

    const/4 v12, 0x2

    invoke-static {v7, v12}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getDecimalBit(II)I

    move-result v17

    const/16 v12, 0xf

    and-int/lit8 v17, v17, 0xf

    or-int v8, v8, v17

    const/4 v12, 0x1

    .line 379
    invoke-static {v7, v12}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getDecimalBit(II)I

    move-result v17

    const/4 v12, 0x4

    shl-int/lit8 v4, v17, 0x4

    and-int/lit16 v4, v4, 0xf0

    const/4 v12, 0x0

    invoke-static {v7, v12}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getDecimalBit(II)I

    move-result v17

    const/16 v12, 0xf

    and-int/lit8 v17, v17, 0xf

    or-int v4, v4, v17

    .line 381
    div-int/lit8 v17, v11, 0xa

    const/16 v22, 0x4

    shl-int/lit8 v12, v17, 0x4

    and-int/lit16 v12, v12, 0xf0

    rem-int/lit8 v17, v11, 0xa

    const/16 v44, 0xf

    and-int/lit8 v17, v17, 0xf

    or-int v12, v12, v17

    .line 383
    div-int/lit8 v17, v10, 0xa

    shl-int/lit8 v11, v17, 0x4

    and-int/lit16 v11, v11, 0xf0

    rem-int/lit8 v17, v10, 0xa

    and-int/lit8 v17, v17, 0xf

    or-int v11, v11, v17

    .line 385
    div-int/lit8 v17, v9, 0xa

    shl-int/lit8 v7, v17, 0x4

    and-int/lit16 v7, v7, 0xf0

    rem-int/lit8 v17, v9, 0xa

    and-int/lit8 v17, v17, 0xf

    or-int v7, v7, v17

    .line 387
    div-int/lit8 v17, v3, 0xa

    shl-int/lit8 v9, v17, 0x4

    and-int/lit16 v9, v9, 0xf0

    rem-int/lit8 v17, v3, 0xa

    and-int/lit8 v17, v17, 0xf

    or-int v9, v9, v17

    move/from16 p3, v3

    const/16 v3, 0xd

    new-array v10, v3, [B

    const/16 v17, 0x0

    aput-byte v35, v10, v17

    const/16 v17, -0x7b

    const/16 v22, 0x1

    aput-byte v17, v10, v22

    int-to-byte v1, v1

    const/16 v17, 0x2

    aput-byte v1, v10, v17

    move/from16 v1, p19

    int-to-byte v3, v1

    const/16 v17, 0x3

    aput-byte v3, v10, v17

    int-to-byte v2, v2

    const/4 v3, 0x4

    aput-byte v2, v10, v3

    int-to-byte v2, v5

    const/4 v3, 0x5

    aput-byte v2, v10, v3

    int-to-byte v2, v6

    const/4 v3, 0x6

    aput-byte v2, v10, v3

    int-to-byte v2, v8

    const/4 v3, 0x7

    aput-byte v2, v10, v3

    int-to-byte v2, v4

    const/16 v3, 0x8

    aput-byte v2, v10, v3

    int-to-byte v2, v12

    const/16 v12, 0x9

    aput-byte v2, v10, v12

    int-to-byte v2, v11

    const/16 v3, 0xa

    aput-byte v2, v10, v3

    int-to-byte v2, v7

    const/16 v3, 0xb

    aput-byte v2, v10, v3

    int-to-byte v2, v9

    const/16 v3, 0xc

    aput-byte v2, v10, v3

    .line 389
    invoke-direct {v15, v14, v10}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->sndMusicMidea(Landroid/content/Context;[B)V

    move/from16 v5, p1

    move/from16 v33, p3

    move/from16 v7, p5

    move/from16 v10, p7

    move/from16 v9, p8

    move/from16 v2, p10

    move-object/from16 v11, v16

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/16 v6, 0xa

    const/16 v8, 0xb

    const/16 v16, 0xc

    const/16 v17, 0x2

    const/16 v18, 0x1

    const/16 v22, 0x3

    const/16 v25, 0x4

    const/16 v26, 0x5

    const/16 v29, 0x6

    const/16 v32, 0x7

    const/16 v41, 0x1

    goto/16 :goto_1c

    :pswitch_6
    move/from16 v39, v1

    move/from16 v40, v2

    move/from16 v42, v4

    move/from16 v43, v6

    move-object/from16 v16, v8

    const/4 v2, 0x3

    const/16 v12, 0x9

    const/16 v44, 0xf

    move/from16 v1, p19

    new-array v3, v2, [B

    const/4 v2, 0x0

    aput-byte v35, v3, v2

    const/4 v2, 0x1

    aput-byte v28, v3, v2

    const/4 v2, 0x4

    const/4 v4, 0x2

    aput-byte v2, v3, v4

    .line 346
    invoke-direct {v15, v14, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->sndMusicMidea(Landroid/content/Context;[B)V

    goto :goto_9

    :pswitch_7
    move/from16 v39, v1

    move/from16 v40, v2

    move/from16 v42, v4

    move/from16 v43, v6

    move-object/from16 v16, v8

    const/4 v2, 0x3

    const/16 v12, 0x9

    const/16 v44, 0xf

    move/from16 v1, p19

    new-array v3, v2, [B

    const/4 v2, 0x0

    aput-byte v35, v3, v2

    const/16 v2, -0x7a

    const/4 v4, 0x1

    aput-byte v2, v3, v4

    const/4 v2, 0x4

    const/4 v4, 0x2

    aput-byte v2, v3, v4

    .line 342
    invoke-direct {v15, v14, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->sndMusicMidea(Landroid/content/Context;[B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_9
    move/from16 v2, p1

    move/from16 v7, p5

    move/from16 v10, p7

    move/from16 v9, p8

    :goto_a
    move-object/from16 v11, v16

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/16 v6, 0xa

    const/16 v8, 0xb

    :goto_b
    const/16 v16, 0xc

    goto/16 :goto_15

    :pswitch_8
    move/from16 v39, v1

    move/from16 v40, v2

    move/from16 v42, v4

    move/from16 v43, v6

    move-object/from16 v16, v8

    const/16 v12, 0x9

    const/16 v44, 0xf

    move/from16 v1, p19

    .line 328
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "PhoneState"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_e

    .line 329
    invoke-direct {v15, v14}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->hodaAccordgetDeviceStatus(Landroid/content/Context;)B

    move-result v2

    if-lez v2, :cond_d

    .line 330
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->getInstance()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;

    move-result-object v2

    invoke-direct {v15, v14}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->hodaAccordgetDeviceStatus(Landroid/content/Context;)B

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v14, v4, v4, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->reportSimpleHondaAccordDeviceStatus(Landroid/content/Context;ZZB)V

    goto :goto_c

    .line 332
    :cond_d
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->getInstance()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v14, v3, v4, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->reportSimpleHondaAccordDeviceStatus(Landroid/content/Context;ZZB)V
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_c

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 336
    :try_start_3
    invoke-virtual {v2}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    :cond_e
    :goto_c
    const/16 v2, 0xa

    new-array v3, v2, [B

    const/4 v2, 0x0

    aput-byte v35, v3, v2

    const/4 v2, 0x1

    aput-byte v30, v3, v2

    const/16 v2, 0x8

    const/4 v4, 0x2

    aput-byte v2, v3, v4

    const/16 v2, 0x11

    const/4 v4, 0x3

    aput-byte v2, v3, v4

    const/4 v2, 0x4

    aput-byte v40, v3, v2

    const/4 v2, 0x5

    aput-byte v39, v3, v2

    const/4 v2, 0x6

    aput-byte v13, v3, v2

    const/4 v2, 0x7

    aput-byte p10, v3, v2

    move/from16 v10, p7

    const/16 v2, 0x8

    aput-byte v10, v3, v2

    move/from16 v9, p8

    aput-byte v9, v3, v12

    .line 338
    invoke-direct {v15, v14, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->sndMusicMidea(Landroid/content/Context;[B)V

    move/from16 v2, p1

    move/from16 v7, p5

    goto :goto_a

    :pswitch_9
    move/from16 v39, v1

    move/from16 v40, v2

    move/from16 v42, v4

    move/from16 v43, v6

    move-object/from16 v16, v8

    const/16 v12, 0x9

    const/16 v44, 0xf

    move/from16 v1, p19

    const/16 v2, 0x63

    move/from16 v7, p5

    if-lt v7, v2, :cond_f

    const/16 v2, 0x63

    goto :goto_d

    :cond_f
    int-to-byte v2, v7

    :goto_d
    const/4 v3, 0x4

    new-array v4, v3, [B

    const/4 v3, 0x0

    aput-byte v35, v4, v3

    const/4 v3, 0x1

    aput-byte v30, v4, v3

    const/16 v3, 0x8

    const/4 v5, 0x2

    aput-byte v3, v4, v5

    const/16 v5, 0x13

    const/4 v6, 0x3

    aput-byte v5, v4, v6

    .line 322
    invoke-direct {v15, v14, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->sndMusicMidea(Landroid/content/Context;[B)V

    new-array v4, v3, [B

    const/4 v3, 0x0

    aput-byte v35, v4, v3

    const/16 v5, -0x3d

    const/4 v6, 0x1

    aput-byte v5, v4, v6

    const/4 v5, 0x2

    aput-byte v2, v4, v5

    const/4 v2, 0x3

    aput-byte v3, v4, v2

    const/4 v2, 0x4

    aput-byte v13, v4, v2

    const/4 v2, 0x5

    aput-byte p10, v4, v2

    const/4 v2, 0x6

    aput-byte v10, v4, v2

    const/4 v2, 0x7

    aput-byte v9, v4, v2

    .line 323
    invoke-direct {v15, v14, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->sndMusicMidea(Landroid/content/Context;[B)V

    goto :goto_f

    :pswitch_a
    move/from16 v39, v1

    move/from16 v40, v2

    move/from16 v42, v4

    move/from16 v43, v6

    move-object/from16 v16, v8

    move v7, v12

    const/16 v12, 0x9

    const/16 v44, 0xf

    move/from16 v1, p19

    const/16 v2, 0x63

    if-lt v7, v2, :cond_10

    const/16 v2, 0x63

    goto :goto_e

    :cond_10
    int-to-byte v2, v7

    :goto_e
    const/4 v3, 0x4

    new-array v4, v3, [B

    const/4 v3, 0x0

    aput-byte v35, v4, v3

    const/4 v3, 0x1

    aput-byte v30, v4, v3

    const/16 v3, 0x8

    const/4 v5, 0x2

    aput-byte v3, v4, v5

    const/16 v5, 0x11

    const/4 v6, 0x3

    aput-byte v5, v4, v6

    .line 311
    invoke-direct {v15, v14, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->sndMusicMidea(Landroid/content/Context;[B)V

    new-array v4, v3, [B

    const/4 v3, 0x0

    aput-byte v35, v4, v3

    const/16 v5, -0x3d

    const/4 v6, 0x1

    aput-byte v5, v4, v6

    const/4 v5, 0x2

    aput-byte v2, v4, v5

    const/4 v2, 0x3

    aput-byte v3, v4, v2

    const/4 v2, 0x4

    aput-byte v13, v4, v2

    const/4 v2, 0x5

    aput-byte p10, v4, v2

    const/4 v2, 0x6

    aput-byte v10, v4, v2

    const/4 v2, 0x7

    aput-byte v9, v4, v2

    .line 312
    invoke-direct {v15, v14, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->sndMusicMidea(Landroid/content/Context;[B)V

    :goto_f
    move/from16 v2, p1

    goto/16 :goto_a

    :pswitch_b
    move/from16 v39, v1

    move/from16 v40, v2

    move/from16 v42, v4

    move/from16 v43, v6

    move-object/from16 v16, v8

    move v7, v12

    const/16 v12, 0x9

    const/16 v44, 0xf

    move/from16 v1, p19

    .line 234
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "canbus_cur_vol"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    if-lez v2, :cond_11

    const/4 v2, 0x4

    goto :goto_10

    :cond_11
    const/16 v2, 0xc

    :goto_10
    int-to-byte v2, v2

    .line 236
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v3

    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->BENZ_B200_LUZHENG:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    if-ne v3, v4, :cond_12

    xor-int/lit8 v2, v2, 0x4

    int-to-byte v2, v2

    :cond_12
    if-eqz v27, :cond_13

    const/16 v3, 0xb

    new-array v4, v3, [B

    const/4 v3, 0x0

    aput-byte v35, v4, v3

    const/4 v3, 0x1

    aput-byte v28, v4, v3

    const/4 v3, 0x3

    const/4 v5, 0x2

    aput-byte v3, v4, v5

    const/4 v5, -0x1

    aput-byte v5, v4, v3

    const/4 v3, -0x1

    const/4 v5, 0x4

    aput-byte v3, v4, v5

    const/4 v3, 0x5

    aput-byte p10, v4, v3

    const/4 v3, 0x6

    aput-byte v13, v4, v3

    const/4 v3, -0x1

    const/4 v5, 0x7

    aput-byte v3, v4, v5

    const/16 v3, 0x8

    aput-byte v2, v4, v3

    aput-byte v10, v4, v12

    const/16 v2, 0xa

    aput-byte v9, v4, v2

    .line 240
    invoke-direct {v15, v14, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->sndMusicMidea(Landroid/content/Context;[B)V

    const/16 v8, 0xb

    goto :goto_11

    :cond_13
    const/16 v8, 0xb

    new-array v3, v8, [B

    const/4 v4, 0x0

    aput-byte v35, v3, v4

    const/4 v4, 0x1

    aput-byte v28, v3, v4

    const/4 v4, 0x4

    const/4 v5, 0x2

    aput-byte v4, v3, v5

    const/4 v5, -0x1

    const/4 v6, 0x3

    aput-byte v5, v3, v6

    const/4 v5, -0x1

    aput-byte v5, v3, v4

    const/4 v4, 0x5

    aput-byte p10, v3, v4

    const/4 v4, 0x6

    aput-byte v13, v3, v4

    const/4 v4, -0x1

    const/4 v5, 0x7

    aput-byte v4, v3, v5

    const/16 v4, 0x8

    aput-byte v2, v3, v4

    aput-byte v10, v3, v12

    const/16 v2, 0xa

    aput-byte v9, v3, v2

    .line 243
    invoke-direct {v15, v14, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->sndMusicMidea(Landroid/content/Context;[B)V

    :goto_11
    move/from16 v2, p1

    move-object/from16 v11, v16

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/16 v6, 0xa

    goto/16 :goto_b

    :pswitch_c
    move/from16 v39, v1

    move/from16 v40, v2

    move/from16 v42, v4

    move/from16 v43, v6

    move-object/from16 v16, v8

    move v7, v12

    const/16 v8, 0xb

    const/16 v12, 0x9

    const/16 v44, 0xf

    move/from16 v1, p19

    .line 220
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "canbus_cur_vol"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    .line 222
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v11, v16

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v27, :cond_14

    const/4 v4, 0x5

    new-array v5, v4, [B

    const/4 v4, 0x0

    aput-byte v35, v5, v4

    const/16 v4, 0xc

    const/4 v6, 0x1

    aput-byte v4, v5, v6

    const/16 v4, 0x55

    const/4 v6, 0x2

    aput-byte v4, v5, v6

    const/4 v4, 0x3

    aput-byte v2, v5, v4

    const/16 v2, 0x8

    const/4 v4, 0x4

    aput-byte v2, v5, v4

    const/16 v16, 0xc

    goto :goto_12

    :cond_14
    const/4 v4, 0x5

    new-array v5, v4, [B

    const/4 v4, 0x0

    aput-byte v35, v5, v4

    const/4 v4, 0x1

    const/16 v16, 0xc

    aput-byte v16, v5, v4

    const/16 v4, 0x54

    const/4 v6, 0x2

    aput-byte v4, v5, v6

    const/4 v4, 0x3

    aput-byte v2, v5, v4

    const/16 v2, 0x8

    const/4 v4, 0x4

    aput-byte v2, v5, v4

    .line 228
    :goto_12
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v5, v2, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[BB)[B

    move-result-object v2

    .line 229
    invoke-direct {v15, v14, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->sndMusicMidea(Landroid/content/Context;[B)V

    goto :goto_13

    :pswitch_d
    move/from16 v39, v1

    move/from16 v40, v2

    move/from16 v42, v4

    move/from16 v43, v6

    move-object v11, v8

    move v7, v12

    const/16 v8, 0xb

    const/16 v12, 0x9

    const/16 v16, 0xc

    const/16 v44, 0xf

    move/from16 v1, p19

    if-eqz v27, :cond_15

    .line 212
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_XINBAS_MEDIA_TYPE;->MID_SD:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_XINBAS_MEDIA_TYPE;

    const/4 v3, 0x0

    invoke-static {v14, v2, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportXinbasMediaInfo(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_XINBAS_MEDIA_TYPE;Z)V

    :goto_13
    move/from16 v2, p1

    :goto_14
    const/16 v3, 0x8

    const/4 v4, 0x0

    const/16 v6, 0xa

    :goto_15
    const/16 v17, 0x2

    const/16 v18, 0x1

    const/16 v22, 0x3

    const/16 v25, 0x4

    const/16 v26, 0x5

    const/16 v29, 0x6

    const/16 v32, 0x7

    goto/16 :goto_19

    :cond_15
    if-eqz v1, :cond_16

    const/16 v2, 0x20

    goto :goto_16

    :cond_16
    const/16 v2, 0x40

    :goto_16
    int-to-byte v2, v2

    and-int/lit8 v3, p10, 0x3

    const/4 v4, 0x6

    shl-int/2addr v3, v4

    and-int/lit8 v4, v9, 0x3f

    or-int/2addr v3, v4

    int-to-byte v3, v3

    const/4 v4, 0x7

    new-array v5, v4, [B

    const/4 v4, 0x0

    aput-byte v35, v5, v4

    const/16 v4, -0x7c

    const/4 v6, 0x1

    aput-byte v4, v5, v6

    const/16 v4, 0x8

    const/4 v6, 0x2

    aput-byte v4, v5, v6

    const/4 v4, 0x3

    aput-byte v2, v5, v4

    const/4 v2, 0x4

    aput-byte v13, v5, v2

    const/4 v2, 0x5

    aput-byte v3, v5, v2

    const/4 v2, 0x6

    aput-byte v10, v5, v2

    .line 216
    invoke-direct {v15, v14, v5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->sndMusicMidea(Landroid/content/Context;[B)V

    goto :goto_13

    :pswitch_e
    move/from16 v39, v1

    move/from16 v40, v2

    move/from16 v42, v4

    move/from16 v43, v6

    move-object v11, v8

    move v7, v12

    const/16 v2, 0xa

    const/16 v8, 0xb

    const/16 v12, 0x9

    const/16 v16, 0xc

    const/16 v44, 0xf

    move/from16 v1, p19

    new-array v3, v2, [B

    const/4 v2, 0x0

    aput-byte v35, v3, v2

    const/4 v2, 0x1

    aput-byte v30, v3, v2

    const/16 v2, 0x8

    const/4 v4, 0x2

    aput-byte v2, v3, v4

    const/16 v2, 0x11

    const/4 v4, 0x3

    aput-byte v2, v3, v4

    const/4 v2, 0x4

    aput-byte v40, v3, v2

    const/4 v2, 0x5

    aput-byte v39, v3, v2

    const/4 v2, 0x6

    aput-byte v13, v3, v2

    const/4 v2, 0x7

    aput-byte p10, v3, v2

    const/16 v2, 0x8

    aput-byte v10, v3, v2

    aput-byte v9, v3, v12

    .line 207
    invoke-direct {v15, v14, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->sndMusicMidea(Landroid/content/Context;[B)V

    goto/16 :goto_13

    :pswitch_f
    move/from16 v39, v1

    move/from16 v40, v2

    move/from16 v42, v4

    move/from16 v43, v6

    move-object v11, v8

    move v7, v12

    const/16 v8, 0xb

    const/16 v12, 0x9

    const/16 v16, 0xc

    const/16 v44, 0xf

    move/from16 v1, p19

    if-eqz v27, :cond_17

    move v2, v12

    goto :goto_17

    :cond_17
    const/16 v2, 0x8

    :goto_17
    const/16 v3, 0xa

    new-array v4, v3, [B

    const/4 v3, 0x0

    aput-byte v35, v4, v3

    const/4 v3, 0x1

    aput-byte v30, v4, v3

    int-to-byte v2, v2

    const/4 v3, 0x2

    aput-byte v2, v4, v3

    const/16 v2, 0x11

    const/4 v3, 0x3

    aput-byte v2, v4, v3

    const/4 v2, 0x4

    aput-byte v40, v4, v2

    const/4 v2, 0x5

    aput-byte v39, v4, v2

    const/4 v2, 0x6

    aput-byte v13, v4, v2

    const/4 v2, 0x7

    aput-byte p10, v4, v2

    const/16 v2, 0x8

    aput-byte v10, v4, v2

    aput-byte v9, v4, v12

    .line 193
    invoke-direct {v15, v14, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->sndMusicMidea(Landroid/content/Context;[B)V

    goto/16 :goto_13

    :pswitch_10
    move/from16 v39, v1

    move/from16 v40, v2

    move/from16 v42, v4

    move/from16 v43, v6

    move-object v11, v8

    move v7, v12

    const/16 v8, 0xb

    const/16 v12, 0x9

    const/16 v16, 0xc

    const/16 v44, 0xf

    move/from16 v2, p1

    move/from16 v1, p19

    if-ne v2, v12, :cond_18

    const/16 v3, 0xa

    new-array v4, v3, [B

    const/4 v3, 0x0

    aput-byte v35, v4, v3

    const/4 v3, 0x1

    aput-byte v30, v4, v3

    const/4 v3, 0x2

    aput-byte v12, v4, v3

    const/16 v3, 0x11

    const/4 v5, 0x3

    aput-byte v3, v4, v5

    const/4 v3, 0x4

    aput-byte v40, v4, v3

    const/4 v3, 0x5

    aput-byte v39, v4, v3

    const/4 v3, 0x6

    aput-byte v13, v4, v3

    const/4 v3, 0x7

    aput-byte p10, v4, v3

    const/16 v3, 0x8

    aput-byte v10, v4, v3

    aput-byte v9, v4, v12

    .line 185
    invoke-direct {v15, v14, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->sndMusicMidea(Landroid/content/Context;[B)V

    goto/16 :goto_14

    :cond_18
    const/16 v6, 0xa

    new-array v3, v6, [B

    const/4 v4, 0x0

    aput-byte v35, v3, v4

    const/4 v4, 0x1

    aput-byte v30, v3, v4

    const/16 v4, 0x8

    const/4 v5, 0x2

    aput-byte v4, v3, v5

    const/16 v4, 0x11

    const/4 v5, 0x3

    aput-byte v4, v3, v5

    const/4 v4, 0x4

    aput-byte v40, v3, v4

    const/4 v4, 0x5

    aput-byte v39, v3, v4

    const/4 v4, 0x6

    aput-byte v13, v3, v4

    const/4 v4, 0x7

    aput-byte p10, v3, v4

    const/16 v4, 0x8

    aput-byte v10, v3, v4

    aput-byte v9, v3, v12

    .line 187
    invoke-direct {v15, v14, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->sndMusicMidea(Landroid/content/Context;[B)V

    const/16 v3, 0x8

    const/4 v4, 0x0

    goto/16 :goto_15

    :pswitch_11
    move/from16 v39, v1

    move/from16 v40, v2

    move/from16 v42, v4

    move/from16 v43, v6

    move-object v11, v8

    move v7, v12

    const/16 v6, 0xa

    const/16 v8, 0xb

    const/16 v12, 0x9

    const/16 v16, 0xc

    const/16 v44, 0xf

    move/from16 v2, p1

    move/from16 v1, p19

    if-ne v2, v12, :cond_19

    .line 170
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->SD:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;

    const/4 v4, 0x0

    const/16 v5, 0x11

    invoke-static {v14, v3, v5, v4, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportSimpleMediaInfo(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;IZZ)V

    goto :goto_18

    :cond_19
    const/4 v4, 0x0

    const/16 v5, 0x11

    .line 172
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->USB:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;

    invoke-static {v14, v3, v5, v4, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportSimpleMediaInfo(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;IZZ)V

    :goto_18
    const/16 v3, 0x8

    new-array v5, v3, [B

    aput-byte v35, v5, v4

    const/16 v17, -0x3d

    const/16 v18, 0x1

    aput-byte v17, v5, v18

    const/16 v17, 0x2

    aput-byte v40, v5, v17

    const/16 v22, 0x3

    aput-byte v39, v5, v22

    const/16 v25, 0x4

    aput-byte v13, v5, v25

    const/16 v26, 0x5

    aput-byte p10, v5, v26

    const/16 v29, 0x6

    aput-byte v10, v5, v29

    const/16 v32, 0x7

    aput-byte v9, v5, v32

    .line 174
    invoke-direct {v15, v14, v5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->sndMusicMidea(Landroid/content/Context;[B)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_19
    move/from16 v33, p3

    move v5, v2

    move/from16 v41, v18

    goto :goto_1b

    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v12, v15

    goto/16 :goto_47

    :goto_1a
    move/from16 v33, p3

    move v5, v2

    move/from16 v41, v4

    :goto_1b
    move/from16 v2, p10

    .line 538
    :goto_1c
    :try_start_4
    new-instance v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$2;

    move-object v1, v15

    move/from16 p1, v2

    move-object/from16 v2, p0

    move/from16 v34, v3

    const/16 v31, 0xd

    move v3, v5

    move/from16 v36, v4

    move/from16 v4, v33

    move/from16 v45, v5

    const/16 v20, 0x11

    move/from16 v5, p4

    move/from16 v18, v6

    move/from16 v6, p5

    move/from16 v46, v21

    move/from16 v47, v24

    move/from16 v8, v29

    move/from16 v29, v26

    move/from16 v7, p6

    move-object/from16 v49, v11

    move/from16 v48, v19

    move/from16 v32, v20

    const/16 v11, 0xe

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p1

    move/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v50, v15

    move-object/from16 v15, p14

    move-wide/from16 v16, p15

    move/from16 v18, p17

    move/from16 v19, p18

    move/from16 v20, p19

    move-wide/from16 v21, p20

    move-object/from16 v23, p22

    move-object/from16 v24, p23

    move-object/from16 v25, p24

    move/from16 v26, p25

    invoke-direct/range {v1 .. v26}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$2;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;BBBIBBBBBBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JBIZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v11, p2

    move-object/from16 v1, v50

    invoke-static {v11, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface;->sendMsg(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface$CallBack;)V

    .line 547
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$8;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    const/4 v12, 0x1

    if-eq v1, v12, :cond_37

    const/4 v13, 0x2

    if-eq v1, v13, :cond_37

    const/16 v3, 0x1a

    if-eq v1, v3, :cond_35

    const/16 v3, 0x2b

    if-eq v1, v3, :cond_32

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    packed-switch v1, :pswitch_data_3

    const/16 v1, 0x1f

    move/from16 v2, v42

    if-ne v2, v1, :cond_1a

    const/16 v1, 0xb

    const/16 v7, 0x8

    goto :goto_1d

    :cond_1a
    move/from16 v7, v45

    const/16 v1, 0xb

    :goto_1d
    new-array v2, v1, [B

    const/4 v14, 0x0

    aput-byte v12, v2, v14

    aput-byte v7, v2, v12

    const/16 v1, 0x13

    aput-byte v1, v2, v13

    move/from16 v3, p4

    const/4 v4, 0x3

    aput-byte v3, v2, v4

    move/from16 v5, p1

    const/4 v6, 0x4

    aput-byte v5, v2, v6

    aput-byte v14, v2, v29

    move/from16 v15, p6

    const/4 v7, 0x6

    aput-byte v15, v2, v7

    move/from16 v10, p7

    const/4 v8, 0x7

    aput-byte v10, v2, v8

    move/from16 v9, p8

    const/16 v1, 0x8

    aput-byte v9, v2, v1

    const/16 v3, 0x9

    aput-byte v1, v2, v3

    move/from16 v3, p17

    const/16 v5, 0xa

    aput-byte v3, v2, v5

    goto :goto_1e

    :pswitch_12
    move/from16 v15, p6

    move/from16 v10, p7

    move/from16 v9, p8

    move/from16 v3, p17

    const/16 v1, 0x8

    const/4 v4, 0x3

    const/16 v5, 0xa

    const/4 v6, 0x4

    const/4 v14, 0x0

    new-array v2, v6, [B

    aput-byte v35, v2, v14

    aput-byte v30, v2, v12

    aput-byte v1, v2, v13

    aput-byte v14, v2, v4

    .line 1152
    invoke-static {v2, v5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->makeBytesFixedLength([BI)[B

    move-result-object v2

    :goto_1e
    move-object/from16 v12, p0

    move/from16 v13, p18

    move/from16 v1, v41

    move/from16 v54, v10

    move v10, v3

    move v3, v15

    move/from16 v15, v54

    goto/16 :goto_42

    :pswitch_13
    move/from16 v15, p6

    move/from16 v10, p7

    move/from16 v9, p8

    move/from16 v3, p17

    const/4 v14, 0x0

    new-array v1, v13, [B

    aput-byte v35, v1, v14

    const/16 v2, -0x7d

    aput-byte v2, v1, v12

    .line 1143
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MUSIC  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1144
    invoke-static/range {p7 .. p7}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->numCompensateZero(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v49

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1146
    invoke-static/range {p8 .. p8}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->numCompensateZero(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1147
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v1

    const/16 v2, 0xe

    .line 1148
    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->makeBytesFixedLength([BI)[B

    move-result-object v2

    goto :goto_1e

    :pswitch_14
    move/from16 v5, p1

    move/from16 v3, p4

    move/from16 v15, p6

    move/from16 v10, p7

    move/from16 v9, p8

    move/from16 v2, p17

    move-object/from16 v51, v49

    const/16 v1, 0x8

    const/4 v4, 0x3

    const/4 v6, 0x4

    const/4 v7, 0x6

    const/4 v8, 0x7

    const/4 v14, 0x0

    add-int/lit8 v7, v2, 0x2

    int-to-byte v7, v7

    if-ne v2, v13, :cond_1b

    move v7, v12

    :cond_1b
    new-array v8, v8, [B

    aput-byte v35, v8, v14

    aput-byte v30, v8, v12

    aput-byte v1, v8, v13

    aput-byte v14, v8, v4

    aput-byte v14, v8, v6

    aput-byte v14, v8, v29

    const/4 v1, 0x6

    aput-byte v7, v8, v1

    .line 1102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/2addr v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p5

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p12

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v51

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p13

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p14

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v4, [B

    aput-byte v35, v3, v14

    const/16 v4, 0x70

    aput-byte v4, v3, v12

    const/16 v4, 0x10

    aput-byte v4, v3, v13

    .line 1104
    new-instance v4, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$3;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_6

    move-object/from16 v5, p0

    :try_start_5
    invoke-direct {v4, v5, v1, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$3;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;Ljava/lang/String;[B)V

    .line 1118
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    move/from16 v13, p18

    move-object v12, v5

    move v3, v15

    move/from16 v1, v41

    move v15, v10

    move v10, v2

    move-object v2, v8

    goto/16 :goto_42

    :catch_2
    move-exception v0

    move-object v1, v0

    move-object v12, v5

    goto/16 :goto_47

    :pswitch_15
    move/from16 v5, p1

    move/from16 v3, p4

    move/from16 v7, p5

    move/from16 v15, p6

    move/from16 v10, p7

    move/from16 v9, p8

    const/16 v1, 0x8

    const/16 v2, 0xa

    const/4 v4, 0x3

    const/4 v6, 0x4

    const/4 v8, 0x7

    const/4 v14, 0x0

    if-eqz v27, :cond_1c

    const/16 v1, 0xe

    goto :goto_1f

    :cond_1c
    move/from16 v1, v31

    .line 1090
    :goto_1f
    :try_start_6
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->getInstance()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;

    move-result-object v8

    invoke-virtual {v8, v11}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->isMpegDiscExist(Landroid/content/Context;)I

    move-result v8

    int-to-byte v8, v8

    new-array v2, v6, [B

    aput-byte v35, v2, v14

    const/16 v16, -0x6f

    aput-byte v16, v2, v12

    int-to-byte v1, v1

    aput-byte v1, v2, v13

    aput-byte v8, v2, v4

    const/16 v1, 0xa

    new-array v1, v1, [B

    aput-byte v5, v1, v14

    aput-byte v3, v1, v12

    const/16 v3, 0x2f

    aput-byte v3, v1, v13

    int-to-byte v3, v7

    aput-byte v3, v1, v4

    const/16 v3, 0x20

    aput-byte v3, v1, v6

    aput-byte v15, v1, v29

    const/16 v3, 0x3a

    const/4 v4, 0x6

    aput-byte v3, v1, v4

    const/4 v3, 0x7

    aput-byte v10, v1, v3

    const/16 v3, 0x3a

    const/16 v4, 0x8

    aput-byte v3, v1, v4

    const/16 v8, 0x9

    aput-byte v9, v1, v8

    .line 1095
    invoke-static {v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->CompensateZero([BI)[B

    move-result-object v2

    goto/16 :goto_23

    :pswitch_16
    move/from16 v5, p1

    move/from16 v3, p4

    move/from16 v15, p6

    move/from16 v10, p7

    move/from16 v9, p8

    const/16 v1, 0xb

    const/16 v2, 0x8

    const/4 v4, 0x3

    const/4 v6, 0x4

    const/16 v8, 0x9

    const/4 v14, 0x0

    if-eqz v27, :cond_1d

    const/16 v7, 0xc

    new-array v7, v7, [B

    aput-byte v35, v7, v14

    aput-byte v30, v7, v12

    aput-byte v8, v7, v13

    aput-byte v14, v7, v4

    aput-byte v39, v7, v6

    aput-byte v40, v7, v29

    const/4 v4, 0x6

    aput-byte v5, v7, v4

    const/4 v4, 0x7

    aput-byte v3, v7, v4

    move/from16 v3, v48

    int-to-byte v3, v3

    aput-byte v3, v7, v2

    move/from16 v2, v47

    int-to-byte v2, v2

    aput-byte v2, v7, v8

    move/from16 v2, v46

    int-to-byte v2, v2

    const/16 v3, 0xa

    aput-byte v2, v7, v3

    move/from16 v2, v43

    int-to-byte v2, v2

    aput-byte v2, v7, v1

    goto :goto_20

    :cond_1d
    move/from16 v52, v43

    move/from16 v1, v46

    move/from16 v53, v47

    move/from16 v8, v48

    const/16 v7, 0xc

    new-array v7, v7, [B

    aput-byte v35, v7, v14

    aput-byte v30, v7, v12

    aput-byte v2, v7, v13

    aput-byte v14, v7, v4

    aput-byte v39, v7, v6

    aput-byte v40, v7, v29

    const/4 v4, 0x6

    aput-byte v5, v7, v4

    const/4 v4, 0x7

    aput-byte v3, v7, v4

    int-to-byte v3, v8

    aput-byte v3, v7, v2

    move/from16 v2, v53

    int-to-byte v2, v2

    const/16 v3, 0x9

    aput-byte v2, v7, v3

    int-to-byte v1, v1

    const/16 v2, 0xa

    aput-byte v1, v7, v2

    move/from16 v1, v52

    int-to-byte v1, v1

    const/16 v2, 0xb

    aput-byte v1, v7, v2

    :goto_20
    move-object/from16 v12, p0

    move/from16 v13, p18

    move-object v2, v7

    goto/16 :goto_28

    :pswitch_17
    move/from16 v3, p4

    move/from16 v7, p5

    move/from16 v15, p6

    move/from16 v10, p7

    move/from16 v9, p8

    move-object/from16 v6, p13

    move-object/from16 v1, p14

    move-object/from16 v5, v49

    const/4 v4, 0x3

    const/4 v14, 0x0

    if-eqz v27, :cond_1e

    new-array v2, v4, [B

    aput-byte v35, v2, v14

    const/16 v4, -0x6b

    aput-byte v4, v2, v12

    const/16 v4, 0xe

    aput-byte v4, v2, v13

    goto :goto_21

    :cond_1e
    new-array v2, v4, [B

    aput-byte v35, v2, v14

    const/16 v4, -0x6b

    aput-byte v4, v2, v12

    aput-byte v31, v2, v13

    .line 1061
    :goto_21
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    :try_start_7
    const-string v3, "Unicode"

    .line 1070
    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->exceptBOMHead([B)[B

    move-result-object v1

    invoke-static {v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v2
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_22

    :catch_3
    move-exception v0

    move-object v1, v0

    .line 1072
    :try_start_8
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_22
    const/16 v1, 0x27

    .line 1074
    invoke-static {v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->makeBytesFixedLength([BI)[B

    move-result-object v2

    goto :goto_23

    :pswitch_18
    move/from16 v15, p6

    move/from16 v10, p7

    move/from16 v9, p8

    const/4 v4, 0x3

    const/4 v6, 0x4

    const/16 v7, 0xc

    const/4 v14, 0x0

    if-eqz v27, :cond_1f

    const/4 v1, 0x6

    new-array v2, v1, [B

    aput-byte v35, v2, v14

    const/16 v1, 0x9

    aput-byte v1, v2, v12

    aput-byte v7, v2, v13

    aput-byte v14, v2, v4

    aput-byte v14, v2, v6

    aput-byte v14, v2, v29

    goto :goto_23

    :cond_1f
    const/4 v1, 0x6

    new-array v2, v1, [B

    aput-byte v35, v2, v14

    const/16 v1, 0x9

    aput-byte v1, v2, v12

    aput-byte v31, v2, v13

    aput-byte v14, v2, v4

    aput-byte v14, v2, v6

    aput-byte v14, v2, v29

    goto :goto_23

    :pswitch_19
    move/from16 v15, p6

    move/from16 v10, p7

    move/from16 v9, p8

    const/4 v4, 0x3

    const/4 v6, 0x4

    const/4 v14, 0x0

    new-array v2, v6, [B

    aput-byte v35, v2, v14

    const/16 v1, -0x3c

    aput-byte v1, v2, v12

    const/16 v1, 0x9

    aput-byte v1, v2, v13

    aput-byte v14, v2, v4

    :goto_23
    move-object/from16 v12, p0

    goto/16 :goto_27

    :pswitch_1a
    move/from16 v15, p6

    move/from16 v10, p7

    move/from16 v9, p8

    const/16 v2, 0x8

    const/4 v4, 0x3

    const/4 v6, 0x4

    const/4 v14, 0x0

    new-array v1, v6, [B

    aput-byte v35, v1, v14

    aput-byte v30, v1, v12

    aput-byte v2, v1, v13

    const/16 v2, 0x13

    aput-byte v2, v1, v4

    move-object/from16 v12, p0

    :goto_24
    move/from16 v13, p18

    :goto_25
    move-object v2, v1

    goto/16 :goto_28

    :pswitch_1b
    move/from16 v3, p4

    move/from16 v7, p5

    move/from16 v15, p6

    move/from16 v10, p7

    move/from16 v9, p8

    move-object/from16 v5, v49

    const/4 v4, 0x3

    const/4 v6, 0x4

    const/4 v14, 0x0

    if-eqz v27, :cond_20

    const/4 v6, 0x6

    :cond_20
    new-array v1, v4, [B

    aput-byte v35, v1, v14

    const/16 v2, -0x67

    aput-byte v2, v1, v12

    int-to-byte v2, v6

    aput-byte v2, v1, v13

    .line 1005
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v4, "00"

    invoke-direct {v2, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    int-to-long v12, v10

    invoke-virtual {v2, v12, v13}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    .line 1006
    new-instance v4, Ljava/text/DecimalFormat;

    const-string v6, "00"

    invoke-direct {v4, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    int-to-long v12, v9

    invoke-virtual {v4, v12, v13}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    .line 1007
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1014
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 1015
    invoke-static {v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->phoneNum2UnicodeLittleExtra([B)[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v1

    const/16 v2, 0x23

    .line 1016
    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->makeBytesFixedLength([BI)[B

    move-result-object v2

    goto/16 :goto_23

    :pswitch_1c
    move/from16 v5, p1

    move/from16 v3, p4

    move/from16 v15, p6

    move/from16 v10, p7

    move/from16 v9, p8

    const/16 v2, 0x8

    const/4 v4, 0x3

    const/4 v6, 0x4

    const/16 v7, 0xc

    const/4 v14, 0x0

    if-eqz v27, :cond_21

    new-array v1, v7, [B

    aput-byte v35, v1, v14

    const/4 v7, 0x1

    aput-byte v30, v1, v7

    const/16 v8, 0x9

    const/4 v12, 0x2

    aput-byte v8, v1, v12

    aput-byte v7, v1, v4

    aput-byte v39, v1, v6

    aput-byte v40, v1, v29

    const/4 v6, 0x6

    aput-byte v5, v1, v6

    const/4 v5, 0x7

    aput-byte v3, v1, v5

    aput-byte v14, v1, v2

    const/16 v2, 0x9

    aput-byte v14, v1, v2

    const/16 v2, 0xa

    aput-byte v14, v1, v2

    const/16 v2, 0xb

    aput-byte v14, v1, v2
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_6

    move-object/from16 v12, p0

    .line 991
    :try_start_9
    invoke-direct {v12, v11, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->sndMusicMidea(Landroid/content/Context;[B)V

    goto :goto_26

    :cond_21
    move-object/from16 v12, p0

    new-array v1, v7, [B

    aput-byte v35, v1, v14

    const/4 v7, 0x1

    aput-byte v30, v1, v7

    const/4 v8, 0x2

    aput-byte v2, v1, v8

    aput-byte v7, v1, v4

    aput-byte v39, v1, v6

    aput-byte v40, v1, v29

    const/4 v6, 0x6

    aput-byte v5, v1, v6

    const/4 v5, 0x7

    aput-byte v3, v1, v5

    aput-byte v14, v1, v2

    const/16 v2, 0x9

    aput-byte v14, v1, v2

    const/16 v2, 0xa

    aput-byte v14, v1, v2

    const/16 v2, 0xb

    aput-byte v14, v1, v2

    .line 995
    invoke-direct {v12, v11, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->sndMusicMidea(Landroid/content/Context;[B)V

    .line 997
    :goto_26
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "currentReportPrev"

    invoke-static {v1, v14}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    new-array v1, v4, [B

    aput-byte v35, v1, v14

    const/16 v2, -0x3d

    const/4 v3, 0x1

    aput-byte v2, v1, v3

    const/4 v2, 0x2

    aput-byte v4, v1, v2

    const-string v2, " "

    .line 998
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v2

    goto/16 :goto_27

    :pswitch_1d
    move-object/from16 v12, p0

    move/from16 v15, p6

    move/from16 v10, p7

    move/from16 v9, p8

    const/16 v2, 0x8

    const/4 v4, 0x3

    const/4 v6, 0x4

    const/4 v14, 0x0

    if-eqz v27, :cond_22

    const/16 v1, 0xa

    new-array v1, v1, [B

    aput-byte v35, v1, v14

    const/4 v3, 0x1

    aput-byte v30, v1, v3

    const/16 v3, 0x9

    const/4 v5, 0x2

    aput-byte v3, v1, v5

    const/16 v3, 0x10

    aput-byte v3, v1, v4

    aput-byte v14, v1, v6

    aput-byte v14, v1, v29

    const/4 v3, 0x6

    aput-byte v14, v1, v3

    const/4 v3, 0x7

    aput-byte v14, v1, v3

    aput-byte v14, v1, v2

    const/16 v2, 0x9

    aput-byte v14, v1, v2

    goto/16 :goto_24

    :cond_22
    const/16 v1, 0xa

    new-array v1, v1, [B

    aput-byte v35, v1, v14

    const/4 v3, 0x1

    aput-byte v30, v1, v3

    const/4 v3, 0x2

    aput-byte v2, v1, v3

    const/16 v3, 0x10

    aput-byte v3, v1, v4

    aput-byte v14, v1, v6

    aput-byte v14, v1, v29

    const/4 v3, 0x6

    aput-byte v14, v1, v3

    const/4 v3, 0x7

    aput-byte v14, v1, v3

    aput-byte v14, v1, v2

    const/16 v2, 0x9

    aput-byte v14, v1, v2

    goto/16 :goto_24

    :pswitch_1e
    move-object/from16 v12, p0

    move/from16 v15, p6

    move/from16 v10, p7

    move/from16 v9, p8

    const/16 v2, 0x8

    const/4 v4, 0x3

    const/4 v6, 0x4

    const/16 v7, 0xc

    const/4 v14, 0x0

    if-eqz v27, :cond_23

    const/16 v1, 0xf

    new-array v1, v1, [B

    aput-byte v35, v1, v14

    const/16 v3, -0x6f

    const/4 v5, 0x1

    aput-byte v3, v1, v5

    const/16 v3, 0x19

    const/4 v5, 0x2

    aput-byte v3, v1, v5

    aput-byte v14, v1, v4

    aput-byte v14, v1, v6

    aput-byte v14, v1, v29

    const/4 v3, 0x6

    aput-byte v14, v1, v3

    const/4 v3, 0x7

    aput-byte v14, v1, v3

    aput-byte v14, v1, v2

    const/16 v2, 0x9

    aput-byte v14, v1, v2

    const/16 v2, 0xa

    aput-byte v14, v1, v2

    const/16 v2, 0xb

    aput-byte v14, v1, v2

    aput-byte v14, v1, v7

    aput-byte v14, v1, v31

    const/16 v2, 0xe

    aput-byte v14, v1, v2

    goto/16 :goto_24

    :cond_23
    const/16 v1, 0xf

    new-array v1, v1, [B

    aput-byte v35, v1, v14

    const/16 v3, -0x6f

    const/4 v5, 0x1

    aput-byte v3, v1, v5

    const/4 v3, 0x2

    aput-byte v31, v1, v3

    aput-byte v14, v1, v4

    aput-byte v14, v1, v6

    aput-byte v14, v1, v29

    const/4 v3, 0x6

    aput-byte v14, v1, v3

    const/4 v3, 0x7

    aput-byte v14, v1, v3

    aput-byte v14, v1, v2

    const/16 v2, 0x9

    aput-byte v14, v1, v2

    const/16 v2, 0xa

    aput-byte v14, v1, v2

    const/16 v2, 0xb

    aput-byte v14, v1, v2

    aput-byte v14, v1, v7

    aput-byte v14, v1, v31

    const/16 v2, 0xe

    aput-byte v14, v1, v2

    goto/16 :goto_24

    :pswitch_1f
    move-object/from16 v12, p0

    move/from16 v5, p1

    move/from16 v3, p4

    move/from16 v15, p6

    move/from16 v10, p7

    move/from16 v9, p8

    const/16 v1, 0xa

    const/16 v2, 0x8

    const/4 v4, 0x3

    const/4 v6, 0x4

    const/4 v14, 0x0

    new-array v1, v1, [B

    aput-byte v35, v1, v14

    const/4 v7, 0x1

    aput-byte v30, v1, v7

    const/4 v7, 0x2

    aput-byte v2, v1, v7

    aput-byte v39, v1, v4

    aput-byte v40, v1, v6

    aput-byte v5, v1, v29

    const/4 v4, 0x6

    aput-byte v3, v1, v4

    const/4 v3, 0x7

    aput-byte v15, v1, v3

    aput-byte v10, v1, v2

    const/16 v2, 0x9

    aput-byte v9, v1, v2

    goto/16 :goto_24

    :pswitch_20
    move-object/from16 v12, p0

    move/from16 v15, p6

    move/from16 v10, p7

    move/from16 v9, p8

    move-object v1, v2

    const/4 v4, 0x3

    const/4 v6, 0x4

    const/4 v14, 0x0

    if-eqz v27, :cond_24

    move/from16 v13, p18

    goto/16 :goto_37

    :cond_24
    new-array v2, v4, [B

    aput-byte v35, v2, v14

    const/4 v1, 0x1

    aput-byte v28, v2, v1

    const/4 v1, 0x2

    aput-byte v6, v2, v1

    :goto_27
    move/from16 v13, p18

    :goto_28
    move v3, v15

    move/from16 v1, v41

    :goto_29
    move v15, v10

    goto/16 :goto_39

    :pswitch_21
    move-object/from16 v12, p0

    move/from16 v15, p6

    move/from16 v10, p7

    move/from16 v9, p8

    move-object v1, v2

    const/4 v6, 0x4

    const/4 v14, 0x0

    .line 943
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object v2

    sget-object v3, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {v2, v3}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v2

    sget-object v3, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->MUSIC:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-eq v2, v3, :cond_25

    .line 944
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object v2

    sget-object v3, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {v2, v3}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v2

    sget-object v3, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->BTPHONE:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-ne v2, v3, :cond_26

    .line 945
    :cond_25
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "btState"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_26

    .line 946
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "action_qz_oringinal_screen_rep_0x83_status"

    .line 947
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "qz_src_mode_status"

    .line 948
    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 949
    invoke-virtual {v11, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v2, "QZ"

    const-string v3, "qz_src_mode_status snd android"

    .line 950
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    move/from16 v13, p18

    move-object v2, v1

    move v3, v15

    const/4 v1, 0x1

    goto :goto_29

    :pswitch_22
    move-object/from16 v12, p0

    move/from16 v5, p1

    move/from16 v3, p4

    move/from16 v15, p6

    move/from16 v10, p7

    move/from16 v9, p8

    const/4 v4, 0x3

    const/4 v6, 0x4

    const/4 v14, 0x0

    if-eqz v27, :cond_27

    const/4 v1, 0x6

    new-array v2, v1, [B

    aput-byte v35, v2, v14

    const/4 v1, 0x1

    aput-byte v28, v2, v1

    const/4 v1, 0x2

    aput-byte v4, v2, v1

    aput-byte v5, v2, v4

    aput-byte v3, v2, v6

    const/4 v1, -0x1

    aput-byte v1, v2, v29

    goto :goto_27

    :cond_27
    const/4 v1, 0x6

    new-array v2, v1, [B

    aput-byte v35, v2, v14

    const/4 v1, 0x1

    aput-byte v28, v2, v1

    const/4 v1, 0x2

    aput-byte v6, v2, v1

    aput-byte v5, v2, v4

    aput-byte v3, v2, v6

    const/4 v1, -0x1

    aput-byte v1, v2, v29

    goto/16 :goto_27

    :pswitch_23
    move-object/from16 v12, p0

    move/from16 v15, p6

    move/from16 v10, p7

    move/from16 v9, p8

    move/from16 v8, v45

    const/16 v1, 0xf

    const/16 v2, 0x8

    const/16 v3, 0x9

    const/4 v4, 0x3

    const/4 v6, 0x4

    const/16 v7, 0xc

    const/4 v14, 0x0

    if-ne v8, v3, :cond_28

    const/16 v8, 0xe

    goto :goto_2a

    :cond_28
    move/from16 v8, v31

    .line 902
    :goto_2a
    invoke-static/range {p2 .. p2}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->getMpegplayerManager(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->isDiscExist()Z

    move-result v3

    invoke-static {v14, v14, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->setIntByteWithBit(IIZ)I

    move-result v3

    const/16 v5, 0x10

    new-array v5, v5, [B

    aput-byte v35, v5, v14

    const/16 v13, -0x6f

    const/16 v16, 0x1

    aput-byte v13, v5, v16

    const/4 v13, 0x2

    aput-byte v8, v5, v13

    int-to-byte v3, v3

    aput-byte v3, v5, v4

    aput-byte v14, v5, v6

    aput-byte v14, v5, v29

    const/4 v3, 0x6

    aput-byte v14, v5, v3

    const/4 v3, 0x7

    aput-byte v14, v5, v3

    aput-byte v14, v5, v2

    const/16 v2, 0x9

    aput-byte v14, v5, v2

    const/16 v2, 0xa

    aput-byte v14, v5, v2

    const/16 v2, 0xb

    aput-byte v14, v5, v2

    aput-byte v14, v5, v7

    aput-byte v14, v5, v31

    const/16 v2, 0xe

    aput-byte v14, v5, v2

    aput-byte v14, v5, v1

    move/from16 v13, p18

    move-object v2, v5

    goto/16 :goto_28

    :pswitch_24
    move-object/from16 v12, p0

    move/from16 v15, p6

    move/from16 v10, p7

    move/from16 v9, p8

    move/from16 v8, v45

    const/16 v1, 0x9

    const/16 v2, 0x8

    const/4 v4, 0x3

    const/4 v6, 0x4

    const/4 v14, 0x0

    if-ne v8, v1, :cond_29

    move v7, v6

    goto :goto_2b

    :cond_29
    move/from16 v7, v29

    :goto_2b
    if-eqz p19, :cond_2a

    const/4 v1, 0x2

    goto :goto_2c

    :cond_2a
    move v1, v14

    :goto_2c
    new-array v2, v2, [B

    aput-byte v35, v2, v14

    const/16 v3, -0x6d

    const/4 v5, 0x1

    aput-byte v3, v2, v5

    const/4 v3, 0x2

    aput-byte v7, v2, v3

    aput-byte v14, v2, v4

    move/from16 v13, p18

    add-int/lit8 v3, v13, 0x1

    int-to-byte v3, v3

    aput-byte v3, v2, v6

    aput-byte v1, v2, v29

    const/4 v1, 0x6

    aput-byte v14, v2, v1

    const/4 v1, 0x7

    aput-byte v14, v2, v1

    goto/16 :goto_28

    :pswitch_25
    move-object/from16 v12, p0

    move/from16 v5, p1

    move/from16 v3, p4

    move/from16 v15, p6

    move/from16 v10, p7

    move/from16 v9, p8

    move/from16 v13, p18

    const/4 v1, 0x7

    const/16 v2, 0x8

    const/4 v4, 0x3

    const/4 v6, 0x4

    const/4 v14, 0x0

    new-array v1, v1, [B

    const/4 v7, 0x1

    aput-byte v7, v1, v14

    aput-byte v2, v1, v7

    const/16 v2, 0x40

    const/4 v7, 0x2

    aput-byte v2, v1, v7

    aput-byte v5, v1, v4

    aput-byte v3, v1, v6

    aput-byte v39, v1, v29

    const/4 v2, 0x6

    aput-byte v40, v1, v2

    goto/16 :goto_25

    :pswitch_26
    move-object/from16 v12, p0

    move/from16 v15, p6

    move/from16 v10, p7

    move/from16 v9, p8

    move/from16 v13, p18

    const/16 v1, 0xa

    const/16 v2, 0x8

    const/4 v4, 0x3

    const/4 v6, 0x4

    const/4 v14, 0x0

    new-array v1, v1, [B

    const/4 v3, 0x1

    aput-byte v3, v1, v14

    const/4 v5, 0x7

    aput-byte v5, v1, v3

    const/16 v3, 0x30

    const/4 v5, 0x2

    aput-byte v3, v1, v5

    aput-byte v14, v1, v4

    aput-byte v14, v1, v6

    aput-byte v14, v1, v29

    const/4 v3, 0x6

    aput-byte v14, v1, v3

    const/4 v3, 0x7

    aput-byte v14, v1, v3

    aput-byte v14, v1, v2

    const/16 v2, 0x9

    aput-byte v14, v1, v2

    goto/16 :goto_25

    :pswitch_27
    move-object/from16 v12, p0

    move/from16 v5, p1

    move/from16 v3, p4

    move/from16 v15, p6

    move/from16 v10, p7

    move/from16 v9, p8

    move/from16 v13, p18

    move-object/from16 v7, v49

    const/4 v4, 0x3

    const/4 v14, 0x0

    .line 758
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "00"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    and-int/lit16 v2, v10, 0xff

    int-to-long v14, v2

    invoke-virtual {v1, v14, v15}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    .line 759
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v6, "00"

    invoke-direct {v2, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    and-int/lit16 v6, v9, 0xff

    int-to-long v14, v6

    invoke-virtual {v2, v14, v15}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    .line 760
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v8, Ljava/text/DecimalFormat;

    const-string v14, "000"

    invoke-direct {v8, v14}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    mul-int/lit16 v5, v5, 0x100

    add-int/2addr v5, v3

    int-to-long v14, v5

    invoke-virtual {v8, v14, v15}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v27, :cond_2b

    const/16 v8, 0xe

    goto :goto_2d

    :cond_2b
    move/from16 v8, v31

    :goto_2d
    new-array v2, v4, [B

    const/4 v3, 0x0

    aput-byte v35, v2, v3

    const/16 v3, -0x6f

    const/4 v4, 0x1

    aput-byte v3, v2, v4

    const/4 v3, 0x2

    aput-byte v8, v2, v3

    .line 772
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v2

    goto/16 :goto_2f

    :pswitch_28
    move-object/from16 v12, p0

    move/from16 v5, p1

    move/from16 v3, p4

    move/from16 v10, p7

    move/from16 v9, p8

    move/from16 v13, p18

    move/from16 v8, v45

    move-object/from16 v7, v49

    const/4 v4, 0x3

    .line 741
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "00"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    and-int/lit16 v2, v10, 0xff

    int-to-long v14, v2

    invoke-virtual {v1, v14, v15}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    .line 742
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v6, "00"

    invoke-direct {v2, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    and-int/lit16 v6, v9, 0xff

    int-to-long v14, v6

    invoke-virtual {v2, v14, v15}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    .line 743
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v14, Ljava/text/DecimalFormat;

    const-string v15, "000"

    invoke-direct {v14, v15}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    mul-int/lit16 v5, v5, 0x100

    add-int/2addr v5, v3

    int-to-long v4, v5

    invoke-virtual {v14, v4, v5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [B

    const/4 v3, 0x0

    aput-byte v35, v2, v3

    const/16 v3, -0x2e

    const/4 v4, 0x1

    aput-byte v3, v2, v4

    const/4 v3, 0x2

    aput-byte v31, v2, v3

    const/16 v4, 0x9

    if-ne v8, v4, :cond_2c

    const/16 v4, 0xe

    aput-byte v4, v2, v3

    goto :goto_2e

    :cond_2c
    aput-byte v31, v2, v3

    .line 750
    :goto_2e
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v2

    :goto_2f
    move/from16 v3, p6

    goto/16 :goto_38

    :pswitch_29
    move-object/from16 v12, p0

    move/from16 v10, p7

    move/from16 v9, p8

    move-object/from16 v1, p14

    move/from16 v13, p18

    move/from16 v8, v45

    move-object/from16 v7, v49

    const/16 v2, 0x9

    const/4 v6, 0x4

    if-ne v8, v2, :cond_2d

    .line 703
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SD "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x6

    goto :goto_30

    :cond_2d
    move/from16 v3, p9

    .line 706
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USB "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move v7, v6

    .line 709
    :goto_30
    invoke-static {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->string2UnicodeBIG(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [B

    const/4 v3, 0x0

    aput-byte v35, v2, v3

    const/16 v3, -0x70

    const/4 v4, 0x1

    aput-byte v3, v2, v4

    const/4 v3, 0x2

    aput-byte v7, v2, v3

    .line 711
    invoke-static {v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v1

    const/16 v2, 0x21

    new-array v3, v2, [B

    const/4 v4, 0x0

    .line 713
    :goto_31
    array-length v5, v1

    if-ge v4, v5, :cond_2f

    if-ne v2, v4, :cond_2e

    goto :goto_32

    .line 715
    :cond_2e
    aget-byte v5, v1, v4

    aput-byte v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_31

    :cond_2f
    :goto_32
    move-object v2, v3

    move v15, v10

    move/from16 v1, v41

    move/from16 v3, p6

    goto/16 :goto_39

    :pswitch_2a
    move-object/from16 v12, p0

    move/from16 v5, p1

    move/from16 v3, p4

    move/from16 v13, p18

    const/16 v2, 0x8

    const/4 v6, 0x4

    move/from16 v15, p7

    move/from16 v9, p8

    :goto_33
    const/16 v1, 0xb

    goto/16 :goto_3c

    :pswitch_2b
    move-object/from16 v12, p0

    move/from16 v5, p1

    move/from16 v3, p4

    move/from16 v13, p18

    move/from16 v8, v45

    const/16 v2, 0x8

    const/4 v6, 0x4

    move/from16 v15, p7

    move/from16 v9, p8

    move/from16 v10, p17

    :goto_34
    const/16 v1, 0xb

    goto/16 :goto_3d

    :pswitch_2c
    move-object/from16 v12, p0

    move/from16 v5, p1

    move/from16 v3, p4

    move/from16 v7, p5

    move/from16 v10, p7

    move/from16 v9, p8

    move/from16 v13, p18

    move-object v1, v2

    const/16 v2, 0x8

    const/4 v6, 0x4

    const/16 v4, 0x63

    if-lt v7, v4, :cond_30

    const/16 v4, 0x63

    goto :goto_35

    :cond_30
    int-to-byte v4, v7

    :goto_35
    if-eqz v27, :cond_31

    .line 641
    sget-object v7, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->SD:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;

    const/16 v8, 0x13

    const/4 v14, 0x0

    invoke-static {v11, v7, v8, v14, v14}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportSimpleMediaInfo(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;IZZ)V

    goto :goto_36

    :cond_31
    const/4 v14, 0x0

    .line 643
    sget-object v7, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->USB:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;

    const/16 v8, 0x13

    invoke-static {v11, v7, v8, v14, v14}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportSimpleMediaInfo(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;IZZ)V

    :goto_36
    new-array v2, v2, [B

    aput-byte v35, v2, v14

    const/16 v7, -0x3d

    const/4 v8, 0x1

    aput-byte v7, v2, v8

    const/4 v7, 0x2

    aput-byte v4, v2, v7

    const/4 v4, 0x3

    aput-byte v14, v2, v4

    aput-byte v3, v2, v6

    aput-byte v5, v2, v29

    const/4 v3, 0x6

    aput-byte v10, v2, v3

    const/4 v3, 0x7

    aput-byte v9, v2, v3

    .line 645
    invoke-direct {v12, v11, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->sndMusicMidea(Landroid/content/Context;[B)V

    :goto_37
    move/from16 v3, p6

    move-object v2, v1

    :goto_38
    move v15, v10

    move/from16 v1, v41

    :goto_39
    move/from16 v10, p17

    goto/16 :goto_42

    :pswitch_2d
    move-object/from16 v12, p0

    move/from16 v5, p1

    move/from16 v3, p4

    move/from16 v10, p7

    move/from16 v9, p8

    move/from16 v13, p18

    const/16 v1, 0xa

    const/16 v2, 0x8

    const/4 v6, 0x4

    new-array v14, v1, [B

    const/4 v1, 0x0

    aput-byte v35, v14, v1

    const/4 v1, 0x1

    aput-byte v30, v14, v1

    const/4 v1, 0x2

    aput-byte v2, v14, v1

    const/16 v1, 0x10

    const/4 v4, 0x3

    aput-byte v1, v14, v4

    aput-byte v3, v14, v6

    aput-byte v5, v14, v29

    const/4 v1, 0x6

    aput-byte v40, v14, v1

    const/4 v1, 0x7

    aput-byte v39, v14, v1

    aput-byte v10, v14, v2

    const/16 v1, 0x9

    aput-byte v9, v14, v1

    const/4 v1, 0x3

    new-array v2, v1, [B

    const/4 v1, 0x0

    aput-byte v35, v2, v1

    const/16 v1, -0x38

    const/4 v3, 0x1

    aput-byte v1, v2, v3

    const/16 v1, 0x10

    const/4 v3, 0x2

    aput-byte v1, v2, v3

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x5

    const/4 v15, 0x0

    const-string v17, "UnicodeLittle"

    move-object/from16 v1, p0

    move-object/from16 v6, p22

    move-object/from16 v7, p23

    move-object/from16 v8, p24

    move v9, v15

    move v15, v10

    move-object/from16 v10, v17

    .line 555
    invoke-direct/range {v1 .. v10}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->reportID3InfoSimple([BBBBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    move/from16 v3, p6

    move/from16 v9, p8

    move/from16 v10, p17

    move-object v2, v14

    goto :goto_3b

    :pswitch_2e
    move-object/from16 v12, p0

    move/from16 v5, p1

    move/from16 v3, p4

    move/from16 v15, p7

    move/from16 v13, p18

    move/from16 v8, v45

    const/16 v1, 0x9

    const/16 v2, 0x8

    const/4 v6, 0x4

    new-array v1, v1, [B

    const/4 v4, 0x1

    const/4 v7, 0x0

    aput-byte v4, v1, v7

    aput-byte v8, v1, v4

    const/4 v4, 0x2

    aput-byte v4, v1, v4

    const/4 v4, 0x3

    aput-byte v3, v1, v4

    aput-byte v5, v1, v6

    aput-byte v40, v1, v29

    const/4 v3, 0x6

    aput-byte v39, v1, v3

    const/4 v3, 0x7

    aput-byte v15, v1, v3

    move/from16 v9, p8

    aput-byte v9, v1, v2

    move/from16 v3, p6

    move/from16 v10, p17

    :goto_3a
    move-object v2, v1

    :goto_3b
    move/from16 v1, v41

    goto/16 :goto_42

    :pswitch_2f
    move-object/from16 v12, p0

    move/from16 v5, p1

    move/from16 v3, p4

    move/from16 v15, p7

    move/from16 v9, p8

    move/from16 v13, p18

    const/16 v2, 0x8

    const/4 v6, 0x4

    goto/16 :goto_33

    :goto_3c
    new-array v1, v1, [B

    const/4 v4, 0x1

    const/4 v7, 0x0

    aput-byte v4, v1, v7

    aput-byte v2, v1, v4

    const/4 v4, 0x2

    aput-byte v32, v1, v4

    const/4 v4, 0x3

    aput-byte v7, v1, v4

    aput-byte v7, v1, v6

    aput-byte v3, v1, v29

    const/4 v3, 0x6

    aput-byte v5, v1, v3

    const/4 v3, 0x7

    aput-byte p11, v1, v3

    aput-byte v9, v1, v2

    const/16 v3, 0x9

    aput-byte v2, v1, v3

    move/from16 v10, p17

    const/16 v2, 0xa

    aput-byte v10, v1, v2

    goto/16 :goto_3e

    :pswitch_30
    move-object/from16 v12, p0

    move/from16 v5, p1

    move/from16 v3, p4

    move/from16 v15, p7

    move/from16 v9, p8

    move/from16 v10, p17

    move/from16 v13, p18

    move/from16 v8, v45

    const/16 v2, 0x8

    const/4 v6, 0x4

    goto/16 :goto_34

    :goto_3d
    new-array v1, v1, [B

    const/4 v4, 0x1

    const/4 v7, 0x0

    aput-byte v4, v1, v7

    aput-byte v8, v1, v4

    const/16 v4, 0x13

    const/4 v8, 0x2

    aput-byte v4, v1, v8

    const/4 v4, 0x3

    aput-byte v7, v1, v4

    aput-byte v33, v1, v6

    aput-byte v3, v1, v29

    const/4 v3, 0x6

    aput-byte v5, v1, v3

    const/4 v3, 0x7

    aput-byte p11, v1, v3

    aput-byte v9, v1, v2

    const/16 v3, 0x9

    aput-byte v2, v1, v3

    const/16 v2, 0xa

    aput-byte v10, v1, v2

    goto :goto_3e

    :pswitch_31
    move-object/from16 v12, p0

    move/from16 v5, p1

    move/from16 v3, p4

    move/from16 v15, p7

    move/from16 v9, p8

    move/from16 v10, p17

    move/from16 v13, p18

    move/from16 v8, v45

    const/16 v1, 0xb

    const/16 v2, 0x8

    const/4 v6, 0x4

    new-array v1, v1, [B

    const/4 v4, 0x1

    const/4 v7, 0x0

    aput-byte v4, v1, v7

    aput-byte v8, v1, v4

    const/4 v4, 0x2

    aput-byte v32, v1, v4

    const/4 v4, 0x3

    aput-byte v7, v1, v4

    aput-byte v7, v1, v6

    aput-byte v3, v1, v29

    const/4 v3, 0x6

    aput-byte v5, v1, v3

    const/4 v3, 0x7

    aput-byte p11, v1, v3

    aput-byte v9, v1, v2

    const/16 v3, 0x9

    aput-byte v2, v1, v3

    const/16 v2, 0xa

    aput-byte v10, v1, v2

    :goto_3e
    move/from16 v3, p6

    goto/16 :goto_3a

    :cond_32
    move-object/from16 v12, p0

    move/from16 v15, p7

    move/from16 v9, p8

    move-object/from16 v5, p13

    move-object/from16 v1, p14

    move/from16 v10, p17

    move/from16 v13, p18

    move/from16 v8, v45

    const/16 v2, 0x8

    const/16 v3, 0x9

    const/16 v4, 0xe

    const/4 v6, 0x4

    if-ne v8, v3, :cond_33

    move v8, v4

    goto :goto_3f

    :cond_33
    move/from16 v8, v31

    :goto_3f
    const-wide/16 v19, 0x3e8

    .line 726
    div-long v19, p15, v19

    const-wide/16 v21, 0xe10

    div-long v6, v19, v21

    long-to-int v4, v6

    if-le v4, v3, :cond_34

    const/16 v4, 0x9

    .line 728
    :cond_34
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 729
    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "0000"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    add-int/lit8 v4, v13, 0x1

    int-to-long v4, v4

    .line 730
    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    .line 731
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    new-array v3, v3, [B

    const/16 v4, 0x13

    const/4 v5, 0x0

    aput-byte v4, v3, v5

    const/4 v4, 0x1

    aput-byte v8, v3, v4

    const/4 v4, 0x2

    aput-byte v2, v3, v4

    .line 732
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    int-to-byte v2, v2

    const/4 v4, 0x3

    aput-byte v2, v3, v4

    .line 733
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v3, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v2

    goto :goto_41

    :cond_35
    move-object/from16 v12, p0

    move/from16 v15, p7

    move/from16 v9, p8

    move-object/from16 v3, p12

    move-object/from16 v5, p13

    move-object/from16 v1, p14

    move/from16 v10, p17

    move/from16 v13, p18

    move/from16 v8, v45

    move-object/from16 v7, v49

    const/16 v2, 0x8

    .line 779
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x9

    if-ne v8, v3, :cond_36

    const/16 v3, 0x55

    goto :goto_40

    :cond_36
    const/16 v3, 0x54

    :goto_40
    const/4 v4, 0x4

    new-array v4, v4, [B

    const/16 v5, 0x13

    const/4 v6, 0x0

    aput-byte v5, v4, v6

    const/4 v5, 0x1

    aput-byte v3, v4, v5

    const/4 v3, 0x2

    aput-byte v2, v4, v3

    .line 785
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    int-to-byte v2, v2

    const/4 v3, 0x3

    aput-byte v2, v4, v3

    .line 786
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v4, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v2

    :goto_41
    move/from16 v3, p6

    goto/16 :goto_3b

    :cond_37
    move-object/from16 v12, p0

    move/from16 v3, p4

    move/from16 v7, p5

    move/from16 v15, p7

    move/from16 v9, p8

    move/from16 v10, p17

    move/from16 v13, p18

    move/from16 v8, v45

    const/16 v2, 0x8

    const/16 v1, 0xb

    new-array v1, v1, [B

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput-byte v4, v1, v5

    aput-byte v8, v1, v4

    const/16 v4, 0x10

    const/4 v6, 0x2

    aput-byte v4, v1, v6

    const/4 v4, 0x3

    aput-byte v5, v1, v4

    const/4 v4, 0x4

    aput-byte v3, v1, v4

    int-to-byte v3, v7

    aput-byte v3, v1, v29

    move/from16 v3, p6

    const/4 v4, 0x6

    aput-byte v3, v1, v4

    const/4 v4, 0x7

    aput-byte v15, v1, v4

    aput-byte v9, v1, v2

    const/16 v4, 0x9

    aput-byte v2, v1, v4

    const/16 v2, 0xa

    aput-byte v10, v1, v2

    goto/16 :goto_3a

    .line 1171
    :goto_42
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object v4

    sget-object v5, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {v4, v5}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v4

    sget-object v5, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->MUSIC:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-eq v4, v5, :cond_38

    .line 1172
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object v4

    sget-object v5, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {v4, v5}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v4

    sget-object v5, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->BTPHONE:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_5

    if-ne v4, v5, :cond_39

    .line 1174
    :cond_38
    :try_start_a
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "btState"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_39

    if-eqz v2, :cond_39

    .line 1176
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    if-nez v1, :cond_39

    .line 1178
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "currentReport"

    const/4 v5, 0x0

    invoke-static {v2, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v4, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1179
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "currentReport_disc"

    invoke-static {v2, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_43

    :catch_4
    move-exception v0

    move-object v1, v0

    .line 1185
    :try_start_b
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_39
    :goto_43
    const-string v1, "LcdLog"

    const-string v2, "MusicRepCanbus|SMALL_LCD_FUNCTION"

    .line 1189
    invoke-static {v11, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->WLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "LcdLog"

    .line 1190
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MusicRepCanbus|hzbhd_LCD_isFloatView"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "hzbhd_LCD_isFloatView"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->WLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "LcdLog"

    .line 1191
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MusicRepCanbus|SourceSwitchRepCanbus_device"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "SourceSwitchRepCanbus_device"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->WLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1192
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    sget-object v2, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->SMALL_LCD_FUNCTION:Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getSharedBool(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 1193
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hzbhd_LCD_isFloatView"

    const/4 v4, 0x0

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3a

    return-void

    .line 1195
    :cond_3a
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "SourceSwitchRepCanbus_device"

    invoke-static {v1, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_3b

    return-void

    .line 1197
    :cond_3b
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "LCD_MEDIA_SOURCE_ID"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "LcdLog"

    .line 1198
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MusicRepCanbus|sourceType ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->values()[Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v2, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->WLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    sget-object v2, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->MUSIC:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    invoke-virtual {v2}, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_3c

    sget-object v2, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->BTPHONE:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    invoke-virtual {v2}, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_3c

    return-void

    .line 1201
    :cond_3c
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "LCD_START_TIMER"

    const/4 v4, 0x0

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1203
    iget v1, v12, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->currentIndex:I

    if-eq v1, v13, :cond_3e

    .line 1204
    iput v13, v12, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->currentIndex:I

    .line 1205
    invoke-static/range {p2 .. p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isYHT(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    move-result-object v1

    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->KT:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    if-ne v1, v2, :cond_3d

    .line 1206
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;->E_ICON_COLON:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;

    const/4 v2, 0x0

    invoke-static {v11, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;Z)[B

    .line 1207
    :cond_3d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TRA "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "0000"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    add-int/2addr v3, v13

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v11, v1}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_lcdPrintfString(Landroid/content/Context;[B)[B

    move-result-object v1

    .line 1208
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->getInstance()Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;

    move-result-object v2

    const/16 v3, 0x15

    invoke-virtual {v2, v1, v11, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->reportLcdInfor([BLandroid/content/Context;I)V

    goto/16 :goto_45

    .line 1210
    :cond_3e
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "00"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    int-to-long v2, v3

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    .line 1211
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "00"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    int-to-long v3, v15

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    .line 1212
    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "00"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    int-to-long v4, v9

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    .line 1213
    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$8;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$Util$SingleSpinMachine:[I

    invoke-static/range {p2 .. p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isYHT(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_4

    goto/16 :goto_45

    .line 1241
    :pswitch_32
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v11, v1}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_lcdPrintfString(Landroid/content/Context;[B)[B

    move-result-object v1

    .line 1242
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->getInstance()Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;

    move-result-object v2

    const/16 v3, 0x15

    invoke-virtual {v2, v1, v11, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->reportLcdInfor([BLandroid/content/Context;I)V

    .line 1243
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "LCD_MUSIC"

    const/4 v4, 0x0

    invoke-static {v1, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_45

    .line 1215
    :pswitch_33
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;->E_ICON_COLON:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;

    const/4 v4, 0x1

    invoke-static {v11, v1, v4}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;Z)[B

    .line 1216
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;->E_ICON_ORDER:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;

    const/4 v4, 0x0

    invoke-static {v11, v1, v4}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;Z)[B

    .line 1217
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;->E_ICON_REPEAT:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;

    invoke-static {v11, v1, v4}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;Z)[B

    .line 1218
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;->E_ICON_SHUFFLE:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;

    invoke-static {v11, v1, v4}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;Z)[B

    if-eqz v10, :cond_41

    const/4 v1, 0x1

    if-eq v10, v1, :cond_40

    const/4 v4, 0x2

    if-eq v10, v4, :cond_3f

    goto :goto_44

    .line 1227
    :cond_3f
    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;->E_ICON_ORDER:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;

    invoke-static {v11, v4, v1}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;Z)[B

    goto :goto_44

    .line 1224
    :cond_40
    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;->E_ICON_SHUFFLE:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;

    invoke-static {v11, v4, v1}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;Z)[B

    goto :goto_44

    :cond_41
    const/4 v1, 0x1

    .line 1221
    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;->E_ICON_REPEAT:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;

    invoke-static {v11, v4, v1}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;Z)[B

    .line 1230
    :goto_44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "0000"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    add-int/2addr v3, v13

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v11, v1}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_lcdPrintfString(Landroid/content/Context;[B)[B

    move-result-object v1

    .line 1231
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->getInstance()Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;

    move-result-object v2

    const/16 v3, 0x15

    invoke-virtual {v2, v1, v11, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->reportLcdInfor([BLandroid/content/Context;I)V

    .line 1232
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "LCD_MUSIC"

    const/4 v4, 0x0

    invoke-static {v1, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_42
    :goto_45
    const-string v1, "LcdLog"

    const-string v2, "RadioRepCanbus|SUCCEED"

    .line 1248
    invoke-static {v11, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->WLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_48

    :catch_5
    move-exception v0

    goto :goto_46

    :catch_6
    move-exception v0

    move-object/from16 v12, p0

    goto :goto_46

    :catch_7
    move-exception v0

    move-object v12, v15

    :goto_46
    move-object v1, v0

    .line 1250
    :goto_47
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_48
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
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
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
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
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1c
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_30
        :pswitch_30
        :pswitch_2e
        :pswitch_2e
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_2a
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_28
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1c
        :pswitch_1b
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
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_33
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
    .end packed-switch
.end method

.method public reportDestroyCanbusInfo(Landroid/content/Context;)V
    .locals 4

    .line 1256
    :try_start_0
    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$4;

    invoke-direct {v0, p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$4;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;)V

    invoke-static {p1, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface;->sendMsg(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface$CallBack;)V

    .line 1265
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->PSA_SIMPLE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    if-eq v0, v1, :cond_0

    .line 1266
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->PSA_TOUCH_AIR_SIMPLE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    if-ne v0, v1, :cond_1

    :cond_0
    const/16 v0, -0x35

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x4

    .line 1267
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->simplePSACleanID3Info(BBBB)V

    .line 1269
    :cond_1
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getFactoryCanType()I

    move-result v0

    const/16 v1, 0x79

    if-eq v0, v1, :cond_2

    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getFactoryCanType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 1270
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "btState"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 1271
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->MUSIC:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-eq v0, v1, :cond_3

    .line 1272
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->CAMERA:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-eq v0, v1, :cond_3

    .line 1273
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->BTPHONE:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-ne v0, v1, :cond_4

    .line 1274
    :cond_3
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

    .line 1279
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_4
    :goto_0
    return-void
.end method

.method public reportIrc(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1354
    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$7;

    invoke-direct {v0, p0, p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$7;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface;->sendMsg(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface$CallBack;)V

    return-void
.end method
