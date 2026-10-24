.class public Lcom/autochips/ipod/IPodSDK;
.super Ljava/lang/Object;
.source "IPodSDK.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autochips/ipod/IPodSDK$IPodException;,
        Lcom/autochips/ipod/IPodSDK$NOTIFY_INFO_T;,
        Lcom/autochips/ipod/IPodSDK$STATUS_T;,
        Lcom/autochips/ipod/IPodSDK$DIGITALAUDIO_CONFIGUE_T;,
        Lcom/autochips/ipod/IPodSDK$PB_NOTIFY_STATUS_INF_T;,
        Lcom/autochips/ipod/IPodSDK$AUTH_RESULT_T;,
        Lcom/autochips/ipod/IPodSDK$NOTIFY_INFO_A;,
        Lcom/autochips/ipod/IPodSDK$ARTWORK_TIMES_T;,
        Lcom/autochips/ipod/IPodSDK$PREFERENCES_T;,
        Lcom/autochips/ipod/IPodSDK$ARTWORK_FMTS_INFO_T;,
        Lcom/autochips/ipod/IPodSDK$ARTWORK_DATA_T;,
        Lcom/autochips/ipod/IPodSDK$ARTWORK_CNT_INFO_T;,
        Lcom/autochips/ipod/IPodSDK$ARTWORK_FMTS;,
        Lcom/autochips/ipod/IPodSDK$ARTWORK_CNT_T;,
        Lcom/autochips/ipod/IPodSDK$TRACK_GENRE_INFO_T;,
        Lcom/autochips/ipod/IPodSDK$TRACK_CAP_INF_T;,
        Lcom/autochips/ipod/IPodSDK$TRACK_RELEASE_DATE_T;,
        Lcom/autochips/ipod/IPodSDK$PlayingTrackInfo;,
        Lcom/autochips/ipod/IPodSDK$DB_RECITEM_T;,
        Lcom/autochips/ipod/IPodSDK$PLAY_ST_INFO_EX_T;,
        Lcom/autochips/ipod/IPodSDK$PLAY_ST_INFO_T;,
        Lcom/autochips/ipod/IPodSDK$CHAPTER_INFO_T;,
        Lcom/autochips/ipod/IPodSDK$STATUS_E;,
        Lcom/autochips/ipod/IPodSDK$NOTIFY_INFO_E;,
        Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;,
        Lcom/autochips/ipod/IPodSDK$E_IPOD_AUTHENTICATION_STATUS;,
        Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;,
        Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;,
        Lcom/autochips/ipod/IPodSDK$SWI_SINK_TYPE_T;,
        Lcom/autochips/ipod/IPodSDK$EventCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field public static final INFO_MAX_STR_LEN:I = 0x100

.field public static final MAX_ARTWORK_FTM_NUM:I = 0x8

.field public static final MAX_ARTWORK_INFO_NUM:I = 0x8

.field public static final MAX_ARTWORK_TIME_NUM:I = 0x8

.field private static final TAG:Ljava/lang/String; = "IPodSDK"

.field private static mSelf:Lcom/autochips/ipod/IPodSDK;


# instance fields
.field private mCBM:Landroid/cbm/CBManager;

.field private mCBMAction:Landroid/cbm/CBManager$OnActionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ipodsdk_jni"

    .line 1689
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1694
    sput-object v0, Lcom/autochips/ipod/IPodSDK;->mSelf:Lcom/autochips/ipod/IPodSDK;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1724
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 186
    iput-object v0, p0, Lcom/autochips/ipod/IPodSDK;->mCBM:Landroid/cbm/CBManager;

    .line 188
    new-instance v0, Lcom/autochips/ipod/IPodSDK$1;

    invoke-direct {v0, p0}, Lcom/autochips/ipod/IPodSDK$1;-><init>(Lcom/autochips/ipod/IPodSDK;)V

    iput-object v0, p0, Lcom/autochips/ipod/IPodSDK;->mCBMAction:Landroid/cbm/CBManager$OnActionListener;

    return-void
