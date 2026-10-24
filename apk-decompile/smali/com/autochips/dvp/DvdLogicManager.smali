.class public Lcom/autochips/dvp/DvdLogicManager;
.super Lcom/autochips/dvp/DvdManagerClient;
.source "DvdLogicManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autochips/dvp/DvdLogicManager$TrackInfo;,
        Lcom/autochips/dvp/DvdLogicManager$PlayListInfo;,
        Lcom/autochips/dvp/DvdLogicManager$PosInfo;,
        Lcom/autochips/dvp/DvdLogicManager$FileInfo;,
        Lcom/autochips/dvp/DvdLogicManager$DVP_CMD;,
        Lcom/autochips/dvp/DvdLogicManager$FileItemInfo;,
        Lcom/autochips/dvp/DvdLogicManager$HandleDVPCmdThread;,
        Lcom/autochips/dvp/DvdLogicManager$OnCBMListener;
    }
.end annotation


# static fields
.field private static final DEBUG_DVP:Z = true

.field private static final DVP_CMD_ACK:I = 0x0

.field private static final DVP_CMD_ACK_ARG2_FAIL:I = 0x0

.field private static final DVP_CMD_ACK_ARG2_OK:I = 0x1

.field private static final DVP_CMD_ACK_ARG_CREATE_LIST:I = 0x20

.field private static final DVP_CMD_ACK_ARG_DIGEST:I = 0x69

.field private static final DVP_CMD_ACK_ARG_EJECT:I = 0x2

.field private static final DVP_CMD_ACK_ARG_FL_CLICK_ITEM:I = 0x22

.field private static final DVP_CMD_ACK_ARG_FL_UP_LEVEL:I = 0x23

.field private static final DVP_CMD_ACK_ARG_FUNC_MENU:I = 0x66

.field private static final DVP_CMD_ACK_ARG_NEXT:I = 0x46

.field private static final DVP_CMD_ACK_ARG_PBC_PAUSE:I = 0x41

.field private static final DVP_CMD_ACK_ARG_PBC_PLAY:I = 0x40

.field private static final DVP_CMD_ACK_ARG_PBC_SEEK:I = 0x47

.field private static final DVP_CMD_ACK_ARG_PBC_STOP:I = 0x42

.field private static final DVP_CMD_ACK_ARG_PREV:I = 0x45

.field private static final DVP_CMD_ACK_ARG_RIP_STOP:I = 0x82

.field private static final DVP_CMD_ACK_ARG_TP_COORDINATE:I = 0x80

.field private static final DVP_CMD_AUD_SAMPLE_RATE:I = 0xa4

.field private static final DVP_CMD_CHECK_PASSWORD:I = 0x68

.field private static final DVP_CMD_DISC_INSERT:I = 0x6

.field private static final DVP_CMD_DISC_INSERT_AGR_HAVE_DISC:I = 0x1

.field private static final DVP_CMD_DISC_TYPE:I = 0x4

.field private static final DVP_CMD_EVT_DVP_SAVE_ITEM_ADDRESS:I = 0x71

.field private static final DVP_CMD_FL_CHG_DIR:I = 0x33

.field private static final DVP_CMD_FL_FILE_PATH:I = 0x31

.field private static final DVP_CMD_FL_FILE_TYPE_COUNT:I = 0x38

.field private static final DVP_CMD_FL_ITEM:I = 0x32

.field private static final DVP_CMD_FL_LIST_INFO:I = 0x37

.field private static final DVP_CMD_FL_MENU:I = 0x35

.field private static final DVP_CMD_FL_TOTAL_COUNT:I = 0x30

.field private static final DVP_CMD_FL_TYPE_COUNT_IN_DISC:I = 0x39

.field private static final DVP_CMD_LMCLICK_ITEM_TYPE:I = 0x72

.field private static final DVP_CMD_MPS_ERROR:I = 0x67

.field private static final DVP_CMD_MPS_ERROR_TYPE_A_CODEC_UNSUP:I = 0x1

.field private static final DVP_CMD_MPS_ERROR_TYPE_DRM_NOT_ALLOWED:I = 0x9

.field private static final DVP_CMD_MPS_ERROR_TYPE_NO_AUDIO:I = 0x4

.field private static final DVP_CMD_MPS_ERROR_TYPE_NO_VIDEO:I = 0x5

.field private static final DVP_CMD_MPS_ERROR_TYPE_PROFILE_UNSUP:I = 0x8

.field private static final DVP_CMD_MPS_ERROR_TYPE_V_CODEC_UNSUP:I = 0x2

.field private static final DVP_CMD_MPS_ERROR_TYPE_V_FPS_UNSUP:I = 0x6

.field private static final DVP_CMD_MPS_ERROR_TYPE_V_GMC_UNSUP:I = 0x7

.field private static final DVP_CMD_MPS_ERROR_TYPE_V_RES_UNSUP:I = 0x3

.field private static final DVP_CMD_PBC_ADO_ID3_PIC:I = 0x52

.field private static final DVP_CMD_PBC_ADO_ID3_TXT:I = 0x51

.field private static final DVP_CMD_PBC_ADO_ID3_TXT_ARG_ALBUM:I = 0x1

.field private static final DVP_CMD_PBC_ADO_ID3_TXT_ARG_ARTIST:I = 0x2

.field private static final DVP_CMD_PBC_ADO_ID3_TXT_ARG_GENRE:I = 0x3

.field private static final DVP_CMD_PBC_ADO_ID3_TXT_ARG_TITLE:I = 0x0

.field private static final DVP_CMD_PBC_ADO_ID3_TXT_ARG_YEAR:I = 0x4

.field private static final DVP_CMD_PBC_ADO_LYRICS:I = 0x53

.field private static final DVP_CMD_PBC_ANGLE:I = 0x63

.field private static final DVP_CMD_PBC_AUDIO:I = 0x61

.field private static final DVP_CMD_PBC_CHANNEL:I = 0x66

.field private static final DVP_CMD_PBC_CUR_TIME:I = 0x59

.field private static final DVP_CMD_PBC_EQ:I = 0x54

.field private static final DVP_CMD_PBC_FILE_PATH:I = 0x65

.field private static final DVP_CMD_PBC_FIRST_THUMBNAIL_IDX:I = 0x69

.field private static final DVP_CMD_PBC_JPG_RESOLUTION:I = 0x56

.field private static final DVP_CMD_PBC_JPG_ROTATE_STATE:I = 0x55

.field private static final DVP_CMD_PBC_PBC:I = 0x64

.field private static final DVP_CMD_PBC_PLAYING_AUDIO_IDX:I = 0x73

.field private static final DVP_CMD_PBC_PLAYING_IDX:I = 0x5b

.field private static final DVP_CMD_PBC_PLAY_STATE:I = 0x57

.field private static final DVP_CMD_PBC_REPEAT_MODE:I = 0x5c

.field private static final DVP_CMD_PBC_REPEAT_MODE_ARG_REPEAT_ALL:I = 0x3

.field private static final DVP_CMD_PBC_REPEAT_MODE_ARG_REPEAT_CHAPTER:I = 0x7

.field private static final DVP_CMD_PBC_REPEAT_MODE_ARG_REPEAT_FOLDER:I = 0x15

.field private static final DVP_CMD_PBC_REPEAT_MODE_ARG_REPEAT_NONE:I = 0x2

.field private static final DVP_CMD_PBC_REPEAT_MODE_ARG_REPEAT_TITLE:I = 0x6

.field private static final DVP_CMD_PBC_REPEAT_MODE_ARG_REPEAT_TRACK:I = 0x4

.field private static final DVP_CMD_PBC_SHUFFLE_MODE:I = 0x5d

.field private static final DVP_CMD_PBC_SHUFFLE_MODE_ARG_SHUFFLE_PLAY:I = 0x10

.field private static final DVP_CMD_PBC_SUBTITLE:I = 0x62

.field private static final DVP_CMD_PBC_TITLE_CHAPTER:I = 0x5e

.field private static final DVP_CMD_PBC_TITLE_CHAPTER_NUM:I = 0x5f

.field private static final DVP_CMD_PBC_TOTAL_TIME:I = 0x5a

.field private static final DVP_CMD_PBC_TRACK_NUM:I = 0x58

.field private static final DVP_CMD_PBC_ZOOM:I = 0x6a

.field private static final DVP_CMD_PT2AP_1ST_PIC_START:I = 0xc1

.field private static final DVP_CMD_RIP_CUR_TRACK_OK:I = 0xa3

.field private static final DVP_CMD_RIP_DATA_READY:I = 0xa1

.field private static final DVP_CMD_RIP_ERROR:I = 0xa5

.field private static final DVP_CMD_RIP_PROGRESS:I = 0xa2

.field private static final DVP_CMD_RIP_TRK_LBA_LEN:I = 0xa0

.field private static final DVP_CMD_STATE:I = 0x2

.field private static final DVP_CMD_STATE_AGR_DISC_IDENTIFIED:I = 0x6

.field private static final DVP_CMD_STATE_AGR_DISC_INITED:I = 0x7

.field private static final DVP_CMD_STATE_AGR_LOADING_DISC:I = 0x0

.field private static final DVP_CMD_STATE_AGR_NO_DISC:I = 0x4

.field private static final DVP_CMD_STATE_AGR_TRAY_CLOSING:I = 0x2

.field private static final DVP_CMD_STATE_AGR_TRAY_ERROR:I = 0x3

.field private static final DVP_CMD_STATE_AGR_TRAY_OPENING:I = 0x1

.field private static final DVP_CMD_STATE_AGR_UNKNOWN_DISC:I = 0x5

.field private static final DVP_CMD_TRAY_STATUS:I = 0x3

.field private static final DVP_CMD_TRAY_STATUS_ARG_ERROR:I = 0x3

.field private static final DVP_CMD_TRAY_STATUS_ARG_IN:I = 0x1

.field private static final DVP_CMD_TRAY_STATUS_ARG_OUT:I = 0x0

.field private static final FTYPE_3GP:I = 0x15

.field private static final FTYPE_AAC:I = 0xc

.field private static final FTYPE_AC3:I = 0x0

.field private static final FTYPE_ASF:I = 0x8

.field private static final FTYPE_AVI:I = 0x12

.field private static final FTYPE_CDA:I = 0xf

.field private static final FTYPE_DAT:I = 0xa

.field private static final FTYPE_DIR:I = 0x10

.field private static final FTYPE_DSD:I = 0xd

.field private static final FTYPE_DST:I = 0x17

.field private static final FTYPE_DTS:I = 0x11

.field private static final FTYPE_JPG:I = 0x5

.field private static final FTYPE_M4A:I = 0x1d

.field private static final FTYPE_MKV:I = 0x1c

.field private static final FTYPE_MLP:I = 0x6

.field private static final FTYPE_MP1:I = 0x3

.field private static final FTYPE_MP2:I = 0x2

.field private static final FTYPE_MP3:I = 0x1

.field private static final FTYPE_MP4:I = 0x14

.field private static final FTYPE_MPG:I = 0x9

.field private static final FTYPE_OGG:I = 0x18

.field private static final FTYPE_OMA:I = 0x1e

.field private static final FTYPE_PDIR:I = 0x20

.field private static final FTYPE_RA:I = 0x1f

.field private static final FTYPE_RCV:I = 0x1a

.field private static final FTYPE_TS1:I = 0x13

.field private static final FTYPE_TS2:I = 0x16

.field private static final FTYPE_TS4:I = 0x19

.field private static final FTYPE_UNKNOWN:I = 0xff

.field private static final FTYPE_VC1:I = 0x1b

.field private static final FTYPE_VOB:I = 0xb

.field private static final FTYPE_WMA:I = 0x7

.field private static final MASK2BYTES:I = 0xc0

.field private static final MASK3BYTES:I = 0xe0

.field private static final MASKBITS:I = 0x3f

.field private static final MASKBYTE:I = 0x80

.field private static final TAG:Ljava/lang/String; = "DvdLogicManager"

.field private static fgCbmPause:Z = false

.field private static fgDvdLoadOK:Z = false

.field private static iType:I

.field private static mCmd:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/autochips/dvp/DvdLogicManager$DVP_CMD;",
            ">;"
        }
    .end annotation
.end field

.field private static mLogicManager:Lcom/autochips/dvp/DvdLogicManager;

.field private static manager:Landroid/cbm/CBManager;

.field private static needhandlecmd:Z

.field private static sFileName:Ljava/lang/String;


