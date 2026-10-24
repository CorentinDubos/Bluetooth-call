.class public Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;
.super Ljava/lang/Object;
.source "PlayStatusNotification.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;",
            ">;"
        }
    .end annotation
.end field

.field public static final PLAY_MODE_AUDIO_TRACK:B = 0x0t

.field public static final PLAY_MODE_VIDEO_TRACK:B = 0x1t

.field public static final PLAY_STATE_FFW_REW_SEEK_STOPPED:B = 0x7t

.field public static final PLAY_STATE_FFW_SEEK_START:B = 0x5t

.field public static final PLAY_STATE_PAUSE:B = 0xbt

.field public static final PLAY_STATE_PLAYING:B = 0xat

.field public static final PLAY_STATE_REW_SEEK_START:B = 0x6t

.field public static final PLAY_STATE_STOPPED:B = 0x2t

.field public static final STATUS_CHAPTER_INDEX:B = 0x5t

.field public static final STATUS_CHAPTER_TIME_OFFSET_MS:B = 0x8t

.field public static final STATUS_CHAPTER_TIME_OFFSET_SEC:B = 0x9t

.field public static final STATUS_FFW_SEEK_STOP:B = 0x2t

.field public static final STATUS_INVALID:B = -0x1t

.field public static final STATUS_PLAYBACK_ENGINE_CONTENT_CHANGED:B = 0xet

.field public static final STATUS_PLAYBACK_STATE_EXTENDED:B = 0x6t

.field public static final STATUS_PLAYBACK_STOPPED:B = 0x0t

.field public static final STATUS_REW_SEEK_STOP:B = 0x3t

.field public static final STATUS_TRACK_CAPABILITIES_CHANGED:B = 0xdt

.field public static final STATUS_TRACK_INDEX:B = 0x1t

.field public static final STATUS_TRACK_LYRICS_READY:B = 0xct

.field public static final STATUS_TRACK_PLAYBACK_MODE:B = 0xbt

.field public static final STATUS_TRACK_TIME_OFFSET_MS:B = 0x4t

.field public static final STATUS_TRACK_TIME_OFFSET_SEC:B = 0x7t

.field public static final STATUS_TRACK_UNIQUE_IDENTIFIER:B = 0xat


# instance fields
.field private mChapTimeOffsetMS:I

.field private mChapTimeOffsetSec:I

.field private mChapterIndex:I

.field private mNewNumOfTrack:I

.field private mPlayMode:B

.field private mPlayState:B

.field private mStatusType:B

.field private mTrackCapabilities:Lcom/hzbhd/midwareproxy/iPod/TrackCapabilities;

.field private mTrackIndex:I

.field private mTrackTimeOffsetMS:I

.field private mTrackTimeOffsetSec:I

