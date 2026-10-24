.class public Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;
.super Ljava/lang/Object;
.source "DiscRepCanbus.java"


# static fields
.field static mRadio:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;


# instance fields
.field currentIndex:I

.field private discLoadStatus:B

.field private discPlayMode:B

.field private discPlayStatus:B

.field private isDiscEjecting:Z

.field private isDiscErr:Z

.field private isDiscExist:I

.field private isDiscFastB:Z

.field private isDiscFastF:Z

.field private isDiscLoading:Z

.field private isDiscNormMode:Z

.field private isDiscPause:Z

.field private isDiscPlaying:Z

.field private isDiscRadomMode:I

.field private isDiscRepTack:Z

.field private isDiscRepeatMode:I

.field private isDiscShuffle:Z

.field private isDiscStop:Z

.field private isFirst:Z

.field private mAlbum:Ljava/lang/String;

.field private mArist:Ljava/lang/String;

.field private mCurrentPlayNo:I

.field private mCurrentTime:I

.field private mCurrentTotalNo:I

.field private mDiscType:I

.field private mIsPlaying:Z

.field private mIsUnMuted:Z

.field private mPlayModel:B

.field private mPlayStat:I

.field private mPlayTitleNo:I

.field private mPosition:I

.field private mSong:Ljava/lang/String;