# instance fields
.field private VcdTrack:[I

.field private ddplaylist:[I

.field private dvdPlayHandler:Landroid/os/Handler;

.field private dvdangle:[I

.field private dvdaudio:[I

.field private dvdsubtilte:[I

.field private dvpListHandler:Landroid/os/Handler;

.field private dvpServicerHandler:Landroid/os/Handler;

.field private dvphomeHandler:Landroid/os/Handler;

.field private fgExitGetList:Z

.field private mCbmNoLoadOkPause:Z

.field private mChapterCount:I

.field private mCurrentChapter:I

.field private mCurrentDirIndex:I

.field private mCurrentTime:I

.field private mCurrentTitle:I

.field private mDDPlayType:I

.field private mDestination:I

.field private mDeviceEnable:Z

.field private mDiscType:I

.field private mDiscTypeCnt:I

.field private mDiscTypeNum:I

.field private mFileCnt:I

.field private mFrontAudioOpen:Z

.field private mFrontDisplayOpen:Z

.field private mId3InfoAlbum:Ljava/lang/String;

.field private mId3InfoArtist:Ljava/lang/String;

.field private mId3InfoGenre:Ljava/lang/String;

.field private mId3InfoPicData:[B

.field private mId3InfoTitle:Ljava/lang/String;

.field private mId3InfoYear:Ljava/lang/String;

.field private mInited:Z

.field private mInnerOp:I

.field private mLMClickItemType:I

.field private mLoadedFlag:I

.field private mOnCBMListener:Lcom/autochips/dvp/DvdLogicManager$OnCBMListener;

.field private mPicCdPlayState:I

.field private mPlayedFileName:Ljava/lang/String;

.field private mPreviewPageCount:I

.field private mPreviewPageIndex:I

.field private mRearAudioOpen:Z

.field private mRearDisplayOpen:Z

.field private mRepeatMode:I

.field private mRestoredPath:Ljava/lang/String;

.field private mRipProgress:I

.field private mSelecteditem:I

.field private mStopBySrc:I

.field private mSurface:Landroid/view/Surface;

.field private mSyncObj:Ljava/lang/Object;

.field private mTitleCnt:I

.field private mTotalTime:I

.field private mVcdChannel:I

.field private mVcdPBC:I

.field private mWaitSeek:Z

.field private mXResolution:I

.field private mYResolution:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 79
    new-instance v0, Lcom/autochips/dvp/DvdLogicManager;

    invoke-direct {v0}, Lcom/autochips/dvp/DvdLogicManager;-><init>()V

    sput-object v0, Lcom/autochips/dvp/DvdLogicManager;->mLogicManager:Lcom/autochips/dvp/DvdLogicManager;

    const/4 v0, 0x0

    .line 2237
    sput-boolean v0, Lcom/autochips/dvp/DvdLogicManager;->needhandlecmd:Z

    .line 2238
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/autochips/dvp/DvdLogicManager;->mCmd:Ljava/util/Vector;

    const-string v0, "dvpjninormal"

    .line 3954
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "DvdLogicManager"

    const-string v1, "System.load(\"libdvpjninormal.so\");"

    .line 3955
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 140
    invoke-direct {p0}, Lcom/autochips/dvp/DvdManagerClient;-><init>()V

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mSyncObj:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 74
    iput v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mSelecteditem:I

    .line 81
    iput v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mFileCnt:I

    const/4 v1, 0x0

    .line 82
    iput-object v1, p0, Lcom/autochips/dvp/DvdLogicManager;->dvpServicerHandler:Landroid/os/Handler;

    .line 83
    iput-object v1, p0, Lcom/autochips/dvp/DvdLogicManager;->dvphomeHandler:Landroid/os/Handler;

    .line 84
    iput-object v1, p0, Lcom/autochips/dvp/DvdLogicManager;->dvpListHandler:Landroid/os/Handler;

    .line 85
    iput-object v1, p0, Lcom/autochips/dvp/DvdLogicManager;->dvdPlayHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 87
    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/autochips/dvp/DvdLogicManager;->dvdaudio:[I

    new-array v3, v2, [I

    .line 88
    fill-array-data v3, :array_1

    iput-object v3, p0, Lcom/autochips/dvp/DvdLogicManager;->dvdsubtilte:[I

    new-array v3, v2, [I

    .line 89
    fill-array-data v3, :array_2

    iput-object v3, p0, Lcom/autochips/dvp/DvdLogicManager;->dvdangle:[I

    new-array v3, v2, [I

    .line 90
    fill-array-data v3, :array_3

    iput-object v3, p0, Lcom/autochips/dvp/DvdLogicManager;->VcdTrack:[I

    new-array v2, v2, [I

    .line 91
    fill-array-data v2, :array_4

    iput-object v2, p0, Lcom/autochips/dvp/DvdLogicManager;->ddplaylist:[I

    .line 92
    iput v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mVcdChannel:I

    const/4 v2, 0x1

    .line 93
    iput v2, p0, Lcom/autochips/dvp/DvdLogicManager;->mVcdPBC:I

    .line 94
    iput v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mRepeatMode:I

    .line 95
    iput v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mCurrentTitle:I

    .line 96
    iput v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mCurrentChapter:I

    .line 97
    iput v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mTitleCnt:I

    .line 98
    iput v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mChapterCount:I

    .line 99
    iput v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mCurrentTime:I

    .line 100
    iput v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mTotalTime:I

    const-string v2, "\\"

    .line 101
    iput-object v2, p0, Lcom/autochips/dvp/DvdLogicManager;->mRestoredPath:Ljava/lang/String;

    const-string v2, ""

    .line 102
    iput-object v2, p0, Lcom/autochips/dvp/DvdLogicManager;->mPlayedFileName:Ljava/lang/String;

    .line 103
    iput v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mLoadedFlag:I

    .line 104
    iput v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mDiscTypeNum:I

    .line 105
    iput v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mDiscTypeCnt:I

    .line 106
    iput-object v2, p0, Lcom/autochips/dvp/DvdLogicManager;->mId3InfoTitle:Ljava/lang/String;

    .line 107
    iput-object v2, p0, Lcom/autochips/dvp/DvdLogicManager;->mId3InfoAlbum:Ljava/lang/String;

    .line 108
    iput-object v2, p0, Lcom/autochips/dvp/DvdLogicManager;->mId3InfoArtist:Ljava/lang/String;

    .line 109
    iput-object v2, p0, Lcom/autochips/dvp/DvdLogicManager;->mId3InfoGenre:Ljava/lang/String;

    .line 110
    iput-object v2, p0, Lcom/autochips/dvp/DvdLogicManager;->mId3InfoYear:Ljava/lang/String;

    .line 111
    iput-object v1, p0, Lcom/autochips/dvp/DvdLogicManager;->mId3InfoPicData:[B

    .line 112
    iput v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mXResolution:I

    .line 113
    iput v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mYResolution:I

    .line 114
    iput v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mRipProgress:I

    .line 115
    iput v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mCurrentDirIndex:I

    .line 116
    iput v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mPicCdPlayState:I

    .line 117
    iput v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mPreviewPageIndex:I

    .line 118
    iput v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mPreviewPageCount:I

    .line 119
    iput v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mLMClickItemType:I

    .line 120
    iput v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mDDPlayType:I

    .line 121
    iput-boolean v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mFrontAudioOpen:Z

    .line 122
    iput-boolean v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mRearAudioOpen:Z

    .line 123
    iput-boolean v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mFrontDisplayOpen:Z

    .line 124
    iput-boolean v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mRearDisplayOpen:Z

    .line 126
    iput-boolean v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mInited:Z

    .line 127
    iput-boolean v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mDeviceEnable:Z

    .line 128
    iput-boolean v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mCbmNoLoadOkPause:Z

    .line 129
    iput-boolean v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mWaitSeek:Z

    .line 130
    iput v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mStopBySrc:I

    .line 132
    iput v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mDestination:I

    .line 133
    iput v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mInnerOp:I

    .line 2043
    iput-object v1, p0, Lcom/autochips/dvp/DvdLogicManager;->mOnCBMListener:Lcom/autochips/dvp/DvdLogicManager$OnCBMListener;

    const-string v0, "DvdLogicManager"

    const-string v1, "DvdLogicManager()"

    .line 141
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$100(Lcom/autochips/dvp/DvdLogicManager;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/autochips/dvp/DvdLogicManager;->onCbmPause()V

    return-void
.end method

.method static synthetic access$1000(Lcom/autochips/dvp/DvdLogicManager;III)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/autochips/dvp/DvdLogicManager;->notifyActivity(III)V

    return-void
.end method

.method static synthetic access$200(Lcom/autochips/dvp/DvdLogicManager;)Lcom/autochips/dvp/DvdLogicManager$OnCBMListener;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/autochips/dvp/DvdLogicManager;->mOnCBMListener:Lcom/autochips/dvp/DvdLogicManager$OnCBMListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/autochips/dvp/DvdLogicManager;)Landroid/os/Handler;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/autochips/dvp/DvdLogicManager;->dvdPlayHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/autochips/dvp/DvdLogicManager;Landroid/os/Handler;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/autochips/dvp/DvdLogicManager;)Landroid/os/Handler;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/autochips/dvp/DvdLogicManager;->dvpListHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/autochips/dvp/DvdLogicManager;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/autochips/dvp/DvdLogicManager;->mStopBySrc:I

    return p0
.end method

.method static synthetic access$602(Lcom/autochips/dvp/DvdLogicManager;I)I
    .locals 0

    .line 35
    iput p1, p0, Lcom/autochips/dvp/DvdLogicManager;->mStopBySrc:I

    return p1
.end method

.method static synthetic access$700(Lcom/autochips/dvp/DvdLogicManager;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/autochips/dvp/DvdLogicManager;->onCbmResume()V

    return-void
.end method

.method static synthetic access$800()Z
    .locals 1

    .line 35
    sget-boolean v0, Lcom/autochips/dvp/DvdLogicManager;->needhandlecmd:Z

    return v0
.end method

.method static synthetic access$802(Z)Z
    .locals 0

    .line 35
    sput-boolean p0, Lcom/autochips/dvp/DvdLogicManager;->needhandlecmd:Z

    return p0
.end method

.method static synthetic access$900()Ljava/util/Vector;
    .locals 1

    .line 35
    sget-object v0, Lcom/autochips/dvp/DvdLogicManager;->mCmd:Ljava/util/Vector;

    return-object v0
.end method

.method private static addToMsgQ(III)I
    .locals 1

    .line 2322
    new-instance v0, Lcom/autochips/dvp/DvdLogicManager$DVP_CMD;

    invoke-direct {v0, p0, p1, p2}, Lcom/autochips/dvp/DvdLogicManager$DVP_CMD;-><init>(III)V

    .line 2323
    sget-object p0, Lcom/autochips/dvp/DvdLogicManager;->mCmd:Ljava/util/Vector;

    invoke-virtual {p0, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0
.end method

.method private getCurrentAudioIndex()I
    .locals 2

    const-string v0, "DvdLogicManager"

    const-string v1, "[dvp][framework] getCurrentAudioIndex"

    .line 2441
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2442
    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_GetCurrentAudioIndex()I

    move-result v0

    return v0
.end method

.method private getCurrentPBCAngle()I
    .locals 2

    const-string v0, "DvdLogicManager"

    const-string v1, "[dvp][framework] getCurrentPBCAngle"

    .line 2552
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2553
    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_GetCurrentPBCAngle()I

    move-result v0

    return v0
.end method

.method private getDramFileItemInfo(I)Lcom/autochips/dvp/DvdLogicManager$FileItemInfo;
    .locals 3

    .line 2961
    invoke-static {p1}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_GetDramFileItemInfo(I)I

    move-result p1

    const-string v0, "DvdLogicManager"

    if-nez p1, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [B

    .line 2966
    :try_start_0
    sget-object v1, Lcom/autochips/dvp/DvdLogicManager;->sFileName:Ljava/lang/String;

    const-string v2, "UTF-16LE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2972
    :catch_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    .line 2973
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dvp][framework] getDramFileItemInfo str: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", len: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2974
    new-instance p1, Lcom/autochips/dvp/DvdLogicManager$FileItemInfo;

    sget v0, Lcom/autochips/dvp/DvdLogicManager;->iType:I

    invoke-direct {p1, p0, v0, v1}, Lcom/autochips/dvp/DvdLogicManager$FileItemInfo;-><init>(Lcom/autochips/dvp/DvdLogicManager;ILjava/lang/String;)V

    return-object p1

    :cond_0
    const-string p1, "[dvp][framework] Service does not save this file info!"

    .line 2978
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private getID3Info(I)Ljava/lang/String;
    .locals 2

    int-to-byte p1, p1

    .line 1240
    invoke-static {p1}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_GetCurAudioId3Txt(B)[B

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 1249
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1252
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static getInstance()Lcom/autochips/dvp/DvdLogicManager;
    .locals 2

    .line 186
    sget-object v0, Lcom/autochips/dvp/DvdLogicManager;->mLogicManager:Lcom/autochips/dvp/DvdLogicManager;

    if-nez v0, :cond_0

    const-string v0, "DvdLogicManager"

    const-string v1, "[dvp][framework] getInstance failed"

    .line 187
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_0
    sget-object v0, Lcom/autochips/dvp/DvdLogicManager;->mLogicManager:Lcom/autochips/dvp/DvdLogicManager;

    return-object v0
.end method

.method private getPBCAngleCount()I
    .locals 2

    const-string v0, "DvdLogicManager"

    const-string v1, "[dvp][framework] getPBCAngleCount"

    .line 2495
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2496
    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_GetPBCAngleCount()I

    move-result v0

    return v0
.end method

.method private getRipErrType()I
    .locals 2

    const-string v0, "DvdLogicManager"

    const-string v1, "[dvp][framework] getRipErrType"

    .line 2390
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2391
    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_GetRipErrType()I

    move-result v0

    return v0
.end method

.method private getSpectrumMaxVal()I
    .locals 2

    const-string v0, "DvdLogicManager"

    const-string v1, "[dvp][framework] getSpectrumMaxVal"

    .line 2304
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2305
    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_AudioInfo_GetSpectrumMaxVal()I

    move-result v0

    return v0
.end method

.method private getTrackCount()I
    .locals 2

    const-string v0, "DvdLogicManager"

    const-string v1, "[dvp][framework] getTrackCount"

    .line 2292
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2293
    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_GetTrackCount()I

    move-result v0

    return v0
.end method

.method private getTypeFilelist(III)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/ArrayList<",
            "Lcom/autochips/dvp/DvdLogicManager$FileInfo;",
            ">;"
        }
    .end annotation

    .line 1685
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    add-int v1, p1, p2

    .line 1689
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[dvp][framework] getTypeFilelist, startindex IS -- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DvdLogicManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[dvp][framework] getTypeFilelist, leftcnt count IS -- "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1692
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dvp][framework] getTypeFilelist, cnt IS -- "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dvp][framework] getTypeFilelist, num num IS -- "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-ge p1, v1, :cond_7

    .line 1696
    iget-boolean p2, p0, Lcom/autochips/dvp/DvdLogicManager;->fgExitGetList:Z

    if-eqz p2, :cond_0

    goto/16 :goto_2

    .line 1700
    :cond_0
    invoke-direct {p0, p1}, Lcom/autochips/dvp/DvdLogicManager;->getDramFileItemInfo(I)Lcom/autochips/dvp/DvdLogicManager$FileItemInfo;

    move-result-object p2

    const-string v2, "[dvp][framework] getTypeFilelist, get the item["

    if-nez p2, :cond_1

    .line 1702
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] failed, get again..."

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1707
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] ok, get next..."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x1d

    const/16 v4, 0x11

    const/16 v5, 0xc

    const-string v6, "/DATA_DISC"

    const/4 v7, 0x3

    const/4 v8, 0x1

    if-ne p3, v8, :cond_4

    .line 1709
    iget v8, p2, Lcom/autochips/dvp/DvdLogicManager$FileItemInfo;->iFileType:I

    if-ltz v8, :cond_2

    iget v8, p2, Lcom/autochips/dvp/DvdLogicManager$FileItemInfo;->iFileType:I

    if-le v8, v7, :cond_3

    :cond_2
    iget v8, p2, Lcom/autochips/dvp/DvdLogicManager$FileItemInfo;->iFileType:I

    const/4 v9, 0x7

    if-eq v8, v9, :cond_3

    iget v8, p2, Lcom/autochips/dvp/DvdLogicManager$FileItemInfo;->iFileType:I

    if-eq v8, v5, :cond_3

    iget v5, p2, Lcom/autochips/dvp/DvdLogicManager$FileItemInfo;->iFileType:I

    if-eq v5, v4, :cond_3

    iget v4, p2, Lcom/autochips/dvp/DvdLogicManager$FileItemInfo;->iFileType:I

    if-eq v4, v2, :cond_3

    iget v2, p2, Lcom/autochips/dvp/DvdLogicManager$FileItemInfo;->iFileType:I

    const/16 v4, 0x1f

    if-ne v2, v4, :cond_6

    .line 1715
    :cond_3
    iget-object p2, p2, Lcom/autochips/dvp/DvdLogicManager$FileItemInfo;->filename:Ljava/lang/String;

    .line 1717
    new-instance v2, Lcom/autochips/dvp/DvdLogicManager$FileInfo;

    invoke-direct {v2, v7, v6, p2, p1}, Lcom/autochips/dvp/DvdLogicManager$FileInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 1718
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const/4 v9, 0x2

    if-ne p3, v9, :cond_5

    .line 1722
    iget v7, p2, Lcom/autochips/dvp/DvdLogicManager$FileItemInfo;->iFileType:I

    const/16 v9, 0x8

    if-lt v7, v9, :cond_6

    iget v7, p2, Lcom/autochips/dvp/DvdLogicManager$FileItemInfo;->iFileType:I

    const/16 v9, 0x1e

    if-gt v7, v9, :cond_6

    iget v7, p2, Lcom/autochips/dvp/DvdLogicManager$FileItemInfo;->iFileType:I

    const/16 v9, 0x10

    if-eq v7, v9, :cond_6

    iget v7, p2, Lcom/autochips/dvp/DvdLogicManager$FileItemInfo;->iFileType:I

    const/16 v9, 0x13

    if-eq v7, v9, :cond_6

    iget v7, p2, Lcom/autochips/dvp/DvdLogicManager$FileItemInfo;->iFileType:I

    const/16 v9, 0x16

    if-eq v7, v9, :cond_6

    iget v7, p2, Lcom/autochips/dvp/DvdLogicManager$FileItemInfo;->iFileType:I

    const/16 v9, 0x19

    if-eq v7, v9, :cond_6

    iget v7, p2, Lcom/autochips/dvp/DvdLogicManager$FileItemInfo;->iFileType:I

    if-eq v7, v5, :cond_6

    iget v5, p2, Lcom/autochips/dvp/DvdLogicManager$FileItemInfo;->iFileType:I

    if-eq v5, v4, :cond_6

    iget v4, p2, Lcom/autochips/dvp/DvdLogicManager$FileItemInfo;->iFileType:I

    if-eq v4, v2, :cond_6

    .line 1729
    iget-object p2, p2, Lcom/autochips/dvp/DvdLogicManager$FileItemInfo;->filename:Ljava/lang/String;

    .line 1731
    new-instance v2, Lcom/autochips/dvp/DvdLogicManager$FileInfo;

    invoke-direct {v2, v8, v6, p2, p1}, Lcom/autochips/dvp/DvdLogicManager$FileInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 1732
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    if-ne p3, v7, :cond_6

    .line 1736
    iget v2, p2, Lcom/autochips/dvp/DvdLogicManager$FileItemInfo;->iFileType:I

    const/4 v4, 0x5

    if-ne v2, v4, :cond_6

    .line 1739
    iget-object p2, p2, Lcom/autochips/dvp/DvdLogicManager$FileItemInfo;->filename:Ljava/lang/String;

    .line 1741
    new-instance v2, Lcom/autochips/dvp/DvdLogicManager$FileInfo;

    invoke-direct {v2, v9, v6, p2, p1}, Lcom/autochips/dvp/DvdLogicManager$FileInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 1742
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    .line 1748
    :cond_7
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[dvp][framework] getTypeFilelist -- end, testList SIZE -- "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private handleDvpCmd(III)V
    .locals 17

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p3

    const/16 v4, 0x40

    const/16 v5, 0x61

    const/16 v6, 0x20

    const/16 v7, 0xc

    const/16 v8, 0x10

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v0, :cond_2f

    const/4 v12, 0x6

    if-eq v0, v12, :cond_2d

    const/16 v14, 0x35

    if-eq v0, v14, :cond_2c

    const/16 v5, 0xc1

    if-eq v0, v5, :cond_2b

    const/16 v5, 0x15

    if-eq v0, v9, :cond_29

    const/4 v13, 0x3

    if-eq v0, v13, :cond_25

    const/4 v15, 0x4

    if-eq v0, v15, :cond_1b

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    const/16 v14, 0x2a

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    packed-switch v0, :pswitch_data_4

    packed-switch v0, :pswitch_data_5

    goto/16 :goto_9

    :pswitch_0
    const-string v0, "DvdLogicManager"

    const-string v2, "[dvp][framework] Dvp Response, ripping error state..."

    .line 3791
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3792
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvdPlayHandler:Landroid/os/Handler;

    const/16 v2, 0x41

    invoke-direct {v1, v0, v2}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    goto/16 :goto_9

    :pswitch_1
    const-string v0, "DvdLogicManager"

    const-string v2, "[dvp][framework] Dvp Response, audio driver control..."

    .line 3782
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3783
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvdPlayHandler:Landroid/os/Handler;

    invoke-direct {v1, v0, v4}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    goto/16 :goto_9

    :pswitch_2
    const-string v0, "DvdLogicManager"

    const-string v2, "[dvp][framework] Dvp Response, finish ripping current track..."

    .line 3776
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3777
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvdPlayHandler:Landroid/os/Handler;

    const/16 v2, 0x3f

    invoke-direct {v1, v0, v2}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    goto/16 :goto_9

    :pswitch_3
    const-string v0, "DvdLogicManager"

    .line 3768
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[dvp][framework] Dvp Response, ripping track progress..., arg1: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3770
    iput v2, v1, Lcom/autochips/dvp/DvdLogicManager;->mRipProgress:I

    .line 3771
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvdPlayHandler:Landroid/os/Handler;

    const/16 v2, 0x3e

    invoke-direct {v1, v0, v2}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    goto/16 :goto_9

    :pswitch_4
    const-string v0, "DvdLogicManager"

    const-string v2, "[dvp][framework] Dvp Response, +++++++++++++ ripping data ready, AP can get and write to device ++++++++++++"

    .line 3762
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3763
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvdPlayHandler:Landroid/os/Handler;

    const/16 v2, 0x3d

    invoke-direct {v1, v0, v2}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    goto/16 :goto_9

    :pswitch_5
    const-string v0, "DvdLogicManager"

    const-string v2, "[dvp][framework] Dvp Response, CD, track number, track lba length"

    .line 3756
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3757
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvdPlayHandler:Landroid/os/Handler;

    const/16 v2, 0x3c

    invoke-direct {v1, v0, v2}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    goto/16 :goto_9

    :pswitch_6
    const-string v0, "DvdLogicManager"

    .line 3747
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[dvp][framework] Dvp Response, audio play index update: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3748
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->ddplaylist:[I

    aput v2, v0, v10

    .line 3749
    aput v3, v0, v11

    .line 3750
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvdPlayHandler:Landroid/os/Handler;

    invoke-direct {v1, v0, v14}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    .line 3751
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvpListHandler:Landroid/os/Handler;

    invoke-direct {v1, v0, v14}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    goto/16 :goto_9

    :pswitch_7
    const-string v0, "DvdLogicManager"

    const-string v4, "[dvp][framework] Dvp Response, LMCLICK_ITEM_TYPE"

    .line 3740
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3741
    iput v2, v1, Lcom/autochips/dvp/DvdLogicManager;->mLMClickItemType:I

    .line 3742
    iput v3, v1, Lcom/autochips/dvp/DvdLogicManager;->mDDPlayType:I

    .line 3743
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvpListHandler:Landroid/os/Handler;

    const/16 v2, 0x5f

    invoke-direct {v1, v0, v2}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    goto/16 :goto_9

    :pswitch_8
    const-string v0, "DvdLogicManager"

    const-string v2, "[dvp][framework] Dvp Response, FILEPREPARE"

    .line 3735
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3736
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvpListHandler:Landroid/os/Handler;

    const/16 v2, 0x1c

    invoke-direct {v1, v0, v2}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    goto/16 :goto_9

    :pswitch_9
    const-string v0, "DvdLogicManager"

    const-string v2, "[dvp][framework]DVP_CMD_PBC_ZOOM debug++++++++++++++++++"

    .line 3819
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3820
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvdPlayHandler:Landroid/os/Handler;

    const/16 v2, 0x7f

    invoke-direct {v1, v0, v2}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    goto/16 :goto_9

    .line 3716
    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Lcom/autochips/dvp/DvdLogicManager;->getCurFileCount()I

    move-result v0

    .line 3717
    invoke-virtual/range {p0 .. p0}, Lcom/autochips/dvp/DvdLogicManager;->getThumbNailFirstIdx()I

    move-result v2

    if-lez v0, :cond_1

    .line 3721
    div-int/lit8 v3, v0, 0xc

    .line 3722
    rem-int/2addr v0, v7

    if-eqz v0, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    move v10, v3

    .line 3726
    div-int/2addr v2, v7

    add-int/lit8 v0, v2, 0x1

    move/from16 v16, v10

    move v10, v0

    move/from16 v0, v16

    goto :goto_0

    :cond_1
    move v0, v10

    .line 3728
    :goto_0
    iput v10, v1, Lcom/autochips/dvp/DvdLogicManager;->mPreviewPageIndex:I

    .line 3729
    iput v0, v1, Lcom/autochips/dvp/DvdLogicManager;->mPreviewPageCount:I

    const-string v0, "DvdLogicManager"

    const-string v2, "[dvp][framework] Dvp Response, IMAGE_PREVIEW_OK"

    .line 3730
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3731
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvdPlayHandler:Landroid/os/Handler;

    const/16 v2, 0x5c

    invoke-direct {v1, v0, v2}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    goto/16 :goto_9

    :pswitch_b
    const-string v0, "DvdLogicManager"

    const-string v2, "[dvp][framework] Dvp Response, DVP_LEVEL_PWD"

    .line 3711
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3712
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvdPlayHandler:Landroid/os/Handler;

    const/16 v2, 0x7a

    invoke-direct {v1, v0, v2}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    goto/16 :goto_9

    :pswitch_c
    packed-switch v2, :pswitch_data_6

    goto/16 :goto_9

    :pswitch_d
    const-string v0, "DvdLogicManager"

    const-string v2, "[dvp][framework] Dvp Response, drm unsupport"

    .line 3701
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3702
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvdPlayHandler:Landroid/os/Handler;

    const/16 v2, 0x77

    invoke-direct {v1, v0, v2}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    goto/16 :goto_9

    :pswitch_e
    const-string v0, "DvdLogicManager"

    const-string v2, "[dvp][framework] Dvp Response, profile unsupport"

    .line 3696
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3697
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvdPlayHandler:Landroid/os/Handler;

    const/16 v2, 0x76

    invoke-direct {v1, v0, v2}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    goto/16 :goto_9

    :pswitch_f
    const-string v0, "DvdLogicManager"

    const-string v2, "[dvp][framework] Dvp Response, GMC unsupport"

    .line 3691
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3692
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvdPlayHandler:Landroid/os/Handler;

    const/16 v2, 0x75

    invoke-direct {v1, v0, v2}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    goto/16 :goto_9

    :pswitch_10
    const-string v0, "DvdLogicManager"

    const-string v2, "[dvp][framework] Dvp Response, FPS unsupport"

    .line 3686
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3687
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvdPlayHandler:Landroid/os/Handler;

    const/16 v2, 0x74

    invoke-direct {v1, v0, v2}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    goto/16 :goto_9

    :pswitch_11
    const-string v0, "DvdLogicManager"

    const-string v2, "[dvp][framework] Dvp Response, no video"

    .line 3681
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3682
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvdPlayHandler:Landroid/os/Handler;

    const/16 v2, 0x73

    invoke-direct {v1, v0, v2}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    goto/16 :goto_9

    :pswitch_12
    const-string v0, "DvdLogicManager"

    const-string v2, "[dvp][framework] Dvp Response, no audio"

    .line 3676
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3677
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvdPlayHandler:Landroid/os/Handler;

    const/16 v2, 0x72

    invoke-direct {v1, v0, v2}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    goto/16 :goto_9

    :pswitch_13
    const-string v0, "DvdLogicManager"

    const-string v2, "[dvp][framework] Dvp Response, video res unsupport"

    .line 3671
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3672
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvdPlayHandler:Landroid/os/Handler;

    const/16 v2, 0x71

    invoke-direct {v1, v0, v2}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    goto/16 :goto_9

    :pswitch_14
    const-string v0, "DvdLogicManager"

    const-string v2, "[dvp][framework] Dvp Response, video codec unsupport"

    .line 3666
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3667
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvdPlayHandler:Landroid/os/Handler;

    const/16 v2, 0x70

    invoke-direct {v1, v0, v2}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    goto/16 :goto_9

    :pswitch_15
    const-string v0, "DvdLogicManager"

    const-string v2, "[dvp][framework] Dvp Response, audio codec unsupport"

    .line 3661
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3662
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvdPlayHandler:Landroid/os/Handler;

    const/16 v2, 0x6f

    invoke-direct {v1, v0, v2}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    goto/16 :goto_9

    :pswitch_16
    if-eqz v2, :cond_2

    packed-switch v2, :pswitch_data_7

    .line 3650
    iput v10, v1, Lcom/autochips/dvp/DvdLogicManager;->mVcdChannel:I

    goto :goto_1

    .line 3646
    :pswitch_17
    iput v13, v1, Lcom/autochips/dvp/DvdLogicManager;->mVcdChannel:I

    goto :goto_1

    .line 3642
    :pswitch_18
    iput v9, v1, Lcom/autochips/dvp/DvdLogicManager;->mVcdChannel:I

    goto :goto_1

    .line 3638
    :pswitch_19
    iput v11, v1, Lcom/autochips/dvp/DvdLogicManager;->mVcdChannel:I

    goto :goto_1

    .line 3634
    :cond_2
    iput v10, v1, Lcom/autochips/dvp/DvdLogicManager;->mVcdChannel:I

    :goto_1
    const-string v0, "DvdLogicManager"

    .line 3653
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[dvp][framework] Dvp Response, VCD CHANNEL:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/autochips/dvp/DvdLogicManager;->mVcdChannel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3654
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvdPlayHandler:Landroid/os/Handler;

    const/16 v2, 0x29

    invoke-direct {v1, v0, v2}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    goto/16 :goto_9

    :pswitch_1a
    const-string v0, "DvdLogicManager"

    const-string v2, "[dvp][framework] Dvp Response, DATA DISC CURRENT FILE NAME..."

    .line 3616
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3617
    iget v0, v1, Lcom/autochips/dvp/DvdLogicManager;->mDiscType:I

    if-eq v0, v7, :cond_3

    if-eq v0, v8, :cond_3

    const-string v0, "DvdLogicManager"

    const-string v2, "[dvp][framework] Dvp Response, DATA DISC CURRENT FILE NAME...do nothing......"

    .line 3618
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 3621
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/autochips/dvp/DvdLogicManager;->navGetCurFilePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->mPlayedFileName:Ljava/lang/String;

    if-nez v0, :cond_4

    const-string v0, "DvdLogicManager"

    const-string v2, "[dvp][framework] Dvp Response, DATA DISC CURRENT FILE NAME...null"

    .line 3623
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 3626
    :cond_4
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvdPlayHandler:Landroid/os/Handler;

    const/16 v2, 0x2b

    invoke-direct {v1, v0, v2}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    goto/16 :goto_9

    .line 3610
    :pswitch_1b
    iput v2, v1, Lcom/autochips/dvp/DvdLogicManager;->mVcdPBC:I

    const-string v0, "DvdLogicManager"

    .line 3611
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[dvp][framework] Dvp Response, PBC MODE:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/autochips/dvp/DvdLogicManager;->mVcdPBC:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3612
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvdPlayHandler:Landroid/os/Handler;

    const/16 v2, 0x28

    invoke-direct {v1, v0, v2}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    goto/16 :goto_9

    .line 3603
    :pswitch_1c
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvdangle:[I

    aput v3, v0, v10

    .line 3604
    aput v2, v0, v11

    const-string v0, "DvdLogicManager"

    .line 3605
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[dvp][framework] Dvp Response, CURRENT DVD ANGLE is--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/autochips/dvp/DvdLogicManager;->dvdangle:[I

    aget v3, v3, v10

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/autochips/dvp/DvdLogicManager;->dvdangle:[I

    aget v3, v3, v11

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3606
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvdPlayHandler:Landroid/os/Handler;

    const/16 v2, 0x2d

    invoke-direct {v1, v0, v2}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    goto/16 :goto_9

    .line 3596
    :pswitch_1d
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvdsubtilte:[I

    aput v2, v0, v10

    .line 3597
    aput v3, v0, v11

    const-string v0, "DvdLogicManager"

    .line 3598
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[dvp][framework] Dvp Response, CURRENT DVD SUBTITLE is--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/autochips/dvp/DvdLogicManager;->dvdsubtilte:[I

    aget v3, v3, v10

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/autochips/dvp/DvdLogicManager;->dvdsubtilte:[I

    aget v3, v3, v11

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3599
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvdPlayHandler:Landroid/os/Handler;

    const/16 v2, 0x2c

    invoke-direct {v1, v0, v2}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    goto/16 :goto_9

    .line 3589
    :pswitch_1e
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvdaudio:[I

    aput v2, v0, v10

    .line 3590
    aput v3, v0, v11

    const-string v0, "DvdLogicManager"

    .line 3591
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[dvp][framework] Dvp Response, DVD AUDIO total("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/autochips/dvp/DvdLogicManager;->dvdaudio:[I

    aget v3, v3, v11

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") and current("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/autochips/dvp/DvdLogicManager;->dvdaudio:[I

    aget v3, v3, v10

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3592
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvdPlayHandler:Landroid/os/Handler;

    const/16 v2, 0x2e

    invoke-direct {v1, v0, v2}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    goto/16 :goto_9

    .line 3582
    :pswitch_1f
    iput v2, v1, Lcom/autochips/dvp/DvdLogicManager;->mTitleCnt:I

    .line 3583
    iput v3, v1, Lcom/autochips/dvp/DvdLogicManager;->mChapterCount:I

    const-string v0, "DvdLogicManager"

    .line 3584
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[dvp][framework] Dvp Response, DVD TOTAL TITLE("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/autochips/dvp/DvdLogicManager;->mTitleCnt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") AND CHAPTER("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/autochips/dvp/DvdLogicManager;->mChapterCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3585
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvdPlayHandler:Landroid/os/Handler;

    const/16 v2, 0x21

    invoke-direct {v1, v0, v2}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    goto/16 :goto_9

    .line 3575
    :pswitch_20
    iput v2, v1, Lcom/autochips/dvp/DvdLogicManager;->mCurrentTitle:I

    .line 3576
    iput v3, v1, Lcom/autochips/dvp/DvdLogicManager;->mCurrentChapter:I

    const-string v0, "DvdLogicManager"

    .line 3577
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[dvp][framework] Dvp Response, DVD current title("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/autochips/dvp/DvdLogicManager;->mCurrentTitle:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") AND chapter("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/autochips/dvp/DvdLogicManager;->mCurrentChapter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3578
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvdPlayHandler:Landroid/os/Handler;

    invoke-direct {v1, v0, v6}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    goto/16 :goto_9

    :pswitch_21
    if-ne v2, v8, :cond_5

    const-string v0, "DvdLogicManager"

    const-string v2, "[dvp][framework] Dvp Response, CD SHUFFLE MODE"

    .line 3568
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3569
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvdPlayHandler:Landroid/os/Handler;

    const/16 v2, 0x3b

    invoke-direct {v1, v0, v2}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    .line 3571
    :cond_5
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvdPlayHandler:Landroid/os/Handler;

    const/16 v2, 0x31

    invoke-direct {v1, v0, v2}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    goto/16 :goto_9

    :pswitch_22
    if-eq v2, v9, :cond_b

    if-eq v2, v13, :cond_a

    if-eq v2, v15, :cond_9

    if-eq v2, v12, :cond_8

    const/4 v0, 0x7

    if-eq v2, v0, :cond_7

    if-eq v2, v5, :cond_6

    .line 3558
    iput v13, v1, Lcom/autochips/dvp/DvdLogicManager;->mRepeatMode:I

    goto :goto_2

    :cond_6
    const/4 v0, 0x5

    .line 3554
    iput v0, v1, Lcom/autochips/dvp/DvdLogicManager;->mRepeatMode:I

    goto :goto_2

    .line 3544
    :cond_7
    iput v11, v1, Lcom/autochips/dvp/DvdLogicManager;->mRepeatMode:I

    goto :goto_2

    .line 3539
    :cond_8
    iput v9, v1, Lcom/autochips/dvp/DvdLogicManager;->mRepeatMode:I

    goto :goto_2

    .line 3549
    :cond_9
    iput v15, v1, Lcom/autochips/dvp/DvdLogicManager;->mRepeatMode:I

    goto :goto_2

    .line 3534
    :cond_a
    iput v13, v1, Lcom/autochips/dvp/DvdLogicManager;->mRepeatMode:I

    goto :goto_2

    .line 3529
    :cond_b
    iput v10, v1, Lcom/autochips/dvp/DvdLogicManager;->mRepeatMode:I

    :goto_2
    const-string v0, "DvdLogicManager"

    .line 3561
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[dvp][framework] Dvp Response, current repeat mode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/autochips/dvp/DvdLogicManager;->mRepeatMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3562
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvdPlayHandler:Landroid/os/Handler;

    const/16 v2, 0x26

    invoke-direct {v1, v0, v2}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    .line 3563
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvdPlayHandler:Landroid/os/Handler;

    const/16 v2, 0x31

    invoke-direct {v1, v0, v2}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    goto/16 :goto_9

    :pswitch_23
    const-string v0, "DvdLogicManager"

    .line 3517
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[dvp][framework] Dvp Response, DATA DISC PLAYING_IDX ..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3518
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->ddplaylist:[I

    aput v2, v0, v10

    .line 3519
    aput v3, v0, v11

    .line 3520
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvpListHandler:Landroid/os/Handler;

    invoke-direct {v1, v0, v14}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    .line 3521
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvdPlayHandler:Landroid/os/Handler;

    invoke-direct {v1, v0, v14}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    goto/16 :goto_9

    :pswitch_24
    const-string v0, "DvdLogicManager"

    .line 3505
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[dvp][framework] Dvp Response, DVD TOTAL TIME: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3506
    iput v2, v1, Lcom/autochips/dvp/DvdLogicManager;->mTotalTime:I

    .line 3507
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvdPlayHandler:Landroid/os/Handler;

    const/16 v2, 0x1f

    invoke-direct {v1, v0, v2}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    const-string v0, "<unknown>"

    .line 3509
    iput-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->mId3InfoTitle:Ljava/lang/String;

    const-string v0, "<unknown>"

    .line 3510
    iput-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->mId3InfoAlbum:Ljava/lang/String;

    const-string v0, "<unknown>"

    .line 3511
    iput-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->mId3InfoArtist:Ljava/lang/String;

    const-string v0, "<unknown>"

    .line 3512
    iput-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->mId3InfoGenre:Ljava/lang/String;

    const-string v0, "<unknown>"

    .line 3513
    iput-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->mId3InfoYear:Ljava/lang/String;

    goto/16 :goto_9

    .line 3490
    :pswitch_25
    iput v2, v1, Lcom/autochips/dvp/DvdLogicManager;->mCurrentTime:I

    const-string v0, "DvdLogicManager"

    .line 3492
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[dvp][framework] Dvp Response, DVD CURRENT TIME: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3494
    iget-boolean v0, v1, Lcom/autochips/dvp/DvdLogicManager;->mWaitSeek:Z

    if-eqz v0, :cond_c

    const-string v0, "DvdLogicManager"

    .line 3495
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[dvp][framework] wait seek ack, DVD CURRENT TIME: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 3498
    :cond_c
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvdPlayHandler:Landroid/os/Handler;

    const/16 v2, 0x1e

    invoke-direct {v1, v0, v2}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    goto/16 :goto_9

    :pswitch_26
    const-string v0, "DvdLogicManager"

    const-string v4, "[dvp][framework] Dvp Response, VCD TRACK..."

    .line 3482
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3483
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->VcdTrack:[I

    aput v2, v0, v10

    .line 3484
    aput v3, v0, v11

    .line 3485
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvdPlayHandler:Landroid/os/Handler;

    const/16 v2, 0x24

    invoke-direct {v1, v0, v2}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    goto/16 :goto_9

    :pswitch_27
    const-string v0, "DvdLogicManager"

    .line 3472
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[dvp][framework] Dvp Response, play state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "(stop:01, play:02 pause:07)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3473
    sget-boolean v0, Lcom/autochips/dvp/DvdLogicManager;->fgCbmPause:Z

    if-eqz v0, :cond_d

    if-ne v2, v9, :cond_d

    .line 3474
    invoke-virtual/range {p0 .. p0}, Lcom/autochips/dvp/DvdLogicManager;->pause()I

    .line 3476
    :cond_d
    iput v2, v1, Lcom/autochips/dvp/DvdLogicManager;->mPicCdPlayState:I

    .line 3477
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvdPlayHandler:Landroid/os/Handler;

    const/16 v2, 0x2f

    invoke-direct {v1, v0, v2}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    .line 3478
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvpListHandler:Landroid/os/Handler;

    invoke-direct {v1, v0, v2}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    goto/16 :goto_9

    :pswitch_28
    const-string v0, "DvdLogicManager"

    const-string v4, "[dvp][framework] Dvp Response, DVP_CMD_PBC_JPG_RESOLUTION..."

    .line 3464
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3465
    iput v2, v1, Lcom/autochips/dvp/DvdLogicManager;->mXResolution:I

    .line 3466
    iput v3, v1, Lcom/autochips/dvp/DvdLogicManager;->mYResolution:I

    .line 3467
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvdPlayHandler:Landroid/os/Handler;

    const/16 v2, 0x43

    invoke-direct {v1, v0, v2}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    goto/16 :goto_9

    :pswitch_29
    const-string v0, "DvdLogicManager"

    const-string v2, "[dvp][framework] Dvp Response, DVP_CMD_PBC_JPG_ROTATE_STATE..."

    .line 3458
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3459
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvdPlayHandler:Landroid/os/Handler;

    const/16 v2, 0x44

    invoke-direct {v1, v0, v2}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    goto/16 :goto_9

    :pswitch_2a
    const-string v0, "DvdLogicManager"

    const-string v2, "[dvp][framework] Dvp Response, DVP_CMD_PBC_ADO_EQ..."

    .line 3452
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3453
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvdPlayHandler:Landroid/os/Handler;

    const/16 v2, 0x3a

    invoke-direct {v1, v0, v2}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    goto/16 :goto_9

    :pswitch_2b
    const-string v0, "DvdLogicManager"

    const-string v2, "[dvp][framework] Dvp Response, DVP_CMD_PBC_ADO_LYRICS..."

    .line 3446
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3447
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvdPlayHandler:Landroid/os/Handler;

    const/16 v2, 0x39

    invoke-direct {v1, v0, v2}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    goto/16 :goto_9

    :pswitch_2c
    const-string v0, "DvdLogicManager"

    .line 3431
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[dvp][framework] Dvp Response, DVP_CMD_PBC_ADO_ID3_PIC p1 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " p2="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_e

    const/4 v0, 0x0

    .line 3435
    iput-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->mId3InfoPicData:[B

    goto :goto_3

    .line 3438
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/autochips/dvp/DvdLogicManager;->navGetId3Pic()[B

    move-result-object v0

    iput-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->mId3InfoPicData:[B

    .line 3441
    :goto_3
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvdPlayHandler:Landroid/os/Handler;

    const/16 v2, 0x38

    invoke-direct {v1, v0, v2}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    goto/16 :goto_9

    :pswitch_2d
    if-eqz v2, :cond_18

    if-eq v2, v11, :cond_16

    if-eq v2, v9, :cond_14

    if-eq v2, v13, :cond_12

    if-eq v2, v15, :cond_10

    const/16 v0, 0xff

    if-eq v2, v0, :cond_f

    goto/16 :goto_9

    :cond_f
    const-string v0, "DvdLogicManager"

    const-string v2, "[dvp][framework] Dvp Response, ID3_MAX..."

    .line 3423
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3424
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvdPlayHandler:Landroid/os/Handler;

    const/16 v2, 0x37

    invoke-direct {v1, v0, v2}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    goto/16 :goto_9

    :cond_10
    const-string v0, "DvdLogicManager"

    const-string v2, "[dvp][framework] Dvp Response, Dvp Response--ID3_YEAR..."

    .line 3409
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3411
    invoke-direct {v1, v15}, Lcom/autochips/dvp/DvdLogicManager;->getID3Info(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->mId3InfoYear:Ljava/lang/String;

    if-nez v0, :cond_11

    const-string v0, "DvdLogicManager"

    const-string v2, "[dvp][framework] Dvp Response, mId3InfoYear IS null"

    .line 3414
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 3417
    :cond_11
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvdPlayHandler:Landroid/os/Handler;

    const/16 v2, 0x36

    invoke-direct {v1, v0, v2}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    goto/16 :goto_9

    :cond_12
    const-string v0, "DvdLogicManager"

    const-string v2, "[dvp][framework] Dvp Response, ID3_GENRE..."

    .line 3395
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3397
    invoke-direct {v1, v13}, Lcom/autochips/dvp/DvdLogicManager;->getID3Info(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->mId3InfoGenre:Ljava/lang/String;

    if-nez v0, :cond_13

    const-string v0, "DvdLogicManager"

    const-string v2, "[dvp][framework] Dvp Response, mId3InfoGenre IS null"

    .line 3400
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 3403
    :cond_13
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvdPlayHandler:Landroid/os/Handler;

    const/16 v2, 0x35

    invoke-direct {v1, v0, v2}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    goto/16 :goto_9

    :cond_14
    const-string v0, "DvdLogicManager"

    const-string v2, "[dvp][framework] Dvp Response, ID3_ARTIST..."

    .line 3381
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3383
    invoke-direct {v1, v9}, Lcom/autochips/dvp/DvdLogicManager;->getID3Info(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->mId3InfoArtist:Ljava/lang/String;

    if-nez v0, :cond_15

    const-string v0, "DvdLogicManager"

    const-string v2, "[dvp][framework] Dvp Response, mId3InfoArtist IS null"

    .line 3386
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 3389
    :cond_15
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvdPlayHandler:Landroid/os/Handler;

    const/16 v2, 0x34

    invoke-direct {v1, v0, v2}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    goto/16 :goto_9

    :cond_16
    const-string v0, "DvdLogicManager"

    const-string v2, "[dvp][framework] Dvp Response, ID3_ALBUM..."

    .line 3367
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3369
    invoke-direct {v1, v11}, Lcom/autochips/dvp/DvdLogicManager;->getID3Info(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->mId3InfoAlbum:Ljava/lang/String;

    if-nez v0, :cond_17

    const-string v0, "DvdLogicManager"

    const-string v2, "[dvp][framework] Dvp Response, ID3_ALBUM IS null"

    .line 3372
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 3375
    :cond_17
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvdPlayHandler:Landroid/os/Handler;

    const/16 v2, 0x33

    invoke-direct {v1, v0, v2}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    goto/16 :goto_9

    :cond_18
    const-string v0, "DvdLogicManager"

    const-string v2, "[dvp][framework] Dvp Response, ID3_TITLE..."

    .line 3353
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3355
    invoke-direct {v1, v10}, Lcom/autochips/dvp/DvdLogicManager;->getID3Info(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->mId3InfoTitle:Ljava/lang/String;

    if-nez v0, :cond_19

    const-string v0, "DvdLogicManager"

    const-string v2, "[dvp][framework] Dvp Response, TITLE IS null"

    .line 3358
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 3361
    :cond_19
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvdPlayHandler:Landroid/os/Handler;

    const/16 v2, 0x32

    invoke-direct {v1, v0, v2}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    goto/16 :goto_9

    :pswitch_2e
    const-string v0, "DvdLogicManager"

    const-string v2, "[dvp][framework]DVP_CMD_FL_TYPE_COUNT_IN_DISC ++++++++++++++++++"

    .line 3812
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3813
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvpListHandler:Landroid/os/Handler;

    const/16 v2, 0x7e

    invoke-direct {v1, v0, v2}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    .line 3814
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvdPlayHandler:Landroid/os/Handler;

    invoke-direct {v1, v0, v2}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    .line 3815
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvphomeHandler:Landroid/os/Handler;

    invoke-direct {v1, v0, v2}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    goto/16 :goto_9

    .line 3342
    :pswitch_2f
    iput v2, v1, Lcom/autochips/dvp/DvdLogicManager;->mDiscTypeCnt:I

    const-string v0, "DvdLogicManager"

    .line 3343
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[dvp][framework] Dvp Response, LISTTYPECNT -- mDiscTypeCnt:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/autochips/dvp/DvdLogicManager;->mDiscTypeCnt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3344
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvpListHandler:Landroid/os/Handler;

    const/16 v2, 0x1b

    invoke-direct {v1, v0, v2}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    goto/16 :goto_9

    :pswitch_30
    const-string v0, "DvdLogicManager"

    .line 3336
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[dvp][framework] Dvp Response, MSG_FL_LIST_INFO arg1:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " arg2:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3337
    iput v3, v1, Lcom/autochips/dvp/DvdLogicManager;->mCurrentDirIndex:I

    .line 3338
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvpListHandler:Landroid/os/Handler;

    const/16 v2, 0x7b

    invoke-direct {v1, v0, v2}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    goto/16 :goto_9

    :pswitch_31
    const-string v0, "DvdLogicManager"

    const-string v2, "[dvp][framework] Dvp Response, CHANGE DIR..."

    .line 3325
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :pswitch_32
    const-string v0, "DvdLogicManager"

    const-string v2, "[dvp][framework] Dvp Response, FILE ITEM..."

    .line 3321
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 3307
    :pswitch_33
    invoke-direct/range {p0 .. p0}, Lcom/autochips/dvp/DvdLogicManager;->navGetCurrentDir()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1a

    const-string v0, "DvdLogicManager"

    const-string v2, "[dvp][framework] Dvp Response, FILE CURRENT PATH is null !!!"

    .line 3309
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 3312
    :cond_1a
    iput-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->mRestoredPath:Ljava/lang/String;

    const-string v0, "DvdLogicManager"

    .line 3313
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[dvp][framework] Dvp Response, FILE CURRENT PATH: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/autochips/dvp/DvdLogicManager;->mRestoredPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3314
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvdPlayHandler:Landroid/os/Handler;

    const/16 v2, 0xf

    invoke-direct {v1, v0, v2}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    .line 3315
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvpListHandler:Landroid/os/Handler;

    invoke-direct {v1, v0, v2}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    goto/16 :goto_9

    .line 3300
    :pswitch_34
    iput v2, v1, Lcom/autochips/dvp/DvdLogicManager;->mFileCnt:I

    const-string v0, "DvdLogicManager"

    .line 3301
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[dvp][framework] Dvp Response, FILE TOTAL COUNT:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/autochips/dvp/DvdLogicManager;->mFileCnt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3302
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvpListHandler:Landroid/os/Handler;

    const/16 v2, 0x17

    invoke-direct {v1, v0, v2}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    .line 3303
    invoke-direct/range {p0 .. p0}, Lcom/autochips/dvp/DvdLogicManager;->onAutoPlay()V

    goto/16 :goto_9

    .line 3232
    :cond_1b
    iget-object v3, v1, Lcom/autochips/dvp/DvdLogicManager;->mSyncObj:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string v0, "DvdLogicManager"

    .line 3234
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[dvp][framework] Dvp Response, mLoadedFlag is -- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/autochips/dvp/DvdLogicManager;->mLoadedFlag:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "  arg1 is -- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DvdLogicManager"

    .line 3235
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[dvp][framework] Dvp Response, Disc type is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3236
    iput v2, v1, Lcom/autochips/dvp/DvdLogicManager;->mDiscTypeNum:I

    .line 3237
    iget v0, v1, Lcom/autochips/dvp/DvdLogicManager;->mLoadedFlag:I

    if-ne v0, v11, :cond_1c

    const-string v0, "DvdLogicManager"

    const-string v2, "[dvp][framework] Dvp Response, mLoadedFlag is 1 do nothing!"

    .line 3238
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_1c
    if-ltz v2, :cond_1d

    if-gt v2, v9, :cond_1d

    const-string v0, "DvdLogicManager"

    const-string v2, "[dvp][framework] Dvp Response, DVD LOAD OK..."

    .line 3243
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3244
    iput v11, v1, Lcom/autochips/dvp/DvdLogicManager;->mLoadedFlag:I

    const/16 v0, 0x9

    .line 3245
    iput v0, v1, Lcom/autochips/dvp/DvdLogicManager;->mDiscType:I

    .line 3246
    sput-boolean v11, Lcom/autochips/dvp/DvdLogicManager;->fgDvdLoadOK:Z

    .line 3247
    iget-object v2, v1, Lcom/autochips/dvp/DvdLogicManager;->dvpServicerHandler:Landroid/os/Handler;

    invoke-direct {v1, v2, v0}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    .line 3248
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvphomeHandler:Landroid/os/Handler;

    iget v2, v1, Lcom/autochips/dvp/DvdLogicManager;->mDiscType:I

    invoke-direct {v1, v0, v2}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    goto/16 :goto_4

    :cond_1d
    if-lt v2, v13, :cond_1e

    const/16 v0, 0x9

    if-gt v2, v0, :cond_1e

    const-string v0, "DvdLogicManager"

    const-string v4, "[dvp][framework] Dvp Response, VCD LOAD OK..."

    .line 3251
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3252
    iput v11, v1, Lcom/autochips/dvp/DvdLogicManager;->mLoadedFlag:I

    .line 3253
    iput v2, v1, Lcom/autochips/dvp/DvdLogicManager;->mDiscTypeNum:I

    const/16 v0, 0xa

    .line 3254
    iput v0, v1, Lcom/autochips/dvp/DvdLogicManager;->mDiscType:I

    .line 3255
    sput-boolean v11, Lcom/autochips/dvp/DvdLogicManager;->fgDvdLoadOK:Z

    .line 3256
    iget-object v2, v1, Lcom/autochips/dvp/DvdLogicManager;->dvpServicerHandler:Landroid/os/Handler;

    invoke-direct {v1, v2, v0}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    .line 3257
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvphomeHandler:Landroid/os/Handler;

    iget v2, v1, Lcom/autochips/dvp/DvdLogicManager;->mDiscType:I

    invoke-direct {v1, v0, v2}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    goto/16 :goto_4

    :cond_1e
    const/16 v0, 0xe

    if-eq v2, v0, :cond_21

    const/16 v4, 0xa

    if-lt v2, v4, :cond_1f

    if-le v2, v7, :cond_20

    :cond_1f
    if-eq v2, v0, :cond_20

    const/16 v0, 0x12

    if-ne v2, v0, :cond_21

    :cond_20
    const-string v0, "DvdLogicManager"

    const-string v2, "[dvp][framework] Dvp Response, CD LOAD OK..."

    .line 3260
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3261
    iput v11, v1, Lcom/autochips/dvp/DvdLogicManager;->mLoadedFlag:I

    const/16 v0, 0xb

    .line 3262
    iput v0, v1, Lcom/autochips/dvp/DvdLogicManager;->mDiscType:I

    .line 3263
    sput-boolean v11, Lcom/autochips/dvp/DvdLogicManager;->fgDvdLoadOK:Z

    .line 3264
    iget-object v2, v1, Lcom/autochips/dvp/DvdLogicManager;->dvpServicerHandler:Landroid/os/Handler;

    invoke-direct {v1, v2, v0}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    .line 3265
    iget-object v2, v1, Lcom/autochips/dvp/DvdLogicManager;->dvphomeHandler:Landroid/os/Handler;

    invoke-direct {v1, v2, v0}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    goto :goto_4

    :cond_21
    if-ne v2, v8, :cond_22

    const-string v0, "DvdLogicManager"

    const-string v2, "[dvp][framework] Dvp Response, DATA DISC LOAD OK..."

    .line 3268
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3269
    iput v11, v1, Lcom/autochips/dvp/DvdLogicManager;->mLoadedFlag:I

    .line 3270
    iput v7, v1, Lcom/autochips/dvp/DvdLogicManager;->mDiscType:I

    .line 3271
    sput-boolean v11, Lcom/autochips/dvp/DvdLogicManager;->fgDvdLoadOK:Z

    .line 3272
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvpServicerHandler:Landroid/os/Handler;

    invoke-direct {v1, v0, v7}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    .line 3273
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvphomeHandler:Landroid/os/Handler;

    iget v2, v1, Lcom/autochips/dvp/DvdLogicManager;->mDiscType:I

    invoke-direct {v1, v0, v2}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    goto :goto_4

    :cond_22
    const/16 v0, 0xe

    if-ne v2, v0, :cond_23

    const-string v0, "DvdLogicManager"

    const-string v2, "[dvp][framework] Dvp Response, PICTURE DISC LOAD OK..."

    .line 3276
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3277
    iput v11, v1, Lcom/autochips/dvp/DvdLogicManager;->mLoadedFlag:I

    .line 3278
    iput v8, v1, Lcom/autochips/dvp/DvdLogicManager;->mDiscType:I

    .line 3279
    sput-boolean v11, Lcom/autochips/dvp/DvdLogicManager;->fgDvdLoadOK:Z

    .line 3280
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvpServicerHandler:Landroid/os/Handler;

    invoke-direct {v1, v0, v8}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    .line 3281
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvphomeHandler:Landroid/os/Handler;

    invoke-direct {v1, v0, v8}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    goto :goto_4

    :cond_23
    const/16 v0, 0xd

    if-ne v2, v0, :cond_24

    const-string v0, "DvdLogicManager"

    const-string v2, "[dvp][framework] Dvp Response, CDG DISC LOAD OK..."

    .line 3284
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3285
    iput v11, v1, Lcom/autochips/dvp/DvdLogicManager;->mLoadedFlag:I

    const/16 v0, 0x11

    .line 3286
    iput v0, v1, Lcom/autochips/dvp/DvdLogicManager;->mDiscType:I

    .line 3287
    sput-boolean v11, Lcom/autochips/dvp/DvdLogicManager;->fgDvdLoadOK:Z

    .line 3288
    iget-object v2, v1, Lcom/autochips/dvp/DvdLogicManager;->dvpServicerHandler:Landroid/os/Handler;

    invoke-direct {v1, v2, v0}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    .line 3289
    iget-object v2, v1, Lcom/autochips/dvp/DvdLogicManager;->dvphomeHandler:Landroid/os/Handler;

    invoke-direct {v1, v2, v0}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    goto :goto_4

    :cond_24
    const-string v0, "DvdLogicManager"

    const-string v2, "[dvp][framework] Dvp Response, UNKNOWN DISC"

    .line 3292
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3295
    :goto_4
    monitor-exit v3

    goto/16 :goto_9

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3204
    :cond_25
    iget-object v3, v1, Lcom/autochips/dvp/DvdLogicManager;->mSyncObj:Ljava/lang/Object;

    monitor-enter v3

    if-eqz v2, :cond_28

    if-eq v2, v11, :cond_27

    if-eq v2, v13, :cond_26

    goto :goto_5

    :cond_26
    :try_start_1
    const-string v0, "DvdLogicManager"

    const-string v2, "[dvp][framework] Dvp Response, TRAY ERROR..."

    .line 3222
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3223
    sput-boolean v10, Lcom/autochips/dvp/DvdLogicManager;->fgDvdLoadOK:Z

    .line 3224
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvpServicerHandler:Landroid/os/Handler;

    const/16 v2, 0x16

    invoke-direct {v1, v0, v2}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    .line 3225
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvphomeHandler:Landroid/os/Handler;

    invoke-direct {v1, v0, v2}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    goto :goto_5

    :cond_27
    const-string v0, "DvdLogicManager"

    const-string v2, "[dvp][framework] Dvp Response, TRAY CLOSE..."

    .line 3215
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3216
    sput-boolean v10, Lcom/autochips/dvp/DvdLogicManager;->fgDvdLoadOK:Z

    .line 3217
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvpServicerHandler:Landroid/os/Handler;

    invoke-direct {v1, v0, v5}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    .line 3218
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvphomeHandler:Landroid/os/Handler;

    invoke-direct {v1, v0, v5}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    goto :goto_5

    :cond_28
    const-string v0, "DvdLogicManager"

    const-string v2, "[dvp][framework] Dvp Response, TRAY OPEN..."

    .line 3207
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3208
    sput-boolean v10, Lcom/autochips/dvp/DvdLogicManager;->fgDvdLoadOK:Z

    .line 3209
    iput v10, v1, Lcom/autochips/dvp/DvdLogicManager;->mLoadedFlag:I

    .line 3210
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvpServicerHandler:Landroid/os/Handler;

    const/16 v2, 0x14

    invoke-direct {v1, v0, v2}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    .line 3211
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvphomeHandler:Landroid/os/Handler;

    invoke-direct {v1, v0, v2}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    .line 3228
    :goto_5
    monitor-exit v3

    goto/16 :goto_9

    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 3142
    :cond_29
    iget-object v3, v1, Lcom/autochips/dvp/DvdLogicManager;->mSyncObj:Ljava/lang/Object;

    monitor-enter v3

    packed-switch v2, :pswitch_data_8

    goto/16 :goto_6

    :pswitch_35
    :try_start_2
    const-string v0, "DvdLogicManager"

    const-string v2, "[dvp][framework] Dvp Response, DISC IDENTIFIED ..."

    .line 3195
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :pswitch_36
    const-string v0, "DvdLogicManager"

    const-string v2, "[dvp][framework] Dvp Response, UNKOWN DISC..."

    .line 3188
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3189
    sput-boolean v10, Lcom/autochips/dvp/DvdLogicManager;->fgDvdLoadOK:Z

    .line 3190
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvpServicerHandler:Landroid/os/Handler;

    const/16 v2, 0xe

    invoke-direct {v1, v0, v2}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    .line 3191
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvphomeHandler:Landroid/os/Handler;

    invoke-direct {v1, v0, v2}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    goto/16 :goto_6

    :pswitch_37
    const-string v0, "DvdLogicManager"

    const-string v2, "[dvp][framework] Dvp Response, NODISC..."

    .line 3181
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3182
    sput-boolean v10, Lcom/autochips/dvp/DvdLogicManager;->fgDvdLoadOK:Z

    .line 3183
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvpServicerHandler:Landroid/os/Handler;

    const/16 v2, 0xd

    invoke-direct {v1, v0, v2}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    .line 3184
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvphomeHandler:Landroid/os/Handler;

    invoke-direct {v1, v0, v2}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    goto :goto_6

    :pswitch_38
    const-string v0, "DvdLogicManager"

    const-string v2, "[dvp][framework] Dvp Response, TRAY ERROR..."

    .line 3174
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3175
    sput-boolean v10, Lcom/autochips/dvp/DvdLogicManager;->fgDvdLoadOK:Z

    .line 3176
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvpServicerHandler:Landroid/os/Handler;

    const/16 v2, 0x16

    invoke-direct {v1, v0, v2}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    .line 3177
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvphomeHandler:Landroid/os/Handler;

    invoke-direct {v1, v0, v2}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    goto :goto_6

    :pswitch_39
    const-string v0, "DvdLogicManager"

    const-string v2, "[dvp][framework] Dvp Response, TRAY CLOSE..."

    .line 3167
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3168
    sput-boolean v10, Lcom/autochips/dvp/DvdLogicManager;->fgDvdLoadOK:Z

    .line 3169
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvpServicerHandler:Landroid/os/Handler;

    invoke-direct {v1, v0, v5}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    .line 3170
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvphomeHandler:Landroid/os/Handler;

    invoke-direct {v1, v0, v5}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    goto :goto_6

    :pswitch_3a
    const-string v0, "DvdLogicManager"

    const-string v2, "[dvp][framework] Dvp Response, TRAY OPEN..."

    .line 3157
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3158
    sput-boolean v10, Lcom/autochips/dvp/DvdLogicManager;->fgDvdLoadOK:Z

    .line 3159
    iput v10, v1, Lcom/autochips/dvp/DvdLogicManager;->mLoadedFlag:I

    .line 3160
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvpServicerHandler:Landroid/os/Handler;

    const/16 v2, 0x14

    invoke-direct {v1, v0, v2}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    .line 3161
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvphomeHandler:Landroid/os/Handler;

    invoke-direct {v1, v0, v2}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    .line 3162
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvdPlayHandler:Landroid/os/Handler;

    invoke-direct {v1, v0, v2}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    .line 3163
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvpListHandler:Landroid/os/Handler;

    invoke-direct {v1, v0, v2}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    goto :goto_6

    :pswitch_3b
    const-string v0, "DvdLogicManager"

    const-string v2, "[dvp][framework] Dvp Response, DVD LOADING..."

    .line 3146
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3147
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvpServicerHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-direct {v1, v0, v2}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    .line 3148
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvphomeHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-direct {v1, v0, v2}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    .line 3149
    iput v10, v1, Lcom/autochips/dvp/DvdLogicManager;->mFileCnt:I

    .line 3150
    sput-boolean v10, Lcom/autochips/dvp/DvdLogicManager;->fgDvdLoadOK:Z

    .line 3151
    sget-boolean v0, Lcom/autochips/dvp/DvdLogicManager;->fgCbmPause:Z

    if-eqz v0, :cond_2a

    .line 3152
    invoke-direct/range {p0 .. p0}, Lcom/autochips/dvp/DvdLogicManager;->stopLoadDVP()V

    .line 3198
    :cond_2a
    :goto_6
    monitor-exit v3

    goto/16 :goto_9

    :catchall_2
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :cond_2b
    const-string v0, "DvdLogicManager"

    const-string v2, "[dvp][framework] Dvp Response, frist pic ready"

    .line 3796
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3797
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvdPlayHandler:Landroid/os/Handler;

    const/16 v2, 0x30

    invoke-direct {v1, v0, v2}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    goto/16 :goto_9

    :cond_2c
    const-string v0, "DvdLogicManager"

    const-string v2, "[dvp][framework] Dvp Response, DVP_FL_MENU ..."

    .line 3330
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3331
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvdPlayHandler:Landroid/os/Handler;

    invoke-direct {v1, v0, v5}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    goto/16 :goto_9

    :cond_2d
    const-string v0, "DvdLogicManager"

    .line 3800
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[dvp][framework]iii ++++++++++++++++++ DVP_CMD_DISC_INSERT("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") ++++++++++++++++++"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v11, v2, :cond_2e

    .line 3802
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvpServicerHandler:Landroid/os/Handler;

    const/16 v2, 0xd

    invoke-direct {v1, v0, v2}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    .line 3803
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvphomeHandler:Landroid/os/Handler;

    invoke-direct {v1, v0, v2}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    goto/16 :goto_9

    :cond_2e
    if-ne v11, v2, :cond_3f

    .line 3806
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvpServicerHandler:Landroid/os/Handler;

    const/16 v2, 0x501

    invoke-direct {v1, v0, v2}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    goto/16 :goto_9

    :cond_2f
    const-string v0, "DvdLogicManager"

    .line 2989
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[dvp][framework] DVP Response -- DVP_CMD_ACK, cmd "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " val:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v2, v9, :cond_3a

    const/16 v0, 0x66

    if-eq v2, v6, :cond_39

    if-eq v2, v0, :cond_38

    const/16 v0, 0x69

    if-eq v2, v0, :cond_37

    const/16 v0, 0x80

    if-eq v2, v0, :cond_36

    const/16 v0, 0x82

    if-eq v2, v0, :cond_34

    const/16 v0, 0x22

    if-eq v2, v0, :cond_32

    const/16 v0, 0x23

    if-eq v2, v0, :cond_30

    packed-switch v2, :pswitch_data_9

    packed-switch v2, :pswitch_data_a

    goto/16 :goto_8

    .line 3119
    :pswitch_3c
    iput-boolean v10, v1, Lcom/autochips/dvp/DvdLogicManager;->mWaitSeek:Z

    const-string v0, "DvdLogicManager"

    .line 3120
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[dvp][framework] DVP Response -- DDVP_CMD_ACK_ARG_FUNC_MENU ..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :pswitch_3d
    const-string v0, "DvdLogicManager"

    const-string v4, "[dvp][framework] DVP Response -- DVP_CMD_ACK, dvp prev or next"

    .line 3055
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3056
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvdPlayHandler:Landroid/os/Handler;

    const/16 v4, 0x5b

    invoke-direct {v1, v0, v4}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    goto/16 :goto_8

    :pswitch_3e
    if-ne v3, v11, :cond_3d

    const-string v0, "DvdLogicManager"

    const-string v4, "[dvp][framework] DVP Response -- DVP_CMD_ACK, AP_CMD_PBC_STOP...OK"

    .line 3048
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3049
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvdPlayHandler:Landroid/os/Handler;

    const/16 v4, 0x62

    invoke-direct {v1, v0, v4}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    goto/16 :goto_8

    :pswitch_3f
    const-string v0, "DvdLogicManager"

    const-string v4, "[dvp][framework] DVP Response -- DVP_CMD_ACK, DVP_CMD_ACK_ARG_PBC_PAUSE fail"

    .line 3010
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_3d

    .line 3011
    sget-boolean v0, Lcom/autochips/dvp/DvdLogicManager;->fgCbmPause:Z

    if-eqz v0, :cond_3d

    iget v0, v1, Lcom/autochips/dvp/DvdLogicManager;->mPicCdPlayState:I

    goto/16 :goto_8

    .line 3003
    :pswitch_40
    iget v0, v1, Lcom/autochips/dvp/DvdLogicManager;->mInnerOp:I

    if-ne v0, v4, :cond_3d

    .line 3004
    iput v10, v1, Lcom/autochips/dvp/DvdLogicManager;->mInnerOp:I

    goto/16 :goto_7

    :cond_30
    if-ne v3, v11, :cond_31

    const-string v0, "DvdLogicManager"

    const-string v4, "[dvp][framework] DVP Response -- DVP_CMD_ACK, AP_FL_UP_LEVEL_OK..."

    .line 3034
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3035
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvpListHandler:Landroid/os/Handler;

    const/16 v4, 0x64

    invoke-direct {v1, v0, v4}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    goto/16 :goto_8

    :cond_31
    const-string v0, "DvdLogicManager"

    const-string v4, "[dvp][framework] DVP Response -- DVP_CMD_ACK, AP_FL_UP_LEVEL_FAIL --- fail!!!"

    .line 3038
    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3039
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvpListHandler:Landroid/os/Handler;

    const/16 v4, 0x65

    invoke-direct {v1, v0, v4}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    goto/16 :goto_7

    :cond_32
    if-ne v3, v11, :cond_3d

    const-string v0, "DvdLogicManager"

    const-string v4, "[dvp][framework] DVP Response -- DVP_CMD_ACK, FL_CLICK_ITEM"

    .line 3021
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3022
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvpListHandler:Landroid/os/Handler;

    const/16 v4, 0x60

    invoke-direct {v1, v0, v4}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    .line 3024
    iget v0, v1, Lcom/autochips/dvp/DvdLogicManager;->mDiscType:I

    if-eq v0, v8, :cond_33

    if-ne v0, v7, :cond_3d

    :cond_33
    const-string v0, ""

    .line 3026
    iput-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->mPlayedFileName:Ljava/lang/String;

    .line 3027
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvdPlayHandler:Landroid/os/Handler;

    const/16 v4, 0x60

    invoke-direct {v1, v0, v4}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    goto/16 :goto_8

    :cond_34
    if-ne v3, v11, :cond_35

    const-string v0, "DvdLogicManager"

    const-string v4, "[dvp][framework] DVP Response -- DVP_CMD_ACK, stop ripping ACK -- OK..."

    .line 3070
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3072
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvdPlayHandler:Landroid/os/Handler;

    const/16 v4, 0x49

    invoke-direct {v1, v0, v4}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    goto/16 :goto_8

    :cond_35
    const-string v0, "DvdLogicManager"

    const-string v4, "[dvp][framework] DVP Response -- DVP_CMD_ACK, NORIP2PLAY"

    .line 3075
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3077
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvdPlayHandler:Landroid/os/Handler;

    const/16 v4, 0x4a

    invoke-direct {v1, v0, v4}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    goto :goto_7

    :cond_36
    if-nez v3, :cond_3d

    const-string v0, "DvdLogicManager"

    const-string v4, "[dvp][framework] DVP Response -- DVP_CMD_ACK, AP_CMD_TP_COORDINATE_ERROR -- error!"

    .line 3086
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3087
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvdPlayHandler:Landroid/os/Handler;

    const/16 v4, 0x79

    invoke-direct {v1, v0, v4}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    goto :goto_7

    :cond_37
    if-ne v3, v11, :cond_3d

    const-string v0, "DvdLogicManager"

    const-string v4, "[dvp][framework] DVP Response -- DVP_CMD_ACK, AP_FUNC_DIGEST...OK"

    .line 3062
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3063
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvdPlayHandler:Landroid/os/Handler;

    const/16 v4, 0x63

    invoke-direct {v1, v0, v4}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    goto :goto_8

    :cond_38
    if-ne v3, v11, :cond_3d

    const-string v0, "DvdLogicManager"

    const-string v4, "[dvp][framework] DVP Response -- DDVP_CMD_ACK_ARG_FUNC_MENU ok ..."

    .line 3113
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3114
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvdPlayHandler:Landroid/os/Handler;

    invoke-direct {v1, v0, v5}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    goto :goto_8

    :cond_39
    if-nez v3, :cond_3c

    const-string v4, "DvdLogicManager"

    const-string v5, "[dvp][framework] DVP Response -- DVP_CMD_ACK, create list fail"

    .line 2996
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2997
    iget-object v4, v1, Lcom/autochips/dvp/DvdLogicManager;->dvpListHandler:Landroid/os/Handler;

    invoke-direct {v1, v4, v0}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    goto :goto_7

    :cond_3a
    if-ne v3, v11, :cond_3b

    const-string v0, ""

    .line 3096
    iput-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->mPlayedFileName:Ljava/lang/String;

    const-string v0, "DvdLogicManager"

    const-string v4, "[dvp][framework] DVP Response -- DVP_CMD_ACK, AP_CMD_TP_SUCCESS_STOP_DISC"

    .line 3097
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3098
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvpServicerHandler:Landroid/os/Handler;

    const/16 v4, 0x7c

    invoke-direct {v1, v0, v4}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    .line 3099
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvphomeHandler:Landroid/os/Handler;

    invoke-direct {v1, v0, v4}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    goto :goto_7

    :cond_3b
    const-string v0, "DvdLogicManager"

    const-string v4, "[dvp][framework] DVP Response -- DVP_CMD_ACK, DVP_CMD_ACK_ARG_EJECT -- error!"

    .line 3103
    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3104
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvpServicerHandler:Landroid/os/Handler;

    const/16 v4, 0x7d

    invoke-direct {v1, v0, v4}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    .line 3105
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvphomeHandler:Landroid/os/Handler;

    invoke-direct {v1, v0, v4}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    :cond_3c
    :goto_7
    move v10, v11

    :cond_3d
    :goto_8
    if-nez v10, :cond_3f

    if-nez v3, :cond_3f

    const-string v0, "DvdLogicManager"

    .line 3127
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[dvp][framework] DVP Response - DVP_CMD_ACK, cmd("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") fail!"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3128
    sget-boolean v0, Lcom/autochips/dvp/DvdLogicManager;->fgCbmPause:Z

    if-eqz v0, :cond_3e

    goto :goto_9

    .line 3132
    :cond_3e
    iget-object v0, v1, Lcom/autochips/dvp/DvdLogicManager;->dvdPlayHandler:Landroid/os/Handler;

    const/16 v2, 0x5a

    invoke-direct {v1, v0, v2}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    :cond_3f
    :goto_9
    return-void

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x37
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x51
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
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
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x61
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_16
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x71
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0xa0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0xb
        :pswitch_19
        :pswitch_18
        :pswitch_17
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_3b
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x40
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x45
        :pswitch_3d
        :pswitch_3d
        :pswitch_3c
    .end packed-switch
.end method

.method private initParam()V
    .locals 2

    const-string v0, "DvdLogicManager"

    const-string v1, "initParam()"

    .line 145
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    .line 146
    iput v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mDiscType:I

    const/4 v0, 0x0

    .line 147
    iput v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mVcdChannel:I

    const/4 v1, 0x1

    .line 148
    iput v1, p0, Lcom/autochips/dvp/DvdLogicManager;->mVcdPBC:I

    .line 149
    iput v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mRepeatMode:I

    .line 150
    iput v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mCurrentTitle:I

    .line 151
    iput v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mCurrentChapter:I

    .line 152
    iput v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mTitleCnt:I

    .line 153
    iput v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mChapterCount:I

    .line 154
    iput v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mCurrentTime:I

    .line 155
    iput v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mTotalTime:I

    .line 156
    iput v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mDiscTypeNum:I

    .line 157
    iput v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mDiscTypeCnt:I

    const-string v1, ""

    .line 158
    iput-object v1, p0, Lcom/autochips/dvp/DvdLogicManager;->mId3InfoTitle:Ljava/lang/String;

    .line 159
    iput-object v1, p0, Lcom/autochips/dvp/DvdLogicManager;->mId3InfoAlbum:Ljava/lang/String;

    .line 160
    iput-object v1, p0, Lcom/autochips/dvp/DvdLogicManager;->mId3InfoArtist:Ljava/lang/String;

    .line 161
    iput-object v1, p0, Lcom/autochips/dvp/DvdLogicManager;->mId3InfoGenre:Ljava/lang/String;

    .line 162
    iput-object v1, p0, Lcom/autochips/dvp/DvdLogicManager;->mId3InfoYear:Ljava/lang/String;

    .line 163
    iput v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mXResolution:I

    .line 164
    iput v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mYResolution:I

    .line 165
    iput v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mRipProgress:I

    .line 166
    iput v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mCurrentDirIndex:I

    .line 167
    iput v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mPicCdPlayState:I

    .line 168
    iput v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mPreviewPageIndex:I

    .line 169
    iput v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mPreviewPageCount:I

    .line 170
    iput v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mLMClickItemType:I

    .line 171
    iput v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mDDPlayType:I

    .line 172
    iput-boolean v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mWaitSeek:Z

    return-void
.end method

.method private static native native_DVP_AudioInfo_GetSpectrum()[B
.end method

.method private static native native_DVP_AudioInfo_GetSpectrumMaxVal()I
.end method

.method private static native native_DVP_AudioInfo_SetSpectrumMaxVal(B)I
.end method

.method private static native native_DVP_ChangeCurrentDir(I)I
.end method

.method private static native native_DVP_ChangeDevice(B)V
.end method

.method private static native native_DVP_CheckPwdResult(I)I
.end method

.method private static native native_DVP_ChooseDigitalNum(II)I
.end method

.method private static native native_DVP_CloseAudOutput(Z)I
.end method

.method private static native native_DVP_Connect()V
.end method

.method private static native native_DVP_CreateFileDatabase(I)I
.end method

.method private static native native_DVP_DVDClickMenuItem(I)I
.end method

.method private static native native_DVP_Deinit()V
.end method

.method private static native native_DVP_Down()I
.end method

.method private static native native_DVP_Eject()I
.end method

.method private static native native_DVP_GetAudioChannelCount()I
.end method

.method private static native native_DVP_GetAudioExeListType()I
.end method

.method private static native native_DVP_GetAudioPlayingCntByPlayType()I
.end method

.method private static native native_DVP_GetAudioPlayingDirIndex()I
.end method

.method private static native native_DVP_GetAudioPlayingDirTotalAudio()I
.end method

.method private static native native_DVP_GetAudioPlayingIdxByPlayType()I
.end method

.method private static native native_DVP_GetAudioTrackCount()I
.end method

.method private static native native_DVP_GetChapterCount()I
.end method

.method private static native native_DVP_GetCurAudioEncodecode()I
.end method

.method private static native native_DVP_GetCurAudioId3Txt(B)[B
.end method

.method private static native native_DVP_GetCurAudioLanguage()I
.end method

.method private static native native_DVP_GetCurDirAudioCount()I
.end method

.method private static native native_DVP_GetCurDirPicCount()I
.end method

.method private static native native_DVP_GetCurDirVideoCount()I
.end method

.method private static native native_DVP_GetCurFileCount()I
.end method

.method private static native native_DVP_GetCurFilePath()[B
.end method

.method private static native native_DVP_GetCurrentAudioChannel()I
.end method

.method private static native native_DVP_GetCurrentAudioIndex()I
.end method

.method private static native native_DVP_GetCurrentChapter()I
.end method

.method private static native native_DVP_GetCurrentDVDMenuState()I
.end method

.method private static native native_DVP_GetCurrentDir()Ljava/lang/String;
.end method

.method private static native native_DVP_GetCurrentPBCAngle()I
.end method

.method private static native native_DVP_GetCurrentSubtitle()I
.end method

.method private static native native_DVP_GetCurrentTitle()I
.end method

.method private static native native_DVP_GetCurrentZoomMultiple()I
.end method

.method private static native native_DVP_GetDiscAudioCount()I
.end method

.method private static native native_DVP_GetDiscPicCount()I
.end method

.method private static native native_DVP_GetDiscVideoCount()I
.end method

.method private static native native_DVP_GetDramFileItemInfo(I)I
.end method

.method private static native native_DVP_GetDuration()I
.end method

.method private static native native_DVP_GetExeListType()I
.end method

.method private static native native_DVP_GetFLCurDirIndex()I
.end method

.method private static native native_DVP_GetFLListType()I
.end method

.method private static native native_DVP_GetFileIdx()I
.end method

.method private static native native_DVP_GetFileItemInfo(I)I
.end method

.method private static native native_DVP_GetFirmwareVer()[B
.end method

.method private static native native_DVP_GetId3Pic()[B
.end method

.method private static native native_DVP_GetJPGResolution()I
.end method

.method private static native native_DVP_GetPBCAngleCount()I
.end method

.method private static native native_DVP_GetPBCState()I
.end method

.method private static native native_DVP_GetPBCUserMode()I
.end method

.method private static native native_DVP_GetPBState()I
.end method

.method private static native native_DVP_GetPlayingDirIdx()I
.end method

.method private static native native_DVP_GetPlayingIdx()I
.end method

.method private static native native_DVP_GetPlayingIdxByPlayType()I
.end method

.method private static native native_DVP_GetRepeatMode()I
.end method

.method private static native native_DVP_GetRipErrType()I
.end method

.method private static native native_DVP_GetRipTrkLbaLen(I)I
.end method

.method private static native native_DVP_GetServoVer()[B
.end method

.method private static native native_DVP_GetShuffleMode()I
.end method

.method private static native native_DVP_GetSubtitleCount()I
.end method

.method private static native native_DVP_GetSubtitleLanguage()I
.end method

.method private static native native_DVP_GetThumbNailFirstIdx()I
.end method

.method private static native native_DVP_GetTitleCount()I
.end method

.method private static native native_DVP_GetTotDirCnt()I
.end method

.method private static native native_DVP_GetTrackCount()I
.end method

.method private static native native_DVP_GetTrayStatus()I
.end method

.method private static native native_DVP_GetVCDAudioChannelCnt()I
.end method

.method private static native native_DVP_GetVCDCurChannel()I
.end method

.method private static native native_DVP_GotoRootMenu()I
.end method

.method private static native native_DVP_GotoTitleMenu()I
.end method

.method private static native native_DVP_GotoUpLevel()I
.end method

.method private static native native_DVP_Init()I
.end method

.method private static native native_DVP_Is1stPicArrival()Z
.end method

.method private static native native_DVP_IsDiscInsert()Z
.end method

.method private static native native_DVP_ItemClick(I)I
.end method

.method private static native native_DVP_JpegDgt_GapAndSize(BBBB)I
.end method

.method private static native native_DVP_JpegDgt_NumAndStartPos(BBBB)I
.end method

.method private static native native_DVP_LastMemoryClear()V
.end method

.method private static native native_DVP_LastMemoryLoad()V
.end method

.method private static native native_DVP_LastMerofyWrite()V
.end method

.method private static native native_DVP_Left()I
.end method

.method private static native native_DVP_Mix2APHWPath(Z)I
.end method

.method private static native native_DVP_Mix2APWrChannel(Z)I
.end method

.method private static native native_DVP_OpenAudOutput(Z)I
.end method

.method private static native native_DVP_Pause()I
.end method

.method private static native native_DVP_Play()I
.end method

.method private static native native_DVP_PlayNext()I
.end method

.method private static native native_DVP_PlayPrev()I
.end method

.method private static native native_DVP_RearSwitch(Z)I
.end method

.method private static native native_DVP_Right()I
.end method

.method private static native native_DVP_RotateImage()I
.end method

.method private static native native_DVP_SeekToTime(I)I
.end method

.method private static native native_DVP_SetBaseFileID(I)I
.end method

.method private static native native_DVP_SetDvdRegion(B)I
.end method

.method private static native native_DVP_SetImageViewMode(I)I
.end method

.method private static native native_DVP_SetPBCState()I
.end method

.method private static native native_DVP_SetPBCUserMode(B)I
.end method

.method private static native native_DVP_SetPBMode(I)I
.end method

.method private static native native_DVP_SetRipPath(Ljava/lang/String;)I
.end method

.method private static native native_DVP_SetRipSpeedMode(B)I
.end method

.method private static native native_DVP_StartRip(I)I
.end method

.method private static native native_DVP_Stop()I
.end method

.method private static native native_DVP_StopRip()I
.end method

.method private static native native_DVP_SwitchAudioChannel(B)I
.end method

.method private static native native_DVP_SwitchPBCAngle(B)I
.end method

.method private static native native_DVP_SwitchSubtitle(I)I
.end method

.method private static native native_DVP_Up()I
.end method

.method private static native native_DVP_ZoomIn()I
.end method

.method private static native native_DVP_ZoomOut()I
.end method

.method private static native native_setFrontSurface(Landroid/view/Surface;)V
.end method

.method private navGetCurFilePath()Ljava/lang/String;
    .locals 3

    const-string v0, "DvdLogicManager"

    const-string v1, "[dvp][framework] getCurFilePath"

    .line 848
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_GetCurFilePath()[B

    move-result-object v0

    .line 853
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 856
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private navGetCurrentDir()Ljava/lang/String;
    .locals 3

    const-string v0, "DvdLogicManager"

    const-string v1, "[dvp][framework] navGetCurrentDir"

    .line 1351
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_GetCurrentDir()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [B

    :try_start_0
    const-string v2, "UTF-16LE"

    .line 1356
    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1360
    :catch_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private navGetId3Pic()[B
    .locals 3

    const-string v0, "DvdLogicManager"

    const-string v1, "[dvp][framework] navGetId3Pic"

    .line 1328
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_GetId3Pic()[B

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "[dvp][framework] get pic data = null"

    .line 1337
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v1
.end method

.method private notifyActivity(III)V
    .locals 0

    .line 2277
    invoke-direct {p0, p1, p2, p3}, Lcom/autochips/dvp/DvdLogicManager;->handleDvpCmd(III)V

    return-void
.end method

.method private onAutoPlay()V
    .locals 3

    .line 586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[dvp][framework] onAutoPlay, mDiscType:%d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/autochips/dvp/DvdLogicManager;->mDiscType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DvdLogicManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    iget v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mDiscType:I

    const/16 v2, 0xb

    if-ne v2, v0, :cond_1

    const-string v0, "[dvp][framework] onAutoPlay send cmd play"

    .line 588
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    invoke-virtual {p0}, Lcom/autochips/dvp/DvdLogicManager;->play()I

    .line 591
    iget-object v0, p0, Lcom/autochips/dvp/DvdLogicManager;->dvpListHandler:Landroid/os/Handler;

    const/16 v1, 0x5f

    if-nez v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/autochips/dvp/DvdLogicManager;->dvpServicerHandler:Landroid/os/Handler;

    invoke-direct {p0, v0, v1}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    goto :goto_0

    .line 595
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private onCbmPause()V
    .locals 4

    .line 2139
    iget-object v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mSyncObj:Ljava/lang/Object;

    monitor-enter v0

    .line 2140
    :try_start_0
    sget-boolean v1, Lcom/autochips/dvp/DvdLogicManager;->fgCbmPause:Z

    if-eqz v1, :cond_0

    const-string v1, "DvdLogicManager"

    const-string v2, "[dvp][framework] CBM STOP DVP"

    .line 2141
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2142
    monitor-exit v0

    return-void

    :cond_0
    const-string v1, "DvdLogicManager"

    const-string v2, "[dvp][framework] requestResourse, CBM STOP DVP"

    .line 2145
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2146
    sget-boolean v1, Lcom/autochips/dvp/DvdLogicManager;->fgDvdLoadOK:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    const/4 v1, -0x1

    .line 2148
    invoke-static {v1}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_ChangeDevice(B)V

    .line 2149
    invoke-virtual {p0}, Lcom/autochips/dvp/DvdLogicManager;->lastMerofyWrite()V

    .line 2150
    iput-boolean v3, p0, Lcom/autochips/dvp/DvdLogicManager;->mDeviceEnable:Z

    .line 2151
    iput-boolean v2, p0, Lcom/autochips/dvp/DvdLogicManager;->mCbmNoLoadOkPause:Z

    .line 2154
    :cond_1
    iget-boolean v1, p0, Lcom/autochips/dvp/DvdLogicManager;->mFrontDisplayOpen:Z

    if-eqz v1, :cond_2

    .line 2155
    invoke-static {v3}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_Mix2APWrChannel(Z)I

    .line 2156
    invoke-super {p0, v3}, Lcom/autochips/dvp/DvdManagerClient;->openFrontDisplay(Z)I

    .line 2159
    :cond_2
    iget-boolean v1, p0, Lcom/autochips/dvp/DvdLogicManager;->mRearDisplayOpen:Z

    if-eqz v1, :cond_3

    .line 2160
    invoke-static {v3}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_RearSwitch(Z)I

    .line 2161
    invoke-super {p0, v3}, Lcom/autochips/dvp/DvdManagerClient;->openRearDisplay(Z)I

    .line 2164
    :cond_3
    iget-boolean v1, p0, Lcom/autochips/dvp/DvdLogicManager;->mFrontAudioOpen:Z

    if-eqz v1, :cond_4

    .line 2165
    invoke-static {v2}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_CloseAudOutput(Z)I

    .line 2166
    invoke-super {p0, v2}, Lcom/autochips/dvp/DvdManagerClient;->closeAudOutput(Z)I

    .line 2169
    :cond_4
    iget-boolean v1, p0, Lcom/autochips/dvp/DvdLogicManager;->mRearAudioOpen:Z

    if-eqz v1, :cond_5

    .line 2170
    invoke-static {v3}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_CloseAudOutput(Z)I

    .line 2171
    invoke-super {p0, v3}, Lcom/autochips/dvp/DvdManagerClient;->closeAudOutput(Z)I

    .line 2174
    :cond_5
    invoke-virtual {p0}, Lcom/autochips/dvp/DvdLogicManager;->pause()I

    .line 2175
    sput-boolean v2, Lcom/autochips/dvp/DvdLogicManager;->fgCbmPause:Z

    .line 2176
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onCbmResume()V
    .locals 5

    .line 2189
    iget-object v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mSyncObj:Ljava/lang/Object;

    monitor-enter v0

    .line 2190
    :try_start_0
    sget-boolean v1, Lcom/autochips/dvp/DvdLogicManager;->fgCbmPause:Z

    if-nez v1, :cond_0

    .line 2191
    monitor-exit v0

    return-void

    :cond_0
    const-string v1, "DvdLogicManager"

    const-string v2, "[dvp][framework] requestResourse, CBM Resume DVP"

    .line 2193
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 2194
    sput-boolean v1, Lcom/autochips/dvp/DvdLogicManager;->fgCbmPause:Z

    .line 2196
    iput-boolean v1, p0, Lcom/autochips/dvp/DvdLogicManager;->mCbmNoLoadOkPause:Z

    .line 2197
    iget-boolean v2, p0, Lcom/autochips/dvp/DvdLogicManager;->mDeviceEnable:Z

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 2199
    iput v1, p0, Lcom/autochips/dvp/DvdLogicManager;->mLoadedFlag:I

    .line 2200
    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_Connect()V

    .line 2201
    invoke-static {v1}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_ChangeDevice(B)V

    .line 2202
    iput-boolean v3, p0, Lcom/autochips/dvp/DvdLogicManager;->mDeviceEnable:Z

    .line 2205
    :cond_1
    iget-object v2, p0, Lcom/autochips/dvp/DvdLogicManager;->mSurface:Landroid/view/Surface;

    if-eqz v2, :cond_2

    .line 2206
    iget-object v2, p0, Lcom/autochips/dvp/DvdLogicManager;->mSurface:Landroid/view/Surface;

    invoke-static {v2}, Lcom/autochips/dvp/DvdLogicManager;->native_setFrontSurface(Landroid/view/Surface;)V

    .line 2209
    :cond_2
    iget-boolean v2, p0, Lcom/autochips/dvp/DvdLogicManager;->mFrontDisplayOpen:Z

    if-eqz v2, :cond_3

    .line 2210
    invoke-static {v3}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_Mix2APWrChannel(Z)I

    .line 2211
    invoke-super {p0, v3}, Lcom/autochips/dvp/DvdManagerClient;->openFrontDisplay(Z)I

    .line 2214
    :cond_3
    iget-boolean v2, p0, Lcom/autochips/dvp/DvdLogicManager;->mRearDisplayOpen:Z

    if-eqz v2, :cond_4

    .line 2215
    invoke-static {v3}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_RearSwitch(Z)I

    .line 2216
    invoke-super {p0, v3}, Lcom/autochips/dvp/DvdManagerClient;->openRearDisplay(Z)I

    .line 2219
    :cond_4
    sget-boolean v2, Lcom/autochips/dvp/DvdLogicManager;->fgDvdLoadOK:Z

    if-eqz v2, :cond_5

    const/16 v2, 0x40

    .line 2220
    iput v2, p0, Lcom/autochips/dvp/DvdLogicManager;->mInnerOp:I

    .line 2221
    invoke-virtual {p0}, Lcom/autochips/dvp/DvdLogicManager;->play()I

    const-string v2, "DvdLogicManager"

    const-string v4, "[dvp][framework] requestResourse, when last cmd_stop/cmd_pause coming"

    .line 2222
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2225
    :cond_5
    iget-boolean v2, p0, Lcom/autochips/dvp/DvdLogicManager;->mFrontAudioOpen:Z

    if-eqz v2, :cond_6

    .line 2226
    invoke-static {v3}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_OpenAudOutput(Z)I

    .line 2227
    invoke-super {p0, v3}, Lcom/autochips/dvp/DvdManagerClient;->openAudOutput(Z)I

    .line 2230
    :cond_6
    iget-boolean v2, p0, Lcom/autochips/dvp/DvdLogicManager;->mRearAudioOpen:Z

    if-eqz v2, :cond_7

    .line 2231
    invoke-static {v1}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_OpenAudOutput(Z)I

    .line 2232
    invoke-super {p0, v1}, Lcom/autochips/dvp/DvdManagerClient;->openAudOutput(Z)I

    .line 2234
    :cond_7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private queryCBMCurrentSrc()I
    .locals 3

    .line 1797
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1801
    sget-object v1, Lcom/autochips/dvp/DvdLogicManager;->manager:Landroid/cbm/CBManager;

    if-nez v1, :cond_0

    .line 1802
    new-instance v1, Landroid/cbm/CBManager;

    invoke-direct {v1}, Landroid/cbm/CBManager;-><init>()V

    sput-object v1, Lcom/autochips/dvp/DvdLogicManager;->manager:Landroid/cbm/CBManager;

    .line 1806
    :cond_0
    :try_start_0
    sget-object v1, Lcom/autochips/dvp/DvdLogicManager;->manager:Landroid/cbm/CBManager;

    invoke-virtual {v1, v0}, Landroid/cbm/CBManager;->query(Landroid/os/Parcel;)I

    const/4 v1, 0x0

    .line 1807
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1808
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-lez v2, :cond_1

    .line 1810
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1813
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method private request()Z
    .locals 7

    .line 1821
    sget-object v0, Lcom/autochips/dvp/DvdLogicManager;->manager:Landroid/cbm/CBManager;

    if-nez v0, :cond_0

    .line 1822
    new-instance v0, Landroid/cbm/CBManager;

    invoke-direct {v0}, Landroid/cbm/CBManager;-><init>()V

    sput-object v0, Lcom/autochips/dvp/DvdLogicManager;->manager:Landroid/cbm/CBManager;

    .line 1825
    :cond_0
    sget-object v0, Lcom/autochips/dvp/DvdLogicManager;->manager:Landroid/cbm/CBManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "DvdLogicManager"

    if-eqz v0, :cond_1

    const-string v0, "[dvp][framework] requestResourse, send cbm request"

    .line 1826
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1827
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v4, 0x7

    .line 1830
    :try_start_0
    sget-object v5, Lcom/autochips/dvp/DvdLogicManager;->manager:Landroid/cbm/CBManager;

    invoke-virtual {v5, v4, v2, v0}, Landroid/cbm/CBManager;->request(IILandroid/os/Parcel;)I

    .line 1831
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1832
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[dvp][framework] requestResourse, request ret:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1834
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1

    :cond_1
    move v4, v1

    :goto_0
    if-nez v4, :cond_2

    const-string v0, "[dvp][framework] requestResourse, cbm forbiden play dvd"

    .line 1839
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1843
    :cond_2
    iput v2, p0, Lcom/autochips/dvp/DvdLogicManager;->mDestination:I

    .line 1845
    sget-object v0, Lcom/autochips/dvp/DvdLogicManager;->manager:Landroid/cbm/CBManager;

    new-instance v1, Lcom/autochips/dvp/DvdLogicManager$1;

    invoke-direct {v1, p0}, Lcom/autochips/dvp/DvdLogicManager$1;-><init>(Lcom/autochips/dvp/DvdLogicManager;)V

    invoke-virtual {v0, v1}, Landroid/cbm/CBManager;->setOnActionListener(Landroid/cbm/CBManager$OnActionListener;)V

    return v2
.end method

.method private requestSwitch(ZZ)Z
    .locals 7

    .line 1898
    sget-object v0, Lcom/autochips/dvp/DvdLogicManager;->manager:Landroid/cbm/CBManager;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "[dvp][framework] open cbm forbid to close dvd front!"

    const-string v2, "DvdLogicManager"

    const/4 v3, 0x7

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x3

    if-eqz p1, :cond_8

    if-eqz p2, :cond_3

    .line 1904
    iget p1, p0, Lcom/autochips/dvp/DvdLogicManager;->mDestination:I

    if-eq p1, v1, :cond_10

    if-eq p1, v6, :cond_10

    .line 1906
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p1

    .line 1907
    iget p2, p0, Lcom/autochips/dvp/DvdLogicManager;->mDestination:I

    if-ne p2, v4, :cond_1

    goto :goto_0

    :cond_1
    move v6, v1

    .line 1917
    :goto_0
    :try_start_0
    sget-object p2, Lcom/autochips/dvp/DvdLogicManager;->manager:Landroid/cbm/CBManager;

    invoke-virtual {p2, v3, v6, p1}, Landroid/cbm/CBManager;->swiRequest(IILandroid/os/Parcel;)I

    .line 1919
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "[dvp][framework] open cbm forbid to open dvd front!"

    .line 1922
    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1928
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return v5

    .line 1926
    :cond_2
    :try_start_1
    iput v6, p0, Lcom/autochips/dvp/DvdLogicManager;->mDestination:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1928
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    goto/16 :goto_5

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    throw p2

    .line 1933
    :cond_3
    iget p1, p0, Lcom/autochips/dvp/DvdLogicManager;->mDestination:I

    if-eq p1, v1, :cond_4

    if-ne p1, v6, :cond_10

    .line 1935
    :cond_4
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p1

    .line 1936
    iget p2, p0, Lcom/autochips/dvp/DvdLogicManager;->mDestination:I

    if-ne p2, v6, :cond_5

    goto :goto_1

    :cond_5
    move v4, v5

    :goto_1
    if-eqz v4, :cond_7

    .line 1947
    :try_start_2
    sget-object p2, Lcom/autochips/dvp/DvdLogicManager;->manager:Landroid/cbm/CBManager;

    invoke-virtual {p2, v3, v4, p1}, Landroid/cbm/CBManager;->swiRequest(IILandroid/os/Parcel;)I

    .line 1948
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-nez p2, :cond_6

    .line 1951
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1955
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return v5

    :cond_6
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    goto :goto_2

    :catchall_1
    move-exception p2

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    throw p2

    .line 1959
    :cond_7
    :goto_2
    iput v4, p0, Lcom/autochips/dvp/DvdLogicManager;->mDestination:I

    goto :goto_5

    :cond_8
    if-eqz p2, :cond_b

    .line 1965
    iget p1, p0, Lcom/autochips/dvp/DvdLogicManager;->mDestination:I

    if-eq p1, v4, :cond_10

    if-eq p1, v6, :cond_10

    .line 1967
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p1

    .line 1968
    iget p2, p0, Lcom/autochips/dvp/DvdLogicManager;->mDestination:I

    if-ne p2, v1, :cond_9

    move v4, v6

    .line 1978
    :cond_9
    :try_start_3
    sget-object p2, Lcom/autochips/dvp/DvdLogicManager;->manager:Landroid/cbm/CBManager;

    invoke-virtual {p2, v3, v4, p1}, Landroid/cbm/CBManager;->swiRequest(IILandroid/os/Parcel;)I

    .line 1980
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-nez p2, :cond_a

    const-string p2, "[dvp][framework] open cbm forbid to open dvd rear!"

    .line 1983
    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1989
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return v5

    .line 1987
    :cond_a
    :try_start_4
    iput v4, p0, Lcom/autochips/dvp/DvdLogicManager;->mDestination:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1989
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    goto :goto_5

    :catchall_2
    move-exception p2

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    throw p2

    .line 1994
    :cond_b
    iget p1, p0, Lcom/autochips/dvp/DvdLogicManager;->mDestination:I

    if-eq p1, v4, :cond_c

    if-ne p1, v6, :cond_10

    .line 1996
    :cond_c
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p1

    .line 1997
    iget p2, p0, Lcom/autochips/dvp/DvdLogicManager;->mDestination:I

    if-ne p2, v6, :cond_d

    move p2, v1

    goto :goto_3

    :cond_d
    move p2, v5

    :goto_3
    if-eqz p2, :cond_f

    .line 2008
    :try_start_5
    sget-object v4, Lcom/autochips/dvp/DvdLogicManager;->manager:Landroid/cbm/CBManager;

    invoke-virtual {v4, v3, p2, p1}, Landroid/cbm/CBManager;->swiRequest(IILandroid/os/Parcel;)I

    .line 2009
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-nez v3, :cond_e

    .line 2012
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 2016
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return v5

    :cond_e
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    goto :goto_4

    :catchall_3
    move-exception p2

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    throw p2

    .line 2020
    :cond_f
    :goto_4
    iput p2, p0, Lcom/autochips/dvp/DvdLogicManager;->mDestination:I

    :cond_10
    :goto_5
    return v1
.end method

.method private sendMsgToHandle(Landroid/os/Handler;I)V
    .locals 1

    .line 3835
    iget-boolean v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mCbmNoLoadOkPause:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autochips/dvp/DvdLogicManager;->dvphomeHandler:Landroid/os/Handler;

    if-ne p1, v0, :cond_0

    const-string p1, "DvdLogicManager"

    const-string p2, "[dvp][framework] ++++++++++++ mCbmNoLoadOkPause no send msg to home handle ++++++++++++"

    .line 3836
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 3842
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3843
    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method private static setFileItemInfo(SLjava/lang/String;)I
    .locals 0

    .line 2334
    sput p0, Lcom/autochips/dvp/DvdLogicManager;->iType:I

    .line 2335
    sput-object p1, Lcom/autochips/dvp/DvdLogicManager;->sFileName:Ljava/lang/String;

    .line 2336
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "[dvp][framework] setFileItemInfo type "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/autochips/dvp/DvdLogicManager;->iType:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " name "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/autochips/dvp/DvdLogicManager;->sFileName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DvdLogicManager"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private stopLoadDVP()V
    .locals 3

    const-string v0, "DvdLogicManager"

    const-string v1, "[dvp][framework] stopLoadDVP"

    .line 2107
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2108
    sget-boolean v0, Lcom/autochips/dvp/DvdLogicManager;->fgDvdLoadOK:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 2110
    invoke-static {v0}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_ChangeDevice(B)V

    .line 2111
    invoke-virtual {p0}, Lcom/autochips/dvp/DvdLogicManager;->lastMerofyWrite()V

    .line 2112
    iput-boolean v2, p0, Lcom/autochips/dvp/DvdLogicManager;->mDeviceEnable:Z

    .line 2113
    iput-boolean v1, p0, Lcom/autochips/dvp/DvdLogicManager;->mCbmNoLoadOkPause:Z

    .line 2116
    :cond_0
    iget-boolean v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mFrontDisplayOpen:Z

    if-eqz v0, :cond_1

    .line 2117
    invoke-static {v2}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_Mix2APWrChannel(Z)I

    .line 2118
    invoke-super {p0, v2}, Lcom/autochips/dvp/DvdManagerClient;->openFrontDisplay(Z)I

    .line 2121
    :cond_1
    iget-boolean v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mRearDisplayOpen:Z

    if-eqz v0, :cond_2

    .line 2122
    invoke-static {v2}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_RearSwitch(Z)I

    .line 2123
    invoke-super {p0, v2}, Lcom/autochips/dvp/DvdManagerClient;->openRearDisplay(Z)I

    .line 2126
    :cond_2
    iget-boolean v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mFrontAudioOpen:Z

    if-eqz v0, :cond_3

    .line 2127
    invoke-static {v1}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_CloseAudOutput(Z)I

    .line 2128
    invoke-super {p0, v1}, Lcom/autochips/dvp/DvdManagerClient;->closeAudOutput(Z)I

    .line 2131
    :cond_3
    iget-boolean v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mRearAudioOpen:Z

    if-eqz v0, :cond_4

    .line 2132
    invoke-static {v2}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_CloseAudOutput(Z)I

    .line 2133
    invoke-super {p0, v2}, Lcom/autochips/dvp/DvdManagerClient;->closeAudOutput(Z)I

    :cond_4
    return-void
.end method


# virtual methods
.method public CBMConfig(Z)V
    .locals 2

    .line 2060
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CBMConfig(): enter controled by CBM play later "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/autochips/dvp/DvdLogicManager;->manager:Landroid/cbm/CBManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isAppResume"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DvdLogicManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2061
    sget-object v0, Lcom/autochips/dvp/DvdLogicManager;->manager:Landroid/cbm/CBManager;

    if-nez v0, :cond_0

    .line 2062
    new-instance v0, Landroid/cbm/CBManager;

    invoke-direct {v0}, Landroid/cbm/CBManager;-><init>()V

    sput-object v0, Lcom/autochips/dvp/DvdLogicManager;->manager:Landroid/cbm/CBManager;

    .line 2064
    :cond_0
    sget-object v0, Lcom/autochips/dvp/DvdLogicManager;->manager:Landroid/cbm/CBManager;

    if-eqz v0, :cond_1

    .line 2065
    invoke-virtual {v0, p1}, Landroid/cbm/CBManager;->config(Z)V

    :cond_1
    return-void
.end method

.method public CBMResume()I
    .locals 5

    .line 2076
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CBMConfig(): enter controled by CBM play later"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/autochips/dvp/DvdLogicManager;->manager:Landroid/cbm/CBManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DvdLogicManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2078
    sget-object v0, Lcom/autochips/dvp/DvdLogicManager;->manager:Landroid/cbm/CBManager;

    const/4 v2, -0x1

    if-eqz v0, :cond_1

    .line 2079
    invoke-virtual {v0}, Landroid/cbm/CBManager;->appResume()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2081
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CBMConfig(): retCbm is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const-string v0, "CBMConfig(): mCBM is null"

    .line 2088
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public DVP_ChooseDigitalNum(II)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2429
    invoke-static {p1, p2}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_ChooseDigitalNum(II)I

    move-result p1

    const-string p2, "DvdLogicManager"

    const-string v0, "[dvp][framework] DVP_ChooseDigitalNum"

    .line 2430
    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public GetAudioExeListType()I
    .locals 2

    const-string v0, "DvdLogicManager"

    const-string v1, "[dvp][framework] GetAudioExeListType"

    .line 2709
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2710
    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_GetAudioExeListType()I

    move-result v0

    return v0
.end method

.method public GetAudioPlayingCntByPlayType()I
    .locals 2

    const-string v0, "DvdLogicManager"

    const-string v1, "[dvp][framework] GetAudioPlayingDirTotalAudio"

    .line 2721
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2722
    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_GetAudioPlayingCntByPlayType()I

    move-result v0

    return v0
.end method

.method public GetAudioPlayingDirTotalAudio()I
    .locals 2

    const-string v0, "DvdLogicManager"

    const-string v1, "[dvp][framework] GetAudioPlayingDirTotalAudio"

    .line 2715
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2716
    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_GetAudioPlayingDirTotalAudio()I

    move-result v0

    return v0
.end method

.method public GetAudioPlayingIdxByPlayType()I
    .locals 2

    const-string v0, "DvdLogicManager"

    const-string v1, "[dvp][framework] GetAudioPlayingIdxByPlayType"

    .line 2727
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2728
    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_GetAudioPlayingIdxByPlayType()I

    move-result v0

    return v0
.end method

.method public GetAudioTrackCount()I
    .locals 2

    const-string v0, "DvdLogicManager"

    const-string v1, "[dvp][framework] GetAudioTrackCount"

    .line 2703
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2704
    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_GetAudioTrackCount()I

    move-result v0

    return v0
.end method

.method public GetCurDirAudioCount()I
    .locals 2

    const-string v0, "DvdLogicManager"

    const-string v1, "[dvp][framework] GetCurDirAudioCount"

    .line 2757
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2758
    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_GetCurDirAudioCount()I

    move-result v0

    return v0
.end method

.method public GetCurDirPicCount()I
    .locals 2

    const-string v0, "DvdLogicManager"

    const-string v1, "[dvp][framework] GetCurDirPicCount"

    .line 2763
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2764
    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_GetCurDirPicCount()I

    move-result v0

    return v0
.end method

.method public GetCurDirVideoCount()I
    .locals 2

    const-string v0, "DvdLogicManager"

    const-string v1, "[dvp][framework] GetCurDirVideoCount"

    .line 2751
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2752
    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_GetCurDirVideoCount()I

    move-result v0

    return v0
.end method

.method public GetExeListType()I
    .locals 2

    const-string v0, "DvdLogicManager"

    const-string v1, "[dvp][framework] GetExeListType"

    .line 2691
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2692
    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_GetExeListType()I

    move-result v0

    return v0
.end method

.method public GetFLCurDirIndex()I
    .locals 2

    const-string v0, "DvdLogicManager"

    const-string v1, "[dvp][framework] GetFLCurDirIndex"

    .line 2745
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2746
    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_GetFLCurDirIndex()I

    move-result v0

    return v0
.end method

.method public GetFLListType()I
    .locals 2

    const-string v0, "DvdLogicManager"

    const-string v1, "[dvp][framework] GetFLListType"

    .line 2739
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2740
    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_GetFLListType()I

    move-result v0

    return v0
.end method

.method public GetPlayingDirIdx()I
    .locals 2

    const-string v0, "DvdLogicManager"

    const-string v1, "[dvp][framework] GetPlayingDirIdx"

    .line 2685
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2686
    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_GetPlayingDirIdx()I

    move-result v0

    return v0
.end method

.method public GetPlayingIdxByPlayType()I
    .locals 2

    const-string v0, "DvdLogicManager"

    const-string v1, "[dvp][framework] GetPlayingIdxByPlayType"

    .line 2697
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2698
    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_GetPlayingIdxByPlayType()I

    move-result v0

    return v0
.end method

.method public GetTotDirCnt()I
    .locals 2

    const-string v0, "DvdLogicManager"

    const-string v1, "[dvp][framework] GetTotDirCnt"

    .line 2733
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2734
    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_GetTotDirCnt()I

    move-result v0

    return v0
.end method

.method public IsDiscInsert()Z
    .locals 2

    const-string v0, "DvdLogicManager"

    const-string v1, "[dvp][framework] IsDiscInsert"

    .line 2679
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2680
    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_IsDiscInsert()Z

    move-result v0

    return v0
.end method

.method public JpegDgt_GapAndSize(BBBB)I
    .locals 0

    .line 2635
    invoke-static {p1, p2, p3, p4}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_JpegDgt_GapAndSize(BBBB)I

    move-result p1

    const-string p2, "DvdLogicManager"

    const-string p3, "[dvp][framework] JpegDgt_GapAndSize"

    .line 2636
    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public JpegDgt_NumAndStartPos(BBBB)I
    .locals 0

    .line 2648
    invoke-static {p1, p2, p3, p4}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_JpegDgt_GapAndSize(BBBB)I

    move-result p1

    const-string p2, "DvdLogicManager"

    const-string p3, "[dvp][framework] JpegDgt_GapAndSize"

    .line 2649
    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public KeyDown()I
    .locals 3

    .line 2599
    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_Down()I

    move-result v0

    const-string v1, "DvdLogicManager"

    const-string v2, "[dvp][framework] down"

    .line 2600
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public KeyLeft()I
    .locals 3

    .line 2611
    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_Left()I

    move-result v0

    const-string v1, "DvdLogicManager"

    const-string v2, "[dvp][framework] Left"

    .line 2612
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public KeyRight()I
    .locals 3

    .line 2623
    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_Right()I

    move-result v0

    const-string v1, "DvdLogicManager"

    const-string v2, "[dvp][framework] Right"

    .line 2624
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public KeyUp()I
    .locals 3

    .line 2587
    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_Up()I

    move-result v0

    const-string v1, "DvdLogicManager"

    const-string v2, "[dvp][framework] Up"

    .line 2588
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public SetDvdRegion(B)I
    .locals 3

    .line 2672
    invoke-static {p1}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_SetDvdRegion(B)I

    move-result v0

    .line 2673
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dvp][framework] SetDvdRegion"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "DvdLogicManager"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public SetRipSpeedMode(B)I
    .locals 3

    .line 2660
    invoke-static {p1}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_SetRipSpeedMode(B)I

    move-result v0

    .line 2661
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dvp][framework] native_DVP_SetRipSpeedMode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "DvdLogicManager"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public castTmStr(J)Ljava/lang/String;
    .locals 10

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const-string p1, "00:00:00"

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const-wide/16 v2, 0x3e8

    .line 1764
    div-long/2addr p1, v2

    const-wide/16 v2, 0x3c

    div-long v4, p1, v2

    div-long v6, v4, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v1, v7

    const-string v6, "%02d"

    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1765
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1766
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v8, v0, [Ljava/lang/Object;

    rem-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v8, v7

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1767
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1768
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v0, [Ljava/lang/Object;

    rem-long/2addr p1, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v7

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public cbmPause()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "DvdLogicManager"

    const-string v1, "[dvp][framework] not to use the interface"

    .line 2102
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public cbmResume()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "DvdLogicManager"

    const-string v1, "[dvp][framework] not to use the interface"

    .line 2185
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public changeCurrentDir(I)I
    .locals 3

    .line 754
    invoke-static {p1}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_ChangeCurrentDir(I)I

    move-result v0

    .line 755
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dvp][framework] changeCurrentDir, index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ret:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "DvdLogicManager"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public checkPwdResult(I)I
    .locals 3

    .line 1556
    invoke-static {p1}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_CheckPwdResult(I)I

    move-result v0

    .line 1557
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dvp][framework] checkPwdResult, iPwdResult:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ret:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "DvdLogicManager"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public chooseDigitalNum(II)I
    .locals 1

    .line 2413
    invoke-static {p1, p2}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_ChooseDigitalNum(II)I

    move-result p1

    const-string p2, "DvdLogicManager"

    const-string v0, "[dvp][framework] DVP_ChooseDigitalNum"

    .line 2414
    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public clickDVDMenuItem(I)I
    .locals 3

    .line 1084
    invoke-static {p1}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_DVDClickMenuItem(I)I

    move-result v0

    .line 1085
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dvp][framework] clickDVDMenuItem, coordinate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ret:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "DvdLogicManager"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public closeAudOutput(Z)I
    .locals 7

    .line 1182
    iget-object v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mSyncObj:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1183
    :try_start_0
    iget-boolean v2, p0, Lcom/autochips/dvp/DvdLogicManager;->mFrontAudioOpen:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    if-nez p1, :cond_2

    iget-boolean v2, p0, Lcom/autochips/dvp/DvdLogicManager;->mRearAudioOpen:Z

    if-nez v2, :cond_2

    .line 1184
    :cond_1
    monitor-exit v0

    return v1

    :cond_2
    if-eqz p1, :cond_3

    .line 1188
    iput-boolean v1, p0, Lcom/autochips/dvp/DvdLogicManager;->mFrontAudioOpen:Z

    :cond_3
    if-nez p1, :cond_4

    .line 1192
    iput-boolean v1, p0, Lcom/autochips/dvp/DvdLogicManager;->mRearAudioOpen:Z

    .line 1195
    :cond_4
    sget-boolean v2, Lcom/autochips/dvp/DvdLogicManager;->fgCbmPause:Z

    if-eqz v2, :cond_5

    const-string p1, "DvdLogicManager"

    const-string v2, "[dvp][framework] fgCbmPause is true forbid to close AudOutput"

    .line 1196
    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    monitor-exit v0

    return v1

    .line 1200
    :cond_5
    invoke-direct {p0, p1, v1}, Lcom/autochips/dvp/DvdLogicManager;->requestSwitch(ZZ)Z

    move-result v2

    const/4 v3, -0x1

    if-nez v2, :cond_6

    .line 1201
    monitor-exit v0

    return v3

    .line 1204
    :cond_6
    invoke-static {p1}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_CloseAudOutput(Z)I

    move-result v2

    if-nez v2, :cond_7

    .line 1206
    invoke-super {p0, p1}, Lcom/autochips/dvp/DvdManagerClient;->closeAudOutput(Z)I

    move-result v2

    :cond_7
    const-string v4, "DvdLogicManager"

    .line 1209
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[dvp][framework] closeAudOutput, front:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " ret:"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_8

    goto :goto_1

    :cond_8
    move v1, v3

    .line 1210
    :goto_1
    monitor-exit v0

    return v1

    .line 1211
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public createFileDatabase(I)I
    .locals 4

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 739
    :cond_2
    :goto_0
    invoke-static {v0}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_CreateFileDatabase(I)I

    move-result p1

    .line 740
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dvp][framework] createFileDatabase, type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ret:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DvdLogicManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, -0x1

    :goto_1
    return v3
.end method

.method public deinit()V
    .locals 3

    .line 335
    monitor-enter p0

    .line 336
    :try_start_0
    iget-boolean v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mInited:Z

    if-nez v0, :cond_0

    const-string v0, "DvdLogicManager"

    const-string v1, "[dvp][framework] dvd not be init, so deinit fail!"

    .line 337
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 341
    iput-boolean v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mInited:Z

    .line 342
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "DvdLogicManager"

    const-string v2, "[dvp][framework] deinit"

    .line 344
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iput v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mLoadedFlag:I

    .line 346
    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_Deinit()V

    .line 348
    iput-boolean v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mFrontAudioOpen:Z

    .line 349
    iput-boolean v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mFrontDisplayOpen:Z

    .line 350
    sput-boolean v0, Lcom/autochips/dvp/DvdLogicManager;->fgCbmPause:Z

    .line 351
    sput-boolean v0, Lcom/autochips/dvp/DvdLogicManager;->needhandlecmd:Z

    const/4 v1, 0x0

    .line 352
    iput-object v1, p0, Lcom/autochips/dvp/DvdLogicManager;->mOnCBMListener:Lcom/autochips/dvp/DvdLogicManager$OnCBMListener;

    .line 354
    sput-boolean v0, Lcom/autochips/dvp/DvdLogicManager;->fgDvdLoadOK:Z

    .line 355
    iput-boolean v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mCbmNoLoadOkPause:Z

    return-void

    :catchall_0
    move-exception v0

    .line 342
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public disableDevice()Z
    .locals 3

    .line 299
    sget-object v0, Lcom/autochips/dvp/DvdLogicManager;->manager:Landroid/cbm/CBManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 300
    sput-boolean v1, Lcom/autochips/dvp/DvdLogicManager;->fgCbmPause:Z

    const-string v0, "DvdLogicManager"

    const-string v2, "[dvp][framework] disableDevice, release cbmlistener"

    .line 301
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    sget-object v0, Lcom/autochips/dvp/DvdLogicManager;->manager:Landroid/cbm/CBManager;

    invoke-virtual {v0}, Landroid/cbm/CBManager;->release()V

    const/4 v0, 0x0

    .line 303
    sput-object v0, Lcom/autochips/dvp/DvdLogicManager;->manager:Landroid/cbm/CBManager;

    .line 304
    iput v1, p0, Lcom/autochips/dvp/DvdLogicManager;->mDestination:I

    .line 306
    :cond_0
    iput-boolean v1, p0, Lcom/autochips/dvp/DvdLogicManager;->mCbmNoLoadOkPause:Z

    const/4 v0, 0x1

    .line 307
    invoke-virtual {p0, v0}, Lcom/autochips/dvp/DvdLogicManager;->closeAudOutput(Z)I

    .line 308
    invoke-virtual {p0}, Lcom/autochips/dvp/DvdLogicManager;->lastMerofyWrite()V

    const/4 v2, -0x1

    .line 309
    invoke-static {v2}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_ChangeDevice(B)V

    .line 310
    iput-boolean v1, p0, Lcom/autochips/dvp/DvdLogicManager;->mDeviceEnable:Z

    return v0
.end method

.method public eject()V
    .locals 4

    const-string v0, "DvdLogicManager"

    const-string v1, "[dvp][framework] eject"

    .line 364
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_Eject()I

    move-result v1

    if-eqz v1, :cond_0

    .line 368
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[dvp][framework] native_DVP_Eject return: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, -0x1

    .line 371
    iput v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mSelecteditem:I

    const/4 v0, 0x0

    .line 372
    sput-boolean v0, Lcom/autochips/dvp/DvdLogicManager;->fgDvdLoadOK:Z

    return-void
.end method

.method public enableDevice()Z
    .locals 2

    .line 279
    invoke-direct {p0}, Lcom/autochips/dvp/DvdLogicManager;->request()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 283
    :cond_0
    iput-boolean v1, p0, Lcom/autochips/dvp/DvdLogicManager;->mCbmNoLoadOkPause:Z

    .line 284
    iput v1, p0, Lcom/autochips/dvp/DvdLogicManager;->mLoadedFlag:I

    const/4 v0, 0x1

    .line 285
    invoke-virtual {p0, v0}, Lcom/autochips/dvp/DvdLogicManager;->openAudOutput(Z)I

    .line 286
    invoke-virtual {p0}, Lcom/autochips/dvp/DvdLogicManager;->lastMemoryLoad()V

    .line 287
    invoke-direct {p0}, Lcom/autochips/dvp/DvdLogicManager;->initParam()V

    .line 288
    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_Connect()V

    .line 289
    invoke-static {v1}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_ChangeDevice(B)V

    .line 290
    iput-boolean v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mDeviceEnable:Z

    return v0
.end method

.method protected finalize()V
    .locals 2

    .line 177
    invoke-super {p0}, Lcom/autochips/dvp/DvdManagerClient;->finalize()V

    const-string v0, "DvdLogicManager"

    const-string v1, "finalize()"

    .line 178
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getAngleTrackInfo()Lcom/autochips/dvp/DvdLogicManager$TrackInfo;
    .locals 4

    .line 877
    new-instance v0, Lcom/autochips/dvp/DvdLogicManager$TrackInfo;

    iget-object v1, p0, Lcom/autochips/dvp/DvdLogicManager;->dvdangle:[I

    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-direct {v0, v2, v1}, Lcom/autochips/dvp/DvdLogicManager$TrackInfo;-><init>(II)V

    return-object v0
.end method

.method public getAudioChannelCount()I
    .locals 3

    .line 1017
    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_GetAudioChannelCount()I

    move-result v0

    .line 1018
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dvp][framework] getAudioChannelCount, ret:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DvdLogicManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getAudioPlayingDirIndex()I
    .locals 3

    .line 1568
    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_GetAudioPlayingDirIndex()I

    move-result v0

    .line 1569
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dvp][framework] checkPwdResult, ret:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DvdLogicManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getAudioTrackInfo()Lcom/autochips/dvp/DvdLogicManager$TrackInfo;
    .locals 4

    .line 886
    new-instance v0, Lcom/autochips/dvp/DvdLogicManager$TrackInfo;

    iget-object v1, p0, Lcom/autochips/dvp/DvdLogicManager;->dvdaudio:[I

    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-direct {v0, v2, v1}, Lcom/autochips/dvp/DvdLogicManager$TrackInfo;-><init>(II)V

    return-object v0
.end method

.method public getCBMCurrentSource()I
    .locals 1

    .line 1894
    iget v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mStopBySrc:I

    return v0
.end method

.method public getChapterCount()I
    .locals 1

    .line 2484
    iget v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mChapterCount:I

    return v0
.end method

.method public getCurAudioEncodecode()I
    .locals 3

    .line 982
    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_GetCurAudioEncodecode()I

    move-result v0

    .line 983
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dvp][framework] getCurAudioEncodecode, ret:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DvdLogicManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getCurAudioLanguage()I
    .locals 3

    .line 976
    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_GetCurAudioLanguage()I

    move-result v0

    .line 977
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dvp][framework] getCurAudioLanguage, ret:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DvdLogicManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getCurFileCount()I
    .locals 1

    .line 821
    iget v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mFileCnt:I

    return v0
.end method

.method public getCurrentAudioChannel()I
    .locals 1

    .line 1027
    iget v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mVcdChannel:I

    return v0
.end method

.method public getCurrentChapter()I
    .locals 1

    .line 2474
    iget v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mCurrentChapter:I

    return v0
.end method

.method public getCurrentDVDMenuState()I
    .locals 3

    .line 1106
    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_GetCurrentDVDMenuState()I

    move-result v0

    .line 1107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dvp][framework] getCurrentDVDMenuState, ret:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DvdLogicManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getCurrentDir()Ljava/lang/String;
    .locals 1

    .line 1347
    iget-object v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mRestoredPath:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentDirIndex()I
    .locals 1

    .line 949
    iget v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mCurrentDirIndex:I

    return v0
.end method

.method public getCurrentFileName()Ljava/lang/String;
    .locals 1

    .line 840
    iget-object v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mPlayedFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentSubtitle()I
    .locals 3

    .line 1047
    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_GetCurrentSubtitle()I

    move-result v0

    .line 1048
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dvp][framework] getCurrentSubtitle, ret:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DvdLogicManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getCurrentTime()I
    .locals 1

    .line 764
    iget v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mCurrentTime:I

    return v0
.end method

.method public getCurrentTitle()I
    .locals 1

    .line 2452
    iget v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mCurrentTitle:I

    return v0
.end method

.method public getCurrentZoomMultiple()I
    .locals 2

    const-string v0, "DvdLogicManager"

    const-string v1, "[dvp][framework] getCurrentZoomMultiple"

    .line 2506
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2507
    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_GetCurrentZoomMultiple()I

    move-result v0

    return v0
.end method

.method public getDiscAudioCount()I
    .locals 2

    const-string v0, "DvdLogicManager"

    const-string v1, "[dvp][framework] getDiscAudioCount"

    .line 2528
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2529
    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_GetDiscAudioCount()I

    move-result v0

    return v0
.end method

.method public getDiscPicCount()I
    .locals 2

    const-string v0, "DvdLogicManager"

    const-string v1, "[dvp][framework] getDiscPicCount"

    .line 2540
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2541
    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_GetDiscPicCount()I

    move-result v0

    return v0
.end method

.method public getDiscType()I
    .locals 1

    .line 967
    iget v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mDiscTypeNum:I

    return v0
.end method

.method public getDiscVideoCount()I
    .locals 2

    const-string v0, "DvdLogicManager"

    const-string v1, "[dvp][framework] getDiscVideoCount"

    .line 2517
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2518
    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_GetDiscVideoCount()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 2401
    iget v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mTotalTime:I

    return v0
.end method

.method public getFileIdx()I
    .locals 3

    .line 1128
    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_GetFileIdx()I

    move-result v0

    .line 1129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dvp][framework] getFileIdx, ret:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DvdLogicManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getFilelist(II)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcom/autochips/dvp/DvdLogicManager$FileInfo;",
            ">;"
        }
    .end annotation

    .line 1601
    invoke-direct {p0}, Lcom/autochips/dvp/DvdLogicManager;->navGetCurrentDir()Ljava/lang/String;

    move-result-object v0

    .line 1603
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    add-int v2, p1, p2

    .line 1607
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[dvp][framework] getFilelist, startindex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DvdLogicManager"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[dvp][framework] getFilelist, startindex IS "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[dvp][framework] getFilelist, leftcnt count IS -- "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[dvp][framework] getFilelist, cnt IS -- "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1612
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[dvp][framework] getFilelist, num num IS -- "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-ge p1, v2, :cond_2

    .line 1615
    iget-boolean p2, p0, Lcom/autochips/dvp/DvdLogicManager;->fgExitGetList:Z

    if-eqz p2, :cond_0

    goto :goto_2

    .line 1620
    :cond_0
    invoke-direct {p0, p1}, Lcom/autochips/dvp/DvdLogicManager;->getDramFileItemInfo(I)Lcom/autochips/dvp/DvdLogicManager$FileItemInfo;

    move-result-object p2

    const-string v3, "[dvp][framework] getFilelist, get the item["

    if-nez p2, :cond_1

    .line 1623
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] failed, get again..."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1628
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] ok, get next... type: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/autochips/dvp/DvdLogicManager$FileItemInfo;->iFileType:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    iget v3, p2, Lcom/autochips/dvp/DvdLogicManager$FileItemInfo;->iFileType:I

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    const/4 v3, 0x5

    goto :goto_1

    :pswitch_1
    const/4 v3, 0x0

    goto :goto_1

    :pswitch_2
    const/4 v3, 0x1

    goto :goto_1

    :pswitch_3
    const/4 v3, 0x2

    goto :goto_1

    :pswitch_4
    const/4 v3, 0x3

    .line 1668
    :goto_1
    iget-object p2, p2, Lcom/autochips/dvp/DvdLogicManager$FileItemInfo;->filename:Ljava/lang/String;

    .line 1670
    new-instance v5, Lcom/autochips/dvp/DvdLogicManager$FileInfo;

    invoke-direct {v5, v3, v0, p2, p1}, Lcom/autochips/dvp/DvdLogicManager$FileInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 1671
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1675
    :cond_2
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[dvp][framework] getFilelist -- end, List size -- "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getFirmwareVer()Ljava/lang/String;
    .locals 6

    .line 772
    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_GetFirmwareVer()[B

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    .line 775
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_3

    .line 776
    aget-byte v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 777
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    const-string v3, "00"

    goto :goto_1

    .line 780
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 781
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 783
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_2

    .line 784
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 786
    :cond_2
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public getId3Album()Ljava/lang/String;
    .locals 2

    .line 1275
    iget v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mDiscTypeNum:I

    const/16 v1, 0xa

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    .line 1276
    invoke-direct {p0, v0}, Lcom/autochips/dvp/DvdLogicManager;->getID3Info(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1279
    :cond_0
    iget-object v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mId3InfoAlbum:Ljava/lang/String;

    return-object v0
.end method

.method public getId3Artist()Ljava/lang/String;
    .locals 2

    .line 1287
    iget v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mDiscTypeNum:I

    const/16 v1, 0xa

    if-ne v1, v0, :cond_0

    const/4 v0, 0x2

    .line 1288
    invoke-direct {p0, v0}, Lcom/autochips/dvp/DvdLogicManager;->getID3Info(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1291
    :cond_0
    iget-object v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mId3InfoArtist:Ljava/lang/String;

    return-object v0
.end method

.method public getId3Genre()Ljava/lang/String;
    .locals 2

    .line 1299
    iget v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mDiscTypeNum:I

    const/16 v1, 0xa

    if-ne v1, v0, :cond_0

    const/4 v0, 0x3

    .line 1300
    invoke-direct {p0, v0}, Lcom/autochips/dvp/DvdLogicManager;->getID3Info(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1303
    :cond_0
    iget-object v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mId3InfoGenre:Ljava/lang/String;

    return-object v0
.end method

.method public getId3Pic()[B
    .locals 1

    .line 1323
    iget-object v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mId3InfoPicData:[B

    return-object v0
.end method

.method public getId3Title()Ljava/lang/String;
    .locals 2

    .line 1263
    iget v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mDiscTypeNum:I

    const/16 v1, 0xa

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    .line 1264
    invoke-direct {p0, v0}, Lcom/autochips/dvp/DvdLogicManager;->getID3Info(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1267
    :cond_0
    iget-object v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mId3InfoTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getId3Year()Ljava/lang/String;
    .locals 2

    .line 1311
    iget v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mDiscTypeNum:I

    const/16 v1, 0xa

    if-ne v1, v0, :cond_0

    const/4 v0, 0x4

    .line 1312
    invoke-direct {p0, v0}, Lcom/autochips/dvp/DvdLogicManager;->getID3Info(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1315
    :cond_0
    iget-object v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mId3InfoYear:Ljava/lang/String;

    return-object v0
.end method

.method public getJPGResolution()I
    .locals 3

    .line 1425
    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_GetJPGResolution()I

    move-result v0

    .line 1426
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dvp][framework] getJPGResolution, ret:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DvdLogicManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getLMClickItemType()I
    .locals 1

    .line 922
    iget v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mLMClickItemType:I

    return v0
.end method

.method public getPBCState()I
    .locals 1

    .line 1382
    iget v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mVcdPBC:I

    return v0
.end method

.method public getPBCUserMode()I
    .locals 3

    .line 1508
    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_GetPBCUserMode()I

    move-result v0

    .line 1509
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dvp][framework] getPBCUserMode, ret:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DvdLogicManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getPicCdPlayState()I
    .locals 1

    .line 958
    iget v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mPicCdPlayState:I

    return v0
.end method

.method public getPlayListInfo()Lcom/autochips/dvp/DvdLogicManager$PlayListInfo;
    .locals 4

    .line 868
    new-instance v0, Lcom/autochips/dvp/DvdLogicManager$PlayListInfo;

    iget-object v1, p0, Lcom/autochips/dvp/DvdLogicManager;->ddplaylist:[I

    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-direct {v0, v2, v1}, Lcom/autochips/dvp/DvdLogicManager$PlayListInfo;-><init>(II)V

    return-object v0
.end method

.method public getPlayStateNew()I
    .locals 4

    .line 630
    invoke-virtual {p0}, Lcom/autochips/dvp/DvdLogicManager;->getPlaystate()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    const/4 v3, 0x7

    if-eq v0, v3, :cond_2

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    :pswitch_0
    move v1, v2

    goto :goto_0

    :cond_1
    :pswitch_1
    const/4 v1, 0x0

    .line 653
    :cond_2
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[dvp][framework] getPlayStateNew ret: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DvdLogicManager"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getPlayingIdx()I
    .locals 3

    .line 1117
    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_GetPlayingIdx()I

    move-result v0

    .line 1118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dvp][framework] getPlayingIdx, ret:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DvdLogicManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getPlaystate()I
    .locals 3

    .line 618
    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_GetPBState()I

    move-result v0

    .line 619
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dvp][framework] getPlaystate, ret: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DvdLogicManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getPreviewPageCount()I
    .locals 1

    .line 913
    iget v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mPreviewPageCount:I

    return v0
.end method

.method public getPreviewPageIndex()I
    .locals 1

    .line 904
    iget v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mPreviewPageIndex:I

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .line 1534
    iget v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mRepeatMode:I

    return v0
.end method

.method public getResolutionPostion()Lcom/autochips/dvp/DvdLogicManager$PosInfo;
    .locals 3

    .line 931
    new-instance v0, Lcom/autochips/dvp/DvdLogicManager$PosInfo;

    iget v1, p0, Lcom/autochips/dvp/DvdLogicManager;->mXResolution:I

    iget v2, p0, Lcom/autochips/dvp/DvdLogicManager;->mYResolution:I

    invoke-direct {v0, v1, v2}, Lcom/autochips/dvp/DvdLogicManager$PosInfo;-><init>(II)V

    return-object v0
.end method

.method public getRipProgress()I
    .locals 1

    .line 940
    iget v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mRipProgress:I

    return v0
.end method

.method public getRipTrkLen(I)I
    .locals 3

    .line 1469
    invoke-static {p1}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_GetRipTrkLbaLen(I)I

    move-result v0

    .line 1470
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dvp][framework] getRipTrkLen, track:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " len:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "DvdLogicManager"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getSelectedItem()I
    .locals 2

    .line 1578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[dvp][framework] getSelectedItem, ret:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/autochips/dvp/DvdLogicManager;->mSelecteditem:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DvdLogicManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    iget v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mSelecteditem:I

    return v0
.end method

.method public getServoVer()Ljava/lang/String;
    .locals 6

    .line 796
    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_GetServoVer()[B

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    .line 799
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_3

    .line 800
    aget-byte v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 801
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    const-string v3, "00"

    goto :goto_1

    .line 804
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 805
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 807
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_2

    .line 808
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 810
    :cond_2
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public getSpectrum()[B
    .locals 1

    .line 1220
    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_AudioInfo_GetSpectrum()[B

    move-result-object v0

    return-object v0
.end method

.method public getSubtitleCount()I
    .locals 3

    .line 1035
    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_GetSubtitleCount()I

    move-result v0

    .line 1036
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dvp][framework] getSubtitleCount, ret:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DvdLogicManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getSubtitleLanguage()I
    .locals 3

    .line 1057
    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_GetSubtitleLanguage()I

    move-result v0

    .line 1058
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dvp][framework] getSubtitleLanguage, ret:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DvdLogicManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getSubtitleTrackInfo()Lcom/autochips/dvp/DvdLogicManager$TrackInfo;
    .locals 4

    .line 895
    new-instance v0, Lcom/autochips/dvp/DvdLogicManager$TrackInfo;

    iget-object v1, p0, Lcom/autochips/dvp/DvdLogicManager;->dvdsubtilte:[I

    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-direct {v0, v2, v1}, Lcom/autochips/dvp/DvdLogicManager$TrackInfo;-><init>(II)V

    return-object v0
.end method

.method public getSuffleMode()I
    .locals 3

    .line 1496
    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_GetShuffleMode()I

    move-result v0

    .line 1497
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dvp][framework] getSuffleMode, ret:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DvdLogicManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getThumbNailFirstIdx()I
    .locals 3

    .line 830
    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_GetThumbNailFirstIdx()I

    move-result v0

    .line 831
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dvp][framework] getThumbNailFirstIdx, ret:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DvdLogicManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getTitleCount()I
    .locals 1

    .line 2462
    iget v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mTitleCnt:I

    return v0
.end method

.method public getTrayState()I
    .locals 3

    .line 1479
    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_GetTrayStatus()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x14

    goto :goto_0

    :cond_0
    const/16 v0, 0x15

    .line 1487
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dvp][framework] getTrayState, state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DvdLogicManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getVCDAudioChannelCount()I
    .locals 3

    .line 993
    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_GetVCDAudioChannelCnt()I

    move-result v0

    .line 994
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dvp][framework] getVCDAudioChannelCount, ret:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DvdLogicManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getVCDCurrentAudioChannel()I
    .locals 3

    .line 1005
    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_GetVCDCurChannel()I

    move-result v0

    .line 1006
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dvp][framework] getVCDCurrentAudioChannel, ret:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DvdLogicManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public gotoRootMenu()I
    .locals 3

    .line 1390
    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_GotoRootMenu()I

    move-result v0

    .line 1391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dvp][framework] native_DVP_GotoRootMenu, ret:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DvdLogicManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public gotoTitleMenu()I
    .locals 3

    .line 1094
    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_GotoTitleMenu()I

    move-result v0

    .line 1095
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dvp][framework] gotoTitleMenu, ret:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DvdLogicManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public gotoUpLevel()I
    .locals 3

    .line 579
    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_GotoUpLevel()I

    move-result v0

    .line 580
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dvp][framework] gotoUpLevel, ret: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DvdLogicManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public init(Landroid/os/Handler;)Z
    .locals 3

    const-string v0, "DvdLogicManager"

    const-string v1, "[dvp][framework]dvp init"

    .line 199
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    monitor-enter p0

    .line 202
    :try_start_0
    iget-boolean v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mInited:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p1, "DvdLogicManager"

    const-string v0, "[dvp][framework] dvd has been inited, so fail!"

    .line 203
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    monitor-exit p0

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 207
    iput-boolean v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mInited:Z

    .line 208
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    sput-boolean v1, Lcom/autochips/dvp/DvdLogicManager;->fgCbmPause:Z

    .line 211
    iput-boolean v1, p0, Lcom/autochips/dvp/DvdLogicManager;->mCbmNoLoadOkPause:Z

    const/4 v2, 0x0

    .line 212
    iput-object v2, p0, Lcom/autochips/dvp/DvdLogicManager;->mSurface:Landroid/view/Surface;

    .line 213
    iput-object p1, p0, Lcom/autochips/dvp/DvdLogicManager;->dvpServicerHandler:Landroid/os/Handler;

    .line 214
    sget-object p1, Lcom/autochips/dvp/DvdLogicManager;->mCmd:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->clear()V

    .line 215
    sput-boolean v0, Lcom/autochips/dvp/DvdLogicManager;->needhandlecmd:Z

    .line 216
    new-instance p1, Lcom/autochips/dvp/DvdLogicManager$HandleDVPCmdThread;

    invoke-direct {p1, p0, v2}, Lcom/autochips/dvp/DvdLogicManager$HandleDVPCmdThread;-><init>(Lcom/autochips/dvp/DvdLogicManager;Lcom/autochips/dvp/DvdLogicManager$1;)V

    invoke-virtual {p1}, Lcom/autochips/dvp/DvdLogicManager$HandleDVPCmdThread;->start()V

    const/4 p1, -0x1

    .line 217
    iput p1, p0, Lcom/autochips/dvp/DvdLogicManager;->mSelecteditem:I

    .line 218
    iput-boolean v1, p0, Lcom/autochips/dvp/DvdLogicManager;->fgExitGetList:Z

    .line 220
    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_Init()I

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "DvdLogicManager"

    const-string v0, "[dvp][framework]dvp init fail!"

    .line 221
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iput-boolean v1, p0, Lcom/autochips/dvp/DvdLogicManager;->mInited:Z

    return v1

    .line 225
    :cond_1
    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_Connect()V

    const-string p1, "DvdLogicManager"

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dvp][framework] dvp init ok, FirmwareVer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/autochips/dvp/DvdLogicManager;->getFirmwareVer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :catchall_0
    move-exception p1

    .line 208
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public initDvdplayhandle(Landroid/os/Handler;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/autochips/dvp/DvdLogicManager;->dvdPlayHandler:Landroid/os/Handler;

    return-void
.end method

.method public initHomeHandle(Landroid/os/Handler;)Z
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/autochips/dvp/DvdLogicManager;->dvphomeHandler:Landroid/os/Handler;

    const/4 p1, 0x1

    return p1
.end method

.method public initListHandle(Landroid/os/Handler;)V
    .locals 1

    const/4 v0, 0x0

    .line 319
    iput-boolean v0, p0, Lcom/autochips/dvp/DvdLogicManager;->fgExitGetList:Z

    .line 320
    iput-object p1, p0, Lcom/autochips/dvp/DvdLogicManager;->dvpListHandler:Landroid/os/Handler;

    return-void
.end method

.method public isDVP1stPicArrival()Z
    .locals 3

    .line 605
    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_Is1stPicArrival()Z

    move-result v0

    .line 606
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dvp][framework] isDVP1stPicArrival, ret: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DvdLogicManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public itemClick(I)I
    .locals 3

    .line 564
    invoke-static {p1}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_ItemClick(I)I

    move-result v0

    .line 565
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dvp][framework] itemClick, item: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ret: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "DvdLogicManager"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public lastMemoryClear()V
    .locals 2

    const-string v0, "DvdLogicManager"

    const-string v1, "[dvp][framework][last mem] lastMemoryClear"

    .line 260
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-boolean v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mDeviceEnable:Z

    if-eqz v0, :cond_0

    .line 262
    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_LastMemoryClear()V

    :cond_0
    return-void
.end method

.method public lastMemoryLoad()V
    .locals 2

    const-string v0, "DvdLogicManager"

    const-string v1, "[dvp][framework][last mem] lastMemoryLoad"

    .line 239
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-boolean v1, p0, Lcom/autochips/dvp/DvdLogicManager;->mDeviceEnable:Z

    if-nez v1, :cond_0

    const-string v1, "[dvp][framework][last mem] call native dvp lastmemoryload"

    .line 241
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_LastMemoryLoad()V

    :cond_0
    return-void
.end method

.method public lastMerofyWrite()V
    .locals 2

    const-string v0, "DvdLogicManager"

    const-string v1, "[dvp][framework][last mem] lastMerofyWrite"

    .line 250
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-boolean v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mDeviceEnable:Z

    if-eqz v0, :cond_0

    .line 252
    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_LastMerofyWrite()V

    :cond_0
    return-void
.end method

.method public openAudOutput(Z)I
    .locals 7

    .line 1141
    iget-object v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mSyncObj:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1142
    :try_start_0
    iget-boolean v2, p0, Lcom/autochips/dvp/DvdLogicManager;->mFrontAudioOpen:Z

    if-nez v2, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    if-nez p1, :cond_2

    iget-boolean v2, p0, Lcom/autochips/dvp/DvdLogicManager;->mRearAudioOpen:Z

    if-eqz v2, :cond_2

    .line 1143
    :cond_1
    monitor-exit v0

    return v1

    :cond_2
    const/4 v2, 0x1

    if-eqz p1, :cond_3

    .line 1147
    iput-boolean v2, p0, Lcom/autochips/dvp/DvdLogicManager;->mFrontAudioOpen:Z

    :cond_3
    if-nez p1, :cond_4

    .line 1151
    iput-boolean v2, p0, Lcom/autochips/dvp/DvdLogicManager;->mRearAudioOpen:Z

    .line 1154
    :cond_4
    sget-boolean v3, Lcom/autochips/dvp/DvdLogicManager;->fgCbmPause:Z

    if-eqz v3, :cond_5

    const-string p1, "DvdLogicManager"

    const-string v2, "[dvp][framework] fgCbmPause is true forbid openAudOutput"

    .line 1155
    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    monitor-exit v0

    return v1

    .line 1159
    :cond_5
    invoke-direct {p0, p1, v2}, Lcom/autochips/dvp/DvdLogicManager;->requestSwitch(ZZ)Z

    move-result v2

    const/4 v3, -0x1

    if-nez v2, :cond_6

    const-string p1, "DvdLogicManager"

    const-string v1, "Load disk leave"

    .line 1160
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    monitor-exit v0

    return v3

    .line 1164
    :cond_6
    invoke-static {p1}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_OpenAudOutput(Z)I

    move-result v2

    if-nez v2, :cond_7

    .line 1167
    invoke-super {p0, p1}, Lcom/autochips/dvp/DvdManagerClient;->openAudOutput(Z)I

    move-result v2

    :cond_7
    const-string v4, "DvdLogicManager"

    .line 1170
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[dvp][framework] openAudOutput, front:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " ret:"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_8

    goto :goto_1

    :cond_8
    move v1, v3

    .line 1171
    :goto_1
    monitor-exit v0

    return v1

    .line 1172
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public openFrontDisplay(Z)I
    .locals 6

    const-string v0, "DvdLogicManager"

    .line 411
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dvp][framework]  ========== openFrontDisplay(+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "+) ========="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget-object v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mSyncObj:Ljava/lang/Object;

    monitor-enter v0

    .line 413
    :try_start_0
    iget-boolean v1, p0, Lcom/autochips/dvp/DvdLogicManager;->mFrontDisplayOpen:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    const-string p1, "DvdLogicManager"

    const-string v1, "[dvp][framework]  ========== openFrontDisplay( on before ) ========="

    .line 414
    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    monitor-exit v0

    return v2

    .line 418
    :cond_0
    iget-boolean v1, p0, Lcom/autochips/dvp/DvdLogicManager;->mFrontDisplayOpen:Z

    if-nez v1, :cond_1

    if-nez p1, :cond_1

    const-string p1, "DvdLogicManager"

    const-string v1, "[dvp][framework]  ========== openFrontDisplay( close before ) ========="

    .line 419
    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    monitor-exit v0

    return v2

    .line 423
    :cond_1
    iput-boolean p1, p0, Lcom/autochips/dvp/DvdLogicManager;->mFrontDisplayOpen:Z

    .line 424
    sget-boolean v1, Lcom/autochips/dvp/DvdLogicManager;->fgCbmPause:Z

    if-eqz v1, :cond_2

    const-string p1, "DvdLogicManager"

    const-string v1, "[dvp][framework] fgCbmPause is true forbid to open front display"

    .line 425
    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    monitor-exit v0

    return v2

    :cond_2
    const/4 v1, 0x1

    .line 429
    invoke-direct {p0, v1, p1}, Lcom/autochips/dvp/DvdLogicManager;->requestSwitch(ZZ)Z

    move-result v1

    const/4 v3, -0x1

    if-nez v1, :cond_3

    const-string p1, "DvdLogicManager"

    const-string v1, "[dvp][framework]  ========== switch fail ========="

    .line 430
    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    monitor-exit v0

    return v3

    :cond_3
    const-string v1, "DvdLogicManager"

    .line 435
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[dvp][framework] openFrontDisplay, on:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    invoke-static {p1}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_Mix2APWrChannel(Z)I

    move-result v1

    if-nez v1, :cond_4

    .line 438
    invoke-super {p0, p1}, Lcom/autochips/dvp/DvdManagerClient;->openFrontDisplay(Z)I

    move-result v1

    :cond_4
    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    move v2, v3

    .line 440
    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    .line 441
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public openRearVideo(Z)I
    .locals 6

    .line 450
    iget-object v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mSyncObj:Ljava/lang/Object;

    monitor-enter v0

    .line 451
    :try_start_0
    iget-boolean v1, p0, Lcom/autochips/dvp/DvdLogicManager;->mRearDisplayOpen:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 452
    monitor-exit v0

    return v2

    .line 455
    :cond_0
    iget-boolean v1, p0, Lcom/autochips/dvp/DvdLogicManager;->mRearDisplayOpen:Z

    if-nez v1, :cond_1

    if-nez p1, :cond_1

    .line 456
    monitor-exit v0

    return v2

    .line 459
    :cond_1
    iput-boolean p1, p0, Lcom/autochips/dvp/DvdLogicManager;->mRearDisplayOpen:Z

    .line 460
    sget-boolean v1, Lcom/autochips/dvp/DvdLogicManager;->fgCbmPause:Z

    if-eqz v1, :cond_2

    const-string p1, "DvdLogicManager"

    const-string v1, "[dvp][framework] fgCbmPause is true forbid to open front display"

    .line 461
    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    monitor-exit v0

    return v2

    .line 465
    :cond_2
    invoke-direct {p0, v2, p1}, Lcom/autochips/dvp/DvdLogicManager;->requestSwitch(ZZ)Z

    move-result v1

    const/4 v3, -0x1

    if-nez v1, :cond_3

    .line 466
    monitor-exit v0

    return v3

    :cond_3
    const-string v1, "DvdLogicManager"

    .line 469
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[dvp][framework] openRearVideo on/off:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-static {p1}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_RearSwitch(Z)I

    move-result v1

    if-nez v1, :cond_4

    .line 473
    invoke-super {p0, p1}, Lcom/autochips/dvp/DvdManagerClient;->openRearDisplay(Z)I

    move-result v1

    :cond_4
    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    move v2, v3

    .line 475
    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    .line 476
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public pause()I
    .locals 3

    .line 498
    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_Pause()I

    move-result v0

    .line 499
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dvp][framework] pause, ret: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DvdLogicManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public play()I
    .locals 3

    .line 486
    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_Play()I

    move-result v0

    .line 487
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dvp][framework] play, ret"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DvdLogicManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public playNext()I
    .locals 3

    .line 534
    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_PlayNext()I

    move-result v0

    .line 535
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dvp][framework] playNext, ret: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DvdLogicManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public playPrev()I
    .locals 3

    .line 522
    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_PlayPrev()I

    move-result v0

    .line 523
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dvp][framework] playPrev, ret: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DvdLogicManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public requestResourse()Z
    .locals 4

    const-string v0, "DvdLogicManager"

    const-string v1, "[dvp][framework] not to use the interface"

    .line 1780
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    invoke-direct {p0}, Lcom/autochips/dvp/DvdLogicManager;->queryCBMCurrentSrc()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "[dvp][framework] WARN:No permission, high priority source playing "

    .line 1785
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public rotateImage()I
    .locals 3

    .line 1400
    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_RotateImage()I

    move-result v0

    .line 1401
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dvp][framework] rotateImage, ret:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DvdLogicManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public seek(I)I
    .locals 3

    .line 548
    invoke-static {p1}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_SeekToTime(I)I

    move-result v0

    .line 549
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dvp][framework] seek, time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", ret: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "DvdLogicManager"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    const/4 p1, 0x1

    .line 552
    iput-boolean p1, p0, Lcom/autochips/dvp/DvdLogicManager;->mWaitSeek:Z

    :cond_0
    if-nez v0, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public sendMsgToDvpPlayerHandle(I)V
    .locals 1

    .line 3831
    iget-object v0, p0, Lcom/autochips/dvp/DvdLogicManager;->dvdPlayHandler:Landroid/os/Handler;

    invoke-direct {p0, v0, p1}, Lcom/autochips/dvp/DvdLogicManager;->sendMsgToHandle(Landroid/os/Handler;I)V

    return-void
.end method

.method public setBaseFileID(I)I
    .locals 3

    .line 1544
    invoke-static {p1}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_SetBaseFileID(I)I

    move-result v0

    .line 1545
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dvp][framework] setBaseFileID, index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ret:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "DvdLogicManager"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public setCBMListener(Lcom/autochips/dvp/DvdLogicManager$OnCBMListener;)V
    .locals 0

    .line 2052
    iput-object p1, p0, Lcom/autochips/dvp/DvdLogicManager;->mOnCBMListener:Lcom/autochips/dvp/DvdLogicManager$OnCBMListener;

    return-void
.end method

.method public setFrontDisplay(Landroid/view/SurfaceHolder;)V
    .locals 4

    .line 381
    iget-object v0, p0, Lcom/autochips/dvp/DvdLogicManager;->mSyncObj:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "DvdLogicManager"

    const-string v2, "[dvp][framework] +++++++++++ setFrontDisplay"

    .line 383
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 386
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 392
    :goto_0
    iput-object p1, p0, Lcom/autochips/dvp/DvdLogicManager;->mSurface:Landroid/view/Surface;

    .line 393
    sget-boolean v1, Lcom/autochips/dvp/DvdLogicManager;->fgCbmPause:Z

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    const-string p1, "DvdLogicManager"

    const-string v1, "[dvp][framework] ++++++++++ fgCbmPause is true forbid to open front display"

    .line 394
    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    monitor-exit v0

    return-void

    :cond_1
    const-string v1, "DvdLogicManager"

    .line 398
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[dvp][framework] setFrontSurface ++++++ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-static {p1}, Lcom/autochips/dvp/DvdLogicManager;->native_setFrontSurface(Landroid/view/Surface;)V

    .line 400
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setImageViewMode(I)I
    .locals 3

    .line 1413
    invoke-static {p1}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_SetImageViewMode(I)I

    move-result v0

    .line 1414
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dvp][framework] setImageViewMode, mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ret:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "DvdLogicManager"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public setPBCState()I
    .locals 3

    .line 1371
    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_SetPBCState()I

    move-result v0

    .line 1372
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dvp][framework] setPBCState, ret:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DvdLogicManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public setPBCUserMode(B)I
    .locals 3

    .line 1518
    invoke-static {p1}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_SetPBCUserMode(B)I

    move-result v0

    .line 1519
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dvp][framework] getPBCUserMode, mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ret:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "DvdLogicManager"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public setPBMode(I)I
    .locals 3

    .line 671
    invoke-static {p1}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_SetPBMode(I)I

    move-result v0

    .line 672
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dvp][framework] setPBMode, mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ret: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "DvdLogicManager"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public setRipPath(Ljava/lang/String;)I
    .locals 2

    .line 1436
    invoke-static {p1}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_SetRipPath(Ljava/lang/String;)I

    move-result p1

    .line 1437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[dvp][framework] setRipPath, ret:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DvdLogicManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public setSelectedItem(I)V
    .locals 2

    .line 1587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[dvp][framework] setSelectedItem, item:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DvdLogicManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    iput p1, p0, Lcom/autochips/dvp/DvdLogicManager;->mSelecteditem:I

    return-void
.end method

.method public setSpectrumMaxVal(B)I
    .locals 3

    .line 1231
    invoke-static {p1}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_AudioInfo_SetSpectrumMaxVal(B)I

    move-result v0

    .line 1232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dvp][framework] setSpectrumMaxVal, max:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ret:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "DvdLogicManager"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public startRip(I)I
    .locals 3

    .line 1447
    invoke-static {p1}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_StartRip(I)I

    move-result v0

    .line 1448
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dvp][framework] startRip, track:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ret:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "DvdLogicManager"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public stop()I
    .locals 3

    .line 510
    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_Stop()I

    move-result v0

    .line 511
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dvp][framework] stop, ret: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DvdLogicManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public stopRip()I
    .locals 3

    .line 1457
    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_StopRip()I

    move-result v0

    .line 1458
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dvp][framework] stopRip, ret:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DvdLogicManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public switchAudioChannel(B)I
    .locals 3

    .line 687
    invoke-static {p1}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_SwitchAudioChannel(B)I

    move-result v0

    .line 688
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dvp][framework] switchAudioChannel, bChannelId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ret: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "DvdLogicManager"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public switchPBCAngle(B)I
    .locals 3

    .line 701
    invoke-static {p1}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_SwitchPBCAngle(B)I

    move-result v0

    .line 702
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dvp][framework] switchPBCAngle, bAngle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ret:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "DvdLogicManager"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public switchSubtitle(I)I
    .locals 3

    .line 1072
    invoke-static {p1}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_SwitchSubtitle(I)I

    move-result v0

    .line 1073
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dvp][framework] switchSubtitle, index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ret:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "DvdLogicManager"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public zoomIn()I
    .locals 3

    .line 2563
    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_ZoomIn()I

    move-result v0

    const-string v1, "DvdLogicManager"

    const-string v2, "[dvp][framework] zoomIn"

    .line 2564
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public zoomOut()I
    .locals 3

    .line 2575
    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->native_DVP_ZoomOut()I

    move-result v0

    const-string v1, "DvdLogicManager"

    const-string v2, "[dvp][framework] zoomOut"

    .line 2576
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method
