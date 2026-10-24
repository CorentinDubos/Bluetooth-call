.class public Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;
.super Ljava/lang/Object;
.source "AvrcpCtPlayerUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$bt_music_avrcp_request;
    }
.end annotation


# static fields
.field private static final AVRCP_ERRCODE_RESERVED:B = 0x6t

.field private static final CMD_PRIORITY_1:I = 0x1

.field private static final CMD_PRIORITY_2:I = 0x2

.field private static final CMD_PRIORITY_3:I = 0x3

.field private static final CMD_PRIORITY_4:I = 0x4

.field private static final CMD_PRIORITY_5:I = 0x5

.field private static final CMD_PRIORITY_6:I = 0x6

.field private static final CMD_PRIORITY_7:I = 0x7

.field private static final CMD_PRIORITY_8:I = 0x8

.field private static final CMD_PRIORITY_9:I = 0x9

.field private static DEBUG:Z = false

.field private static final EVENT_ADDRESSED_PLAYERS_CHANGED:B = 0xbt

.field private static final EVENT_AVAILABLE_PLAYERS_CHANGED:B = 0xat

.field private static final EVENT_BATT_STATUS_CHANGED:B = 0x6t

.field private static final EVENT_NOW_PLAYING_CONTENT_CHANGED:B = 0x9t

.field private static final EVENT_PLAYBACK_POS_CHANGED:B = 0x5t

.field private static final EVENT_PLAYBACK_STATUS_CHANGED:B = 0x1t

.field private static final EVENT_PLAYER_APPLICATION_SETTING_CHANGED:B = 0x8t

.field private static final EVENT_RESERVED:B = 0xft

.field private static final EVENT_SYSTEM_STATUS_CHANGED:B = 0x7t

.field private static final EVENT_TRACK_CHANGED:B = 0x2t

.field private static final EVENT_TRACK_REACHED_END:B = 0x3t

.field private static final EVENT_TRACK_REACHED_START:B = 0x4t

.field private static final EVENT_UIDS_CHANGED:B = 0xct

.field private static final EVENT_VOLUME_CHANGED:B = 0xdt

.field private static final MEIDA_ATTR_ALBUM:I = 0x3

.field private static final MEIDA_ATTR_ARTIST:I = 0x2

.field private static final MEIDA_ATTR_GENRE:I = 0x6

.field private static final MEIDA_ATTR_NUM_OF_ALBUM:I = 0x4

.field private static final MEIDA_ATTR_PLAYING_TIME_MS:I = 0x7

.field private static final MEIDA_ATTR_RESERVED:I = -0x1

.field private static final MEIDA_ATTR_TITLE:I = 0x1

.field private static final MEIDA_ATTR_TOTAL_NUM:I = 0x5

.field private static OrderIsdn:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$bt_music_avrcp_request;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "AvrcpCtPlayerUtility"

.field private static mIsForeground:Z


# instance fields
.field private final TIMER_GET_PLYAER_STATE:I

.field private final mContext:Landroid/content/Context;

.field private mGetMediaInfoNum:I

.field private mIsRequestBusy:Z

.field private mIsTgNotSupport_getElemAtt:Z

.field private mIsTgNotSupport_getItemAtt:Z

.field private mIsTgNotSupport_getPlayState:Z

.field private mIsTgNotSupport_regPlaybackState:Z

.field private mIsTgNotSupport_regPosChanged:Z

.field private mIsTgNotSupport_regTrackChanged:Z

.field private mLatestCmdIndex:I

.field private mMediaAlbum:Ljava/lang/String;

.field private mMediaArtist:Ljava/lang/String;

.field private mMediaPlayingTime:I

.field private mMediaTitle:Ljava/lang/String;

.field private mMediaTotalTime:I

.field private mPassthroughNum:I

.field private mPlaybackStatus:B

.field private mPlayerManager:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;

.field private mRemoteNotifyEvent:I

.field private mRequestQueue:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$bt_music_avrcp_request;",
            ">;"
        }
    .end annotation
.end field

.field private mTask:Ljava/util/TimerTask;

.field private mTimer:Ljava/util/Timer;

.field private m_media_data_intent:Landroid/content/Intent;

.field private m_playback_data_intent:Landroid/content/Intent;

.field private mgetElementAttributesCount:I

.field private mgetPlayerStatusCount:I

.field private mneedGetElementAttributesInPlaying:Z

.field private mpassthroughCmdCnfCount:I

.field private mregPlaybackStatusChangedCount:I

.field private mregPosChangedCount:I

