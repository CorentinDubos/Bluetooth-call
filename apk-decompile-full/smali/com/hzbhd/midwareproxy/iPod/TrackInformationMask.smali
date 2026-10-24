.class public Lcom/hzbhd/midwareproxy/iPod/TrackInformationMask;
.super Lcom/hzbhd/midwareproxy/iPod/FourByteMask;
.source "TrackInformationMask.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final BIT_ALBUM_NAME:I = 0x3

.field public static final BIT_ALBUM_TRACK_INDEX:I = 0xd

.field public static final BIT_ARTIST_NAME:I = 0x2

.field public static final BIT_BOOKMARK_OFFSET:I = 0x1a

.field public static final BIT_CAPABILITIES:I = 0x0

.field public static final BIT_CHAPTER_COUNT:I = 0x8

.field public static final BIT_CHAPTER_NAMES:I = 0xa

.field public static final BIT_CHAPTER_TIMES:I = 0x9

.field public static final BIT_COMPOSER_NAME:I = 0x5

.field public static final BIT_DESCRIPTION:I = 0xc

.field public static final BIT_DISC_SET_ALBUM_INDEX:I = 0xe

.field public static final BIT_GENRE_NAME:I = 0x4

.field public static final BIT_LAST_PLAYED_DATE_TIME:I = 0x12

.field public static final BIT_LYRICS_OF_THE_SONG_CURRENT_PLAYING:I = 0xb

.field public static final BIT_PLAY_COUNT:I = 0xf

.field public static final BIT_PODCAST_RELEASE_DATE:I = 0x11

.field public static final BIT_RELEASE_DATE_YEAR:I = 0x13

.field public static final BIT_SEASON_NUMBER:I = 0x16

.field public static final BIT_SERIES_NAME:I = 0x15

.field public static final BIT_SKIP_COUNT:I = 0x10

.field public static final BIT_START_STOP_TIME_OFFSET:I = 0x1b

.field public static final BIT_STAR_RATING:I = 0x14

.field public static final BIT_TOTAL_TRACK_TIME_DURATION:I = 0x6

.field public static final BIT_TRACK_DATA_RATE:I = 0x19

.field public static final BIT_TRACK_EQ_PRESET:I = 0x18

.field public static final BIT_TRACK_NAME:I = 0x1

.field public static final BIT_TRACK_VOL_ADJ:I = 0x17

.field public static final BIT_UNIQUE_TRACK_IDENTIFIER:I = 0x7

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/hzbhd/midwareproxy/iPod/TrackInformationMask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 83
    new-instance v0, Lcom/hzbhd/midwareproxy/iPod/TrackInformationMask$1;

    invoke-direct {v0}, Lcom/hzbhd/midwareproxy/iPod/TrackInformationMask$1;-><init>()V

    sput-object v0, Lcom/hzbhd/midwareproxy/iPod/TrackInformationMask;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/iPod/FourByteMask;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/iPod/FourByteMask;-><init>()V

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformationMask;->mMask:I

    return-void
.end method

.method public constructor <init>(Lcom/hzbhd/midwareproxy/iPod/TrackInformationMask;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/iPod/FourByteMask;-><init>()V

    .line 66
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/TrackInformationMask;->copyFrom(Lcom/hzbhd/midwareproxy/iPod/TrackInformationMask;)V

    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/hzbhd/midwareproxy/iPod/TrackInformationMask;)V
    .locals 0

    .line 70
    iget p1, p1, Lcom/hzbhd/midwareproxy/iPod/TrackInformationMask;->mMask:I

    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformationMask;->mMask:I

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 80
    iget p2, p0, Lcom/hzbhd/midwareproxy/iPod/TrackInformationMask;->mMask:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
