.class public Lcom/hzbhd/midwareproxy/iPod/TrackInformation;
.super Ljava/lang/Object;
.source "TrackInformation.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/hzbhd/midwareproxy/iPod/TrackInformation;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "TrackInformation"

.field public static final TYPE_ALBUM_NAME:B = 0x3t

.field public static final TYPE_ALBUM_TRACK_INDEX:B = 0xdt

.field public static final TYPE_ARTIST_NAME:B = 0x2t

.field public static final TYPE_BOOKMARK_OFFSET:B = 0x1at

.field public static final TYPE_CAPABILITIES:B = 0x0t

.field public static final TYPE_CHAPTER_COUNT:B = 0x8t

.field public static final TYPE_CHAPTER_NAMES:B = 0xat

.field public static final TYPE_CHAPTER_TIMES:B = 0x9t

.field public static final TYPE_COMPOSER_NAME:B = 0x5t

.field public static final TYPE_DESCRIPTION:B = 0xct

.field public static final TYPE_DISC_SET_ALBUM_INDEX:B = 0xet

.field public static final TYPE_GENRE_NAME:B = 0x4t

.field public static final TYPE_LAST_PLAYED_DATE_TIME:B = 0x12t

.field public static final TYPE_LYRICS_OF_THE_SONG_CURRENT_PLAYING:B = 0xbt

.field public static final TYPE_PLAY_COUNT:B = 0xft

.field public static final TYPE_PODCAST_RELEASE_DATE:B = 0x11t

.field public static final TYPE_RELEASE_DATE_YEAR:B = 0x13t

.field public static final TYPE_SEASON_NUMBER:B = 0x16t

.field public static final TYPE_SERIES_NAME:B = 0x15t

.field public static final TYPE_SKIP_COUNT:B = 0x10t

.field public static final TYPE_START_STOP_TIME_OFFSET:B = 0x1bt

.field public static final TYPE_STAR_RATING:B = 0x14t

.field public static final TYPE_TOTAL_TRACK_TIME_DURATION:B = 0x6t

.field public static final TYPE_TRACK_DATA_RATE:B = 0x19t

.field public static final TYPE_TRACK_EQ_PRESET:B = 0x18t

.field public static final TYPE_TRACK_NAME:B = 0x1t

.field public static final TYPE_TRACK_VOL_ADJ:B = 0x17t

.field public static final TYPE_UNIQUE_TRACK_IDENTIFIER:B = 0x7t


# instance fields
.field private mAlbumName:Ljava/lang/String;

.field private mAlbumTrackIndex:I

.field private mArtistName:Ljava/lang/String;

.field private mBookmarkOffset:I

.field private mChapterCount:I

.field private mChapterIndex:I

.field private mChapterNames:Ljava/lang/String;

.field private mChapterTimesIndex:I

.field private mChapterTimesOffset:I

.field private mComposerName:Ljava/lang/String;

.field private mCurrLyricsSectionIndex:I

.field private mDataRate:I

.field private mDescription:Ljava/lang/String;

.field private mDiscSetAlbumIndex:I

.field private mGenreName:Ljava/lang/String;

.field private mLastPlayedDateTime:Lcom/hzbhd/midwareproxy/iPod/DateTime;

.field private mMaxLyricsSection:I

.field private mPlayCount:I

.field private mPodcastReleaseDate:Lcom/hzbhd/midwareproxy/iPod/DateTime;

.field private mSeasonNumber:I

.field private mSeriesName:Ljava/lang/String;

.field private mSkipCount:I

.field private mStarRating:B

.field private mStartTimeOffset:I

.field private mStopTimeOffset:I

.field private mTotalTrackDuration:I

.field private mTrackCapabilities:Lcom/hzbhd/midwareproxy/iPod/TrackCapabilities;

.field private mTrackEQPreset:I

.field private mTrackInfoType:B

.field private mTrackName:Ljava/lang/String;

.field private mTrackVolAdj:B