.field private mregTrackChangedCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 75
    sget-boolean v0, Lcom/autochips/bluetooth/BtEmulatorDebug;->mDebugAll:Z

    sget-boolean v1, Lcom/autochips/bluetooth/BtEmulatorDebug;->mDebugMusic:Z

    and-int/2addr v0, v1

    sput-boolean v0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->DEBUG:Z

    const/4 v0, 0x0

    .line 160
    sput-boolean v0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsForeground:Z

    .line 166
    new-instance v0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$1;

    invoke-direct {v0}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$1;-><init>()V

    sput-object v0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->OrderIsdn:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;)V
    .locals 3

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 120
    iput v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mpassthroughCmdCnfCount:I

    .line 121
    iput v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mgetElementAttributesCount:I

    .line 122
    iput v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mgetPlayerStatusCount:I

    .line 123
    iput v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mregTrackChangedCount:I

    .line 124
    iput v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mregPosChangedCount:I

    .line 125
    iput v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mregPlaybackStatusChangedCount:I

    .line 127
    iput-boolean v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsRequestBusy:Z

    const/4 v1, 0x1

    .line 128
    iput v1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mPassthroughNum:I

    .line 129
    iput v1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mGetMediaInfoNum:I

    .line 130
    iput v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mRemoteNotifyEvent:I

    .line 132
    iput-boolean v1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mneedGetElementAttributesInPlaying:Z

    .line 134
    iput-boolean v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsTgNotSupport_getElemAtt:Z

    .line 135
    iput-boolean v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsTgNotSupport_getItemAtt:Z

    .line 136
    iput-boolean v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsTgNotSupport_getPlayState:Z

    .line 137
    iput-boolean v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsTgNotSupport_regPlaybackState:Z

    .line 138
    iput-boolean v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsTgNotSupport_regTrackChanged:Z

    .line 139
    iput-boolean v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsTgNotSupport_regPosChanged:Z

    const/4 v2, 0x0

    .line 142
    iput-object v2, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mMediaTitle:Ljava/lang/String;

    .line 143
    iput-object v2, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mMediaArtist:Ljava/lang/String;

    .line 144
    iput-object v2, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mMediaAlbum:Ljava/lang/String;

    .line 145
    iput v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mMediaTotalTime:I

    .line 146
    iput v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mMediaPlayingTime:I

    .line 147
    iput-byte v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mPlaybackStatus:B

    .line 150
    iput-object v2, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->m_media_data_intent:Landroid/content/Intent;

    .line 151
    iput-object v2, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->m_playback_data_intent:Landroid/content/Intent;

    .line 154
    iput v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->TIMER_GET_PLYAER_STATE:I

    .line 155
    iput-object v2, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mTimer:Ljava/util/Timer;

    .line 156
    iput-object v2, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mTask:Ljava/util/TimerTask;

    .line 158
    iput v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mLatestCmdIndex:I

    .line 163
    iput-object v2, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mRequestQueue:Ljava/util/PriorityQueue;

    .line 235
    iput-object p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mContext:Landroid/content/Context;

    .line 236
    iput-object p2, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mPlayerManager:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;

    .line 238
    new-instance p1, Ljava/util/PriorityQueue;

    sget-object p2, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->OrderIsdn:Ljava/util/Comparator;

    invoke-direct {p1, v1, p2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mRequestQueue:Ljava/util/PriorityQueue;

    if-nez p1, :cond_0

    .line 240
    sget-boolean p1, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->DEBUG:Z

    if-eqz p1, :cond_1

    const-string p1, "AvrcpCtPlayerUtility"

    const-string p2, "new mRequestQueue fail"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 242
    :cond_0
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->clear()V

    .line 245
    :cond_1
    :goto_0
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.autochips.bluetooth.avrcpct.AvrcpCtPlayerUtility.action.ACTION_MEDIA_DATA_UPDATE"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->m_media_data_intent:Landroid/content/Intent;

    .line 246
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.autochips.bluetooth.avrcpct.AvrcpCtPlayerUtility.action.ACTION_PLAYBACK_DATA_UPDATE"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->m_playback_data_intent:Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;)Z
    .locals 0

    .line 72
    iget-boolean p0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsTgNotSupport_getPlayState:Z

    return p0
.end method

.method static synthetic access$100(Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;)Z
    .locals 0

    .line 72
    iget-boolean p0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsTgNotSupport_regPosChanged:Z

    return p0
.end method

.method static synthetic access$200(Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;)Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mPlayerManager:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;

    return-object p0
.end method

.method static synthetic access$300(Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->stopBTMusicTimer()V

    return-void
.end method

.method static synthetic access$400(Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;)Z
    .locals 0

    .line 72
    iget-boolean p0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsRequestBusy:Z

    return p0
.end method

.method static synthetic access$402(Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;Z)Z
    .locals 0

    .line 72
    iput-boolean p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsRequestBusy:Z

    return p1
.end method

.method static synthetic access$500(Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;)Ljava/util/PriorityQueue;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mRequestQueue:Ljava/util/PriorityQueue;

    return-object p0
.end method

.method static synthetic access$600(Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;Ljava/util/PriorityQueue;ILjava/lang/String;)Z
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->inQueue(Ljava/util/PriorityQueue;ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$bt_music_avrcp_request;)Z
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->sendRequest(Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$bt_music_avrcp_request;)Z

    move-result p0

    return p0
.end method

.method private getElementAttributes(J)Z
    .locals 3

    .line 762
    sget-boolean v0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "AvrcpCtPlayerUtility"

    const-string v1, "getElementAttributes"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 763
    fill-array-data v1, :array_0

    .line 768
    iget-object v2, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mPlayerManager:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;

    invoke-virtual {v2, p1, p2, v0, v1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->getElementAttributes(JB[I)Z

    move-result p1

    return p1

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data
.end method

.method private getPlayerCapability(B)Z
    .locals 2

    .line 757
    sget-boolean v0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "AvrcpCtPlayerUtility"

    const-string v1, "getPlayerCapability"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mPlayerManager:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->getCapabilities(B)Z

    move-result p1

    return p1
.end method

.method private getPlayerStatus()Z
    .locals 2

    .line 772
    sget-boolean v0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "AvrcpCtPlayerUtility"

    const-string v1, "getPlayerStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mPlayerManager:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->getPlayerStatus()Z

    move-result v0

    return v0
.end method

.method private inQueue(Ljava/util/PriorityQueue;ILjava/lang/String;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/PriorityQueue<",
            "Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$bt_music_avrcp_request;",
            ">;I",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 784
    sget-boolean v0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->DEBUG:Z

    const-string v1, "AvrcpCtPlayerUtility"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inQueue"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    packed-switch p2, :pswitch_data_0

    .line 829
    sget-boolean p1, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->DEBUG:Z

    if-eqz p1, :cond_1

    const-string p1, "inQueue unknown cmd_index"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 819
    :pswitch_0
    new-instance v0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$bt_music_avrcp_request;

    const/16 v6, 0x9

    iget v7, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mGetMediaInfoNum:I

    add-int/lit8 v1, v7, 0x1

    iput v1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mGetMediaInfoNum:I

    move-object v2, v0

    move-object v3, p0

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$bt_music_avrcp_request;-><init>(Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;ILjava/lang/String;II)V

    .line 821
    invoke-virtual {p1, v0}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 808
    :pswitch_1
    new-instance v0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$bt_music_avrcp_request;

    const/4 v5, 0x6

    iget v6, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mGetMediaInfoNum:I

    add-int/lit8 v1, v6, 0x1

    iput v1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mGetMediaInfoNum:I

    move-object v1, v0

    move-object v2, p0

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$bt_music_avrcp_request;-><init>(Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;ILjava/lang/String;II)V

    .line 810
    invoke-virtual {p1, v0}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 794
    :pswitch_2
    new-instance v0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$bt_music_avrcp_request;

    const/4 v5, 0x5

    iget v6, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mPassthroughNum:I

    add-int/lit8 v1, v6, 0x1

    iput v1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mPassthroughNum:I

    move-object v1, v0

    move-object v2, p0

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$bt_music_avrcp_request;-><init>(Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;ILjava/lang/String;II)V

    .line 796
    invoke-virtual {p1, v0}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    :cond_1
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private registerNotification(BI)Z
    .locals 1

    .line 779
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mPlayerManager:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;

    invoke-virtual {v0, p1, p2}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->registerNotificationReq(BI)Z

    move-result p1

    return p1
.end method

.method private resetParameter()V
    .locals 3

    const/4 v0, 0x0

    .line 185
    iput-object v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mMediaTitle:Ljava/lang/String;

    .line 186
    iput-object v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mMediaArtist:Ljava/lang/String;

    .line 187
    iput-object v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mMediaAlbum:Ljava/lang/String;

    const/4 v0, 0x0

    .line 188
    iput v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mMediaTotalTime:I

    .line 189
    iput v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mMediaPlayingTime:I

    .line 190
    iput-byte v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mPlaybackStatus:B

    .line 192
    iput v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mpassthroughCmdCnfCount:I

    .line 193
    iput v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mgetElementAttributesCount:I

    .line 194
    iput v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mgetPlayerStatusCount:I

    .line 195
    iput v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mregTrackChangedCount:I

    .line 196
    iput v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mregPosChangedCount:I

    .line 197
    iput v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mregPlaybackStatusChangedCount:I

    .line 199
    iput-boolean v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsRequestBusy:Z

    const/4 v1, 0x1

    .line 200
    iput v1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mPassthroughNum:I

    .line 201
    iput v1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mGetMediaInfoNum:I

    .line 202
    iput v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mRemoteNotifyEvent:I

    .line 204
    iput-boolean v1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mneedGetElementAttributesInPlaying:Z

    .line 206
    iput-boolean v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsTgNotSupport_getElemAtt:Z

    .line 207
    iput-boolean v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsTgNotSupport_getItemAtt:Z

    .line 208
    iput-boolean v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsTgNotSupport_getPlayState:Z

    .line 209
    iput-boolean v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsTgNotSupport_regPlaybackState:Z

    .line 210
    iput-boolean v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsTgNotSupport_regTrackChanged:Z

    .line 211
    iput-boolean v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsTgNotSupport_regPosChanged:Z

    .line 213
    iget-object v1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->m_media_data_intent:Landroid/content/Intent;

    const-string v2, "com.autochips.bluetooth.avrcpct.AvrcpCtPlayerUtility.extra.MEDIA_TITLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 214
    iget-object v1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->m_media_data_intent:Landroid/content/Intent;

    const-string v2, "com.autochips.bluetooth.avrcpct.AvrcpCtPlayerUtility.extra.MEDIA_ARTIST"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 215
    iget-object v1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->m_media_data_intent:Landroid/content/Intent;

    const-string v2, "com.autochips.bluetooth.avrcpct.AvrcpCtPlayerUtility.extra.MEIDA_ALBUM"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 217
    iget-object v1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->m_playback_data_intent:Landroid/content/Intent;

    const-string v2, "com.autochips.bluetooth.avrcpct.AvrcpCtPlayerUtility.extra.MEDIA_LENGTH"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 218
    iget-object v1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->m_playback_data_intent:Landroid/content/Intent;

    const-string v2, "com.autochips.bluetooth.avrcpct.AvrcpCtPlayerUtility.extra.MEDIA_POSITION"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 219
    iget-object v1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->m_playback_data_intent:Landroid/content/Intent;

    const-string v2, "com.autochips.bluetooth.avrcpct.AvrcpCtPlayerUtility.extra.PLAYBACK_STATUS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 221
    iput v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mLatestCmdIndex:I

    .line 223
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mRequestQueue:Ljava/util/PriorityQueue;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->clear()V

    :cond_0
    return-void
.end method

.method private sendRequest(Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$bt_music_avrcp_request;)Z
    .locals 4

    .line 842
    sget-boolean v0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->DEBUG:Z

    const-string v1, "AvrcpCtPlayerUtility"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendRequest, cmd_index:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$bt_music_avrcp_request;->mcmd_index:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    :cond_0
    iget v0, p1, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$bt_music_avrcp_request;->mcmd_index:I

    iput v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mLatestCmdIndex:I

    .line 844
    iget v0, p1, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$bt_music_avrcp_request;->mcmd_index:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    .line 977
    sget-boolean p1, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->DEBUG:Z

    if-eqz p1, :cond_10

    const-string/jumbo p1, "sendRequest, unknown cmd_index"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_0
    const/4 p1, 0x3

    .line 972
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->getPlayerCapability(B)Z

    move-result v2

    goto/16 :goto_0

    :pswitch_1
    const/4 p1, 0x5

    .line 966
    invoke-direct {p0, p1, v3}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->registerNotification(BI)Z

    move-result v2

    goto/16 :goto_0

    :pswitch_2
    const/4 p1, 0x2

    .line 961
    invoke-direct {p0, p1, v2}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->registerNotification(BI)Z

    move-result v2

    goto/16 :goto_0

    .line 956
    :pswitch_3
    invoke-direct {p0, v3, v2}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->registerNotification(BI)Z

    move-result v2

    goto/16 :goto_0

    .line 951
    :pswitch_4
    invoke-direct {p0}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->getPlayerStatus()Z

    move-result v2

    goto/16 :goto_0

    :pswitch_5
    const-wide/16 v0, 0x0

    .line 946
    invoke-direct {p0, v0, v1}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->getElementAttributes(J)Z

    move-result v2

    goto/16 :goto_0

    .line 926
    :pswitch_6
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-ne v0, v3, :cond_1

    .line 928
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 931
    :cond_1
    iget-boolean v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsRequestBusy:Z

    if-nez v0, :cond_10

    .line 932
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mPlayerManager:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;

    iget-object p1, p1, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$bt_music_avrcp_request;->mBT_Addr:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->stop(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 934
    sget-boolean p1, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->DEBUG:Z

    if-eqz p1, :cond_2

    const-string/jumbo p1, "sendRequest(): stop success"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    :cond_2
    iput-boolean v3, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsRequestBusy:Z

    goto/16 :goto_0

    .line 938
    :cond_3
    sget-boolean p1, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->DEBUG:Z

    if-eqz p1, :cond_10

    const-string/jumbo p1, "sendRequest(): stop fail"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 907
    :pswitch_7
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-ne v0, v3, :cond_4

    .line 909
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 912
    :cond_4
    iget-boolean v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsRequestBusy:Z

    if-nez v0, :cond_10

    .line 913
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mPlayerManager:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;

    iget-object p1, p1, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$bt_music_avrcp_request;->mBT_Addr:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->forward(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 915
    sget-boolean p1, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->DEBUG:Z

    if-eqz p1, :cond_5

    const-string/jumbo p1, "sendRequest(): forward success"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    :cond_5
    iput-boolean v3, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsRequestBusy:Z

    goto/16 :goto_0

    .line 918
    :cond_6
    sget-boolean p1, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->DEBUG:Z

    if-eqz p1, :cond_10

    const-string/jumbo p1, "sendRequest(): forward fail"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 888
    :pswitch_8
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-ne v0, v3, :cond_7

    .line 890
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 893
    :cond_7
    iget-boolean v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsRequestBusy:Z

    if-nez v0, :cond_10

    .line 894
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mPlayerManager:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;

    iget-object p1, p1, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$bt_music_avrcp_request;->mBT_Addr:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->backward(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 896
    sget-boolean p1, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->DEBUG:Z

    if-eqz p1, :cond_8

    const-string/jumbo p1, "sendRequest(): backward success"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    :cond_8
    iput-boolean v3, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsRequestBusy:Z

    goto/16 :goto_0

    .line 899
    :cond_9
    sget-boolean p1, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->DEBUG:Z

    if-eqz p1, :cond_10

    const-string/jumbo p1, "sendRequest(): backward fail"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 868
    :pswitch_9
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-ne v0, v3, :cond_a

    .line 870
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 873
    :cond_a
    iget-boolean v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsRequestBusy:Z

    if-nez v0, :cond_10

    .line 874
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mPlayerManager:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;

    iget-object p1, p1, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$bt_music_avrcp_request;->mBT_Addr:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->pause(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 876
    sget-boolean p1, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->DEBUG:Z

    if-eqz p1, :cond_b

    const-string/jumbo p1, "sendRequest(): pause success"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    :cond_b
    iput-boolean v3, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsRequestBusy:Z

    goto :goto_0

    .line 880
    :cond_c
    sget-boolean p1, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->DEBUG:Z

    if-eqz p1, :cond_10

    const-string/jumbo p1, "sendRequest(): pause fail"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 848
    :pswitch_a
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-ne v0, v3, :cond_d

    .line 850
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 853
    :cond_d
    iget-boolean v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsRequestBusy:Z

    if-nez v0, :cond_10

    .line 854
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mPlayerManager:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;

    iget-object p1, p1, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$bt_music_avrcp_request;->mBT_Addr:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->play(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 856
    sget-boolean p1, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->DEBUG:Z

    if-eqz p1, :cond_e

    const-string/jumbo p1, "sendRequest(): play success"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    :cond_e
    iput-boolean v3, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsRequestBusy:Z

    goto :goto_0

    .line 860
    :cond_f
    sget-boolean p1, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->DEBUG:Z

    if-eqz p1, :cond_10

    const-string/jumbo p1, "sendRequest(): play fail"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    :goto_0
    return v2

    :pswitch_data_0
    .packed-switch 0x1
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
.end method

.method private startBTMusicTimer(I)V
    .locals 7

    .line 987
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 988
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mTimer:Ljava/util/Timer;

    if-nez p1, :cond_1

    .line 990
    new-instance v2, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$2;

    invoke-direct {v2, p0}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$2;-><init>(Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;)V

    iput-object v2, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mTask:Ljava/util/TimerTask;

    .line 1018
    iget-object v1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mTimer:Ljava/util/Timer;

    const-wide/16 v3, 0x64

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0

    .line 1022
    :cond_0
    sget-boolean p1, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->DEBUG:Z

    if-eqz p1, :cond_1

    const-string p1, "AvrcpCtPlayerUtility"

    const-string/jumbo v0, "startBTMusicTimer: already start!"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private stopBTMusicTimer()V
    .locals 2

    .line 1027
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mTask:Ljava/util/TimerTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1028
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 1029
    iput-object v1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mTask:Ljava/util/TimerTask;

    .line 1032
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 1033
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1034
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 1035
    iput-object v1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mTimer:Ljava/util/Timer;

    :cond_1
    return-void
.end method

.method private updatePlaybackStatus(B)V
    .locals 2

    .line 1040
    sget-boolean v0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updatePlaybackStatus,music="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AvrcpCtPlayerUtility"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1045
    iget-boolean p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsTgNotSupport_getPlayState:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsTgNotSupport_regPosChanged:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 1046
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->startBTMusicTimer(I)V

    goto :goto_0

    .line 1052
    :cond_1
    iget-boolean p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsTgNotSupport_getPlayState:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsTgNotSupport_regPosChanged:Z

    if-eqz p1, :cond_2

    .line 1053
    invoke-direct {p0}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->stopBTMusicTimer()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getPlaybackStatus()B
    .locals 1

    .line 737
    iget-byte v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mPlaybackStatus:B

    return v0
.end method

.method public getRemoteNotifyEvent()I
    .locals 1

    .line 701
    iget v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mRemoteNotifyEvent:I

    return v0
.end method

.method public handleA2DPStateChanged(I)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    if-eq p1, v0, :cond_1

    const/16 v0, 0xf

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 263
    :cond_0
    iput-byte v1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mPlaybackStatus:B

    .line 264
    invoke-direct {p0, v1}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->updatePlaybackStatus(B)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 258
    iput-byte p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mPlaybackStatus:B

    .line 259
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->updatePlaybackStatus(B)V

    goto :goto_0

    .line 253
    :cond_2
    iput-byte v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mPlaybackStatus:B

    .line 254
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->updatePlaybackStatus(B)V

    :goto_0
    return-void
.end method

.method public handleAVRCPStateChanged(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 279
    :cond_0
    invoke-direct {p0}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->resetParameter()V

    goto :goto_0

    :cond_1
    const/16 p1, 0xb

    .line 273
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->sendCommand(I)V

    :goto_0
    return-void
.end method

.method public handleGePlayerStatusCnf(Landroid/content/Intent;)V
    .locals 6

    .line 418
    sget-boolean v0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->DEBUG:Z

    const-string v1, "AvrcpCtPlayerUtility"

    if-eqz v0, :cond_0

    const-string v0, "ACTION_GET_PLAYER_STATUS"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 419
    iput-boolean v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsRequestBusy:Z

    const-string v2, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.RESULT"

    const/16 v3, 0x1000

    .line 420
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getCharExtra(Ljava/lang/String;C)C

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x6

    if-ne v2, v3, :cond_3

    .line 422
    iput v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mgetPlayerStatusCount:I

    const-string v0, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.SONG_LENGTH"

    const/4 v1, -0x1

    .line 423
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.SONG_POSITION"

    .line 424
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.PLAY_STATUS"

    .line 425
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result p1

    if-nez v0, :cond_1

    if-nez v2, :cond_1

    if-nez p1, :cond_1

    return-void

    .line 433
    :cond_1
    iput v2, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mMediaPlayingTime:I

    .line 434
    iput-byte p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mPlaybackStatus:B

    .line 437
    iget p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mMediaTotalTime:I

    if-eq v0, p1, :cond_2

    .line 438
    iput v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mMediaTotalTime:I

    .line 440
    iget-boolean p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsTgNotSupport_getElemAtt:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsTgNotSupport_regTrackChanged:Z

    if-eqz p1, :cond_2

    .line 441
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mRequestQueue:Ljava/util/PriorityQueue;

    invoke-direct {p0, p1, v5, v4}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->inQueue(Ljava/util/PriorityQueue;ILjava/lang/String;)Z

    .line 446
    :cond_2
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->m_playback_data_intent:Landroid/content/Intent;

    iget v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mMediaTotalTime:I

    const-string v1, "com.autochips.bluetooth.avrcpct.AvrcpCtPlayerUtility.extra.MEDIA_LENGTH"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 447
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->m_playback_data_intent:Landroid/content/Intent;

    iget v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mMediaPlayingTime:I

    const-string v1, "com.autochips.bluetooth.avrcpct.AvrcpCtPlayerUtility.extra.MEDIA_POSITION"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 448
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->m_playback_data_intent:Landroid/content/Intent;

    iget-byte v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mPlaybackStatus:B

    const-string v1, "com.autochips.bluetooth.avrcpct.AvrcpCtPlayerUtility.extra.PLAYBACK_STATUS"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 449
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->m_playback_data_intent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const-string v3, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.ERROR_CODE"

    .line 452
    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result p1

    .line 453
    sget-boolean v3, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->DEBUG:Z

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Avrcp getPlayerStatus,result:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v5, ",error_code:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/16 p1, 0x1003

    const/4 v1, 0x1

    if-ne v2, p1, :cond_6

    .line 455
    iget p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mgetPlayerStatusCount:I

    if-ge p1, v1, :cond_5

    iget-boolean p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsTgNotSupport_getPlayState:Z

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsTgNotSupport_regTrackChanged:Z

    if-nez p1, :cond_5

    .line 456
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mRequestQueue:Ljava/util/PriorityQueue;

    const/4 v0, 0x7

    invoke-direct {p0, p1, v0, v4}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->inQueue(Ljava/util/PriorityQueue;ILjava/lang/String;)Z

    .line 457
    iget p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mgetPlayerStatusCount:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mgetPlayerStatusCount:I

    goto :goto_0

    .line 459
    :cond_5
    iput-boolean v1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsTgNotSupport_getPlayState:Z

    .line 460
    iput v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mgetPlayerStatusCount:I

    goto :goto_0

    .line 463
    :cond_6
    iput-boolean v1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsTgNotSupport_getPlayState:Z

    .line 467
    :cond_7
    :goto_0
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mRequestQueue:Ljava/util/PriorityQueue;

    invoke-virtual {p1}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mRequestQueue:Ljava/util/PriorityQueue;

    invoke-virtual {p1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$bt_music_avrcp_request;

    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->sendRequest(Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$bt_music_avrcp_request;)Z

    :cond_8
    return-void
.end method

.method public handleGetCapabilityCnf(Landroid/content/Intent;)V
    .locals 7

    const-string v0, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.RESULT"

    const/16 v1, 0x1000

    .line 286
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getCharExtra(Ljava/lang/String;C)C

    move-result v0

    const-string v2, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.COUNT"

    const/4 v3, 0x0

    .line 287
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v2

    const/4 v4, 0x1

    if-ne v0, v1, :cond_0

    if-lez v2, :cond_0

    move v0, v3

    move v1, v0

    :goto_0
    if-ge v0, v2, :cond_1

    .line 292
    sget-object v5, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->EVENTS_SUPPORTED:[Ljava/lang/String;

    aget-object v5, v5, v0

    const/16 v6, 0xf

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v5

    shl-int v5, v4, v5

    or-int/2addr v1, v5

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_0

    :cond_0
    move v1, v3

    .line 297
    :cond_1
    iput v1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mRemoteNotifyEvent:I

    const-string p1, "AvrcpCtPlayerUtility"

    if-lez v1, :cond_7

    .line 300
    sget-boolean v0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleGetCapabilityCnf = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mRemoteNotifyEvent:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_2
    iget p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mRemoteNotifyEvent:I

    and-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    if-nez p1, :cond_3

    .line 302
    iput-boolean v4, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsTgNotSupport_regPlaybackState:Z

    goto :goto_1

    .line 304
    :cond_3
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mRequestQueue:Ljava/util/PriorityQueue;

    const/16 v1, 0x8

    invoke-direct {p0, p1, v1, v0}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->inQueue(Ljava/util/PriorityQueue;ILjava/lang/String;)Z

    .line 306
    :goto_1
    iget p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mRemoteNotifyEvent:I

    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_4

    .line 307
    iput-boolean v4, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsTgNotSupport_regTrackChanged:Z

    goto :goto_2

    .line 309
    :cond_4
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mRequestQueue:Ljava/util/PriorityQueue;

    const/16 v1, 0x9

    invoke-direct {p0, p1, v1, v0}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->inQueue(Ljava/util/PriorityQueue;ILjava/lang/String;)Z

    .line 311
    :goto_2
    iget p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mRemoteNotifyEvent:I

    and-int/lit8 p1, p1, 0x20

    if-nez p1, :cond_5

    .line 312
    iput-boolean v4, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsTgNotSupport_regPosChanged:Z

    goto :goto_3

    .line 314
    :cond_5
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mRequestQueue:Ljava/util/PriorityQueue;

    const/16 v1, 0xa

    invoke-direct {p0, p1, v1, v0}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->inQueue(Ljava/util/PriorityQueue;ILjava/lang/String;)Z

    .line 318
    :goto_3
    iget-byte p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mPlaybackStatus:B

    if-ne v4, p1, :cond_6

    .line 319
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mRequestQueue:Ljava/util/PriorityQueue;

    const/4 v1, 0x6

    invoke-direct {p0, p1, v1, v0}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->inQueue(Ljava/util/PriorityQueue;ILjava/lang/String;)Z

    .line 321
    iget-boolean p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsTgNotSupport_regPosChanged:Z

    if-eqz p1, :cond_6

    invoke-direct {p0, v3}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->startBTMusicTimer(I)V

    .line 325
    :cond_6
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mRequestQueue:Ljava/util/PriorityQueue;

    invoke-virtual {p1}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mRequestQueue:Ljava/util/PriorityQueue;

    invoke-virtual {p1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$bt_music_avrcp_request;

    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->sendRequest(Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$bt_music_avrcp_request;)Z

    move-result p1

    goto :goto_4

    .line 328
    :cond_7
    sget-boolean v0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->DEBUG:Z

    if-eqz v0, :cond_8

    const-string v0, "handleGetCapabilityCnf:remote not support event notify"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_8
    iput v3, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mRemoteNotifyEvent:I

    .line 330
    iput-boolean v4, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsTgNotSupport_regPlaybackState:Z

    .line 331
    iput-boolean v4, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsTgNotSupport_regTrackChanged:Z

    .line 332
    iput-boolean v4, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsTgNotSupport_regPosChanged:Z

    :cond_9
    :goto_4
    return-void
.end method

.method public handleGetElementAttributesCnf(Landroid/content/Intent;)V
    .locals 8

    .line 337
    sget-boolean v0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->DEBUG:Z

    const-string v1, "AvrcpCtPlayerUtility"

    if-eqz v0, :cond_0

    const-string v0, "ACTION_GET_ELEMENT_ATTRIBUTES"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.RESULT"

    const/16 v2, 0x1000

    .line 339
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getCharExtra(Ljava/lang/String;C)C

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v0, v2, :cond_9

    const-string v0, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.COUNT"

    .line 341
    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v0

    if-lez v0, :cond_6

    .line 343
    iput v5, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mgetElementAttributesCount:I

    :goto_0
    if-ge v5, v0, :cond_5

    .line 345
    sget-object v2, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->ATTRIBUTE_ID:[Ljava/lang/String;

    aget-object v2, v2, v5

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 347
    sget-object v3, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->VALUE:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eq v2, v6, :cond_3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_1

    .line 364
    sget-boolean v2, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "Avrcp getElementAttributes useless attributes"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 356
    :cond_1
    iput-object v3, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mMediaAlbum:Ljava/lang/String;

    goto :goto_1

    .line 353
    :cond_2
    iput-object v3, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mMediaArtist:Ljava/lang/String;

    goto :goto_1

    .line 350
    :cond_3
    iput-object v3, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mMediaTitle:Ljava/lang/String;

    :cond_4
    :goto_1
    add-int/lit8 v5, v5, 0x1

    int-to-byte v5, v5

    goto :goto_0

    .line 370
    :cond_5
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->m_media_data_intent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mMediaTitle:Ljava/lang/String;

    const-string v1, "com.autochips.bluetooth.avrcpct.AvrcpCtPlayerUtility.extra.MEDIA_TITLE"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 371
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->m_media_data_intent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mMediaArtist:Ljava/lang/String;

    const-string v1, "com.autochips.bluetooth.avrcpct.AvrcpCtPlayerUtility.extra.MEDIA_ARTIST"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 372
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->m_media_data_intent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mMediaAlbum:Ljava/lang/String;

    const-string v1, "com.autochips.bluetooth.avrcpct.AvrcpCtPlayerUtility.extra.MEIDA_ALBUM"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 373
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_f

    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->m_media_data_intent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 376
    :cond_6
    sget-boolean p1, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->DEBUG:Z

    if-eqz p1, :cond_7

    const-string p1, "Avrcp getElementAttributes, attributes count = 0, try again, total twice"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_7
    iget p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mgetElementAttributesCount:I

    if-ge p1, v6, :cond_8

    iget-boolean p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsTgNotSupport_getElemAtt:Z

    if-nez p1, :cond_8

    iget-boolean p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsTgNotSupport_regTrackChanged:Z

    if-nez p1, :cond_8

    .line 378
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mRequestQueue:Ljava/util/PriorityQueue;

    invoke-direct {p0, p1, v4, v3}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->inQueue(Ljava/util/PriorityQueue;ILjava/lang/String;)Z

    .line 379
    iput v6, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mgetElementAttributesCount:I

    goto :goto_2

    .line 381
    :cond_8
    iput-boolean v6, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsTgNotSupport_getElemAtt:Z

    goto :goto_2

    :cond_9
    const-string v2, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.ERROR_CODE"

    .line 386
    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result p1

    .line 387
    sget-boolean v2, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->DEBUG:Z

    if-eqz v2, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Avrcp getElementAttributes, result:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v7, ",error_code:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    const/16 p1, 0x1003

    if-ne v0, p1, :cond_e

    .line 389
    sget-boolean p1, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->DEBUG:Z

    if-eqz p1, :cond_b

    const-string p1, "Avrcp getElementAttributes, BT_AVRCP_RESULT_INTERNAL_ERROR"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_b
    iget p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mgetElementAttributesCount:I

    if-ge p1, v6, :cond_c

    iget-boolean p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsTgNotSupport_getElemAtt:Z

    if-nez p1, :cond_c

    iget-boolean p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsTgNotSupport_regTrackChanged:Z

    if-nez p1, :cond_c

    .line 391
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mRequestQueue:Ljava/util/PriorityQueue;

    invoke-direct {p0, p1, v4, v3}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->inQueue(Ljava/util/PriorityQueue;ILjava/lang/String;)Z

    .line 392
    iget p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mgetElementAttributesCount:I

    add-int/2addr p1, v6

    iput p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mgetElementAttributesCount:I

    goto :goto_2

    .line 395
    :cond_c
    iget p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mgetElementAttributesCount:I

    if-ne p1, v6, :cond_d

    add-int/2addr p1, v6

    .line 396
    iput p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mgetElementAttributesCount:I

    .line 397
    iput-boolean v6, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mneedGetElementAttributesInPlaying:Z

    .line 398
    sget-boolean p1, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->DEBUG:Z

    if-eqz p1, :cond_f

    const-string p1, "Avrcp getElementAttributes, mneedGetElementAttributesInPlaying = true"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 400
    :cond_d
    iput v5, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mgetElementAttributesCount:I

    .line 401
    iput-boolean v6, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsTgNotSupport_getElemAtt:Z

    goto :goto_2

    .line 407
    :cond_e
    iput-boolean v6, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsTgNotSupport_getElemAtt:Z

    .line 413
    :cond_f
    :goto_2
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mRequestQueue:Ljava/util/PriorityQueue;

    invoke-virtual {p1}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mRequestQueue:Ljava/util/PriorityQueue;

    invoke-virtual {p1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$bt_music_avrcp_request;

    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->sendRequest(Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$bt_music_avrcp_request;)Z

    :cond_10
    return-void
.end method

.method public handlePassthroughCmdCnf(Landroid/content/Intent;)V
    .locals 4

    .line 674
    sget-boolean v0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "AvrcpCtPlayerUtility"

    const-string v1, "ACTION_PASSTHROUGH_COMMAND_CNF"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 675
    iput-boolean v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsRequestBusy:Z

    .line 676
    iget v1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mpassthroughCmdCnfCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mpassthroughCmdCnfCount:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 678
    iput v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mpassthroughCmdCnfCount:I

    :cond_1
    const/16 v0, 0xff

    const-string v1, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.KEY_VALUE"

    .line 681
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.IS_PRESS"

    .line 682
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result p1

    if-nez p1, :cond_4

    const/16 p1, 0x45

    if-eq v0, p1, :cond_3

    const/16 p1, 0x46

    if-eq v0, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x3

    .line 691
    iput-byte p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mPlaybackStatus:B

    goto :goto_0

    :cond_3
    const/4 p1, 0x4

    .line 687
    iput-byte p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mPlaybackStatus:B

    .line 697
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mRequestQueue:Ljava/util/PriorityQueue;

    invoke-virtual {p1}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mRequestQueue:Ljava/util/PriorityQueue;

    invoke-virtual {p1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$bt_music_avrcp_request;

    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->sendRequest(Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$bt_music_avrcp_request;)Z

    :cond_5
    return-void
.end method

.method public handleRegNotificationErrorEventCnf(Landroid/content/Intent;)V
    .locals 6

    const-string v0, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.RESULT"

    const/16 v1, 0x1001

    .line 578
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getCharExtra(Ljava/lang/String;C)C

    move-result v0

    const-string v1, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.ERROR_CODE"

    const/4 v2, 0x6

    .line 579
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v1

    const-string v2, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.EVENT_ID"

    const/4 v3, 0x0

    .line 580
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result p1

    .line 581
    sget-boolean v2, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->DEBUG:Z

    const-string v4, "AvrcpCtPlayerUtility"

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_REG_NOTIFICATION_ERROR, result:0x"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v5, ", error_code:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", event_id:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v1, 0x1003

    const/4 v2, 0x1

    if-ne v0, v1, :cond_d

    .line 583
    sget-boolean v0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACTION_REG_NOTIFICATION_ERROR, BT_AVRCP_RESULT_INTERNAL_ERROR, event_id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    if-eq p1, v2, :cond_9

    const/4 v1, 0x2

    if-eq p1, v1, :cond_5

    const/4 v1, 0x5

    if-eq p1, v1, :cond_2

    goto/16 :goto_0

    .line 622
    :cond_2
    iget p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mregPosChangedCount:I

    if-ge p1, v2, :cond_3

    iget-boolean p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsTgNotSupport_getPlayState:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsTgNotSupport_regTrackChanged:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsTgNotSupport_regPosChanged:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mPlayerManager:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;

    invoke-virtual {p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->getPosChangedEventStatus()I

    move-result p1

    if-eq p1, v2, :cond_3

    .line 628
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mRequestQueue:Ljava/util/PriorityQueue;

    const/16 v1, 0xa

    invoke-direct {p0, p1, v1, v0}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->inQueue(Ljava/util/PriorityQueue;ILjava/lang/String;)Z

    .line 629
    iput v2, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mregPosChangedCount:I

    goto/16 :goto_0

    .line 631
    :cond_3
    sget-boolean p1, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->DEBUG:Z

    if-eqz p1, :cond_4

    const-string p1, "ACTION_REG_NOTIFICATION_ERROR, Pos Changed Event, 2nd !!!"

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    :cond_4
    iput-boolean v2, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsTgNotSupport_regPosChanged:Z

    .line 634
    iput v3, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mregPosChangedCount:I

    goto/16 :goto_0

    .line 604
    :cond_5
    iget p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mregTrackChangedCount:I

    if-ge p1, v2, :cond_7

    iget-boolean p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsTgNotSupport_getElemAtt:Z

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsTgNotSupport_getPlayState:Z

    if-nez p1, :cond_7

    :cond_6
    iget-boolean p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsTgNotSupport_regTrackChanged:Z

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mPlayerManager:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;

    invoke-virtual {p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->getTrackChangedEventStatus()I

    move-result p1

    if-eq p1, v2, :cond_7

    .line 608
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mRequestQueue:Ljava/util/PriorityQueue;

    const/16 v1, 0x9

    invoke-direct {p0, p1, v1, v0}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->inQueue(Ljava/util/PriorityQueue;ILjava/lang/String;)Z

    .line 609
    iput v2, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mregTrackChangedCount:I

    goto/16 :goto_0

    .line 611
    :cond_7
    sget-boolean p1, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->DEBUG:Z

    if-eqz p1, :cond_8

    const-string p1, "ACTION_REG_NOTIFICATION_ERROR, Track Changed Event, 2nd !!!"

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    :cond_8
    iput v3, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mregTrackChangedCount:I

    .line 614
    iput-boolean v2, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsTgNotSupport_regTrackChanged:Z

    goto/16 :goto_0

    .line 587
    :cond_9
    iget p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mregPlaybackStatusChangedCount:I

    if-ge p1, v2, :cond_b

    iget-boolean p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsTgNotSupport_getElemAtt:Z

    if-eqz p1, :cond_a

    iget-boolean p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsTgNotSupport_getPlayState:Z

    if-nez p1, :cond_b

    :cond_a
    iget-boolean p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsTgNotSupport_regPlaybackState:Z

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mPlayerManager:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;

    invoke-virtual {p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->getTrackChangedEventStatus()I

    move-result p1

    if-eq p1, v2, :cond_b

    .line 591
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mRequestQueue:Ljava/util/PriorityQueue;

    const/16 v1, 0x8

    invoke-direct {p0, p1, v1, v0}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->inQueue(Ljava/util/PriorityQueue;ILjava/lang/String;)Z

    .line 592
    iput v2, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mregPlaybackStatusChangedCount:I

    goto :goto_0

    .line 594
    :cond_b
    sget-boolean p1, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->DEBUG:Z

    if-eqz p1, :cond_c

    const-string p1, "ACTION_REG_NOTIFICATION_ERROR, Playback Changed Event, 2nd !!!"

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :cond_c
    iput v3, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mregPlaybackStatusChangedCount:I

    .line 597
    iput-boolean v2, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsTgNotSupport_regPlaybackState:Z

    goto :goto_0

    .line 642
    :cond_d
    sget-boolean p1, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->DEBUG:Z

    if-eqz p1, :cond_e

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ACTION_REG_NOTIFICATION_ERROR, mLatestCmdIndex:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mLatestCmdIndex:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    :cond_e
    iget p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mLatestCmdIndex:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 660
    :pswitch_0
    sget-boolean p1, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->DEBUG:Z

    if-eqz p1, :cond_f

    const-string p1, "ACTION_REG_NOTIFICATION_ERROR, mIsTgNotSupport_regPosChanged = true"

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    :cond_f
    iput-boolean v2, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsTgNotSupport_regPosChanged:Z

    goto :goto_0

    .line 653
    :pswitch_1
    sget-boolean p1, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->DEBUG:Z

    if-eqz p1, :cond_10

    const-string p1, "ACTION_REG_NOTIFICATION_ERROR, mIsTgNotSupport_regTrackChanged = true"

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :cond_10
    iput-boolean v2, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsTgNotSupport_regTrackChanged:Z

    goto :goto_0

    .line 646
    :pswitch_2
    sget-boolean p1, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->DEBUG:Z

    if-eqz p1, :cond_11

    const-string p1, "ACTION_REG_NOTIFICATION_ERROR, mIsTgNotSupport_regPlaybackState = true"

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :cond_11
    iput-boolean v2, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsTgNotSupport_regPlaybackState:Z

    .line 670
    :goto_0
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mRequestQueue:Ljava/util/PriorityQueue;

    invoke-virtual {p1}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mRequestQueue:Ljava/util/PriorityQueue;

    invoke-virtual {p1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$bt_music_avrcp_request;

    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->sendRequest(Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$bt_music_avrcp_request;)Z

    :cond_12
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleRegNotificationPosChangedCnf(Landroid/content/Intent;)V
    .locals 4

    .line 543
    sget-boolean v0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->DEBUG:Z

    const-string v1, "AvrcpCtPlayerUtility"

    if-eqz v0, :cond_0

    const-string v0, "ACTION_REG_NOTIFICATION_POS_CHANGED"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.RESULT"

    const/16 v2, 0x1000

    .line 544
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getCharExtra(Ljava/lang/String;C)C

    move-result v0

    if-ne v0, v2, :cond_5

    const/4 v0, -0x1

    const-string v2, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.SONG_POSITION"

    .line 546
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mMediaPlayingTime:I

    const-string v0, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.IS_INTERIM"

    const/4 v2, 0x1

    .line 547
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result p1

    .line 548
    sget-boolean v0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Avrcp playing position changed, is_interim "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :cond_1
    iget-boolean v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsTgNotSupport_getPlayState:Z

    if-nez p1, :cond_4

    .line 554
    iget-boolean p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsTgNotSupport_getPlayState:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsTgNotSupport_regTrackChanged:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsTgNotSupport_regPosChanged:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mPlayerManager:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;

    invoke-virtual {p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->getPosChangedEventStatus()I

    move-result p1

    if-eq p1, v2, :cond_2

    .line 558
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mRequestQueue:Ljava/util/PriorityQueue;

    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->inQueue(Ljava/util/PriorityQueue;ILjava/lang/String;)Z

    .line 562
    :cond_2
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->m_playback_data_intent:Landroid/content/Intent;

    iget v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mMediaPlayingTime:I

    const-string v1, "com.autochips.bluetooth.avrcpct.AvrcpCtPlayerUtility.extra.MEDIA_POSITION"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 563
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->m_playback_data_intent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 566
    :cond_3
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mRequestQueue:Ljava/util/PriorityQueue;

    invoke-virtual {p1}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mRequestQueue:Ljava/util/PriorityQueue;

    invoke-virtual {p1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$bt_music_avrcp_request;

    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->sendRequest(Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$bt_music_avrcp_request;)Z

    move-result p1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    .line 568
    iput p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mregPosChangedCount:I

    goto :goto_0

    :cond_5
    const/4 v0, 0x6

    const-string v2, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.ERROR_CODE"

    .line 572
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result p1

    .line 573
    sget-boolean v0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->DEBUG:Z

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Avrcp playing position changed, error_code "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_0
    return-void
.end method

.method public handleRegNotificationStatusChangedCnf(Landroid/content/Intent;)V
    .locals 6

    .line 472
    sget-boolean v0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->DEBUG:Z

    const-string v1, "AvrcpCtPlayerUtility"

    if-eqz v0, :cond_0

    const-string v0, "ACTION_REG_NOTIFICATION_STATUS_CHANGED"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.RESULT"

    const/16 v2, 0x1000

    .line 473
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getCharExtra(Ljava/lang/String;C)C

    move-result v0

    const/4 v3, 0x6

    if-ne v0, v2, :cond_6

    const/4 v0, -0x1

    const-string v2, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.PLAY_STATUS"

    .line 475
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v0

    const-string v2, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.IS_INTERIM"

    const/4 v4, 0x1

    .line 476
    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result p1

    .line 477
    sget-boolean v2, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->DEBUG:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Avrcp playback status: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", is_interim: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-nez p1, :cond_4

    .line 480
    iput-byte v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mPlaybackStatus:B

    const/4 p1, 0x0

    if-ne v0, v4, :cond_2

    .line 482
    iget-boolean v1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsTgNotSupport_getElemAtt:Z

    if-nez v1, :cond_2

    .line 483
    iget-object v1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mRequestQueue:Ljava/util/PriorityQueue;

    invoke-direct {p0, v1, v3, p1}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->inQueue(Ljava/util/PriorityQueue;ILjava/lang/String;)Z

    :cond_2
    if-ne v0, v4, :cond_3

    .line 486
    iget-boolean v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsTgNotSupport_getPlayState:Z

    if-nez v0, :cond_3

    .line 487
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mRequestQueue:Ljava/util/PriorityQueue;

    const/4 v1, 0x7

    invoke-direct {p0, v0, v1, p1}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->inQueue(Ljava/util/PriorityQueue;ILjava/lang/String;)Z

    .line 491
    :cond_3
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mRequestQueue:Ljava/util/PriorityQueue;

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1, p1}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->inQueue(Ljava/util/PriorityQueue;ILjava/lang/String;)Z

    .line 494
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->m_playback_data_intent:Landroid/content/Intent;

    iget-byte v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mPlaybackStatus:B

    const-string v1, "com.autochips.bluetooth.avrcpct.AvrcpCtPlayerUtility.extra.PLAYBACK_STATUS"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 495
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->m_playback_data_intent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    if-ne p1, v4, :cond_5

    const/4 p1, 0x0

    .line 498
    iput p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mregPlaybackStatusChangedCount:I

    .line 501
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mRequestQueue:Ljava/util/PriorityQueue;

    invoke-virtual {p1}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mRequestQueue:Ljava/util/PriorityQueue;

    invoke-virtual {p1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$bt_music_avrcp_request;

    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->sendRequest(Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$bt_music_avrcp_request;)Z

    goto :goto_1

    :cond_6
    const-string v0, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.ERROR_CODE"

    .line 505
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result p1

    .line 506
    sget-boolean v0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->DEBUG:Z

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Avrcp playback status changed, error_code "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_1
    return-void
.end method

.method public handleRegNotificationTrackChangedCnf(Landroid/content/Intent;)V
    .locals 7

    .line 512
    sget-boolean v0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->DEBUG:Z

    const-string v1, "AvrcpCtPlayerUtility"

    if-eqz v0, :cond_0

    const-string v0, "ACTION_REG_NOTIFICATION_TRACK_CHANGED"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.RESULT"

    const/16 v2, 0x1000

    .line 513
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getCharExtra(Ljava/lang/String;C)C

    move-result v0

    const/4 v3, 0x6

    if-ne v0, v2, :cond_6

    const-wide/16 v4, 0x0

    const-string v0, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.IDENTIFIER"

    .line 515
    invoke-virtual {p1, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v0, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.IS_INTERIM"

    const/4 v2, 0x1

    .line 516
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result p1

    .line 517
    sget-boolean v0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Avrcp playing track changed, identifier "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", is_interim "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-nez p1, :cond_4

    .line 519
    iget-boolean p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsTgNotSupport_getElemAtt:Z

    const/4 v0, 0x0

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsTgNotSupport_regTrackChanged:Z

    if-nez p1, :cond_2

    .line 520
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mRequestQueue:Ljava/util/PriorityQueue;

    invoke-direct {p0, p1, v3, v0}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->inQueue(Ljava/util/PriorityQueue;ILjava/lang/String;)Z

    .line 522
    :cond_2
    iget-boolean p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsTgNotSupport_getPlayState:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsTgNotSupport_regTrackChanged:Z

    if-nez p1, :cond_3

    .line 523
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mRequestQueue:Ljava/util/PriorityQueue;

    const/4 v1, 0x7

    invoke-direct {p0, p1, v1, v0}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->inQueue(Ljava/util/PriorityQueue;ILjava/lang/String;)Z

    .line 526
    :cond_3
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mRequestQueue:Ljava/util/PriorityQueue;

    const/16 v1, 0x9

    invoke-direct {p0, p1, v1, v0}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->inQueue(Ljava/util/PriorityQueue;ILjava/lang/String;)Z

    goto :goto_0

    :cond_4
    if-ne p1, v2, :cond_5

    const/4 p1, 0x0

    .line 529
    iput p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mregTrackChangedCount:I

    .line 533
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mRequestQueue:Ljava/util/PriorityQueue;

    invoke-virtual {p1}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mRequestQueue:Ljava/util/PriorityQueue;

    invoke-virtual {p1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$bt_music_avrcp_request;

    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->sendRequest(Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$bt_music_avrcp_request;)Z

    goto :goto_1

    :cond_6
    const-string v0, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.ERROR_CODE"

    .line 537
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result p1

    .line 538
    sget-boolean v0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->DEBUG:Z

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Avrcp track changed, error_code "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_1
    return-void
.end method

.method public onMusicPlayerStateChanged(Z)V
    .locals 1

    .line 719
    sput-boolean p1, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mIsForeground:Z

    const/16 v0, 0xf

    if-eqz p1, :cond_0

    .line 722
    iget p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mRemoteNotifyEvent:I

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mPlayerManager:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;

    invoke-virtual {p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->getA2dpSinkStateValue()I

    move-result p1

    if-ne v0, p1, :cond_1

    const/4 p1, 0x0

    .line 724
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->startBTMusicTimer(I)V

    const/4 p1, 0x6

    .line 726
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->sendCommand(I)V

    goto :goto_0

    .line 729
    :cond_0
    iget p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mRemoteNotifyEvent:I

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mPlayerManager:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;

    invoke-virtual {p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->getA2dpSinkStateValue()I

    move-result p1

    if-ne v0, p1, :cond_1

    .line 731
    invoke-direct {p0}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->stopBTMusicTimer()V

    :cond_1
    :goto_0
    return-void
.end method

.method public sendCommand(I)V
    .locals 2

    .line 707
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mPlayerManager:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;

    if-eqz v0, :cond_0

    .line 708
    invoke-virtual {v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->getA2dpAddr()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 712
    :goto_0
    iget-object v1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mRequestQueue:Ljava/util/PriorityQueue;

    invoke-direct {p0, v1, p1, v0}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->inQueue(Ljava/util/PriorityQueue;ILjava/lang/String;)Z

    .line 715
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mRequestQueue:Ljava/util/PriorityQueue;

    invoke-virtual {p1}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->mRequestQueue:Ljava/util/PriorityQueue;

    invoke-virtual {p1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$bt_music_avrcp_request;

    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->sendRequest(Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$bt_music_avrcp_request;)Z

    :cond_1
    return-void
.end method
