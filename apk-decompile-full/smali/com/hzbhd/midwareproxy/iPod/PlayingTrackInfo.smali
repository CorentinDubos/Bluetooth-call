.class public Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;
.super Ljava/lang/Object;
.source "PlayingTrackInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_ARTWORK_COUNT:B = 0x7t

.field public static final TYPE_CAPABILITIES_AND_INFO:B = 0x0t

.field public static final TYPE_PODCAST_NAME:B = 0x1t

.field public static final TYPE_TRACK_COMPOSER:B = 0x6t

.field public static final TYPE_TRACK_DESCRIPTION:B = 0x3t

.field public static final TYPE_TRACK_GENRE:B = 0x5t

.field public static final TYPE_TRACK_RELEASE_DATA:B = 0x2t

.field public static final TYPE_TRACK_SONG_LYRICS:B = 0x4t


# instance fields
.field private mAckStatus:B

.field private mChapterCount:I

.field private mPodcastName:Ljava/lang/String;

.field private mTrackArtworkCnt:Lcom/hzbhd/midwareproxy/iPod/TrackArtworkCount;

.field private mTrackCapabilities:Lcom/hzbhd/midwareproxy/iPod/TrackCapabilities;

.field private mTrackComposer:Ljava/lang/String;

.field private mTrackDesc:Ljava/lang/String;

.field private mTrackGenre:Ljava/lang/String;

.field private mTrackInfoType:B

.field private mTrackLengthMS:I

.field private mTrackReleaseDate:Lcom/hzbhd/midwareproxy/iPod/DateTime;