.end method

.method private static Log_IF(Ljava/lang/String;)V
    .locals 1

    const-string v0, "IPodSDK"

    .line 1729
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static getInstance()Lcom/autochips/ipod/IPodSDK;
    .locals 1

    .line 1720
    sget-object v0, Lcom/autochips/ipod/IPodSDK;->mSelf:Lcom/autochips/ipod/IPodSDK;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autochips/ipod/IPodSDK;

    invoke-direct {v0}, Lcom/autochips/ipod/IPodSDK;-><init>()V

    sput-object v0, Lcom/autochips/ipod/IPodSDK;->mSelf:Lcom/autochips/ipod/IPodSDK;

    .line 1721
    :cond_0
    sget-object v0, Lcom/autochips/ipod/IPodSDK;->mSelf:Lcom/autochips/ipod/IPodSDK;

    return-object v0
.end method

.method private initCBM()Z
    .locals 4

    .line 223
    iget-object v0, p0, Lcom/autochips/ipod/IPodSDK;->mCBM:Landroid/cbm/CBManager;

    if-nez v0, :cond_0

    new-instance v0, Landroid/cbm/CBManager;

    invoke-direct {v0}, Landroid/cbm/CBManager;-><init>()V

    iput-object v0, p0, Lcom/autochips/ipod/IPodSDK;->mCBM:Landroid/cbm/CBManager;

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/autochips/ipod/IPodSDK;->mCBM:Landroid/cbm/CBManager;

    iget-object v1, p0, Lcom/autochips/ipod/IPodSDK;->mCBMAction:Landroid/cbm/CBManager$OnActionListener;

    invoke-virtual {v0, v1}, Landroid/cbm/CBManager;->setOnActionListener(Landroid/cbm/CBManager$OnActionListener;)V

    .line 225
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 226
    iget-object v1, p0, Lcom/autochips/ipod/IPodSDK;->mCBM:Landroid/cbm/CBManager;

    const/16 v2, 0xe

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Landroid/cbm/CBManager;->request(IILandroid/os/Parcel;)I

    move-result v1

    if-nez v1, :cond_2

    .line 227
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    return v3

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private native native_deinit()Z
.end method

.method private native native_enterRemoteUIMode()V
.end method

.method private native native_exitRemoteUIMode()V
.end method

.method private native native_getArtWorkFormats(Lcom/autochips/ipod/IPodSDK$ARTWORK_FMTS_INFO_T;)V
.end method

.method private native native_getAudioDSP()Z
.end method

.method private native native_getAuthStatus()Lcom/autochips/ipod/IPodSDK$AUTH_RESULT_T;
.end method

.method private native native_getCurEQProfileIndex()I
.end method

.method private native native_getCurPlayingTrackChapterInfo()Lcom/autochips/ipod/IPodSDK$CHAPTER_INFO_T;
.end method

.method private native native_getCurPlayingTrackIdx()I
.end method

.method private native native_getDbTrackInfo(IIB)I
.end method

.method private native native_getIndexedPlayingTrackAlbum(I)Ljava/lang/String;
.end method

.method private native native_getIndexedPlayingTrackArtist(I)Ljava/lang/String;
.end method

.method private native native_getIndexedPlayingTrackInfo(III)Lcom/autochips/ipod/IPodSDK$PlayingTrackInfo;
.end method

.method private native native_getIndexedPlayingTrackTitle(I)Ljava/lang/String;
.end method

.method private native native_getNumEQProfile()I
.end method

.method private native native_getNumPlayingTracks()I
.end method

.method private native native_getNumberCategorizedDBRecords(B)I
.end method

.method private native native_getPlayStatus()Lcom/autochips/ipod/IPodSDK$PLAY_ST_INFO_T;
.end method

.method private native native_getPlayStatus_Ex()Lcom/autochips/ipod/IPodSDK$PLAY_ST_INFO_EX_T;
.end method