.field private mUniqueTrackUID:[B

.field private mYear:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 481
    new-instance v0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation$1;

    invoke-direct {v0}, Lcom/hzbhd/midwareproxy/iPod/TrackInformation$1;-><init>()V

    sput-object v0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lcom/hzbhd/midwareproxy/iPod/TrackCapabilities;

    invoke-direct {v0}, Lcom/hzbhd/midwareproxy/iPod/TrackCapabilities;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mTrackCapabilities:Lcom/hzbhd/midwareproxy/iPod/TrackCapabilities;

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 69
    iput-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mUniqueTrackUID:[B

    .line 156
    invoke-direct {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lcom/hzbhd/midwareproxy/iPod/TrackCapabilities;

    invoke-direct {v0}, Lcom/hzbhd/midwareproxy/iPod/TrackCapabilities;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mTrackCapabilities:Lcom/hzbhd/midwareproxy/iPod/TrackCapabilities;

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 69
    iput-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mUniqueTrackUID:[B

    .line 152
    invoke-direct {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->parse([B)V

    return-void
.end method

.method private parse([B)V
    .locals 9

    const/4 v0, 0x0

    .line 188
    aget-byte v1, p1, v0

    iput-byte v1, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mTrackInfoType:B

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/16 v4, 0x8

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 275
    :pswitch_1
    aget-byte v0, p1, v8

    aget-byte v1, p1, v7

    aget-byte v6, p1, v6

    aget-byte v5, p1, v5

    invoke-static {v0, v1, v6, v5}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;->byteToInt(BBBB)I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mStartTimeOffset:I

    .line 276
    aget-byte v0, p1, v3

    aget-byte v1, p1, v2

    const/4 v2, 0x7

    aget-byte v2, p1, v2

    aget-byte p1, p1, v4

    invoke-static {v0, v1, v2, p1}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;->byteToInt(BBBB)I

    move-result p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mStopTimeOffset:I

    goto/16 :goto_0

    .line 272
    :pswitch_2
    aget-byte v0, p1, v8

    aget-byte v1, p1, v7

    aget-byte v2, p1, v6

    aget-byte p1, p1, v5

    invoke-static {v0, v1, v2, p1}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;->byteToInt(BBBB)I

    move-result p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mBookmarkOffset:I

    goto/16 :goto_0

    .line 269
    :pswitch_3
    aget-byte v0, p1, v8

    aget-byte v1, p1, v7

    aget-byte v2, p1, v6

    aget-byte p1, p1, v5

    invoke-static {v0, v1, v2, p1}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;->byteToInt(BBBB)I

    move-result p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mDataRate:I

    goto/16 :goto_0

    .line 266
    :pswitch_4
    aget-byte v0, p1, v8

    aget-byte p1, p1, v7

    invoke-static {v0, p1}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;->byteToShort(BB)S

    move-result p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mTrackEQPreset:I

    goto/16 :goto_0

    .line 263
    :pswitch_5
    aget-byte p1, p1, v8

    iput-byte p1, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mTrackVolAdj:B

    goto/16 :goto_0

    .line 260
    :pswitch_6
    aget-byte v0, p1, v8

    aget-byte p1, p1, v7

    invoke-static {v0, p1}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;->byteToShort(BB)S

    move-result p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mSeasonNumber:I

    goto/16 :goto_0

    .line 257
    :pswitch_7
    invoke-static {p1, v8}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;->byteToString([BI)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mSeriesName:Ljava/lang/String;

    goto/16 :goto_0

    .line 254
    :pswitch_8
    aget-byte p1, p1, v8

    iput-byte p1, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mStarRating:B

    goto/16 :goto_0

    .line 251
    :pswitch_9
    aget-byte v1, p1, v8

    aget-byte p1, p1, v7

    invoke-static {v0, v0, v1, p1}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;->byteToInt(BBBB)I

    move-result p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mYear:I

    goto/16 :goto_0

    .line 248
    :pswitch_a
    new-instance v0, Lcom/hzbhd/midwareproxy/iPod/DateTime;

    invoke-direct {v0, p1, v8}, Lcom/hzbhd/midwareproxy/iPod/DateTime;-><init>([BI)V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mLastPlayedDateTime:Lcom/hzbhd/midwareproxy/iPod/DateTime;

    goto/16 :goto_0

    .line 245
    :pswitch_b
    new-instance v0, Lcom/hzbhd/midwareproxy/iPod/DateTime;

    invoke-direct {v0, p1, v8}, Lcom/hzbhd/midwareproxy/iPod/DateTime;-><init>([BI)V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mPodcastReleaseDate:Lcom/hzbhd/midwareproxy/iPod/DateTime;

    goto/16 :goto_0

    .line 242
    :pswitch_c
    aget-byte v1, p1, v8

    aget-byte p1, p1, v7

    invoke-static {v0, v0, v1, p1}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;->byteToInt(BBBB)I

    move-result p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mSkipCount:I

    goto/16 :goto_0

    .line 239
    :pswitch_d
    aget-byte v1, p1, v8

    aget-byte p1, p1, v7

    invoke-static {v0, v0, v1, p1}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;->byteToInt(BBBB)I

    move-result p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mPlayCount:I

    goto/16 :goto_0

    .line 236
    :pswitch_e
    aget-byte v0, p1, v8

    aget-byte p1, p1, v7

    invoke-static {v0, p1}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;->byteToShort(BB)S

    move-result p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mDiscSetAlbumIndex:I

    goto/16 :goto_0

    .line 233
    :pswitch_f
    aget-byte v0, p1, v8

    aget-byte p1, p1, v7

    invoke-static {v0, p1}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;->byteToShort(BB)S

    move-result p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mAlbumTrackIndex:I

    goto/16 :goto_0

    .line 230
    :pswitch_10
    invoke-static {p1, v8}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;->byteToString([BI)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mDescription:Ljava/lang/String;

    goto/16 :goto_0

    .line 224
    :pswitch_11
    aget-byte v0, p1, v8

    aget-byte v1, p1, v7

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;->byteToShort(BB)S

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mChapterIndex:I

    .line 225
    invoke-static {p1, v6}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;->byteToString([BI)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mChapterNames:Ljava/lang/String;

    goto/16 :goto_0

    .line 220
    :pswitch_12
    aget-byte v0, p1, v8

    aget-byte v1, p1, v7

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;->byteToShort(BB)S

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mChapterTimesIndex:I

    .line 221
    aget-byte v0, p1, v6

    aget-byte v1, p1, v5

    aget-byte v3, p1, v3

    aget-byte p1, p1, v2

    invoke-static {v0, v1, v3, p1}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;->byteToInt(BBBB)I

    move-result p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mChapterTimesOffset:I

    goto :goto_0

    .line 217
    :pswitch_13
    aget-byte v0, p1, v8

    aget-byte p1, p1, v7

    invoke-static {v0, p1}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;->byteToShort(BB)S

    move-result p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mChapterCount:I

    goto :goto_0

    .line 212
    :pswitch_14
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mUniqueTrackUID:[B

    invoke-static {p1, v8, v1, v0, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    const-string p1, "TrackInformation"

    const-string v0, "[TYPE_UNIQUE_TRACK_IDENTIFIER]:"

    .line 213
    invoke-static {p1, v0}, Lcom/hzbhd/midwareproxy/iPod/utils/Trace;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mUniqueTrackUID:[B

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;->printByteArrayInHex([B)V

    goto :goto_0

    .line 209
    :pswitch_15
    aget-byte v0, p1, v8

    aget-byte v1, p1, v7

    aget-byte v2, p1, v6

    aget-byte p1, p1, v5

    invoke-static {v0, v1, v2, p1}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;->byteToInt(BBBB)I

    move-result p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mTotalTrackDuration:I

    goto :goto_0

    .line 206
    :pswitch_16
    invoke-static {p1, v8}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;->byteToString([BI)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mComposerName:Ljava/lang/String;

    goto :goto_0

    .line 203
    :pswitch_17
    invoke-static {p1, v8}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;->byteToString([BI)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mGenreName:Ljava/lang/String;

    goto :goto_0

    .line 200
    :pswitch_18
    invoke-static {p1, v8}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;->byteToString([BI)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mAlbumName:Ljava/lang/String;

    goto :goto_0

    .line 197
    :pswitch_19
    invoke-static {p1, v8}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;->byteToString([BI)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mArtistName:Ljava/lang/String;

    goto :goto_0

    .line 194
    :pswitch_1a
    invoke-static {p1, v8}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;->byteToString([BI)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mTrackName:Ljava/lang/String;

    goto :goto_0

    .line 191
    :pswitch_1b
    new-instance v0, Lcom/hzbhd/midwareproxy/iPod/TrackCapabilities;

    invoke-direct {v0, p1, v8}, Lcom/hzbhd/midwareproxy/iPod/TrackCapabilities;-><init>([BI)V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mTrackCapabilities:Lcom/hzbhd/midwareproxy/iPod/TrackCapabilities;

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_11
        :pswitch_0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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
    .end packed-switch
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 386
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mTrackInfoType:B

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 473
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mStartTimeOffset:I

    .line 474
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mStopTimeOffset:I

    goto/16 :goto_0

    .line 470
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mBookmarkOffset:I

    goto/16 :goto_0

    .line 467
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mDataRate:I

    goto/16 :goto_0

    .line 464
    :pswitch_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mTrackEQPreset:I

    goto/16 :goto_0

    .line 461
    :pswitch_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    iput-byte p1, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mTrackVolAdj:B

    goto/16 :goto_0

    .line 458
    :pswitch_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mSeasonNumber:I

    goto/16 :goto_0

    .line 455
    :pswitch_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mSeriesName:Ljava/lang/String;

    goto/16 :goto_0

    .line 452
    :pswitch_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    iput-byte p1, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mStarRating:B

    goto/16 :goto_0

    .line 449
    :pswitch_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mYear:I

    goto/16 :goto_0

    .line 446
    :pswitch_a
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/DateTime;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hzbhd/midwareproxy/iPod/DateTime;

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mLastPlayedDateTime:Lcom/hzbhd/midwareproxy/iPod/DateTime;

    goto/16 :goto_0

    .line 443
    :pswitch_b
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/DateTime;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hzbhd/midwareproxy/iPod/DateTime;

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mPodcastReleaseDate:Lcom/hzbhd/midwareproxy/iPod/DateTime;

    goto/16 :goto_0

    .line 440
    :pswitch_c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mSkipCount:I

    goto/16 :goto_0

    .line 437
    :pswitch_d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mPlayCount:I

    goto/16 :goto_0

    .line 434
    :pswitch_e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mDiscSetAlbumIndex:I

    goto/16 :goto_0

    .line 431
    :pswitch_f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mAlbumTrackIndex:I

    goto :goto_0

    .line 428
    :pswitch_10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mDescription:Ljava/lang/String;

    goto :goto_0

    .line 420
    :pswitch_11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mChapterIndex:I

    .line 421
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mChapterNames:Ljava/lang/String;

    goto :goto_0

    .line 416
    :pswitch_12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mChapterTimesIndex:I

    .line 417
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mChapterTimesOffset:I

    goto :goto_0

    .line 413
    :pswitch_13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mChapterCount:I

    goto :goto_0

    .line 410
    :pswitch_14
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mUniqueTrackUID:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    goto :goto_0

    .line 407
    :pswitch_15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mTotalTrackDuration:I

    goto :goto_0

    .line 404
    :pswitch_16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mComposerName:Ljava/lang/String;

    goto :goto_0

    .line 401
    :pswitch_17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mGenreName:Ljava/lang/String;

    goto :goto_0

    .line 398
    :pswitch_18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mAlbumName:Ljava/lang/String;

    goto :goto_0

    .line 395
    :pswitch_19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mArtistName:Ljava/lang/String;

    goto :goto_0

    .line 392
    :pswitch_1a
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mTrackName:Ljava/lang/String;

    goto :goto_0

    .line 389
    :pswitch_1b
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/TrackCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hzbhd/midwareproxy/iPod/TrackCapabilities;

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mTrackCapabilities:Lcom/hzbhd/midwareproxy/iPod/TrackCapabilities;

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_11
        :pswitch_0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mAlbumName:Ljava/lang/String;

    return-object v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mArtistName:Ljava/lang/String;

    return-object v0
.end method

.method public getComposerName()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mComposerName:Ljava/lang/String;

    return-object v0
.end method

.method public getGenreName()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mGenreName:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackInfoType()B
    .locals 1

    .line 160
    iget-byte v0, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mTrackInfoType:B

    return v0
.end method

.method public getTrackTimeDuration()I
    .locals 1

    .line 184
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mTotalTrackDuration:I

    return v0
.end method

.method public getUniqueTrackUID()[B
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mUniqueTrackUID:[B

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 290
    iget-byte v0, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mTrackInfoType:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 291
    iget-byte v0, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mTrackInfoType:B

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 377
    :pswitch_1
    iget p2, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mStartTimeOffset:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 378
    iget p2, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mStopTimeOffset:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 374
    :pswitch_2
    iget p2, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mBookmarkOffset:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 371
    :pswitch_3
    iget p2, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mDataRate:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 368
    :pswitch_4
    iget p2, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mTrackEQPreset:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 365
    :pswitch_5
    iget-byte p2, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mTrackVolAdj:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 362
    :pswitch_6
    iget p2, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mSeasonNumber:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 359
    :pswitch_7
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mSeriesName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 356
    :pswitch_8
    iget-byte p2, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mStarRating:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    goto/16 :goto_0

    .line 353
    :pswitch_9
    iget p2, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mYear:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 350
    :pswitch_a
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mLastPlayedDateTime:Lcom/hzbhd/midwareproxy/iPod/DateTime;

    invoke-virtual {v0, p1, p2}, Lcom/hzbhd/midwareproxy/iPod/DateTime;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 347
    :pswitch_b
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mPodcastReleaseDate:Lcom/hzbhd/midwareproxy/iPod/DateTime;

    invoke-virtual {v0, p1, p2}, Lcom/hzbhd/midwareproxy/iPod/DateTime;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 344
    :pswitch_c
    iget p2, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mSkipCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 341
    :pswitch_d
    iget p2, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mPlayCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 338
    :pswitch_e
    iget p2, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mDiscSetAlbumIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 335
    :pswitch_f
    iget p2, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mAlbumTrackIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 332
    :pswitch_10
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 324
    :pswitch_11
    iget p2, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mChapterIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 325
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mChapterNames:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 320
    :pswitch_12
    iget p2, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mChapterTimesIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 321
    iget p2, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mChapterTimesOffset:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 317
    :pswitch_13
    iget p2, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mChapterCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 314
    :pswitch_14
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mUniqueTrackUID:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .line 311
    :pswitch_15
    iget p2, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mTotalTrackDuration:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 308
    :pswitch_16
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mComposerName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 305
    :pswitch_17
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mGenreName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 302
    :pswitch_18
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mAlbumName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 299
    :pswitch_19
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mArtistName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 296
    :pswitch_1a
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mTrackName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 293
    :pswitch_1b
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->mTrackCapabilities:Lcom/hzbhd/midwareproxy/iPod/TrackCapabilities;

    invoke-virtual {v0, p1, p2}, Lcom/hzbhd/midwareproxy/iPod/TrackCapabilities;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_11
        :pswitch_0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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
    .end packed-switch
.end method