.field private mTrackUID:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 302
    new-instance v0, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification$1;

    invoke-direct {v0}, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification$1;-><init>()V

    sput-object v0, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 130
    iput-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->mTrackUID:[B

    .line 131
    new-instance v0, Lcom/hzbhd/midwareproxy/iPod/TrackCapabilities;

    invoke-direct {v0}, Lcom/hzbhd/midwareproxy/iPod/TrackCapabilities;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->mTrackCapabilities:Lcom/hzbhd/midwareproxy/iPod/TrackCapabilities;

    const/4 v0, -0x1

    .line 133
    iput-byte v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->mStatusType:B

    .line 140
    invoke-direct {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 130
    iput-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->mTrackUID:[B

    .line 131
    new-instance v0, Lcom/hzbhd/midwareproxy/iPod/TrackCapabilities;

    invoke-direct {v0}, Lcom/hzbhd/midwareproxy/iPod/TrackCapabilities;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->mTrackCapabilities:Lcom/hzbhd/midwareproxy/iPod/TrackCapabilities;

    const/4 v0, -0x1

    .line 133
    iput-byte v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->mStatusType:B

    .line 136
    invoke-direct {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->parse([B)V

    return-void
.end method

.method private parse([B)V
    .locals 6

    const/4 v0, 0x0

    .line 192
    aget-byte v1, p1, v0

    iput-byte v1, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->mStatusType:B

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    packed-switch v1, :pswitch_data_0

    const/4 p1, -0x1

    .line 233
    iput-byte p1, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->mStatusType:B

    goto/16 :goto_0

    .line 230
    :pswitch_0
    aget-byte v0, p1, v5

    aget-byte v1, p1, v4

    aget-byte v3, p1, v3

    aget-byte p1, p1, v2

    invoke-static {v0, v1, v3, p1}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;->byteToInt(BBBB)I

    move-result p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->mNewNumOfTrack:I

    goto/16 :goto_0

    .line 227
    :pswitch_1
    new-instance v0, Lcom/hzbhd/midwareproxy/iPod/TrackCapabilities;

    invoke-direct {v0, p1, v5}, Lcom/hzbhd/midwareproxy/iPod/TrackCapabilities;-><init>([BI)V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->mTrackCapabilities:Lcom/hzbhd/midwareproxy/iPod/TrackCapabilities;

    goto :goto_0

    .line 224
    :pswitch_2
    aget-byte p1, p1, v5

    iput-byte p1, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->mPlayMode:B

    goto :goto_0

    .line 221
    :pswitch_3
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->mTrackUID:[B

    const/16 v2, 0x8

    invoke-static {p1, v5, v1, v0, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_0

    .line 218
    :pswitch_4
    aget-byte v0, p1, v5

    aget-byte v1, p1, v4

    aget-byte v3, p1, v3

    aget-byte p1, p1, v2

    invoke-static {v0, v1, v3, p1}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;->byteToInt(BBBB)I

    move-result p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->mChapTimeOffsetSec:I

    goto :goto_0

    .line 215
    :pswitch_5
    aget-byte v0, p1, v5

    aget-byte v1, p1, v4

    aget-byte v3, p1, v3

    aget-byte p1, p1, v2

    invoke-static {v0, v1, v3, p1}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;->byteToInt(BBBB)I

    move-result p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->mChapTimeOffsetMS:I

    goto :goto_0

    .line 212
    :pswitch_6
    aget-byte v0, p1, v5

    aget-byte v1, p1, v4

    aget-byte v3, p1, v3

    aget-byte p1, p1, v2

    invoke-static {v0, v1, v3, p1}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;->byteToInt(BBBB)I

    move-result p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->mTrackTimeOffsetSec:I

    goto :goto_0

    .line 209
    :pswitch_7
    aget-byte p1, p1, v5

    iput-byte p1, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->mPlayState:B

    goto :goto_0

    .line 206
    :pswitch_8
    aget-byte v0, p1, v5

    aget-byte v1, p1, v4

    aget-byte v3, p1, v3

    aget-byte p1, p1, v2

    invoke-static {v0, v1, v3, p1}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;->byteToInt(BBBB)I

    move-result p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->mChapterIndex:I

    goto :goto_0

    .line 203
    :pswitch_9
    aget-byte v0, p1, v5

    aget-byte v1, p1, v4

    aget-byte v3, p1, v3

    aget-byte p1, p1, v2

    invoke-static {v0, v1, v3, p1}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;->byteToInt(BBBB)I

    move-result p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->mTrackTimeOffsetMS:I

    goto :goto_0

    .line 200
    :pswitch_a
    aget-byte v0, p1, v5

    aget-byte v1, p1, v4

    aget-byte v3, p1, v3

    aget-byte p1, p1, v2

    invoke-static {v0, v1, v3, p1}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;->byteToInt(BBBB)I

    move-result p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->mTrackIndex:I

    :goto_0
    :pswitch_b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_b
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 336
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->mTrackIndex:I

    .line 337
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->mTrackTimeOffsetMS:I

    .line 338
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->mChapterIndex:I

    .line 339
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->mPlayState:B

    .line 340
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->mTrackTimeOffsetSec:I

    .line 341
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->mChapTimeOffsetMS:I

    .line 342
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->mChapTimeOffsetSec:I

    .line 343
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->mPlayMode:B

    .line 344
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->mNewNumOfTrack:I

    .line 345
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->mTrackUID:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 346
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/TrackCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hzbhd/midwareproxy/iPod/TrackCapabilities;

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->mTrackCapabilities:Lcom/hzbhd/midwareproxy/iPod/TrackCapabilities;

    .line 347
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    iput-byte p1, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->mStatusType:B

    return-void
.end method

.method private switchToByteArray(I)[B
    .locals 3

    .line 238
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;->BIG_ENDIAN:Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;

    invoke-static {p1, v0}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;->intToByteArray(ILcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;)[B

    move-result-object p1

    const/4 v0, 0x5

    new-array v0, v0, [B

    .line 246
    iget-byte v1, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->mStatusType:B

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    :goto_0
    const/4 v1, 0x4

    if-ge v2, v1, :cond_0

    add-int/lit8 v1, v2, 0x1

    .line 248
    aget-byte v2, p1, v2

    aput-byte v2, v0, v1

    move v2, v1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private switchToByteArray([B)[B
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [B

    .line 261
    iget-byte v1, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->mStatusType:B

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    :goto_0
    const/4 v1, 0x4

    if-ge v2, v1, :cond_0

    add-int/lit8 v1, v2, 0x1

    .line 263
    aget-byte v2, p1, v2

    aput-byte v2, v0, v1

    move v2, v1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getChapTimeOffsetMS()I
    .locals 1

    .line 164
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->mChapTimeOffsetMS:I

    return v0
.end method

.method public getChapTimeOffsetSec()I
    .locals 1

    .line 168
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->mChapTimeOffsetSec:I

    return v0
.end method

.method public getChapterIndex()I
    .locals 1

    .line 160
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->mChapterIndex:I

    return v0
.end method

.method public getNewNumOfTracks()I
    .locals 1

    .line 188
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->mNewNumOfTrack:I

    return v0
.end method

.method public getPlayMode()B
    .locals 1

    .line 180
    iget-byte v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->mPlayMode:B

    return v0
.end method

.method public getPlayState()B
    .locals 1

    .line 176
    iget-byte v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->mPlayState:B

    return v0
.end method

.method public getStatusType()B
    .locals 1

    .line 144
    iget-byte v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->mStatusType:B

    return v0
.end method

.method public getTrackCapabilities()Lcom/hzbhd/midwareproxy/iPod/TrackCapabilities;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->mTrackCapabilities:Lcom/hzbhd/midwareproxy/iPod/TrackCapabilities;

    return-object v0
.end method

.method public getTrackIndex()I
    .locals 1

    .line 148
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->mTrackIndex:I

    return v0
.end method

.method public getTrackTimeOffsetMS()I
    .locals 1

    .line 152
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->mTrackTimeOffsetMS:I

    return v0
.end method

.method public getTrackTimeOffsetSec()I
    .locals 1

    .line 156
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->mTrackTimeOffsetSec:I

    return v0
.end method

.method public getTrackUID()[B
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->mTrackUID:[B

    return-object v0
.end method

.method public toByteArray()[B
    .locals 3

    .line 269
    iget-byte v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->mStatusType:B

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    .line 296
    :pswitch_0
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->mNewNumOfTrack:I

    invoke-direct {p0, v0}, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->switchToByteArray(I)[B

    move-result-object v0

    return-object v0

    .line 294
    :pswitch_1
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->mTrackCapabilities:Lcom/hzbhd/midwareproxy/iPod/TrackCapabilities;

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/iPod/TrackCapabilities;->getOriginalData()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->switchToByteArray(I)[B

    move-result-object v0

    return-object v0

    :pswitch_2
    new-array v0, v2, [B

    .line 292
    iget-byte v2, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->mPlayMode:B

    aput-byte v2, v0, v1

    invoke-direct {p0, v0}, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->switchToByteArray([B)[B

    move-result-object v0

    return-object v0

    .line 290
    :pswitch_3
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->mTrackUID:[B

    invoke-direct {p0, v0}, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->switchToByteArray([B)[B

    move-result-object v0

    return-object v0

    .line 288
    :pswitch_4
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->mChapTimeOffsetSec:I

    invoke-direct {p0, v0}, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->switchToByteArray(I)[B

    move-result-object v0

    return-object v0

    .line 286
    :pswitch_5
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->mChapTimeOffsetMS:I

    invoke-direct {p0, v0}, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->switchToByteArray(I)[B

    move-result-object v0

    return-object v0

    .line 284
    :pswitch_6
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->mTrackTimeOffsetSec:I

    invoke-direct {p0, v0}, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->switchToByteArray(I)[B

    move-result-object v0

    return-object v0

    :pswitch_7
    new-array v0, v2, [B

    .line 282
    iget-byte v2, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->mPlayState:B

    aput-byte v2, v0, v1

    invoke-direct {p0, v0}, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->switchToByteArray([B)[B

    move-result-object v0

    return-object v0

    .line 280
    :pswitch_8
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->mChapterIndex:I

    invoke-direct {p0, v0}, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->switchToByteArray(I)[B

    move-result-object v0

    return-object v0

    .line 278
    :pswitch_9
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->mTrackTimeOffsetMS:I

    invoke-direct {p0, v0}, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->switchToByteArray(I)[B

    move-result-object v0

    return-object v0

    .line 276
    :pswitch_a
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->mTrackIndex:I

    invoke-direct {p0, v0}, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->switchToByteArray(I)[B

    move-result-object v0

    return-object v0

    :pswitch_b
    new-array v2, v2, [B

    aput-byte v0, v2, v1

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_b
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 321
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->mTrackIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 322
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->mTrackTimeOffsetMS:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 323
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->mChapterIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    iget-byte v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->mPlayState:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 325
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->mTrackTimeOffsetSec:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->mChapTimeOffsetMS:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 327
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->mChapTimeOffsetSec:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 328
    iget-byte v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->mPlayMode:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 329
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->mNewNumOfTrack:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 330
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->mTrackUID:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 331
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->mTrackCapabilities:Lcom/hzbhd/midwareproxy/iPod/TrackCapabilities;

    invoke-virtual {v0, p1, p2}, Lcom/hzbhd/midwareproxy/iPod/TrackCapabilities;->writeToParcel(Landroid/os/Parcel;I)V

    .line 332
    iget-byte p2, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->mStatusType:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