.method private native native_getRepeatSetting()B
.end method

.method private native native_getShuffleSetting()B
.end method

.method private native native_getTrackArtWorkData(ISILcom/autochips/ipod/IPodSDK$ARTWORK_DATA_T;)V
.end method

.method private native native_getTrackArtWorkTimes(ISSSLcom/autochips/ipod/IPodSDK$ARTWORK_TIMES_T;)V
.end method

.method private native native_getVolume()I
.end method

.method private native native_getiPodOptions()J
.end method

.method private native native_getiPodOptionsForLingo(B)J
.end method

.method private native native_getiPodPreferences(B)Lcom/autochips/ipod/IPodSDK$PREFERENCES_T;
.end method

.method private native native_init()Z
.end method

.method private native native_playControl(B)V
.end method

.method private native native_playCurrentSelection(I)V
.end method

.method private native native_releaseAudioDSP()Z
.end method

.method private native native_requestLingoProtocolVersion(B)I
.end method

.method private native native_resetDBSelection()V
.end method

.method private native native_resetDBSelectionHierarchy(B)V
.end method

.method private native native_retrieveCategorizedDBRecords(BII)Lcom/autochips/ipod/IPodSDK$DB_RECITEM_T;
.end method

.method private native native_seek(I)V
.end method

.method private native native_selectDBRecord(BI)V
.end method

.method private native native_selectSortDBRecord(BIB)V
.end method

.method private native native_setADecSinkInfo(I)Z
.end method

.method private native native_setCurrentPlayingTrack(I)V
.end method

.method private native native_setEventCallback(Lcom/autochips/ipod/IPodSDK$EventCallback;)V
.end method

.method private native native_setPlayStatusChangeNotification(II)V
.end method

.method private native native_setRemoteEvent(I)V
.end method

.method private native native_setRepeatMode(BZ)V
.end method

.method private native native_setShuffleMode(BZ)V
.end method

.method private native native_setVideoDelay(I)V
.end method

.method private native native_setVolume(I)V
.end method

.method private native native_setiPodPreferences(BB)V
.end method

.method private native native_start()V
.end method

.method private native native_startPlayAudio()Z
.end method

.method private native native_stop()V
.end method

.method private native native_stopPlayAudio()Z
.end method

.method private releaseCBM()Z
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/autochips/ipod/IPodSDK;->mCBM:Landroid/cbm/CBManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 233
    invoke-virtual {v0, v1}, Landroid/cbm/CBManager;->setOnActionListener(Landroid/cbm/CBManager$OnActionListener;)V

    .line 234
    iget-object v0, p0, Lcom/autochips/ipod/IPodSDK;->mCBM:Landroid/cbm/CBManager;

    invoke-virtual {v0}, Landroid/cbm/CBManager;->release()V

    .line 235
    iput-object v1, p0, Lcom/autochips/ipod/IPodSDK;->mCBM:Landroid/cbm/CBManager;

    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public deinit()Z
    .locals 1

    .line 1756
    invoke-direct {p0}, Lcom/autochips/ipod/IPodSDK;->releaseCBM()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1757
    :cond_0
    invoke-direct {p0}, Lcom/autochips/ipod/IPodSDK;->native_deinit()Z

    move-result v0

    return v0
.end method

.method public enterRemoteUIMode()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/autochips/ipod/IPodSDK$IPodException;
        }
    .end annotation

    .line 1870
    invoke-direct {p0}, Lcom/autochips/ipod/IPodSDK;->native_enterRemoteUIMode()V

    return-void
.end method

.method public exitRemoteUIMode()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/autochips/ipod/IPodSDK$IPodException;
        }
    .end annotation

    .line 1881
    invoke-direct {p0}, Lcom/autochips/ipod/IPodSDK;->native_exitRemoteUIMode()V

    return-void
.end method