.field private mpegplayerManager:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;

    invoke-direct {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;-><init>()V

    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->mRadio:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->isFirst:Z

    const/4 v0, -0x1

    .line 1282
    iput v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->currentIndex:I

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;
    .locals 2

    const-class v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;

    monitor-enter v0

    .line 48
    :try_start_0
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->mRadio:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;

    if-nez v1, :cond_0

    .line 49
    new-instance v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;

    invoke-direct {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;-><init>()V

    sput-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->mRadio:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;

    .line 51
    :cond_0
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->mRadio:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;
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

    .line 203
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

    .line 205
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

    .line 223
    invoke-virtual {p1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    :cond_4
    :goto_0
    return v0
.end method

.method private setDiscLoadingStatus(Landroid/content/Context;BBBBBB)B
    .locals 0

    .line 65
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->isMpegDiscExist(Landroid/content/Context;)I

    move-result p1

    if-nez p1, :cond_0

    .line 66
    iput-byte p2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->discLoadStatus:B

    return p2

    .line 68
    :cond_0
    iget-boolean p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->isDiscEjecting:Z

    if-eqz p1, :cond_1

    .line 69
    iput-byte p3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->discLoadStatus:B

    return p3

    .line 71
    :cond_1
    iget-boolean p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->isDiscLoading:Z

    if-eqz p1, :cond_2

    .line 72
    iput-byte p5, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->discLoadStatus:B

    return p5

    .line 75
    :cond_2
    iget-boolean p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->isDiscPlaying:Z

    if-eqz p1, :cond_3

    .line 76
    iput-byte p6, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->discLoadStatus:B

    return p6

    .line 78
    :cond_3
    iget-boolean p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->isDiscErr:Z

    if-eqz p1, :cond_4

    .line 79
    iput-byte p7, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->discLoadStatus:B

    return p7

    .line 81
    :cond_4
    iput-byte p5, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->discLoadStatus:B

    return p5
.end method

.method private setDiscPlayMode(BBB)B
    .locals 1

    .line 106
    iget-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->isDiscNormMode:Z

    if-eqz v0, :cond_0

    .line 107
    iput-byte p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->discPlayStatus:B

    return p1

    .line 109
    :cond_0
    iget-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->isDiscRepTack:Z

    if-eqz v0, :cond_1

    .line 110
    iput-byte p2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->discPlayStatus:B

    return p2

    .line 112
    :cond_1
    iget-boolean p2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->isDiscShuffle:Z

    if-eqz p2, :cond_2

    .line 113
    iput-byte p3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->discPlayStatus:B

    return p3

    .line 115
    :cond_2
    iput-byte p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->discPlayStatus:B

    return p1
.end method

.method private setDiscPlayingStatus(BBBBBB)B
    .locals 1

    .line 84
    iget-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->isDiscPlaying:Z

    if-eqz v0, :cond_0

    .line 85
    iput-byte p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->discPlayStatus:B

    return p1

    .line 87
    :cond_0
    iget-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->isDiscFastF:Z

    if-eqz v0, :cond_1

    .line 88
    iput-byte p2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->discPlayStatus:B

    return p2

    .line 90
    :cond_1
    iget-boolean p2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->isDiscFastB:Z

    if-eqz p2, :cond_2

    .line 91
    iput-byte p3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->discPlayStatus:B

    return p3

    .line 93
    :cond_2
    iget-boolean p2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->isDiscPause:Z

    if-eqz p2, :cond_3

    .line 94
    iput-byte p4, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->discPlayStatus:B

    return p4

    .line 96
    :cond_3
    iget-boolean p2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->isDiscStop:Z

    if-eqz p2, :cond_4

    .line 97
    iput-byte p5, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->discPlayStatus:B

    return p5

    .line 99
    :cond_4
    iget-boolean p2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->isDiscLoading:Z

    if-eqz p2, :cond_5

    .line 100
    iput-byte p6, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->discPlayStatus:B

    return p6

    .line 102
    :cond_5
    iput-byte p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->discPlayStatus:B

    return p1
.end method

.method private sndDiscMidea(Landroid/content/Context;[B)V
    .locals 3

    .line 230
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 232
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "btState"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 233
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->CAMERA:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-eq v0, v1, :cond_0

    .line 234
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->MPEG:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-eq v0, v1, :cond_0

    .line 235
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->BTPHONE:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-ne v0, v1, :cond_1

    .line 237
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    .line 238
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "currentReport"

    const/4 v1, 0x0

    invoke-static {p2, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 240
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public isMpegDiscExist(Landroid/content/Context;)I
    .locals 2

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "isExistDisc"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public isMpegInRadomMode(Landroid/content/Context;)I
    .locals 2

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "isDiscRadomMode"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public isMpegInRepeatMode(Landroid/content/Context;)I
    .locals 2

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "isDiscRepeatMode"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public reportCanbusInfo(Landroid/content/Context;BIIIIIIZZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 48

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move/from16 v13, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v12, p5

    move/from16 v11, p6

    move/from16 v10, p7

    move/from16 v9, p8

    move/from16 v8, p9

    move/from16 v7, p10

    move/from16 v6, p11

    .line 267
    iput-byte v13, v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->mPlayModel:B

    .line 268
    iput v4, v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->mCurrentTime:I

    .line 269
    iput v5, v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->mPlayTitleNo:I

    .line 270
    iput v12, v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->mPosition:I

    .line 271
    iput v11, v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->mCurrentPlayNo:I

    .line 272
    iput v10, v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->mCurrentTotalNo:I

    .line 273
    iput v9, v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->mDiscType:I

    .line 274
    iput-boolean v8, v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->mIsUnMuted:Z

    .line 275
    iput-boolean v7, v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->mIsPlaying:Z

    .line 276
    iput v6, v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->mPlayStat:I

    move-object/from16 v3, p12

    .line 277
    iput-object v3, v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->mSong:Ljava/lang/String;

    move-object/from16 v2, p13

    .line 278
    iput-object v2, v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->mAlbum:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 279
    iput-object v1, v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->mArist:Ljava/lang/String;

    const-string/jumbo v1, "reportCanbusInfo"

    const-string/jumbo v2, "reportCanbusInfo"

    .line 281
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->getMpegplayerManager(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 285
    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->getMpegplayerManager(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->getShuffleMode()I

    move-result v1

    iput v1, v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->isDiscRadomMode:I

    .line 286
    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->getMpegplayerManager(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->getRepeatMode()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 287
    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->getMpegplayerManager(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->getRepeatMode()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iput v1, v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->isDiscRepeatMode:I

    .line 289
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->isDiscRadomMode:I

    const-string v3, "isDiscRadomMode"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 290
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->isDiscRepeatMode:I

    const-string v3, "isDiscRepeatMode"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPlayStat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Disc----reportCanbusInfo"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->getInstance()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;

    move-result-object v1

    invoke-virtual {v1, v14}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->reportCanbusInfo(Landroid/content/Context;)V

    .line 295
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_7

    const-string v3, "LcdLog"

    if-eqz v1, :cond_5b

    .line 296
    :try_start_1
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getFactoryCanType()I

    .line 297
    div-int/lit16 v1, v4, 0xe10

    int-to-byte v1, v1

    .line 298
    invoke-static {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byte2Bcd(B)B

    move-result v2

    .line 299
    div-int/lit8 v19, v4, 0x3c

    move-object/from16 v20, v3

    rem-int/lit8 v3, v19, 0x3c

    int-to-byte v3, v3

    .line 300
    invoke-static {v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byte2Bcd(B)B

    move-result v19

    .line 301
    div-int/lit8 v7, v4, 0x3c

    int-to-byte v7, v7

    move/from16 v21, v7

    .line 302
    rem-int/lit8 v7, v4, 0x3c

    int-to-byte v7, v7

    .line 303
    invoke-static {v7}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byte2Bcd(B)B

    move-result v22

    add-int/lit8 v8, v11, 0x1

    and-int/lit16 v4, v8, 0xff

    int-to-byte v4, v4

    shr-int/lit8 v5, v8, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    move/from16 v23, v8

    and-int/lit16 v8, v12, 0xff

    int-to-byte v8, v8

    move/from16 v24, v2

    shr-int/lit8 v2, v12, 0x8

    and-int/lit16 v2, v2, 0xff

    move/from16 v25, v8

    int-to-byte v8, v2

    move/from16 v26, v2

    and-int/lit16 v2, v10, 0xff

    int-to-byte v2, v2

    move/from16 v27, v8

    shr-int/lit8 v8, v10, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    move/from16 v28, v4

    const/4 v4, 0x1

    if-ne v9, v4, :cond_3

    const/16 v29, 0x1

    goto :goto_2

    :cond_3
    const/16 v29, 0x0

    :goto_2
    const/16 v4, 0x10

    if-ne v13, v4, :cond_4

    const/4 v4, 0x1

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    .line 311
    :goto_3
    iput-boolean v4, v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->isDiscLoading:Z

    const/16 v4, 0x11

    if-ne v13, v4, :cond_5

    const/4 v4, 0x1

    goto :goto_4

    :cond_5
    const/4 v4, 0x0

    .line 312
    :goto_4
    iput-boolean v4, v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->isDiscEjecting:Z

    const/16 v4, 0x20

    if-ne v6, v4, :cond_6

    const/4 v4, 0x1

    goto :goto_5

    :cond_6
    const/4 v4, 0x0

    .line 313
    :goto_5
    iput-boolean v4, v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->isDiscPlaying:Z

    const/16 v4, 0x30

    if-ne v6, v4, :cond_7

    const/4 v4, 0x1

    goto :goto_6

    :cond_7
    const/4 v4, 0x0

    .line 314
    :goto_6
    iput-boolean v4, v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->isDiscPause:Z

    const/16 v4, 0x41

    if-ne v6, v4, :cond_8

    const/4 v4, 0x1

    goto :goto_7

    :cond_8
    const/4 v4, 0x0

    .line 315
    :goto_7
    iput-boolean v4, v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->isDiscStop:Z

    const/16 v4, 0x61

    if-lt v6, v4, :cond_9

    const/16 v4, 0x64

    if-gt v6, v4, :cond_9

    const/4 v4, 0x1

    goto :goto_8

    :cond_9
    const/4 v4, 0x0

    .line 316
    :goto_8
    iput-boolean v4, v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->isDiscFastB:Z

    const/16 v4, 0x71

    if-lt v6, v4, :cond_a

    const/16 v4, 0x74

    if-gt v6, v4, :cond_a

    const/4 v4, 0x1

    goto :goto_9

    :cond_a
    const/4 v4, 0x0

    .line 317
    :goto_9
    iput-boolean v4, v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->isDiscFastF:Z

    const/16 v4, 0xf1

    if-ne v6, v4, :cond_b

    const/4 v4, 0x1

    goto :goto_a

    :cond_b
    const/4 v4, 0x0

    .line 318
    :goto_a
    iput-boolean v4, v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->isDiscErr:Z

    .line 319
    invoke-virtual/range {p0 .. p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->isMpegInRepeatMode(Landroid/content/Context;)I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_c

    move v4, v6

    goto :goto_b

    :cond_c
    const/4 v4, 0x0

    :goto_b
    iput-boolean v4, v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->isDiscRepTack:Z

    .line 320
    invoke-virtual/range {p0 .. p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->isMpegInRadomMode(Landroid/content/Context;)I

    move-result v4

    if-ne v4, v6, :cond_d

    move v4, v6

    goto :goto_c

    :cond_d
    const/4 v4, 0x0

    :goto_c
    iput-boolean v4, v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->isDiscShuffle:Z

    .line 321
    invoke-virtual/range {p0 .. p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->isMpegInRepeatMode(Landroid/content/Context;)I

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_7

    if-eq v4, v6, :cond_e

    :try_start_2
    invoke-virtual/range {p0 .. p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->isMpegInRadomMode(Landroid/content/Context;)I

    move-result v4
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    if-eq v4, v6, :cond_e

    const/4 v4, 0x1

    goto :goto_d

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v12, v15

    goto/16 :goto_48

    :cond_e
    const/4 v4, 0x0

    :goto_d
    :try_start_3
    iput-boolean v4, v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->isDiscNormMode:Z

    if-eqz v29, :cond_f

    int-to-byte v4, v11

    move v6, v5

    move/from16 v30, v28

    goto :goto_e

    :cond_f
    int-to-byte v4, v12

    move/from16 v30, v25

    move/from16 v6, v27

    .line 333
    :goto_e
    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isCanbusCmdPorting(Landroid/content/Context;)Z

    move-result v31
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_7

    const/16 v32, -0x3d

    const/16 v33, -0x1

    const-string v13, ":"

    const/16 v34, -0x7e

    move-object/from16 v35, v13

    const/16 v36, -0x40

    const/16 v37, 0x16

    if-eqz v31, :cond_25

    :try_start_4
    const-string/jumbo v13, "reportCanbusInfo"

    .line 335
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v38, v5

    const-string v5, "disc type="

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus$2;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v12

    invoke-virtual {v12}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v12

    aget v5, v5, v12

    packed-switch v5, :pswitch_data_0

    move/from16 v9, p4

    move/from16 v12, p5

    move/from16 v19, v2

    :goto_f
    move-object/from16 v13, v35

    const/4 v4, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x2

    const/16 v22, 0x3

    const/16 v24, 0x4

    const/16 v25, 0x5

    const/16 v26, 0x6

    const/16 v27, 0x7

    goto/16 :goto_1f

    .line 593
    :pswitch_0
    iget-byte v4, v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->mPlayModel:B

    const/16 v5, 0x11

    if-ne v4, v5, :cond_10

    .line 594
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "currentReport_disc"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 595
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_12

    const/4 v5, 0x0

    .line 596
    invoke-static {v4, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-direct {v15, v14, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->sndDiscMidea(Landroid/content/Context;[B)V

    goto :goto_11

    .line 598
    :cond_10
    iget-byte v4, v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->mPlayModel:B

    if-nez v4, :cond_12

    if-eqz v29, :cond_11

    .line 600
    div-int/lit16 v4, v11, 0x100

    int-to-byte v4, v4

    .line 601
    rem-int/lit16 v5, v11, 0x100

    int-to-byte v5, v5

    goto :goto_10

    :cond_11
    move/from16 v5, v25

    move/from16 v4, v27

    :goto_10
    const/16 v6, 0xa

    new-array v12, v6, [B

    const/4 v6, 0x0

    aput-byte v37, v12, v6

    const/4 v6, 0x1

    aput-byte v36, v12, v6

    const/4 v6, 0x2

    aput-byte v6, v12, v6

    const/16 v6, 0x10

    const/4 v13, 0x3

    aput-byte v6, v12, v13

    const/4 v6, 0x4

    aput-byte v5, v12, v6

    const/4 v6, 0x5

    aput-byte v4, v12, v6

    const/4 v6, 0x6

    const/4 v13, 0x0

    aput-byte v13, v12, v6

    const/4 v6, 0x7

    aput-byte v13, v12, v6

    const/16 v6, 0x8

    aput-byte v13, v12, v6

    const/16 v6, 0x9

    aput-byte v13, v12, v6

    .line 606
    invoke-direct {v15, v14, v12}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->sndDiscMidea(Landroid/content/Context;[B)V

    move/from16 v9, p4

    move/from16 v12, p5

    move v6, v1

    move/from16 v19, v2

    move/from16 v31, v4

    move-object/from16 v13, v35

    const/4 v4, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x2

    const/16 v22, 0x3

    const/16 v24, 0x4

    const/16 v25, 0x5

    const/16 v26, 0x6

    const/16 v27, 0x7

    const/16 v30, 0x1

    move/from16 v35, v5

    goto/16 :goto_20

    :cond_12
    :goto_11
    move/from16 v9, p4

    :goto_12
    move/from16 v12, p5

    :goto_13
    move/from16 v19, v2

    :goto_14
    move-object/from16 v13, v35

    :goto_15
    const/4 v4, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x2

    const/16 v22, 0x3

    const/16 v24, 0x4

    const/16 v25, 0x5

    const/16 v26, 0x6

    const/16 v27, 0x7

    goto/16 :goto_1e

    :pswitch_1
    const/4 v4, 0x3

    if-le v6, v4, :cond_13

    const/4 v6, 0x3

    :cond_13
    shl-int/lit8 v4, v6, 0x6

    or-int/2addr v4, v7

    int-to-byte v4, v4

    if-eqz v29, :cond_14

    const/4 v5, 0x7

    new-array v12, v5, [B

    const/4 v5, 0x0

    aput-byte v37, v12, v5

    const/16 v5, -0x7c

    const/4 v13, 0x1

    aput-byte v5, v12, v13

    const/4 v5, 0x2

    aput-byte v5, v12, v5

    const/4 v5, 0x3

    aput-byte v5, v12, v5

    const/4 v5, 0x4

    aput-byte v30, v12, v5

    const/4 v5, 0x5

    aput-byte v4, v12, v5

    const/4 v4, 0x6

    aput-byte v3, v12, v4

    .line 557
    invoke-direct {v15, v14, v12}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->sndDiscMidea(Landroid/content/Context;[B)V

    goto :goto_16

    :cond_14
    const/4 v5, 0x7

    new-array v12, v5, [B

    const/4 v5, 0x0

    aput-byte v37, v12, v5

    const/16 v5, -0x7c

    const/4 v13, 0x1

    aput-byte v5, v12, v13

    const/4 v5, 0x2

    aput-byte v5, v12, v5

    const/4 v5, 0x4

    const/4 v13, 0x3

    aput-byte v5, v12, v13

    aput-byte v30, v12, v5

    const/4 v5, 0x5

    aput-byte v4, v12, v5

    const/4 v4, 0x6

    aput-byte v3, v12, v4

    .line 559
    invoke-direct {v15, v14, v12}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->sndDiscMidea(Landroid/content/Context;[B)V

    :goto_16
    move/from16 v9, p4

    move/from16 v12, p5

    goto/16 :goto_19

    :pswitch_2
    const/16 v5, 0xa

    new-array v12, v5, [B

    const/4 v5, 0x0

    aput-byte v37, v12, v5

    const/4 v5, 0x1

    aput-byte v36, v12, v5

    const/4 v5, 0x2

    aput-byte v5, v12, v5

    const/16 v5, 0x10

    const/4 v13, 0x3

    aput-byte v5, v12, v13

    const/4 v5, 0x4

    aput-byte v4, v12, v5

    int-to-byte v4, v10

    const/4 v5, 0x5

    aput-byte v4, v12, v5

    const/4 v4, 0x6

    const/4 v5, 0x0

    aput-byte v5, v12, v4

    const/4 v4, 0x7

    aput-byte v5, v12, v4

    const/16 v4, 0x8

    aput-byte v3, v12, v4

    const/16 v4, 0x9

    aput-byte v7, v12, v4

    .line 548
    invoke-direct {v15, v14, v12}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->sndDiscMidea(Landroid/content/Context;[B)V

    goto/16 :goto_11

    :pswitch_3
    if-eqz v29, :cond_15

    const/4 v4, 0x7

    goto :goto_17

    :cond_15
    const/4 v4, 0x6

    :goto_17
    const/16 v5, 0x9

    if-le v1, v5, :cond_16

    const/16 v1, 0x9

    .line 537
    :cond_16
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    add-int v12, v1, v3

    add-int/2addr v12, v7

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ""

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 538
    new-instance v12, Ljava/text/DecimalFormat;

    const-string v13, "0000"

    invoke-direct {v12, v13}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    shl-int/lit8 v13, v6, 0x8

    or-int v13, v30, v13

    int-to-long v9, v13

    .line 539
    invoke-virtual {v12, v9, v10}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v9

    .line 540
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "   "

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x3

    new-array v10, v9, [B

    const/4 v9, 0x0

    aput-byte v37, v10, v9

    const/16 v9, -0x2e

    const/4 v12, 0x1

    aput-byte v9, v10, v12

    const/4 v9, 0x2

    aput-byte v4, v10, v9

    .line 542
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v10, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v4

    .line 543
    invoke-direct {v15, v14, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->sndDiscMidea(Landroid/content/Context;[B)V

    goto :goto_18

    :pswitch_4
    const/4 v4, 0x3

    if-le v6, v4, :cond_17

    const/4 v6, 0x3

    :cond_17
    shl-int/lit8 v4, v6, 0x6

    or-int/2addr v4, v7

    int-to-byte v4, v4

    const/4 v5, 0x7

    new-array v9, v5, [B

    const/4 v5, 0x0

    aput-byte v37, v9, v5

    const/16 v10, -0x7c

    const/4 v12, 0x1

    aput-byte v10, v9, v12

    const/4 v10, 0x2

    aput-byte v10, v9, v10

    const/4 v10, 0x3

    aput-byte v5, v9, v10

    const/4 v5, 0x4

    aput-byte v30, v9, v5

    const/4 v5, 0x5

    aput-byte v4, v9, v5

    const/4 v4, 0x6

    aput-byte v3, v9, v4

    .line 511
    invoke-direct {v15, v14, v9}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->sndDiscMidea(Landroid/content/Context;[B)V

    :goto_18
    move/from16 v9, p4

    move/from16 v12, p5

    move/from16 v10, p7

    :goto_19
    move/from16 v19, v2

    move/from16 v31, v6

    move-object/from16 v13, v35

    const/4 v4, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x2

    const/16 v22, 0x3

    const/16 v24, 0x4

    const/16 v25, 0x5

    const/16 v26, 0x6

    const/16 v27, 0x7

    move v6, v1

    move/from16 v35, v30

    const/16 v30, 0x1

    goto/16 :goto_20

    .line 501
    :pswitch_5
    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->DISC:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;

    const/16 v9, 0x10

    const/4 v10, 0x0

    invoke-static {v14, v5, v9, v10, v10}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportSimpleMediaInfo(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;IZZ)V

    const/16 v5, 0x8

    new-array v9, v5, [B

    aput-byte v37, v9, v10

    const/4 v5, 0x1

    aput-byte v32, v9, v5

    const/4 v12, 0x2

    aput-byte v5, v9, v12

    const/4 v5, 0x3

    aput-byte v4, v9, v5

    const/4 v4, 0x4

    aput-byte v10, v9, v4

    const/4 v4, 0x5

    aput-byte v10, v9, v4

    const/4 v4, 0x6

    aput-byte v3, v9, v4

    const/4 v4, 0x7

    aput-byte v7, v9, v4

    .line 502
    invoke-direct {v15, v14, v9}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->sndDiscMidea(Landroid/content/Context;[B)V

    goto/16 :goto_1a

    :pswitch_6
    const/16 v4, 0xa

    new-array v5, v4, [B

    const/4 v4, 0x0

    aput-byte v37, v5, v4

    const/4 v4, 0x1

    aput-byte v36, v5, v4

    const/4 v4, 0x2

    aput-byte v4, v5, v4

    const/4 v4, 0x3

    aput-byte v30, v5, v4

    const/4 v4, 0x4

    aput-byte v6, v5, v4

    const/4 v4, 0x5

    aput-byte v2, v5, v4

    const/4 v4, 0x6

    aput-byte v8, v5, v4

    const/4 v4, 0x7

    aput-byte v1, v5, v4

    const/16 v4, 0x8

    aput-byte v3, v5, v4

    const/16 v4, 0x9

    aput-byte v7, v5, v4

    .line 494
    invoke-direct {v15, v14, v5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->sndDiscMidea(Landroid/content/Context;[B)V

    goto/16 :goto_1a

    :pswitch_7
    if-eqz v29, :cond_18

    const/4 v4, 0x3

    new-array v5, v4, [B

    const/4 v4, 0x0

    aput-byte v37, v5, v4

    const/16 v9, 0x9

    const/4 v10, 0x1

    aput-byte v9, v5, v10

    const/4 v12, 0x2

    aput-byte v10, v5, v12

    .line 479
    invoke-direct {v15, v14, v5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->sndDiscMidea(Landroid/content/Context;[B)V

    const/16 v5, 0x8

    new-array v13, v5, [B

    aput-byte v37, v13, v4

    aput-byte v9, v13, v10

    aput-byte v10, v13, v12

    const/4 v4, 0x3

    aput-byte v38, v13, v4

    const/4 v4, 0x4

    aput-byte v28, v13, v4

    const/4 v4, 0x5

    aput-byte v1, v13, v4

    const/4 v4, 0x6

    aput-byte v3, v13, v4

    const/4 v4, 0x7

    aput-byte v7, v13, v4

    .line 480
    invoke-direct {v15, v14, v13}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->sndDiscMidea(Landroid/content/Context;[B)V

    goto/16 :goto_1a

    :cond_18
    const/4 v4, 0x3

    new-array v5, v4, [B

    const/4 v4, 0x0

    aput-byte v37, v5, v4

    const/16 v9, 0x9

    const/4 v10, 0x1

    aput-byte v9, v5, v10

    const/16 v12, 0x13

    const/4 v13, 0x2

    aput-byte v12, v5, v13

    .line 483
    invoke-direct {v15, v14, v5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->sndDiscMidea(Landroid/content/Context;[B)V

    const/16 v5, 0x8

    new-array v12, v5, [B

    aput-byte v37, v12, v4

    aput-byte v9, v12, v10

    const/16 v4, 0x13

    aput-byte v4, v12, v13

    const/4 v4, 0x3

    aput-byte v27, v12, v4

    const/4 v4, 0x4

    aput-byte v25, v12, v4

    const/4 v4, 0x5

    aput-byte v1, v12, v4

    const/4 v4, 0x6

    aput-byte v3, v12, v4

    const/4 v4, 0x7

    aput-byte v7, v12, v4

    .line 484
    invoke-direct {v15, v14, v12}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->sndDiscMidea(Landroid/content/Context;[B)V

    goto/16 :goto_1a

    :pswitch_8
    if-eqz v29, :cond_19

    const/16 v4, 0xa

    new-array v5, v4, [B

    const/4 v4, 0x0

    aput-byte v37, v5, v4

    const/4 v4, 0x1

    aput-byte v34, v5, v4

    const/4 v4, 0x2

    aput-byte v4, v5, v4

    const/4 v9, 0x3

    aput-byte v4, v5, v9

    const/4 v4, 0x4

    aput-byte v28, v5, v4

    const/4 v4, 0x5

    aput-byte v38, v5, v4

    const/4 v4, 0x6

    aput-byte v2, v5, v4

    const/4 v4, 0x7

    aput-byte v8, v5, v4

    const/16 v4, 0x8

    aput-byte v3, v5, v4

    const/16 v4, 0x9

    aput-byte v7, v5, v4

    .line 470
    invoke-direct {v15, v14, v5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->sndDiscMidea(Landroid/content/Context;[B)V

    goto/16 :goto_1a

    :cond_19
    const/16 v4, 0xa

    new-array v5, v4, [B

    const/4 v4, 0x0

    aput-byte v37, v5, v4

    const/4 v4, 0x1

    aput-byte v34, v5, v4

    const/4 v4, 0x2

    aput-byte v4, v5, v4

    const/4 v9, 0x3

    aput-byte v4, v5, v9

    const/4 v4, 0x4

    aput-byte v25, v5, v4

    const/4 v4, 0x5

    aput-byte v27, v5, v4

    const/4 v4, 0x6

    aput-byte v2, v5, v4

    const/4 v4, 0x7

    aput-byte v8, v5, v4

    const/16 v4, 0x8

    aput-byte v3, v5, v4

    const/16 v4, 0x9

    aput-byte v7, v5, v4

    .line 473
    invoke-direct {v15, v14, v5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->sndDiscMidea(Landroid/content/Context;[B)V

    goto/16 :goto_1a

    :pswitch_9
    if-eqz v29, :cond_1a

    const/4 v4, 0x3

    new-array v5, v4, [B

    const/4 v4, 0x0

    aput-byte v37, v5, v4

    const/4 v9, 0x1

    aput-byte v34, v5, v9

    const/4 v9, 0x2

    aput-byte v9, v5, v9

    .line 457
    invoke-direct {v15, v14, v5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->sndDiscMidea(Landroid/content/Context;[B)V

    const/16 v5, 0xe

    new-array v5, v5, [B

    aput-byte v37, v5, v4

    const/16 v9, -0x7c

    const/4 v10, 0x1

    aput-byte v9, v5, v10

    const/4 v9, 0x2

    aput-byte v4, v5, v9

    const/4 v9, 0x3

    aput-byte v10, v5, v9

    const/4 v9, 0x4

    aput-byte v4, v5, v9

    const/4 v9, 0x5

    aput-byte v4, v5, v9

    const/4 v4, 0x6

    aput-byte v38, v5, v4

    const/4 v4, 0x7

    aput-byte v28, v5, v4

    const/16 v4, 0x8

    aput-byte v24, v5, v4

    const/16 v4, 0x9

    aput-byte v19, v5, v4

    const/16 v4, 0xa

    aput-byte v22, v5, v4

    const/16 v4, 0xb

    const/4 v9, 0x0

    aput-byte v9, v5, v4

    const/16 v4, 0xc

    aput-byte v9, v5, v4

    const/16 v4, 0xd

    aput-byte v9, v5, v4

    .line 458
    invoke-direct {v15, v14, v5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->sndDiscMidea(Landroid/content/Context;[B)V

    goto :goto_1a

    :cond_1a
    const/4 v4, 0x3

    new-array v5, v4, [B

    const/4 v4, 0x0

    aput-byte v37, v5, v4

    const/4 v9, 0x1

    aput-byte v34, v5, v9

    const/4 v9, 0x2

    aput-byte v9, v5, v9

    .line 460
    invoke-direct {v15, v14, v5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->sndDiscMidea(Landroid/content/Context;[B)V

    const/16 v5, 0xe

    new-array v5, v5, [B

    aput-byte v37, v5, v4

    const/16 v9, -0x7c

    const/4 v10, 0x1

    aput-byte v9, v5, v10

    const/4 v9, 0x2

    aput-byte v4, v5, v9

    const/4 v9, 0x3

    aput-byte v10, v5, v9

    const/4 v9, 0x4

    aput-byte v4, v5, v9

    const/4 v9, 0x5

    aput-byte v4, v5, v9

    const/4 v4, 0x6

    aput-byte v27, v5, v4

    const/4 v4, 0x7

    aput-byte v25, v5, v4

    const/16 v4, 0x8

    aput-byte v24, v5, v4

    const/16 v4, 0x9

    aput-byte v19, v5, v4

    const/16 v4, 0xa

    aput-byte v22, v5, v4

    const/16 v4, 0xb

    const/4 v9, 0x0

    aput-byte v9, v5, v4

    const/16 v4, 0xc

    aput-byte v9, v5, v4

    const/16 v4, 0xd

    aput-byte v9, v5, v4

    .line 461
    invoke-direct {v15, v14, v5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->sndDiscMidea(Landroid/content/Context;[B)V

    goto :goto_1a

    :pswitch_a
    const/4 v4, 0x3

    new-array v5, v4, [B

    const/4 v4, 0x0

    aput-byte v37, v5, v4

    const/4 v4, 0x1

    aput-byte v34, v5, v4

    const/4 v4, 0x2

    aput-byte v4, v5, v4

    .line 453
    invoke-direct {v15, v14, v5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->sndDiscMidea(Landroid/content/Context;[B)V

    goto :goto_1a

    :pswitch_b
    const/4 v4, 0x3

    new-array v5, v4, [B

    const/4 v4, 0x0

    aput-byte v37, v5, v4

    const/16 v4, -0x7a

    const/4 v9, 0x1

    aput-byte v4, v5, v9

    const/4 v4, 0x2

    aput-byte v4, v5, v4

    .line 449
    invoke-direct {v15, v14, v5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->sndDiscMidea(Landroid/content/Context;[B)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_1a
    move/from16 v9, p4

    move/from16 v12, p5

    move/from16 v10, p7

    goto/16 :goto_13

    .line 432
    :pswitch_c
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "PhoneState"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1c

    .line 433
    invoke-direct/range {p0 .. p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->hodaAccordgetDeviceStatus(Landroid/content/Context;)B

    move-result v4

    if-lez v4, :cond_1b

    .line 434
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->getInstance()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;

    move-result-object v4

    invoke-direct/range {p0 .. p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->hodaAccordgetDeviceStatus(Landroid/content/Context;)B

    move-result v5

    const/4 v9, 0x1

    invoke-virtual {v4, v14, v9, v9, v5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->reportSimpleHondaAccordDeviceStatus(Landroid/content/Context;ZZB)V

    goto :goto_1b

    .line 436
    :cond_1b
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->getInstance()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v9, 0x0

    invoke-virtual {v4, v14, v5, v9, v9}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->reportSimpleHondaAccordDeviceStatus(Landroid/content/Context;ZZB)V
    :try_end_5
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1b

    :catch_1
    move-exception v0

    move-object v4, v0

    .line 440
    :try_start_6
    invoke-virtual {v4}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    :cond_1c
    :goto_1b
    if-eqz v29, :cond_1d

    const/16 v4, 0xa

    new-array v5, v4, [B

    const/4 v4, 0x0

    aput-byte v37, v5, v4

    const/4 v4, 0x1

    aput-byte v36, v5, v4

    const/16 v4, 0x11

    const/4 v9, 0x2

    aput-byte v4, v5, v9

    const/16 v4, 0x21

    const/4 v9, 0x3

    aput-byte v4, v5, v9

    int-to-byte v4, v11

    const/4 v9, 0x4

    aput-byte v4, v5, v9

    move/from16 v10, p7

    int-to-byte v4, v10

    const/4 v9, 0x5

    aput-byte v4, v5, v9

    move/from16 v9, p4

    int-to-byte v4, v9

    const/4 v12, 0x6

    aput-byte v4, v5, v12

    const/4 v4, 0x7

    aput-byte v1, v5, v4

    const/16 v4, 0x8

    aput-byte v3, v5, v4

    const/16 v4, 0x9

    aput-byte v7, v5, v4

    .line 443
    invoke-direct {v15, v14, v5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->sndDiscMidea(Landroid/content/Context;[B)V

    goto/16 :goto_12

    :cond_1d
    move/from16 v9, p4

    move/from16 v10, p7

    const/16 v4, 0xa

    new-array v5, v4, [B

    const/4 v4, 0x0

    aput-byte v37, v5, v4

    const/4 v4, 0x1

    aput-byte v36, v5, v4

    const/16 v12, 0x10

    const/4 v13, 0x2

    aput-byte v12, v5, v13

    const/4 v13, 0x3

    aput-byte v12, v5, v13

    const/4 v12, 0x4

    aput-byte v4, v5, v12

    move/from16 v12, p5

    int-to-byte v4, v12

    const/4 v13, 0x5

    aput-byte v4, v5, v13

    int-to-byte v4, v10

    const/4 v13, 0x6

    aput-byte v4, v5, v13

    const/4 v4, 0x7

    aput-byte v1, v5, v4

    const/16 v4, 0x8

    aput-byte v3, v5, v4

    const/16 v4, 0x9

    aput-byte v7, v5, v4

    .line 445
    invoke-direct {v15, v14, v5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->sndDiscMidea(Landroid/content/Context;[B)V

    goto/16 :goto_13

    :pswitch_d
    move/from16 v9, p4

    move/from16 v12, p5

    if-eqz v29, :cond_1e

    const/4 v4, 0x4

    new-array v5, v4, [B

    const/4 v4, 0x0

    aput-byte v37, v5, v4

    const/4 v4, 0x1

    aput-byte v36, v5, v4

    const/4 v4, 0x2

    aput-byte v4, v5, v4

    const/16 v4, 0x10

    const/4 v13, 0x3

    aput-byte v4, v5, v13

    .line 423
    invoke-direct {v15, v14, v5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->sndDiscMidea(Landroid/content/Context;[B)V

    const/16 v4, 0x9

    new-array v5, v4, [B

    const/4 v4, 0x0

    aput-byte v37, v5, v4

    const/4 v4, 0x1

    aput-byte v32, v5, v4

    const/4 v13, 0x2

    aput-byte v4, v5, v13

    int-to-byte v4, v11

    const/4 v13, 0x3

    aput-byte v4, v5, v13

    int-to-byte v4, v10

    const/4 v13, 0x4

    aput-byte v4, v5, v13

    const/4 v4, 0x5

    const/4 v13, 0x0

    aput-byte v13, v5, v4

    const/4 v4, 0x6

    aput-byte v13, v5, v4

    const/4 v4, 0x7

    aput-byte v3, v5, v4

    const/16 v4, 0x8

    aput-byte v7, v5, v4

    .line 424
    invoke-direct {v15, v14, v5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->sndDiscMidea(Landroid/content/Context;[B)V

    goto/16 :goto_13

    :cond_1e
    const/4 v4, 0x4

    new-array v5, v4, [B

    const/4 v4, 0x0

    aput-byte v37, v5, v4

    const/4 v4, 0x1

    aput-byte v36, v5, v4

    const/4 v4, 0x2

    aput-byte v4, v5, v4

    const/16 v4, 0x10

    const/4 v13, 0x3

    aput-byte v4, v5, v13

    .line 426
    invoke-direct {v15, v14, v5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->sndDiscMidea(Landroid/content/Context;[B)V

    const/16 v4, 0x8

    new-array v5, v4, [B

    const/4 v4, 0x0

    aput-byte v37, v5, v4

    const/4 v13, 0x1

    aput-byte v32, v5, v13

    const/16 v17, 0x2

    aput-byte v13, v5, v17

    int-to-byte v13, v12

    const/16 v18, 0x3

    aput-byte v13, v5, v18

    const/4 v13, 0x4

    aput-byte v4, v5, v13

    const/4 v13, 0x5

    aput-byte v4, v5, v13

    const/4 v4, 0x6

    aput-byte v3, v5, v4

    const/4 v4, 0x7

    aput-byte v7, v5, v4

    .line 427
    invoke-direct {v15, v14, v5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->sndDiscMidea(Landroid/content/Context;[B)V

    goto/16 :goto_13

    :pswitch_e
    move/from16 v9, p4

    move/from16 v12, p5

    if-eqz v29, :cond_1f

    move/from16 v5, v38

    and-int/lit16 v4, v5, 0xc0

    int-to-byte v4, v4

    move/from16 v19, v2

    const/4 v13, 0x7

    new-array v2, v13, [B

    const/4 v13, 0x0

    aput-byte v37, v2, v13

    const/16 v13, -0x7c

    const/16 v17, 0x1

    aput-byte v13, v2, v17

    const/4 v13, 0x2

    aput-byte v13, v2, v13

    const/16 v13, 0x2c

    const/16 v22, 0x3

    aput-byte v13, v2, v22

    const/4 v13, 0x4

    aput-byte v28, v2, v13

    or-int/2addr v4, v7

    int-to-byte v4, v4

    const/4 v13, 0x5

    aput-byte v4, v2, v13

    const/4 v4, 0x6

    aput-byte v3, v2, v4

    .line 413
    invoke-direct {v15, v14, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->sndDiscMidea(Landroid/content/Context;[B)V

    goto :goto_1c

    :cond_1f
    move/from16 v19, v2

    move/from16 v5, v38

    move/from16 v2, v26

    and-int/lit16 v2, v2, 0xc0

    int-to-byte v2, v2

    const/4 v4, 0x7

    new-array v13, v4, [B

    const/4 v4, 0x0

    aput-byte v37, v13, v4

    const/16 v4, -0x7c

    const/16 v17, 0x1

    aput-byte v4, v13, v17

    const/4 v4, 0x2

    aput-byte v4, v13, v4

    const/16 v4, 0x30

    const/16 v22, 0x3

    aput-byte v4, v13, v22

    const/4 v4, 0x4

    aput-byte v25, v13, v4

    or-int/2addr v2, v7

    int-to-byte v2, v2

    const/4 v4, 0x5

    aput-byte v2, v13, v4

    const/4 v2, 0x6

    aput-byte v3, v13, v2

    .line 416
    invoke-direct {v15, v14, v13}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->sndDiscMidea(Landroid/content/Context;[B)V

    :goto_1c
    move/from16 v38, v5

    goto/16 :goto_14

    :pswitch_f
    move/from16 v9, p4

    move/from16 v12, p5

    move/from16 v19, v2

    move/from16 v5, v38

    .line 395
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "canbus_cur_vol"

    const/4 v13, 0x0

    invoke-static {v2, v4, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    if-lez v2, :cond_20

    const/4 v2, 0x4

    goto :goto_1d

    :cond_20
    const/16 v2, 0xc

    :goto_1d
    int-to-byte v2, v2

    .line 397
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v4

    sget-object v13, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->BENZ_B200_LUZHENG:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    if-ne v4, v13, :cond_21

    xor-int/lit8 v2, v2, 0x4

    int-to-byte v2, v2

    :cond_21
    if-eqz v29, :cond_22

    const/16 v4, 0xb

    new-array v13, v4, [B

    const/4 v4, 0x0

    aput-byte v37, v13, v4

    const/4 v4, 0x1

    aput-byte v34, v13, v4

    const/4 v4, 0x2

    aput-byte v4, v13, v4

    const/4 v4, 0x3

    aput-byte v33, v13, v4

    const/4 v4, 0x4

    aput-byte v33, v13, v4

    const/4 v4, 0x5

    aput-byte v5, v13, v4

    const/4 v4, 0x6

    aput-byte v28, v13, v4

    const/4 v4, 0x7

    aput-byte v33, v13, v4

    const/16 v4, 0x8

    aput-byte v2, v13, v4

    const/16 v2, 0x9

    aput-byte v3, v13, v2

    const/16 v2, 0xa

    aput-byte v7, v13, v2

    .line 401
    invoke-direct {v15, v14, v13}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->sndDiscMidea(Landroid/content/Context;[B)V

    const/16 v13, 0xb

    goto :goto_1c

    :cond_22
    const/16 v13, 0xb

    new-array v4, v13, [B

    const/16 v18, 0x0

    aput-byte v37, v4, v18

    const/16 v17, 0x1

    aput-byte v34, v4, v17

    const/16 v22, 0x2

    aput-byte v22, v4, v22

    const/16 v22, 0x3

    aput-byte v33, v4, v22

    const/16 v22, 0x4

    aput-byte v33, v4, v22

    const/16 v22, 0x5

    aput-byte v27, v4, v22

    const/16 v22, 0x6

    aput-byte v25, v4, v22

    const/16 v22, 0x7

    aput-byte v33, v4, v22

    const/16 v22, 0x8

    aput-byte v2, v4, v22

    const/16 v2, 0x9

    aput-byte v3, v4, v2

    const/16 v2, 0xa

    aput-byte v7, v4, v2

    .line 404
    invoke-direct {v15, v14, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->sndDiscMidea(Landroid/content/Context;[B)V

    goto/16 :goto_1c

    :pswitch_10
    move/from16 v9, p4

    move/from16 v12, p5

    move/from16 v19, v2

    move/from16 v5, v38

    const/16 v13, 0xb

    .line 378
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "canbus_cur_vol"

    const/4 v13, 0x0

    invoke-static {v2, v4, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    move/from16 v38, v5

    const/4 v4, 0x5

    new-array v5, v4, [B

    aput-byte v37, v5, v13

    const/4 v4, 0x1

    const/16 v13, 0xc

    aput-byte v13, v5, v4

    const/16 v4, 0x20

    const/16 v22, 0x2

    aput-byte v4, v5, v22

    const/4 v4, 0x3

    aput-byte v2, v5, v4

    const/16 v2, 0x8

    const/4 v4, 0x4

    aput-byte v2, v5, v4

    .line 380
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v4, v35

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "     "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 381
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v13, 0x0

    invoke-static {v5, v2, v13}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[BB)[B

    move-result-object v2

    .line 382
    invoke-direct {v15, v14, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->sndDiscMidea(Landroid/content/Context;[B)V

    move-object v13, v4

    goto/16 :goto_15

    :pswitch_11
    move/from16 v9, p4

    move/from16 v12, p5

    move/from16 v19, v2

    move-object/from16 v13, v35

    const/16 v2, 0xa

    new-array v5, v2, [B

    const/4 v2, 0x0

    aput-byte v37, v5, v2

    const/16 v17, 0x1

    aput-byte v36, v5, v17

    const/16 v18, 0x10

    const/16 v22, 0x2

    aput-byte v18, v5, v22

    const/16 v18, 0x3

    aput-byte v2, v5, v18

    const/16 v18, 0x4

    aput-byte v17, v5, v18

    const/16 v18, 0x5

    aput-byte v4, v5, v18

    const/4 v4, 0x6

    aput-byte v2, v5, v4

    const/4 v4, 0x7

    aput-byte v2, v5, v4

    const/16 v4, 0x8

    aput-byte v2, v5, v4

    const/16 v4, 0x9

    aput-byte v2, v5, v4

    .line 375
    invoke-direct {v15, v14, v5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->sndDiscMidea(Landroid/content/Context;[B)V

    goto/16 :goto_15

    :pswitch_12
    move/from16 v9, p4

    move/from16 v12, p5

    move/from16 v19, v2

    move-object/from16 v13, v35

    if-eqz v29, :cond_23

    const/16 v2, 0xa

    new-array v4, v2, [B

    const/4 v2, 0x0

    aput-byte v37, v4, v2

    const/4 v2, 0x1

    aput-byte v36, v4, v2

    const/4 v2, 0x2

    aput-byte v2, v4, v2

    const/16 v2, 0x21

    const/4 v5, 0x3

    aput-byte v2, v4, v5

    int-to-byte v2, v11

    const/4 v5, 0x4

    aput-byte v2, v4, v5

    int-to-byte v2, v10

    const/4 v5, 0x5

    aput-byte v2, v4, v5

    int-to-byte v2, v9

    const/4 v5, 0x6

    aput-byte v2, v4, v5

    const/4 v2, 0x7

    aput-byte v1, v4, v2

    const/16 v2, 0x8

    aput-byte v3, v4, v2

    const/16 v2, 0x9

    aput-byte v7, v4, v2

    .line 369
    invoke-direct {v15, v14, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->sndDiscMidea(Landroid/content/Context;[B)V

    goto/16 :goto_15

    :cond_23
    const/16 v5, 0xa

    new-array v2, v5, [B

    const/4 v4, 0x0

    aput-byte v37, v2, v4

    const/4 v4, 0x1

    aput-byte v36, v2, v4

    const/16 v17, 0x2

    aput-byte v17, v2, v17

    const/16 v17, 0x10

    const/16 v22, 0x3

    aput-byte v17, v2, v22

    const/16 v17, 0x4

    aput-byte v4, v2, v17

    int-to-byte v4, v12

    const/16 v22, 0x5

    aput-byte v4, v2, v22

    int-to-byte v4, v10

    const/16 v22, 0x6

    aput-byte v4, v2, v22

    const/4 v4, 0x7

    aput-byte v1, v2, v4

    const/16 v4, 0x8

    aput-byte v3, v2, v4

    const/16 v4, 0x9

    aput-byte v7, v2, v4

    .line 371
    invoke-direct {v15, v14, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->sndDiscMidea(Landroid/content/Context;[B)V

    goto/16 :goto_15

    :pswitch_13
    move/from16 v9, p4

    move/from16 v12, p5

    move/from16 v19, v2

    move-object/from16 v13, v35

    const/16 v4, 0x9

    const/16 v5, 0xa

    if-eqz v29, :cond_24

    .line 340
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->DISC:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;

    const/16 v4, 0x21

    const/4 v5, 0x0

    invoke-static {v14, v2, v4, v5, v5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportSimpleMediaInfo(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;IZZ)V

    const/16 v2, 0x8

    new-array v4, v2, [B

    aput-byte v37, v4, v5

    const/4 v2, 0x1

    aput-byte v32, v4, v2

    int-to-byte v2, v11

    const/16 v18, 0x2

    aput-byte v2, v4, v18

    int-to-byte v2, v10

    const/16 v18, 0x3

    aput-byte v2, v4, v18

    const/4 v2, 0x4

    aput-byte v5, v4, v2

    const/4 v2, 0x5

    aput-byte v5, v4, v2

    const/4 v2, 0x6

    aput-byte v3, v4, v2

    const/4 v2, 0x7

    aput-byte v7, v4, v2

    .line 341
    invoke-direct {v15, v14, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->sndDiscMidea(Landroid/content/Context;[B)V

    goto/16 :goto_15

    .line 343
    :cond_24
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->DISC:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;

    const/4 v4, 0x0

    const/16 v5, 0x10

    invoke-static {v14, v2, v5, v4, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportSimpleMediaInfo(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;IZZ)V

    const/16 v2, 0x8

    new-array v5, v2, [B

    aput-byte v37, v5, v4

    const/16 v17, 0x1

    aput-byte v32, v5, v17

    const/16 v18, 0x2

    aput-byte v17, v5, v18

    int-to-byte v2, v12

    const/16 v22, 0x3

    aput-byte v2, v5, v22

    const/16 v24, 0x4

    aput-byte v4, v5, v24

    const/16 v25, 0x5

    aput-byte v4, v5, v25

    const/16 v26, 0x6

    aput-byte v3, v5, v26

    const/16 v27, 0x7

    aput-byte v7, v5, v27

    .line 344
    invoke-direct {v15, v14, v5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->sndDiscMidea(Landroid/content/Context;[B)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    :goto_1e
    move/from16 v31, v6

    move/from16 v35, v30

    move v6, v1

    move/from16 v30, v17

    goto :goto_20

    :cond_25
    move/from16 v9, p4

    move/from16 v19, v2

    move/from16 v38, v5

    goto/16 :goto_f

    :goto_1f
    move/from16 v31, v6

    move/from16 v35, v30

    move v6, v1

    move/from16 v30, v4

    .line 626
    :goto_20
    :try_start_7
    new-instance v5, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus$1;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_7

    move-object v1, v5

    move/from16 v16, v19

    const/16 v4, 0x9

    const/16 v17, 0x8

    move-object/from16 v2, p0

    move/from16 v39, v3

    move-object/from16 v40, v20

    move/from16 v3, p2

    move/from16 v19, v28

    move/from16 v4, p3

    move-object/from16 v41, v5

    move/from16 v20, v38

    const/16 v28, 0xa

    move/from16 v5, p4

    move v9, v6

    move/from16 v6, p5

    move/from16 v43, v7

    move/from16 v42, v21

    move/from16 v7, p6

    move/from16 v21, v8

    move/from16 v44, v23

    move/from16 v8, p7

    move/from16 v45, v9

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v46, v13

    move/from16 v17, v25

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    :try_start_8
    invoke-direct/range {v1 .. v15}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus$1;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;BIIIIIIZZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, p1

    move-object/from16 v2, v41

    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface;->sendMsg(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface$CallBack;)V

    .line 635
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus$2;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v3

    aget v2, v2, v3
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_5

    const-string v3, "00"

    const/4 v4, 0x1

    if-eq v2, v4, :cond_48

    const/4 v5, 0x2

    if-eq v2, v5, :cond_48

    const/16 v6, 0x25

    if-eq v2, v6, :cond_46

    const/16 v6, 0x2e

    if-eq v2, v6, :cond_43

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    packed-switch v2, :pswitch_data_3

    packed-switch v2, :pswitch_data_4

    const/16 v2, 0xb

    :try_start_9
    new-array v2, v2, [B

    const/4 v6, 0x0

    aput-byte v4, v2, v6

    aput-byte v5, v2, v4

    const/16 v7, 0x13

    aput-byte v7, v2, v5

    const/4 v7, 0x3

    aput-byte v19, v2, v7

    const/4 v8, 0x4

    aput-byte v20, v2, v8

    aput-byte v6, v2, v17

    move/from16 v9, v45

    const/4 v10, 0x6

    aput-byte v9, v2, v10

    move/from16 v11, v39

    const/4 v12, 0x7

    aput-byte v11, v2, v12

    move/from16 v13, v43

    const/16 v14, 0x8

    aput-byte v13, v2, v14

    move/from16 v15, p8

    int-to-byte v7, v15

    const/16 v15, 0x9

    aput-byte v7, v2, v15

    move/from16 v7, p2

    const/16 v8, 0xa

    aput-byte v7, v2, v8

    :goto_21
    move-object/from16 v12, p0

    move v4, v6

    move v6, v7

    move/from16 v10, v44

    goto/16 :goto_27

    :pswitch_14
    move/from16 v7, p2

    move/from16 v11, v39

    move/from16 v13, v43

    move/from16 v9, v45

    const/4 v6, 0x0

    new-array v2, v5, [B

    aput-byte v37, v2, v6

    const/16 v8, -0x7d

    aput-byte v8, v2, v4

    .line 1177
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DISC PLAY  "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1178
    invoke-static {v11}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->numCompensateZero(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, v46

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1180
    invoke-static {v13}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->numCompensateZero(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1181
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-static {v2, v8}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v2

    const/16 v8, 0xe

    .line 1182
    invoke-static {v2, v8}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->makeBytesFixedLength([BI)[B

    move-result-object v2

    goto :goto_21

    :pswitch_15
    move/from16 v11, v39

    move/from16 v13, v43

    move/from16 v9, v45

    const/16 v2, 0xb

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x4

    const/4 v10, 0x6

    const/4 v12, 0x7

    const/16 v14, 0x8

    const/16 v15, 0x9

    if-eqz v29, :cond_26

    move v15, v12

    goto :goto_22

    :cond_26
    move v15, v10

    :goto_22
    new-array v2, v2, [B

    aput-byte v37, v2, v6

    const/16 v16, -0x6f

    aput-byte v16, v2, v4

    int-to-byte v15, v15

    aput-byte v15, v2, v5

    .line 1171
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->getInstance()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;

    move-result-object v15

    invoke-virtual {v15, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->isMpegDiscExist(Landroid/content/Context;)I

    move-result v15

    int-to-byte v15, v15

    aput-byte v15, v2, v7

    move/from16 v15, p5

    int-to-byte v7, v15

    aput-byte v7, v2, v8

    const/16 v7, 0x2f

    aput-byte v7, v2, v17

    move/from16 v8, p7

    int-to-byte v7, v8

    aput-byte v7, v2, v10

    const/16 v7, 0x20

    aput-byte v7, v2, v12

    aput-byte v11, v2, v14

    const/16 v7, 0x3a

    const/16 v8, 0x9

    aput-byte v7, v2, v8

    const/16 v15, 0xa

    aput-byte v13, v2, v15

    const/16 v7, 0x10

    .line 1173
    invoke-static {v2, v7}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->CompensateZero([BI)[B

    move-result-object v2

    goto :goto_23

    :pswitch_16
    move/from16 v11, v39

    move/from16 v13, v43

    move/from16 v9, v45

    const/16 v2, 0xc

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x4

    const/4 v10, 0x6

    const/4 v12, 0x7

    const/16 v14, 0x8

    const/16 v15, 0xa

    new-array v2, v2, [B

    aput-byte v37, v2, v6

    aput-byte v36, v2, v4

    const/16 v18, 0x9

    aput-byte v18, v2, v5

    aput-byte v6, v2, v7

    aput-byte v21, v2, v8

    aput-byte v16, v2, v17

    aput-byte v20, v2, v10

    aput-byte v19, v2, v12

    aput-byte v6, v2, v14

    const/16 v7, 0x9

    aput-byte v6, v2, v7

    aput-byte v6, v2, v15

    const/16 v7, 0xb

    aput-byte v6, v2, v7

    :goto_23
    move-object/from16 v12, p0

    move/from16 v7, p6

    goto/16 :goto_29

    :pswitch_17
    move/from16 v8, p7

    move/from16 v11, v39

    move/from16 v13, v43

    move/from16 v9, v45

    move-object/from16 v14, v46

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v10, 0x6

    .line 1144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int v12, v20, v19

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "/"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "  "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1149
    invoke-static {v9}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->numCompensateZero(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1151
    invoke-static {v11}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->numCompensateZero(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1153
    invoke-static {v13}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->numCompensateZero(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v7, v7, [B

    aput-byte v37, v7, v6

    const/16 v8, -0x6b

    aput-byte v8, v7, v4

    aput-byte v10, v7, v5
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_5

    :try_start_a
    const-string v8, "Unicode"

    .line 1156
    invoke-virtual {v2, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v7, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v7
    :try_end_a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_a} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_24

    :catch_2
    move-exception v0

    move-object v2, v0

    .line 1158
    :try_start_b
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_24
    const/16 v2, 0x27

    .line 1160
    invoke-static {v7, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->CompensateZero([BI)[B

    move-result-object v2

    goto :goto_23

    :pswitch_18
    move/from16 v15, p5

    move/from16 v2, p7

    move/from16 v11, v39

    move/from16 v13, v43

    move/from16 v9, v45

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x4

    const/4 v10, 0x6

    const/4 v12, 0x7

    new-array v12, v12, [B

    aput-byte v37, v12, v6

    const/16 v14, 0x9

    aput-byte v14, v12, v4

    aput-byte v4, v12, v5

    int-to-byte v2, v2

    aput-byte v2, v12, v7

    int-to-byte v2, v15

    aput-byte v2, v12, v8

    aput-byte v11, v12, v17

    aput-byte v13, v12, v10

    move/from16 v7, p6

    move v4, v6

    move-object v2, v12

    move/from16 v10, v44

    move-object/from16 v12, p0

    goto :goto_26

    :pswitch_19
    move/from16 v11, v39

    move/from16 v13, v43

    move/from16 v9, v45

    const/16 v2, 0xc

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x4

    new-array v8, v8, [B

    aput-byte v37, v8, v6

    aput-byte v36, v8, v4

    aput-byte v2, v8, v5

    aput-byte v6, v8, v7

    move-object/from16 v12, p0

    move/from16 v7, p6

    move v4, v6

    move-object v2, v8

    :goto_25
    move/from16 v10, v44

    :goto_26
    move/from16 v6, p2

    goto/16 :goto_43

    :pswitch_1a
    move/from16 v11, v39

    move/from16 v13, v43

    move/from16 v9, v45

    const/16 v2, 0xb

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x4

    const/4 v10, 0x6

    const/4 v12, 0x7

    const/16 v14, 0x8

    const/16 v15, 0xa

    new-array v2, v2, [B

    aput-byte v37, v2, v6

    aput-byte v36, v2, v4

    aput-byte v5, v2, v5

    aput-byte v21, v2, v7

    aput-byte v16, v2, v8

    aput-byte v20, v2, v17

    aput-byte v19, v2, v10

    aput-byte v6, v2, v12

    aput-byte v6, v2, v14

    const/16 v8, 0x9

    aput-byte v6, v2, v8

    aput-byte v6, v2, v15

    .line 1125
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v10, "currentReportPrev"

    invoke-static {v2, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v10, v12}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_5

    move-object/from16 v8, p0

    .line 1126
    :try_start_c
    invoke-direct {v8, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->sndDiscMidea(Landroid/content/Context;[B)V

    new-array v2, v7, [B

    aput-byte v37, v2, v6

    aput-byte v32, v2, v4

    aput-byte v7, v2, v5

    const-string v7, " "

    .line 1127
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-static {v2, v7}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v2
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_3

    move/from16 v7, p6

    move v4, v6

    move-object v12, v8

    goto :goto_25

    :catch_3
    move-exception v0

    move-object v1, v0

    move-object v12, v8

    goto/16 :goto_48

    :pswitch_1b
    move-object/from16 v2, p0

    move/from16 v11, v39

    move/from16 v13, v43

    move/from16 v9, v45

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x4

    const/4 v10, 0x6

    const/4 v12, 0x7

    const/16 v14, 0x10

    const/16 v15, 0xa

    :try_start_d
    new-array v15, v15, [B

    aput-byte v37, v15, v6

    aput-byte v36, v15, v4

    aput-byte v14, v15, v5

    aput-byte v21, v15, v7

    aput-byte v16, v15, v8

    aput-byte v20, v15, v17

    aput-byte v19, v15, v10

    aput-byte v9, v15, v12

    const/16 v7, 0x8

    aput-byte v11, v15, v7

    const/16 v7, 0x9

    aput-byte v13, v15, v7

    move/from16 v7, p6

    move-object v12, v2

    move v4, v6

    move-object v2, v15

    goto/16 :goto_25

    :pswitch_1c
    move-object/from16 v2, p0

    move/from16 v11, v39

    move/from16 v13, v43

    move/from16 v9, v45

    const/4 v6, 0x0

    const/4 v7, 0x3

    new-array v7, v7, [B

    aput-byte v37, v7, v6

    aput-byte v34, v7, v4

    aput-byte v5, v7, v5
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_4

    move-object v12, v2

    move v4, v6

    move-object v2, v7

    move/from16 v10, v44

    move/from16 v6, p2

    :goto_27
    move/from16 v7, p6

    goto/16 :goto_43

    :catch_4
    move-exception v0

    move-object v1, v0

    move-object v12, v2

    goto/16 :goto_48

    :pswitch_1d
    move-object/from16 v12, p0

    move/from16 v15, p5

    move/from16 v2, p7

    move/from16 v11, v39

    move/from16 v13, v43

    move/from16 v9, v45

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x4

    const/4 v10, 0x6

    const/16 v14, 0x10

    if-eqz v29, :cond_27

    :try_start_e
    new-array v15, v8, [B

    aput-byte v37, v15, v6

    aput-byte v36, v15, v4

    aput-byte v5, v15, v5

    aput-byte v14, v15, v7

    .line 1104
    invoke-direct {v12, v1, v15}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->sndDiscMidea(Landroid/content/Context;[B)V

    const/16 v14, 0x9

    new-array v14, v14, [B

    aput-byte v37, v14, v6

    aput-byte v32, v14, v4

    aput-byte v4, v14, v5

    move/from16 v15, p6

    int-to-byte v5, v15

    aput-byte v5, v14, v7

    int-to-byte v2, v2

    aput-byte v2, v14, v8

    aput-byte v6, v14, v17

    aput-byte v6, v14, v10

    const/4 v2, 0x7

    aput-byte v11, v14, v2

    const/16 v2, 0x8

    aput-byte v13, v14, v2

    move v4, v6

    move-object v2, v14

    move v7, v15

    goto/16 :goto_25

    :cond_27
    move/from16 v5, p6

    new-array v2, v8, [B

    aput-byte v37, v2, v6

    aput-byte v36, v2, v4

    const/16 v16, 0x2

    aput-byte v16, v2, v16

    aput-byte v14, v2, v7

    .line 1107
    invoke-direct {v12, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->sndDiscMidea(Landroid/content/Context;[B)V

    const/16 v2, 0x8

    new-array v2, v2, [B

    aput-byte v37, v2, v6

    aput-byte v32, v2, v4

    const/4 v14, 0x2

    aput-byte v4, v2, v14

    int-to-byte v14, v15

    aput-byte v14, v2, v7

    aput-byte v6, v2, v8

    aput-byte v6, v2, v17

    aput-byte v11, v2, v10

    const/4 v7, 0x7

    aput-byte v13, v2, v7

    goto/16 :goto_28

    :pswitch_1e
    move-object/from16 v12, p0

    move/from16 v5, p6

    move/from16 v11, v39

    move/from16 v13, v43

    move/from16 v9, v45

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x4

    const/4 v10, 0x6

    .line 1082
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object v2

    if-eqz v2, :cond_29

    .line 1084
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "btState"

    invoke-static {v14, v15, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    if-ne v14, v4, :cond_29

    .line 1085
    sget-object v14, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {v2, v14}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v14

    sget-object v15, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->CAMERA:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-eq v14, v15, :cond_28

    sget-object v14, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    .line 1086
    invoke-virtual {v2, v14}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v14

    sget-object v15, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->MPEG:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-eq v14, v15, :cond_28

    sget-object v14, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    .line 1087
    invoke-virtual {v2, v14}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v2

    sget-object v14, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->BTPHONE:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-ne v2, v14, :cond_29

    .line 1088
    :cond_28
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v14, "action_qz_oringinal_screen_rep_0x83_status"

    .line 1089
    invoke-virtual {v2, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v14, "qz_src_mode_status"

    .line 1090
    invoke-virtual {v2, v14, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 1091
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "QZ_ORIGINAL_SRC_MODE_PREV_STATUS"

    invoke-static {v14, v15, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1092
    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v2, "QZ"

    const-string v14, "qz_src_mode_status snd android"

    .line 1093
    invoke-static {v2, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    new-array v2, v10, [B

    aput-byte v37, v2, v6

    aput-byte v34, v2, v4

    const/16 v10, 0xb

    const/4 v14, 0x2

    aput-byte v10, v2, v14

    aput-byte v6, v2, v7

    aput-byte v6, v2, v8

    aput-byte v33, v2, v17

    move/from16 v6, p2

    move v7, v5

    move/from16 v10, v44

    goto/16 :goto_43

    :pswitch_1f
    move-object/from16 v12, p0

    move/from16 v5, p6

    move/from16 v11, v39

    move/from16 v13, v43

    move/from16 v9, v45

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x4

    const/4 v10, 0x6

    if-eqz v29, :cond_2a

    new-array v2, v10, [B

    aput-byte v37, v2, v6

    aput-byte v34, v2, v4

    const/4 v14, 0x2

    aput-byte v10, v2, v14

    aput-byte v31, v2, v7

    aput-byte v35, v2, v8

    aput-byte v33, v2, v17

    goto :goto_28

    :cond_2a
    new-array v2, v10, [B

    aput-byte v37, v2, v6

    aput-byte v34, v2, v4

    const/4 v10, 0x7

    const/4 v14, 0x2

    aput-byte v10, v2, v14

    aput-byte v31, v2, v7

    aput-byte v35, v2, v8

    aput-byte v33, v2, v17

    :goto_28
    move v7, v5

    :goto_29
    move v4, v6

    goto/16 :goto_25

    :pswitch_20
    move-object/from16 v12, p0

    move/from16 v5, p6

    move/from16 v15, p8

    move/from16 v11, v39

    move/from16 v13, v43

    move/from16 v9, v45

    move-object/from16 v14, v46

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v10, 0x6

    .line 990
    new-instance v2, Ljava/text/DecimalFormat;

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    int-to-long v6, v11

    invoke-virtual {v2, v6, v7}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    .line 991
    new-instance v6, Ljava/text/DecimalFormat;

    invoke-direct {v6, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    int-to-long v7, v13

    invoke-virtual {v6, v7, v8}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v6

    .line 992
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v8, Ljava/text/DecimalFormat;

    const-string v10, "000"

    invoke-direct {v8, v10}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    move/from16 v10, v44

    int-to-long v4, v10

    invoke-virtual {v8, v4, v5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "   "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    if-eq v15, v4, :cond_2e

    const/4 v4, 0x2

    if-eq v15, v4, :cond_2e

    const/4 v4, 0x3

    if-ne v15, v4, :cond_2b

    goto :goto_2b

    :cond_2b
    const/4 v5, 0x6

    if-eq v15, v5, :cond_2d

    const/4 v5, 0x7

    if-ne v15, v5, :cond_2c

    goto :goto_2a

    :cond_2c
    const/16 v47, 0x0

    goto :goto_2c

    :cond_2d
    :goto_2a
    const/16 v47, 0x6

    goto :goto_2c

    :cond_2e
    const/4 v4, 0x3

    :goto_2b
    const/16 v47, 0x7

    :goto_2c
    new-array v4, v4, [B

    const/4 v5, 0x0

    aput-byte v37, v4, v5

    const/16 v5, -0x6f

    const/4 v6, 0x1

    aput-byte v5, v4, v6

    const/4 v5, 0x2

    aput-byte v47, v4, v5

    .line 1012
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v4, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v2

    move/from16 v6, p2

    move/from16 v7, p6

    goto/16 :goto_41

    :pswitch_21
    move-object/from16 v12, p0

    move/from16 v15, p8

    move/from16 v11, v39

    move/from16 v13, v43

    move/from16 v10, v44

    move/from16 v9, v45

    const/16 v2, 0xc

    const/16 v4, 0xa

    const/16 v5, 0x9

    const/4 v8, 0x4

    const/16 v14, 0x10

    const/4 v6, 0x1

    if-eq v15, v6, :cond_30

    const/4 v6, 0x2

    if-eq v15, v6, :cond_30

    const/4 v6, 0x3

    if-eq v15, v6, :cond_30

    const/4 v6, 0x6

    if-eq v15, v6, :cond_2f

    const/4 v6, 0x7

    if-eq v15, v6, :cond_2f

    const/4 v6, 0x0

    goto :goto_2d

    :cond_2f
    const/4 v6, 0x6

    goto :goto_2d

    :cond_30
    const/4 v6, 0x7

    .line 957
    :goto_2d
    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->getMpegplayerManager(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->isDiscExist()Z

    move-result v7

    const/4 v15, 0x0

    invoke-static {v15, v15, v7}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->setIntByteWithBit(IIZ)I

    move-result v7

    new-array v14, v14, [B

    aput-byte v37, v14, v15

    const/16 v16, -0x6f

    const/16 v18, 0x1

    aput-byte v16, v14, v18

    const/16 v16, 0x2

    aput-byte v6, v14, v16

    int-to-byte v6, v7

    const/4 v7, 0x3

    aput-byte v6, v14, v7

    aput-byte v15, v14, v8

    aput-byte v15, v14, v17

    const/4 v6, 0x6

    aput-byte v15, v14, v6

    const/4 v6, 0x7

    aput-byte v15, v14, v6

    const/16 v6, 0x8

    aput-byte v15, v14, v6

    aput-byte v15, v14, v5

    aput-byte v15, v14, v4

    const/16 v4, 0xb

    aput-byte v15, v14, v4

    aput-byte v15, v14, v2

    const/16 v2, 0xd

    aput-byte v15, v14, v2

    const/16 v2, 0xe

    aput-byte v15, v14, v2

    const/16 v2, 0xf

    aput-byte v15, v14, v2

    move/from16 v6, p2

    move/from16 v7, p6

    move-object v2, v14

    goto/16 :goto_41

    :pswitch_22
    move-object/from16 v12, p0

    move/from16 v2, p5

    move/from16 v15, p8

    move/from16 v11, v39

    move/from16 v13, v43

    move/from16 v10, v44

    move/from16 v9, v45

    move-object/from16 v14, v46

    .line 884
    new-instance v4, Ljava/text/DecimalFormat;

    invoke-direct {v4, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    int-to-long v5, v11

    invoke-virtual {v4, v5, v6}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    .line 885
    new-instance v5, Ljava/text/DecimalFormat;

    invoke-direct {v5, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    int-to-long v6, v13

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x6

    if-eq v15, v6, :cond_33

    const/4 v6, 0x7

    if-ne v15, v6, :cond_31

    goto :goto_2e

    .line 897
    :cond_31
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v2

    sget-object v6, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->NISSAN_HIWORLD:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    if-ne v2, v6, :cond_32

    .line 898
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/text/DecimalFormat;

    const-string v7, "000"

    invoke-direct {v6, v7}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    move/from16 v7, p6

    move/from16 v45, v9

    int-to-long v8, v7

    invoke-virtual {v6, v8, v9}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "    "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2f

    :cond_32
    move/from16 v7, p6

    move/from16 v45, v9

    .line 900
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/text/DecimalFormat;

    const-string v8, "000"

    invoke-direct {v6, v8}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    int-to-long v8, v7

    invoke-virtual {v6, v8, v9}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "   "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2f

    :cond_33
    :goto_2e
    move/from16 v7, p6

    move/from16 v45, v9

    .line 888
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v6

    sget-object v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->NISSAN_HIWORLD:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    if-ne v6, v8, :cond_34

    .line 889
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v8, Ljava/text/DecimalFormat;

    const-string v9, "000"

    invoke-direct {v8, v9}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    int-to-long v1, v2

    invoke-virtual {v8, v1, v2}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2f

    .line 891
    :cond_34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/text/DecimalFormat;

    const-string v8, "000"

    invoke-direct {v6, v8}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    int-to-long v8, v2

    invoke-virtual {v6, v8, v9}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2f
    const/4 v1, 0x1

    if-eq v15, v1, :cond_36

    const/4 v1, 0x2

    if-eq v15, v1, :cond_36

    const/4 v1, 0x3

    if-eq v15, v1, :cond_37

    const/4 v4, 0x6

    if-eq v15, v4, :cond_35

    const/4 v4, 0x7

    if-eq v15, v4, :cond_35

    const/16 v47, 0x0

    goto :goto_30

    :cond_35
    const/16 v47, 0x6

    goto :goto_30

    :cond_36
    const/4 v1, 0x3

    :cond_37
    const/16 v47, 0x7

    :goto_30
    new-array v1, v1, [B

    const/4 v4, 0x0

    aput-byte v37, v1, v4

    const/16 v4, -0x2e

    const/4 v5, 0x1

    aput-byte v4, v1, v5

    const/4 v4, 0x2

    aput-byte v47, v1, v4

    .line 916
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v2

    goto/16 :goto_35

    :pswitch_23
    move-object/from16 v12, p0

    move/from16 v7, p6

    move/from16 v11, v39

    move/from16 v13, v43

    move/from16 v10, v44

    const/4 v8, 0x4

    if-eqz p10, :cond_38

    const/16 v1, 0x8

    const/4 v2, 0x2

    goto :goto_31

    :cond_38
    const/16 v1, 0x8

    const/4 v2, 0x0

    :goto_31
    new-array v1, v1, [B

    const/4 v4, 0x0

    aput-byte v37, v1, v4

    const/16 v5, -0x6d

    const/4 v6, 0x1

    aput-byte v5, v1, v6

    const/4 v5, 0x2

    aput-byte v5, v1, v5

    const/4 v5, 0x3

    aput-byte v4, v1, v5

    int-to-byte v5, v7

    aput-byte v5, v1, v8

    aput-byte v2, v1, v17

    const/4 v2, 0x6

    aput-byte v4, v1, v2

    const/4 v2, 0x7

    aput-byte v4, v1, v2

    move/from16 v6, p2

    :goto_32
    move-object v2, v1

    :goto_33
    move/from16 v9, v45

    goto/16 :goto_41

    :pswitch_24
    move-object/from16 v12, p0

    move/from16 v7, p6

    move/from16 v15, p8

    move/from16 v11, v39

    move/from16 v13, v43

    move/from16 v10, v44

    .line 829
    new-instance v1, Ljava/text/DecimalFormat;

    invoke-direct {v1, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    int-to-long v4, v11

    invoke-virtual {v1, v4, v5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    .line 830
    new-instance v2, Ljava/text/DecimalFormat;

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    int-to-long v4, v13

    invoke-virtual {v2, v4, v5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    .line 831
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/text/DecimalFormat;

    const-string v6, "000"

    invoke-direct {v5, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    int-to-long v8, v7

    invoke-virtual {v5, v8, v9}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eq v15, v2, :cond_3a

    const/4 v2, 0x2

    if-eq v15, v2, :cond_3a

    const/4 v2, 0x3

    if-eq v15, v2, :cond_3b

    const/4 v4, 0x6

    if-eq v15, v4, :cond_39

    const/4 v4, 0x7

    if-eq v15, v4, :cond_39

    const/16 v47, 0x0

    goto :goto_34

    :cond_39
    const/16 v47, 0x6

    goto :goto_34

    :cond_3a
    const/4 v2, 0x3

    :cond_3b
    const/16 v47, 0x7

    :goto_34
    new-array v2, v2, [B

    const/4 v4, 0x0

    aput-byte v37, v2, v4

    const/16 v4, -0x1f

    const/4 v5, 0x1

    aput-byte v4, v2, v5

    const/4 v4, 0x2

    aput-byte v47, v2, v4

    .line 845
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v2

    :goto_35
    move/from16 v6, p2

    goto :goto_33

    :pswitch_25
    move-object/from16 v12, p0

    move/from16 v7, p6

    move/from16 v11, v39

    move/from16 v1, v42

    move/from16 v13, v43

    move/from16 v10, v44

    move-object/from16 v14, v46

    const/16 v4, 0xa

    if-ltz v1, :cond_3c

    if-ge v1, v4, :cond_3c

    .line 765
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_36

    .line 767
    :cond_3c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_36
    if-ltz v13, :cond_3d

    if-ge v13, v4, :cond_3d

    .line 770
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_37

    .line 772
    :cond_3d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 774
    :goto_37
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DISC "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 775
    invoke-static {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->string2UnicodeBIG(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x3

    new-array v4, v2, [B

    const/4 v5, 0x0

    aput-byte v37, v4, v5

    const/16 v5, -0x70

    const/4 v6, 0x1

    aput-byte v5, v4, v6

    const/4 v5, 0x2

    aput-byte v2, v4, v5

    .line 777
    invoke-static {v4, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v1

    const/16 v2, 0x21

    new-array v4, v2, [B

    const/4 v5, 0x0

    .line 779
    :goto_38
    array-length v6, v1

    if-ge v5, v6, :cond_3f

    if-ne v2, v5, :cond_3e

    goto :goto_39

    .line 781
    :cond_3e
    aget-byte v6, v1, v5

    aput-byte v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_38

    :cond_3f
    :goto_39
    move/from16 v6, p2

    move-object v2, v4

    goto/16 :goto_33

    :pswitch_26
    move-object/from16 v12, p0

    move/from16 v7, p6

    move/from16 v15, p8

    move/from16 v11, v39

    move/from16 v1, v42

    move/from16 v13, v43

    move/from16 v10, v44

    const/16 v4, 0xa

    const/16 v5, 0x9

    const/16 v14, 0x10

    move/from16 v6, p2

    :goto_3a
    move/from16 v9, v45

    :goto_3b
    const/16 v2, 0xb

    goto/16 :goto_42

    :pswitch_27
    move-object/from16 v12, p0

    move/from16 v7, p6

    move/from16 v2, p7

    move/from16 v15, p8

    move/from16 v11, v39

    move/from16 v13, v43

    move/from16 v10, v44

    const/16 v4, 0xa

    const/16 v5, 0x9

    const/4 v8, 0x4

    const/16 v14, 0x10

    .line 645
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    new-array v6, v8, [B

    const/4 v9, 0x0

    aput-byte v37, v6, v9

    const/16 v16, -0x3a

    const/16 v18, 0x1

    aput-byte v16, v6, v18

    const/16 v16, -0x50

    const/16 v19, 0x2

    aput-byte v16, v6, v19

    const/16 v16, 0x3

    aput-byte v9, v6, v16

    invoke-virtual {v1, v6}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    const/16 v1, 0xb

    new-array v1, v1, [B

    aput-byte v18, v1, v9

    aput-byte v19, v1, v18

    aput-byte v14, v1, v19

    const/4 v6, 0x3

    aput-byte v18, v1, v6

    int-to-byte v6, v10

    aput-byte v6, v1, v8

    int-to-byte v2, v2

    aput-byte v2, v1, v17

    const/4 v2, 0x6

    aput-byte v45, v1, v2

    const/4 v2, 0x7

    aput-byte v11, v1, v2

    const/16 v2, 0x8

    aput-byte v13, v1, v2

    int-to-byte v2, v15

    aput-byte v2, v1, v5

    move/from16 v6, p2

    aput-byte v6, v1, v4

    goto/16 :goto_32

    :pswitch_28
    move-object/from16 v12, p0

    move/from16 v6, p2

    move/from16 v7, p6

    move/from16 v15, p8

    move/from16 v11, v39

    move/from16 v1, v42

    move/from16 v13, v43

    move/from16 v10, v44

    const/16 v4, 0xa

    const/16 v5, 0x9

    const/16 v14, 0x10

    goto :goto_3a

    :pswitch_29
    move-object/from16 v12, p0

    move/from16 v6, p2

    move/from16 v7, p6

    move/from16 v15, p8

    move/from16 v11, v39

    move/from16 v1, v42

    move/from16 v13, v43

    move/from16 v10, v44

    move-object/from16 v2, v46

    const/16 v4, 0xa

    const/4 v8, 0x4

    if-ltz v1, :cond_40

    if-ge v1, v4, :cond_40

    .line 732
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "0"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3c

    .line 734
    :cond_40
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3c
    if-ltz v13, :cond_41

    if-ge v13, v4, :cond_41

    .line 737
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "0"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3d

    .line 739
    :cond_41
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ""

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_3d
    move/from16 v9, v45

    if-ltz v45, :cond_42

    if-ge v9, v4, :cond_42

    .line 742
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "0"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3e

    .line 744
    :cond_42
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ""

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 746
    :goto_3e
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 747
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    new-array v2, v8, [B

    const/16 v4, 0x13

    const/4 v5, 0x0

    aput-byte v4, v2, v5

    const/16 v4, 0x20

    const/4 v5, 0x1

    aput-byte v4, v2, v5

    int-to-byte v4, v15

    const/4 v5, 0x2

    aput-byte v4, v2, v5

    .line 748
    array-length v4, v1

    int-to-byte v4, v4

    const/4 v5, 0x3

    aput-byte v4, v2, v5

    .line 749
    invoke-static {v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v1

    const/16 v2, 0x1e

    new-array v2, v2, [B

    const/4 v4, 0x0

    .line 751
    :goto_3f
    array-length v5, v1

    if-ge v4, v5, :cond_47

    .line 752
    aget-byte v5, v1, v4

    aput-byte v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3f

    :pswitch_2a
    move-object/from16 v12, p0

    move/from16 v6, p2

    move/from16 v7, p6

    move/from16 v2, p7

    move/from16 v15, p8

    move/from16 v11, v39

    move/from16 v13, v43

    move/from16 v10, v44

    move/from16 v9, v45

    const/16 v1, 0xb

    const/16 v4, 0xa

    const/16 v5, 0x9

    const/4 v8, 0x4

    const/16 v14, 0x10

    new-array v1, v1, [B

    const/16 v16, 0x1

    const/16 v18, 0x0

    aput-byte v16, v1, v18

    aput-byte v14, v1, v16

    const/16 v18, 0x2

    aput-byte v14, v1, v18

    const/4 v14, 0x3

    aput-byte v16, v1, v14

    int-to-byte v14, v10

    aput-byte v14, v1, v8

    int-to-byte v2, v2

    aput-byte v2, v1, v17

    const/4 v2, 0x6

    aput-byte v9, v1, v2

    const/4 v2, 0x7

    aput-byte v11, v1, v2

    const/16 v2, 0x8

    aput-byte v13, v1, v2

    int-to-byte v2, v15

    aput-byte v2, v1, v5

    aput-byte v6, v1, v4

    move-object v2, v1

    goto/16 :goto_41

    :pswitch_2b
    move-object/from16 v12, p0

    move/from16 v6, p2

    move/from16 v7, p6

    move/from16 v15, p8

    move/from16 v11, v39

    move/from16 v13, v43

    move/from16 v10, v44

    move/from16 v9, v45

    const/16 v1, 0xb

    const/16 v4, 0xa

    const/16 v5, 0x9

    const/4 v8, 0x4

    const/16 v14, 0x10

    new-array v2, v1, [B

    const/4 v1, 0x1

    const/16 v16, 0x0

    aput-byte v1, v2, v16

    aput-byte v14, v2, v1

    const/16 v1, 0x11

    const/4 v14, 0x2

    aput-byte v1, v2, v14

    const/4 v1, 0x3

    aput-byte v16, v2, v1

    aput-byte v16, v2, v8

    aput-byte v19, v2, v17

    const/4 v1, 0x6

    aput-byte v20, v2, v1

    const/4 v1, 0x7

    aput-byte v11, v2, v1

    const/16 v1, 0x8

    aput-byte v13, v2, v1

    int-to-byte v1, v15

    aput-byte v1, v2, v5

    aput-byte v6, v2, v4

    goto/16 :goto_41

    :cond_43
    move-object/from16 v12, p0

    move/from16 v6, p2

    move/from16 v7, p6

    move/from16 v15, p8

    move/from16 v11, v39

    move/from16 v13, v43

    move/from16 v10, v44

    move/from16 v9, v45

    const/16 v2, 0xc

    const/16 v5, 0x9

    const/4 v8, 0x4

    if-nez p9, :cond_44

    const-string v1, "            "

    new-array v4, v8, [B

    const/16 v5, 0x13

    const/4 v8, 0x0

    aput-byte v5, v4, v8

    const/4 v5, 0x7

    const/4 v8, 0x1

    aput-byte v5, v4, v8

    int-to-byte v5, v15

    const/4 v8, 0x2

    aput-byte v5, v4, v8

    int-to-byte v2, v2

    const/4 v5, 0x3

    aput-byte v2, v4, v5

    .line 790
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v4, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v2

    goto/16 :goto_41

    .line 793
    :cond_44
    new-instance v1, Ljava/text/DecimalFormat;

    invoke-direct {v1, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 794
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v4, "0000"

    invoke-direct {v2, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    if-le v9, v5, :cond_45

    goto :goto_40

    :cond_45
    move v5, v9

    .line 796
    :goto_40
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    int-to-long v8, v11

    invoke-virtual {v1, v8, v9}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v8, v13

    invoke-virtual {v1, v8, v9}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    int-to-long v8, v7

    .line 797
    invoke-virtual {v2, v8, v9}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    .line 798
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [B

    const/16 v4, 0x13

    const/4 v8, 0x0

    aput-byte v4, v2, v8

    const/4 v4, 0x7

    const/4 v8, 0x1

    aput-byte v4, v2, v8

    int-to-byte v4, v15

    const/4 v8, 0x2

    aput-byte v4, v2, v8

    .line 799
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    int-to-byte v4, v4

    const/4 v8, 0x3

    aput-byte v4, v2, v8

    .line 800
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v2

    move v9, v5

    goto :goto_41

    :cond_46
    move-object/from16 v12, p0

    move/from16 v6, p2

    move/from16 v7, p6

    move/from16 v11, v39

    move/from16 v13, v43

    move/from16 v10, v44

    move/from16 v9, v45

    const/16 v5, 0x9

    new-array v2, v5, [B

    const/4 v1, 0x1

    const/4 v4, 0x0

    aput-byte v1, v2, v4

    const/4 v4, 0x2

    aput-byte v4, v2, v1

    aput-byte v4, v2, v4

    const/4 v1, 0x3

    aput-byte v19, v2, v1

    const/4 v1, 0x4

    aput-byte v20, v2, v1

    aput-byte v16, v2, v17

    const/4 v1, 0x6

    aput-byte v21, v2, v1

    const/4 v1, 0x7

    aput-byte v11, v2, v1

    const/16 v1, 0x8

    aput-byte v13, v2, v1

    :cond_47
    :goto_41
    const/4 v4, 0x0

    goto :goto_43

    :cond_48
    move-object/from16 v12, p0

    move/from16 v6, p2

    move/from16 v7, p6

    move/from16 v15, p8

    move/from16 v11, v39

    move/from16 v1, v42

    move/from16 v13, v43

    move/from16 v10, v44

    move/from16 v9, v45

    const/16 v4, 0xa

    const/16 v5, 0x9

    const/16 v14, 0x10

    goto/16 :goto_3b

    :goto_42
    new-array v2, v2, [B

    const/4 v8, 0x1

    const/16 v16, 0x0

    aput-byte v8, v2, v16

    const/16 v18, 0x2

    aput-byte v18, v2, v8

    aput-byte v14, v2, v18

    const/4 v14, 0x3

    aput-byte v8, v2, v14

    const/4 v8, 0x4

    aput-byte v19, v2, v8

    aput-byte v16, v2, v17

    const/4 v8, 0x6

    aput-byte v16, v2, v8

    const/4 v8, 0x7

    aput-byte v1, v2, v8

    const/16 v1, 0x8

    aput-byte v13, v2, v1

    int-to-byte v1, v15

    aput-byte v1, v2, v5

    aput-byte v6, v2, v4

    goto :goto_41

    .line 1193
    :goto_43
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object v1

    if-eqz v1, :cond_4b

    .line 1195
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "btState"

    const/4 v14, 0x1

    invoke-static {v5, v8, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v14, :cond_4c

    .line 1196
    sget-object v5, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {v1, v5}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v5

    sget-object v8, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->CAMERA:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-eq v5, v8, :cond_49

    sget-object v5, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    .line 1197
    invoke-virtual {v1, v5}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v5

    sget-object v8, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->MPEG:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-eq v5, v8, :cond_49

    sget-object v5, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    .line 1198
    invoke-virtual {v1, v5}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v1

    sget-object v5, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->BTPHONE:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-ne v1, v5, :cond_4c

    :cond_49
    if-nez v4, :cond_4a

    .line 1201
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    :cond_4a
    if-nez v30, :cond_4c

    .line 1205
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "currentReport"

    const/4 v5, 0x0

    invoke-static {v2, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_44

    .line 1210
    :cond_4b
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    :cond_4c
    :goto_44
    const-string v1, "DiscRepCanbus|SMALL_LCD_FUNCTION"

    move-object/from16 v2, p1

    move-object/from16 v4, v40

    .line 1212
    invoke-static {v2, v4, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->WLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RadioRepCanbus|hzbhd_LCD_isFloatView ="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "hzbhd_LCD_isFloatView"

    const/4 v14, 0x0

    invoke-static {v5, v8, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v4, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->WLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RadioRepCanbus|SourceSwitchRepCanbus_device"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "SourceSwitchRepCanbus_device"

    const/4 v14, 0x0

    invoke-static {v5, v8, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v4, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->WLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RadioRepCanbus|LCD_ISEJECT"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "LCD_ISEJECT"

    const/4 v14, 0x0

    invoke-static {v5, v8, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v4, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->WLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RadioRepCanbus|LCD_ERROR"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "LCD_ERROR"

    const/4 v14, 0x0

    invoke-static {v5, v8, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v4, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->WLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    sget-object v5, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->SMALL_LCD_FUNCTION:Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;

    invoke-virtual {v5}, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getSharedBool(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 1219
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "hzbhd_LCD_isFloatView"

    const/4 v8, 0x0

    invoke-static {v1, v5, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v5, 0x1

    if-ne v1, v5, :cond_4d

    return-void

    .line 1220
    :cond_4d
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v14, "SourceSwitchRepCanbus_device"

    invoke-static {v1, v14, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v5, :cond_4e

    return-void

    .line 1221
    :cond_4e
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v14, "LCD_ISEJECT"

    invoke-static {v1, v14, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v5, :cond_4f

    return-void

    .line 1222
    :cond_4f
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v14, "LCD_ERROR"

    invoke-static {v1, v14, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v5, :cond_50

    return-void

    .line 1223
    :cond_50
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "LCD_MEDIA_SOURCE_ID"

    invoke-static {v1, v5, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1224
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MusicRepCanbus|sourceType ="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->values()[Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v8

    aget-object v8, v8, v1

    invoke-virtual {v8}, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->WLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    sget-object v5, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->CAMERA:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    invoke-virtual {v5}, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->ordinal()I

    move-result v5

    if-eq v1, v5, :cond_51

    sget-object v5, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->MPEG:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    invoke-virtual {v5}, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->ordinal()I

    move-result v5

    if-eq v1, v5, :cond_51

    sget-object v5, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->BTPHONE:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    invoke-virtual {v5}, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->ordinal()I

    move-result v5

    if-eq v1, v5, :cond_51

    return-void

    :cond_51
    if-eqz p10, :cond_52

    .line 1226
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "LCD_START_TIMER"

    const/4 v8, 0x0

    invoke-static {v1, v5, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_52
    if-nez p11, :cond_53

    goto/16 :goto_46

    .line 1229
    :cond_53
    iget v1, v12, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->currentIndex:I

    if-eq v1, v7, :cond_56

    .line 1230
    iput v7, v12, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->currentIndex:I

    if-gez v7, :cond_54

    return-void

    .line 1232
    :cond_54
    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isYHT(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    move-result-object v1

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->KT:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    if-ne v1, v3, :cond_55

    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;->E_ICON_COLON:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;Z)[B

    .line 1234
    :cond_55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TRA "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/text/DecimalFormat;

    const-string v5, "0000"

    invoke-direct {v3, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    int-to-long v5, v10

    invoke-virtual {v3, v5, v6}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v2, v1}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_lcdPrintfString(Landroid/content/Context;[B)[B

    move-result-object v1

    .line 1235
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->getInstance()Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;

    move-result-object v3

    const/16 v5, 0x12

    invoke-virtual {v3, v1, v2, v5}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->reportLcdInfor([BLandroid/content/Context;I)V

    goto/16 :goto_46

    .line 1237
    :cond_56
    new-instance v1, Ljava/text/DecimalFormat;

    invoke-direct {v1, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    int-to-long v8, v9

    invoke-virtual {v1, v8, v9}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    .line 1238
    new-instance v5, Ljava/text/DecimalFormat;

    invoke-direct {v5, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    int-to-long v8, v11

    invoke-virtual {v5, v8, v9}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v5

    .line 1239
    new-instance v8, Ljava/text/DecimalFormat;

    invoke-direct {v8, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    int-to-long v9, v13

    invoke-virtual {v8, v9, v10}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    .line 1240
    sget-object v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus$2;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$Util$SingleSpinMachine:[I

    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isYHT(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    move-result-object v9

    invoke-virtual {v9}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_5

    goto/16 :goto_46

    .line 1268
    :pswitch_2c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v2, v1}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_lcdPrintfString(Landroid/content/Context;[B)[B

    move-result-object v1

    .line 1269
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->getInstance()Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;

    move-result-object v3

    const/16 v5, 0x15

    invoke-virtual {v3, v1, v2, v5}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->reportLcdInfor([BLandroid/content/Context;I)V

    .line 1270
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "LCD_MPEG"

    const/4 v6, 0x0

    invoke-static {v1, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v5, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_46

    .line 1242
    :pswitch_2d
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;->E_ICON_COLON:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;

    const/4 v8, 0x1

    invoke-static {v2, v1, v8}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;Z)[B

    .line 1243
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;->E_ICON_ORDER:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;

    const/4 v8, 0x0

    invoke-static {v2, v1, v8}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;Z)[B

    .line 1244
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;->E_ICON_REPEAT:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;

    invoke-static {v2, v1, v8}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;Z)[B

    .line 1245
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;->E_ICON_SHUFFLE:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;

    invoke-static {v2, v1, v8}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;Z)[B

    if-eqz v6, :cond_59

    const/4 v1, 0x1

    if-eq v6, v1, :cond_58

    const/4 v8, 0x2

    if-eq v6, v8, :cond_57

    goto :goto_45

    .line 1254
    :cond_57
    sget-object v6, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;->E_ICON_ORDER:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;

    invoke-static {v2, v6, v1}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;Z)[B

    goto :goto_45

    .line 1251
    :cond_58
    sget-object v6, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;->E_ICON_SHUFFLE:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;

    invoke-static {v2, v6, v1}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;Z)[B

    goto :goto_45

    :cond_59
    const/4 v1, 0x1

    .line 1248
    sget-object v6, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;->E_ICON_REPEAT:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;

    invoke-static {v2, v6, v1}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;Z)[B

    :goto_45
    if-gez v7, :cond_5a

    const/4 v7, 0x0

    .line 1258
    :cond_5a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/text/DecimalFormat;

    const-string v5, "0000"

    invoke-direct {v3, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    int-to-long v5, v7

    invoke-virtual {v3, v5, v6}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v2, v1}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_lcdPrintfString(Landroid/content/Context;[B)[B

    move-result-object v1

    .line 1259
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->getInstance()Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;

    move-result-object v3

    const/16 v5, 0x15

    invoke-virtual {v3, v1, v2, v5}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->reportLcdInfor([BLandroid/content/Context;I)V

    .line 1260
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "LCD_MPEG"

    const/4 v6, 0x0

    invoke-static {v1, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v5, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_46

    :catch_5
    move-exception v0

    move-object/from16 v12, p0

    goto :goto_47

    :cond_5b
    move-object v4, v3

    move-object v2, v14

    move-object v12, v15

    :cond_5c
    :goto_46
    const-string v1, "RadioRepCanbus|SUCCEED"

    .line 1276
    invoke-static {v2, v4, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->WLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_6

    goto :goto_49

    :catch_6
    move-exception v0

    goto :goto_47

    :catch_7
    move-exception v0

    move-object v12, v15

    :goto_47
    move-object v1, v0

    .line 1279
    :goto_48
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_49
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
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
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
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
    .packed-switch 0x14
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1d
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x28
        :pswitch_27
        :pswitch_27
        :pswitch_27
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x33
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_22
        :pswitch_21
        :pswitch_21
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
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
    .end packed-switch
.end method

.method public reportDiscExistStatus(Landroid/content/Context;)V
    .locals 7

    .line 128
    :try_start_0
    invoke-static {p1}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->getMpegplayerManager(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 130
    invoke-static {p1}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->getMpegplayerManager(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->isDiscExist()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->isDiscExist:I

    .line 132
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "isDiscExist"

    iget v4, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->isDiscExist:I

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 133
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->getInstance()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DevicesStutasRepCanbus;->reportCanbusInfo(Landroid/content/Context;)V

    .line 134
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v0

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->FORD_HIWORLD:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v4, "btState"

    const/4 v5, 0x3

    const-string v6, "currentReport"

    if-eq v0, v3, :cond_6

    .line 135
    :try_start_1
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v0

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->FORD_EDGE_2018_HIWORLD:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    if-ne v0, v3, :cond_2

    goto/16 :goto_2

    .line 165
    :cond_2
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v0

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->MALIBU_2016_HIWORLD:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    if-eq v0, v3, :cond_3

    .line 166
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v0

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->GL8_2017_HIWORLD:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    if-eq v0, v3, :cond_3

    .line 167
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v0

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->GL6_HIWORLD:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    if-eq v0, v3, :cond_3

    .line 168
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v0

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->EXCELLE_VERANO_2015_HIWORLD:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    if-ne v0, v3, :cond_8

    .line 172
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 174
    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 175
    iget v3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->isDiscExist:I

    if-ne v3, v2, :cond_4

    move v3, v1

    goto :goto_1

    :cond_4
    move v3, v2

    :goto_1
    invoke-static {v1, v1, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->setIntByteWithBit(IIZ)I

    move-result v3

    .line 176
    invoke-static {v3, v2, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->setIntByteWithBit(IIZ)I

    move-result v3

    int-to-byte v3, v3

    .line 177
    aput-byte v3, v0, v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 179
    :try_start_2
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 181
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_8

    .line 183
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    .line 184
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v6, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_3

    .line 188
    :cond_5
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_0
    move-exception p1

    .line 191
    :try_start_3
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 139
    :cond_6
    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 141
    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 142
    invoke-static {p1}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->getMpegplayerManager(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;->isDiscExist()Z

    move-result v3

    invoke-static {v1, v1, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->setIntByteWithBit(IIZ)I

    move-result v3

    .line 143
    invoke-static {v3, v2, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->setIntByteWithBit(IIZ)I

    move-result v3

    int-to-byte v3, v3

    .line 144
    aput-byte v3, v0, v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 146
    :try_start_4
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 148
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_8

    .line 150
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    .line 151
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v6, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_3

    .line 155
    :cond_7
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_1
    move-exception p1

    .line 158
    :try_start_5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    .line 196
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    :goto_3
    return-void
.end method