.field private mTrackSongLyrics:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 189
    new-instance v0, Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo$1;

    invoke-direct {v0}, Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo$1;-><init>()V

    sput-object v0, Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 72
    iput-byte v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;->mAckStatus:B

    const/4 v0, 0x0

    .line 73
    iput v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;->mTrackLengthMS:I

    .line 74
    iput v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;->mChapterCount:I

    .line 75
    iput-byte v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;->mTrackInfoType:B

    const-string v0, ""

    .line 76
    iput-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;->mPodcastName:Ljava/lang/String;

    .line 77
    iput-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;->mTrackDesc:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;->mTrackSongLyrics:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;->mTrackGenre:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;->mTrackComposer:Ljava/lang/String;

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;->mTrackArtworkCnt:Lcom/hzbhd/midwareproxy/iPod/TrackArtworkCount;

    .line 82
    iput-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;->mTrackCapabilities:Lcom/hzbhd/midwareproxy/iPod/TrackCapabilities;

    .line 83
    iput-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;->mTrackReleaseDate:Lcom/hzbhd/midwareproxy/iPod/DateTime;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 72
    iput-byte v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;->mAckStatus:B

    const/4 v0, 0x0

    .line 73
    iput v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;->mTrackLengthMS:I

    .line 74
    iput v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;->mChapterCount:I

    .line 75
    iput-byte v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;->mTrackInfoType:B

    const-string v0, ""

    .line 76
    iput-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;->mPodcastName:Ljava/lang/String;

    .line 77
    iput-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;->mTrackDesc:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;->mTrackSongLyrics:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;->mTrackGenre:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;->mTrackComposer:Ljava/lang/String;

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;->mTrackArtworkCnt:Lcom/hzbhd/midwareproxy/iPod/TrackArtworkCount;

    .line 82
    iput-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;->mTrackCapabilities:Lcom/hzbhd/midwareproxy/iPod/TrackCapabilities;

    .line 83
    iput-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;->mTrackReleaseDate:Lcom/hzbhd/midwareproxy/iPod/DateTime;

    .line 90
    invoke-direct {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;->mAckStatus:B

    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;->mTrackInfoType:B

    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;->mTrackLengthMS:I

    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;->mChapterCount:I

    .line 232
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;->mPodcastName:Ljava/lang/String;

    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;->mTrackDesc:Ljava/lang/String;

    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;->mTrackSongLyrics:Ljava/lang/String;

    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;->mTrackGenre:Ljava/lang/String;

    .line 236
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;->mTrackComposer:Ljava/lang/String;

    .line 237
    iget-byte v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;->mTrackInfoType:B

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 238
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/TrackArtworkCount;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hzbhd/midwareproxy/iPod/TrackArtworkCount;

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;->mTrackArtworkCnt:Lcom/hzbhd/midwareproxy/iPod/TrackArtworkCount;

    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAckStatus()B
    .locals 1

    .line 98
    iget-byte v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;->mAckStatus:B

    return v0
.end method

.method public getChapterCount()I
    .locals 1

    .line 130
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;->mChapterCount:I

    return v0
.end method

.method public getPodcastName()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;->mPodcastName:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackArtworkCount()Lcom/hzbhd/midwareproxy/iPod/TrackArtworkCount;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;->mTrackArtworkCnt:Lcom/hzbhd/midwareproxy/iPod/TrackArtworkCount;

    return-object v0
.end method

.method public getTrackCapabilities()Lcom/hzbhd/midwareproxy/iPod/TrackCapabilities;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;->mTrackCapabilities:Lcom/hzbhd/midwareproxy/iPod/TrackCapabilities;

    return-object v0
.end method

.method public getTrackComposer()Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;->mTrackComposer:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackDesc()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;->mTrackDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackGenre()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;->mTrackGenre:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackInfoType()B
    .locals 1

    .line 106
    iget-byte v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;->mTrackInfoType:B

    return v0
.end method

.method public getTrackLengthMS()I
    .locals 1

    .line 122
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;->mTrackLengthMS:I

    return v0
.end method

.method public getTrackReleaseDate()Lcom/hzbhd/midwareproxy/iPod/DateTime;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;->mTrackReleaseDate:Lcom/hzbhd/midwareproxy/iPod/DateTime;

    return-object v0
.end method

.method public getTrackSongLyrics()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;->mTrackSongLyrics:Ljava/lang/String;

    return-object v0
.end method

.method public setAckStatus(B)V
    .locals 0

    .line 94
    iput-byte p1, p0, Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;->mAckStatus:B

    return-void
.end method

.method public setChapterCount(S)V
    .locals 0

    .line 126
    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;->mChapterCount:I

    return-void
.end method

.method public setPodcastName(Ljava/lang/String;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;->mPodcastName:Ljava/lang/String;

    return-void
.end method

.method public setTrackArtworkCount(Lcom/hzbhd/midwareproxy/iPod/TrackArtworkCount;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;->mTrackArtworkCnt:Lcom/hzbhd/midwareproxy/iPod/TrackArtworkCount;

    return-void
.end method

.method public setTrackCapabilities(Lcom/hzbhd/midwareproxy/iPod/TrackCapabilities;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;->mTrackCapabilities:Lcom/hzbhd/midwareproxy/iPod/TrackCapabilities;

    return-void
.end method

.method public setTrackComposer(Ljava/lang/String;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;->mTrackComposer:Ljava/lang/String;

    return-void
.end method

.method public setTrackDesc(Ljava/lang/String;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;->mTrackDesc:Ljava/lang/String;

    return-void
.end method

.method public setTrackGenre(Ljava/lang/String;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;->mTrackGenre:Ljava/lang/String;

    return-void
.end method

.method public setTrackInfoType(B)V
    .locals 0

    .line 102
    iput-byte p1, p0, Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;->mTrackInfoType:B

    return-void
.end method

.method public setTrackLengthMS(I)V
    .locals 0

    .line 118
    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;->mTrackLengthMS:I

    return-void
.end method

.method public setTrackReleaseDate(Lcom/hzbhd/midwareproxy/iPod/DateTime;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;->mTrackReleaseDate:Lcom/hzbhd/midwareproxy/iPod/DateTime;

    return-void
.end method

.method public setTrackSongLyrics(Ljava/lang/String;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;->mTrackSongLyrics:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 208
    iget-byte v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;->mAckStatus:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 209
    iget-byte v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;->mTrackInfoType:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 210
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;->mTrackLengthMS:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;->mChapterCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;->mPodcastName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;->mTrackDesc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;->mTrackSongLyrics:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;->mTrackGenre:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;->mTrackComposer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 218
    iget-byte v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;->mTrackInfoType:B

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 219
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;->mTrackArtworkCnt:Lcom/hzbhd/midwareproxy/iPod/TrackArtworkCount;

    invoke-virtual {v0, p1, p2}, Lcom/hzbhd/midwareproxy/iPod/TrackArtworkCount;->writeToParcel(Landroid/os/Parcel;I)V

    :cond_0
    return-void
.end method