.method public getArtWorkFormats(Lcom/autochips/ipod/IPodSDK$ARTWORK_FMTS_INFO_T;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/autochips/ipod/IPodSDK$IPodException;
        }
    .end annotation

    .line 2510
    invoke-direct {p0, p1}, Lcom/autochips/ipod/IPodSDK;->native_getArtWorkFormats(Lcom/autochips/ipod/IPodSDK$ARTWORK_FMTS_INFO_T;)V

    return-void
.end method

.method public getAudioDSP()Z
    .locals 1

    .line 1794
    invoke-direct {p0}, Lcom/autochips/ipod/IPodSDK;->native_getAudioDSP()Z

    move-result v0

    return v0
.end method

.method public getAuthStatus()Lcom/autochips/ipod/IPodSDK$AUTH_RESULT_T;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/autochips/ipod/IPodSDK$IPodException;
        }
    .end annotation

    .line 2521
    invoke-direct {p0}, Lcom/autochips/ipod/IPodSDK;->native_getAuthStatus()Lcom/autochips/ipod/IPodSDK$AUTH_RESULT_T;

    move-result-object v0

    return-object v0
.end method

.method public getCurEQProfileIndex()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/autochips/ipod/IPodSDK$IPodException;
        }
    .end annotation

    .line 1951
    invoke-direct {p0}, Lcom/autochips/ipod/IPodSDK;->native_getCurEQProfileIndex()I

    move-result v0

    return v0
.end method

.method public getCurPlayingTrackChapterInfo()Lcom/autochips/ipod/IPodSDK$CHAPTER_INFO_T;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/autochips/ipod/IPodSDK$IPodException;
        }
    .end annotation

    .line 2321
    invoke-direct {p0}, Lcom/autochips/ipod/IPodSDK;->native_getCurPlayingTrackChapterInfo()Lcom/autochips/ipod/IPodSDK$CHAPTER_INFO_T;

    move-result-object v0

    return-object v0
.end method

.method public getCurPlayingTrackIdx()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/autochips/ipod/IPodSDK$IPodException;
        }
    .end annotation

    .line 2210
    invoke-direct {p0}, Lcom/autochips/ipod/IPodSDK;->native_getCurPlayingTrackIdx()I

    move-result v0

    return v0
.end method

.method public getDbTrackInfo(IIB)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/autochips/ipod/IPodSDK$IPodException;
        }
    .end annotation

    .line 2452
    invoke-direct {p0, p1, p2, p3}, Lcom/autochips/ipod/IPodSDK;->native_getDbTrackInfo(IIB)I

    move-result p1

    return p1
.end method

.method public getIndexedPlayingTrackAlbum(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/autochips/ipod/IPodSDK$IPodException;
        }
    .end annotation

    .line 2275
    invoke-direct {p0, p1}, Lcom/autochips/ipod/IPodSDK;->native_getIndexedPlayingTrackAlbum(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getIndexedPlayingTrackArtist(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/autochips/ipod/IPodSDK$IPodException;
        }
    .end annotation

    .line 2263
    invoke-direct {p0, p1}, Lcom/autochips/ipod/IPodSDK;->native_getIndexedPlayingTrackArtist(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getIndexedPlayingTrackInfo(IILcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;)Lcom/autochips/ipod/IPodSDK$PlayingTrackInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/autochips/ipod/IPodSDK$IPodException;
        }
    .end annotation

    .line 2235
    iget p3, p3, Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;->value:I

    invoke-direct {p0, p1, p2, p3}, Lcom/autochips/ipod/IPodSDK;->native_getIndexedPlayingTrackInfo(III)Lcom/autochips/ipod/IPodSDK$PlayingTrackInfo;

    move-result-object p1

    return-object p1
.end method

.method public getIndexedPlayingTrackTitle(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/autochips/ipod/IPodSDK$IPodException;
        }
    .end annotation

    .line 2251
    invoke-direct {p0, p1}, Lcom/autochips/ipod/IPodSDK;->native_getIndexedPlayingTrackTitle(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getNumEQProfile()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/autochips/ipod/IPodSDK$IPodException;
        }
    .end annotation

    .line 1942
    invoke-direct {p0}, Lcom/autochips/ipod/IPodSDK;->native_getNumEQProfile()I

    move-result v0

    return v0
.end method

.method public getNumPlayingTracks()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/autochips/ipod/IPodSDK$IPodException;
        }
    .end annotation

    .line 2879
    invoke-direct {p0}, Lcom/autochips/ipod/IPodSDK;->native_getNumPlayingTracks()I

    move-result v0

    return v0
.end method

.method public getNumberCategorizedDBRecords(B)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/autochips/ipod/IPodSDK$IPodException;
        }
    .end annotation

    .line 2152
    invoke-direct {p0, p1}, Lcom/autochips/ipod/IPodSDK;->native_getNumberCategorizedDBRecords(B)I

    move-result p1

    return p1
.end method

.method public getPlayStatus()Lcom/autochips/ipod/IPodSDK$PLAY_ST_INFO_T;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/autochips/ipod/IPodSDK$IPodException;
        }
    .end annotation

    .line 2463
    invoke-direct {p0}, Lcom/autochips/ipod/IPodSDK;->native_getPlayStatus()Lcom/autochips/ipod/IPodSDK$PLAY_ST_INFO_T;

    move-result-object v0

    return-object v0
.end method

.method public getPlayStatus_Ex()Lcom/autochips/ipod/IPodSDK$PLAY_ST_INFO_EX_T;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/autochips/ipod/IPodSDK$IPodException;
        }
    .end annotation

    .line 2474
    invoke-direct {p0}, Lcom/autochips/ipod/IPodSDK;->native_getPlayStatus_Ex()Lcom/autochips/ipod/IPodSDK$PLAY_ST_INFO_EX_T;

    move-result-object v0

    return-object v0
.end method

.method public getRepeatSetting()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/autochips/ipod/IPodSDK$IPodException;
        }
    .end annotation

    .line 2195
    invoke-direct {p0}, Lcom/autochips/ipod/IPodSDK;->native_getRepeatSetting()B

    move-result v0

    return v0
.end method

.method public getShuffleSetting()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/autochips/ipod/IPodSDK$IPodException;
        }
    .end annotation

    .line 2184
    invoke-direct {p0}, Lcom/autochips/ipod/IPodSDK;->native_getShuffleSetting()B

    move-result v0

    return v0
.end method

.method public getTrackArtWorkData(ISILcom/autochips/ipod/IPodSDK$ARTWORK_DATA_T;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/autochips/ipod/IPodSDK$IPodException;
        }
    .end annotation

    .line 2497
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/autochips/ipod/IPodSDK;->native_getTrackArtWorkData(ISILcom/autochips/ipod/IPodSDK$ARTWORK_DATA_T;)V

    return-void
.end method

.method public getTrackArtWorkTimes(ISSSLcom/autochips/ipod/IPodSDK$ARTWORK_TIMES_T;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/autochips/ipod/IPodSDK$IPodException;
        }
    .end annotation

    .line 2863
    invoke-direct/range {p0 .. p5}, Lcom/autochips/ipod/IPodSDK;->native_getTrackArtWorkTimes(ISSSLcom/autochips/ipod/IPodSDK$ARTWORK_TIMES_T;)V

    return-void
.end method

.method public getVolume()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/autochips/ipod/IPodSDK$IPodException;
        }
    .end annotation

    .line 1840
    invoke-direct {p0}, Lcom/autochips/ipod/IPodSDK;->native_getVolume()I

    move-result v0

    return v0
.end method

.method public getiPodOptions()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/autochips/ipod/IPodSDK$IPodException;
        }
    .end annotation

    .line 2936
    invoke-direct {p0}, Lcom/autochips/ipod/IPodSDK;->native_getiPodOptions()J

    move-result-wide v0

    return-wide v0
.end method

.method public getiPodOptionsForLingo(B)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/autochips/ipod/IPodSDK$IPodException;
        }
    .end annotation

    .line 2920
    invoke-direct {p0, p1}, Lcom/autochips/ipod/IPodSDK;->native_getiPodOptionsForLingo(B)J

    move-result-wide v0

    return-wide v0
.end method

.method public getiPodPreferences(B)Lcom/autochips/ipod/IPodSDK$PREFERENCES_T;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/autochips/ipod/IPodSDK$IPodException;
        }
    .end annotation

    .line 2627
    invoke-direct {p0, p1}, Lcom/autochips/ipod/IPodSDK;->native_getiPodPreferences(B)Lcom/autochips/ipod/IPodSDK$PREFERENCES_T;

    move-result-object p1

    return-object p1
.end method

.method public init()Z
    .locals 1

    .line 1742
    invoke-direct {p0}, Lcom/autochips/ipod/IPodSDK;->initCBM()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1743
    :cond_0
    invoke-direct {p0}, Lcom/autochips/ipod/IPodSDK;->native_init()Z

    move-result v0

    return v0
.end method

.method public playControl(B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/autochips/ipod/IPodSDK$IPodException;
        }
    .end annotation

    .line 2614
    invoke-direct {p0, p1}, Lcom/autochips/ipod/IPodSDK;->native_playControl(B)V

    return-void
.end method

.method public playCurrentSelection(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/autochips/ipod/IPodSDK$IPodException;
        }
    .end annotation

    .line 1988
    invoke-direct {p0, p1}, Lcom/autochips/ipod/IPodSDK;->native_playCurrentSelection(I)V

    return-void
.end method

.method public releaseAudioDSP()Z
    .locals 1

    .line 1806
    invoke-direct {p0}, Lcom/autochips/ipod/IPodSDK;->native_releaseAudioDSP()Z

    move-result v0

    return v0
.end method

.method public requestLingoProtocolVersion(B)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/autochips/ipod/IPodSDK$IPodException;
        }
    .end annotation

    .line 2310
    invoke-direct {p0, p1}, Lcom/autochips/ipod/IPodSDK;->native_requestLingoProtocolVersion(B)I

    move-result p1

    return p1
.end method

.method public resetDBSelection()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/autochips/ipod/IPodSDK$IPodException;
        }
    .end annotation

    .line 1900
    invoke-direct {p0}, Lcom/autochips/ipod/IPodSDK;->native_resetDBSelection()V

    return-void
.end method

.method public resetDBSelectionHierarchy(B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/autochips/ipod/IPodSDK$IPodException;
        }
    .end annotation

    .line 2895
    invoke-direct {p0, p1}, Lcom/autochips/ipod/IPodSDK;->native_resetDBSelectionHierarchy(B)V

    return-void
.end method

.method public retrieveCategorizedDBRecords(BII)Lcom/autochips/ipod/IPodSDK$DB_RECITEM_T;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/autochips/ipod/IPodSDK$IPodException;
        }
    .end annotation

    .line 2173
    invoke-direct {p0, p1, p2, p3}, Lcom/autochips/ipod/IPodSDK;->native_retrieveCategorizedDBRecords(BII)Lcom/autochips/ipod/IPodSDK$DB_RECITEM_T;

    move-result-object p1

    return-object p1
.end method

.method public seek(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/autochips/ipod/IPodSDK$IPodException;
        }
    .end annotation

    .line 1859
    invoke-direct {p0, p1}, Lcom/autochips/ipod/IPodSDK;->native_seek(I)V

    return-void
.end method

.method public selectDBRecord(BI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/autochips/ipod/IPodSDK$IPodException;
        }
    .end annotation

    .line 2024
    invoke-direct {p0, p1, p2}, Lcom/autochips/ipod/IPodSDK;->native_selectDBRecord(BI)V

    return-void
.end method

.method public selectSortDBRecord(BIB)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/autochips/ipod/IPodSDK$IPodException;
        }
    .end annotation

    .line 2083
    invoke-direct {p0, p1, p2, p3}, Lcom/autochips/ipod/IPodSDK;->native_selectSortDBRecord(BIB)V

    return-void
.end method

.method public setADecSinkInfo(Lcom/autochips/ipod/IPodSDK$SWI_SINK_TYPE_T;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/autochips/ipod/IPodSDK$IPodException;
        }
    .end annotation

    .line 1818
    iget p1, p1, Lcom/autochips/ipod/IPodSDK$SWI_SINK_TYPE_T;->value:I

    invoke-direct {p0, p1}, Lcom/autochips/ipod/IPodSDK;->native_setADecSinkInfo(I)Z

    move-result p1

    return p1
.end method

.method public setCurrentPlayingTrack(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/autochips/ipod/IPodSDK$IPodException;
        }
    .end annotation

    .line 2008
    invoke-direct {p0, p1}, Lcom/autochips/ipod/IPodSDK;->native_setCurrentPlayingTrack(I)V

    return-void
.end method

.method public setEventCallback(Lcom/autochips/ipod/IPodSDK$EventCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/autochips/ipod/IPodSDK$IPodException;
        }
    .end annotation

    .line 2948
    invoke-direct {p0, p1}, Lcom/autochips/ipod/IPodSDK;->native_setEventCallback(Lcom/autochips/ipod/IPodSDK$EventCallback;)V

    return-void
.end method

.method public setPlayStatusChangeNotification(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/autochips/ipod/IPodSDK$IPodException;
        }
    .end annotation

    .line 2834
    invoke-direct {p0, p1, p2}, Lcom/autochips/ipod/IPodSDK;->native_setPlayStatusChangeNotification(II)V

    return-void
.end method

.method public setRemoteEvent(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/autochips/ipod/IPodSDK$IPodException;
        }
    .end annotation

    .line 2733
    invoke-direct {p0, p1}, Lcom/autochips/ipod/IPodSDK;->native_setRemoteEvent(I)V

    return-void
.end method

.method public setRepeatMode(BZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/autochips/ipod/IPodSDK$IPodException;
        }
    .end annotation

    .line 1930
    invoke-direct {p0, p1, p2}, Lcom/autochips/ipod/IPodSDK;->native_setRepeatMode(BZ)V

    return-void
.end method

.method public setShuffleMode(BZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/autochips/ipod/IPodSDK$IPodException;
        }
    .end annotation

    .line 1980
    invoke-direct {p0, p1, p2}, Lcom/autochips/ipod/IPodSDK;->native_setShuffleMode(BZ)V

    return-void
.end method

.method public setVideoDelay(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/autochips/ipod/IPodSDK$IPodException;
        }
    .end annotation

    .line 2906
    invoke-direct {p0, p1}, Lcom/autochips/ipod/IPodSDK;->native_setVideoDelay(I)V

    return-void
.end method

.method public setVolume(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/autochips/ipod/IPodSDK$IPodException;
        }
    .end annotation

    .line 1829
    invoke-direct {p0, p1}, Lcom/autochips/ipod/IPodSDK;->native_setVolume(I)V

    return-void
.end method

.method public setiPodPreferences(BB)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/autochips/ipod/IPodSDK$IPodException;
        }
    .end annotation

    .line 2641
    invoke-direct {p0, p1, p2}, Lcom/autochips/ipod/IPodSDK;->native_setiPodPreferences(BB)V

    return-void
.end method

.method public startPlayAudio()Z
    .locals 1

    .line 1769
    invoke-direct {p0}, Lcom/autochips/ipod/IPodSDK;->native_startPlayAudio()Z

    move-result v0

    return v0
.end method

.method public stopPlayAudio()Z
    .locals 1

    .line 1781
    invoke-direct {p0}, Lcom/autochips/ipod/IPodSDK;->native_stopPlayAudio()Z

    move-result v0

    return v0
.end method
