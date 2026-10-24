.class public Lcom/hzbhd/midwareproxy/iPod/RemoteEvent;
.super Ljava/lang/Object;
.source "RemoteEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final AUDIO_BOOK_FASTER:B = 0x1t

.field public static final AUDIO_BOOK_SPEED_NORMAL:B = 0x0t

.field public static final AUDIO_BOOK_SPEED_SLOWER:B = -0x1t

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/hzbhd/midwareproxy/iPod/RemoteEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_NUM_ALARM:B = 0xat
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EVENT_NUM_AUDIO_BOOK:B = 0xet

.field public static final EVENT_NUM_BACKLIGHT:B = 0xbt

.field public static final EVENT_NUM_CHAPTER_INFO:B = 0x2t

.field public static final EVENT_NUM_DATA_TIME:B = 0x9t

.field public static final EVENT_NUM_EQUALIZER_STATE:B = 0x6t

.field public static final EVENT_NUM_HOLD_SWITCH:B = 0xct

.field public static final EVENT_NUM_INVALID:B = -0x1t

.field public static final EVENT_NUM_MUTE_UI_ABS_VOL:B = 0x10t

.field public static final EVENT_NUM_MUTE_UI_VOL:B = 0x4t

.field public static final EVENT_NUM_PLAYBACK_ENGINE_CONTENTS_CHANGED:B = 0x12t

.field public static final EVENT_NUM_PLAY_STATUS:B = 0x3t

.field public static final EVENT_NUM_POWER_BATTERY:B = 0x5t

.field public static final EVENT_NUM_REPEAT_SETTING:B = 0x8t

.field public static final EVENT_NUM_SHUFFLE_SETTING:B = 0x7t

.field public static final EVENT_NUM_SOUND_CHECK:B = 0xdt

.field public static final EVENT_NUM_TRACK_CAPS:B = 0x11t

.field public static final EVENT_NUM_TRACK_INDEX:B = 0x1t

.field public static final EVENT_NUM_TRACK_POS_MS:B = 0x0t

.field public static final EVENT_NUM_TRACK_POS_SEC:B = 0xft

.field public static final EXTERNAL_POWER_BATTERY_CHARGED:B = 0x5t

.field public static final EXTERNAL_POWER_BATTERY_CHARGING:B = 0x4t

.field public static final EXTERNAL_POWER_BATTERY_PACK_NO_CHARGING:B = 0x2t

.field public static final EXTERNAL_POWER_NO_CHARGING:B = 0x3t

.field public static final INTERNAL_BATTERY_POWER:B = 0x1t

.field public static final INTERNAL_BATTERY_POWER_LOW_POWER:B

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAudiobookSpeed:B

.field private mEventNum:B

.field private mNumOfTrackInNewPlaylist:I

.field private mPlayStatus:B

.field private mRepeatMode:B

.field private mShuffleMode:B

.field private mTrackIndex:I

.field private mTrackPosMS:I

.field private mTrackPosSEC:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/hzbhd/midwareproxy/iPod/RemoteEvent;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/midwareproxy/iPod/RemoteEvent;->TAG:Ljava/lang/String;

    .line 270
    new-instance v0, Lcom/hzbhd/midwareproxy/iPod/RemoteEvent$1;

    invoke-direct {v0}, Lcom/hzbhd/midwareproxy/iPod/RemoteEvent$1;-><init>()V

    sput-object v0, Lcom/hzbhd/midwareproxy/iPod/RemoteEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 131
    iput-byte v0, p0, Lcom/hzbhd/midwareproxy/iPod/RemoteEvent;->mEventNum:B

    .line 165
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/RemoteEvent;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 131
    iput-byte v0, p0, Lcom/hzbhd/midwareproxy/iPod/RemoteEvent;->mEventNum:B

    .line 161
    invoke-direct {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/RemoteEvent;->parse([B)V

    return-void
.end method

.method private parse([B)V
    .locals 6

    const/4 v0, 0x0

    .line 205
    aget-byte v0, p1, v0

    iput-byte v0, p0, Lcom/hzbhd/midwareproxy/iPod/RemoteEvent;->mEventNum:B

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eqz v0, :cond_7

    if-eq v0, v4, :cond_6

    if-eq v0, v3, :cond_5

    const/16 v5, 0x12

    if-eq v0, v5, :cond_4

    const/4 v5, 0x7

    if-eq v0, v5, :cond_3

    const/16 v5, 0x8

    if-eq v0, v5, :cond_2

    const/16 v5, 0xe

    if-eq v0, v5, :cond_1

    const/16 v5, 0xf

    if-eq v0, v5, :cond_0

    goto :goto_0

    .line 251
    :cond_0
    aget-byte v0, p1, v4

    aget-byte v2, p1, v2

    aget-byte v3, p1, v3

    aget-byte p1, p1, v1

    invoke-static {v0, v2, v3, p1}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;->byteToInt(BBBB)I

    move-result p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/RemoteEvent;->mTrackPosSEC:I

    goto :goto_0

    .line 247
    :cond_1
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/RemoteEvent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAudiobookSpeed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v2, p1, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/iPod/utils/Trace;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    aget-byte p1, p1, v4

    iput-byte p1, p0, Lcom/hzbhd/midwareproxy/iPod/RemoteEvent;->mAudiobookSpeed:B

    goto :goto_0

    .line 232
    :cond_2
    aget-byte p1, p1, v4

    iput-byte p1, p0, Lcom/hzbhd/midwareproxy/iPod/RemoteEvent;->mRepeatMode:B

    goto :goto_0

    .line 229
    :cond_3
    aget-byte p1, p1, v4

    iput-byte p1, p0, Lcom/hzbhd/midwareproxy/iPod/RemoteEvent;->mShuffleMode:B

    goto :goto_0

    .line 260
    :cond_4
    aget-byte v0, p1, v4

    aget-byte v2, p1, v2

    aget-byte v3, p1, v3

    aget-byte p1, p1, v1

    invoke-static {v0, v2, v3, p1}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;->byteToInt(BBBB)I

    move-result p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/RemoteEvent;->mNumOfTrackInNewPlaylist:I

    goto :goto_0

    .line 217
    :cond_5
    aget-byte p1, p1, v4

    iput-byte p1, p0, Lcom/hzbhd/midwareproxy/iPod/RemoteEvent;->mPlayStatus:B

    goto :goto_0

    .line 211
    :cond_6
    aget-byte v0, p1, v4

    aget-byte v2, p1, v2

    aget-byte v3, p1, v3

    aget-byte p1, p1, v1

    invoke-static {v0, v2, v3, p1}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;->byteToInt(BBBB)I

    move-result p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/RemoteEvent;->mTrackIndex:I

    goto :goto_0

    .line 208
    :cond_7
    aget-byte v0, p1, v4

    aget-byte v2, p1, v2

    aget-byte v3, p1, v3

    aget-byte p1, p1, v1

    invoke-static {v0, v2, v3, p1}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;->byteToInt(BBBB)I

    move-result p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/RemoteEvent;->mTrackPosMS:I

    :goto_0
    return-void
.end method

.method private switchToByteArray(I)[B
    .locals 3

    .line 307
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;->BIG_ENDIAN:Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;

    invoke-static {p1, v0}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;->intToByteArray(ILcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;)[B

    move-result-object p1

    const/4 v0, 0x5

    new-array v0, v0, [B

    .line 315
    iget-byte v1, p0, Lcom/hzbhd/midwareproxy/iPod/RemoteEvent;->mEventNum:B

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    :goto_0
    const/4 v1, 0x4

    if-ge v2, v1, :cond_0

    add-int/lit8 v1, v2, 0x1

    .line 317
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

    .line 330
    iget-byte v1, p0, Lcom/hzbhd/midwareproxy/iPod/RemoteEvent;->mEventNum:B

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    :goto_0
    const/4 v1, 0x4

    if-ge v2, v1, :cond_0

    add-int/lit8 v1, v2, 0x1

    .line 332
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

.method public getAudiobookSpeed()B
    .locals 1

    .line 201
    iget-byte v0, p0, Lcom/hzbhd/midwareproxy/iPod/RemoteEvent;->mAudiobookSpeed:B

    return v0
.end method

.method public getEventNum()B
    .locals 1

    .line 169
    iget-byte v0, p0, Lcom/hzbhd/midwareproxy/iPod/RemoteEvent;->mEventNum:B

    return v0
.end method

.method public getNumOfTrackInNewPlaylist()I
    .locals 1

    .line 197
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/RemoteEvent;->mNumOfTrackInNewPlaylist:I

    return v0
.end method

.method public getPlayStatus()B
    .locals 1

    .line 185
    iget-byte v0, p0, Lcom/hzbhd/midwareproxy/iPod/RemoteEvent;->mPlayStatus:B

    return v0
.end method

.method public getRepeatMode()B
    .locals 1

    .line 193
    iget-byte v0, p0, Lcom/hzbhd/midwareproxy/iPod/RemoteEvent;->mRepeatMode:B

    return v0
.end method

.method public getShuffleMode()B
    .locals 1

    .line 189
    iget-byte v0, p0, Lcom/hzbhd/midwareproxy/iPod/RemoteEvent;->mShuffleMode:B

    return v0
.end method

.method public getTrackIndex()I
    .locals 1

    .line 181
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/RemoteEvent;->mTrackIndex:I

    return v0
.end method

.method public getTrackPosMS()I
    .locals 1

    .line 173
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/RemoteEvent;->mTrackPosMS:I

    return v0
.end method

.method public getTrackPosSEC()I
    .locals 1

    .line 177
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/RemoteEvent;->mTrackPosSEC:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 295
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/hzbhd/midwareproxy/iPod/RemoteEvent;->mEventNum:B

    .line 296
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/iPod/RemoteEvent;->mTrackPosMS:I

    .line 297
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/iPod/RemoteEvent;->mTrackPosSEC:I

    .line 298
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/iPod/RemoteEvent;->mTrackIndex:I

    .line 299
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/hzbhd/midwareproxy/iPod/RemoteEvent;->mPlayStatus:B

    .line 300
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/hzbhd/midwareproxy/iPod/RemoteEvent;->mShuffleMode:B

    .line 301
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/hzbhd/midwareproxy/iPod/RemoteEvent;->mRepeatMode:B

    .line 302
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/iPod/RemoteEvent;->mNumOfTrackInNewPlaylist:I

    .line 303
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    iput-byte p1, p0, Lcom/hzbhd/midwareproxy/iPod/RemoteEvent;->mAudiobookSpeed:B

    return-void
.end method

.method public toByteArray()[B
    .locals 4

    .line 338
    iget-byte v0, p0, Lcom/hzbhd/midwareproxy/iPod/RemoteEvent;->mEventNum:B

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq v0, v2, :cond_4

    const/16 v2, 0xf

    if-eq v0, v2, :cond_3

    const/16 v2, 0x12

    if-eq v0, v2, :cond_2

    const/4 v2, 0x7

    if-eq v0, v2, :cond_1

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-array v0, v1, [B

    .line 356
    iget-byte v1, p0, Lcom/hzbhd/midwareproxy/iPod/RemoteEvent;->mRepeatMode:B

    aput-byte v1, v0, v3

    invoke-direct {p0, v0}, Lcom/hzbhd/midwareproxy/iPod/RemoteEvent;->switchToByteArray([B)[B

    move-result-object v0

    return-object v0

    :cond_1
    new-array v0, v1, [B

    .line 354
    iget-byte v1, p0, Lcom/hzbhd/midwareproxy/iPod/RemoteEvent;->mShuffleMode:B

    aput-byte v1, v0, v3

    invoke-direct {p0, v0}, Lcom/hzbhd/midwareproxy/iPod/RemoteEvent;->switchToByteArray([B)[B

    move-result-object v0

    return-object v0

    .line 374
    :cond_2
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/RemoteEvent;->mNumOfTrackInNewPlaylist:I

    invoke-direct {p0, v0}, Lcom/hzbhd/midwareproxy/iPod/RemoteEvent;->switchToByteArray(I)[B

    move-result-object v0

    return-object v0

    .line 368
    :cond_3
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/RemoteEvent;->mTrackPosSEC:I

    invoke-direct {p0, v0}, Lcom/hzbhd/midwareproxy/iPod/RemoteEvent;->switchToByteArray(I)[B

    move-result-object v0

    return-object v0

    :cond_4
    new-array v0, v1, [B

    .line 346
    iget-byte v1, p0, Lcom/hzbhd/midwareproxy/iPod/RemoteEvent;->mPlayStatus:B

    aput-byte v1, v0, v3

    invoke-direct {p0, v0}, Lcom/hzbhd/midwareproxy/iPod/RemoteEvent;->switchToByteArray([B)[B

    move-result-object v0

    return-object v0

    .line 342
    :cond_5
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/RemoteEvent;->mTrackIndex:I

    invoke-direct {p0, v0}, Lcom/hzbhd/midwareproxy/iPod/RemoteEvent;->switchToByteArray(I)[B

    move-result-object v0

    return-object v0

    .line 340
    :cond_6
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/RemoteEvent;->mTrackPosMS:I

    invoke-direct {p0, v0}, Lcom/hzbhd/midwareproxy/iPod/RemoteEvent;->switchToByteArray(I)[B

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 283
    iget-byte p2, p0, Lcom/hzbhd/midwareproxy/iPod/RemoteEvent;->mEventNum:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 284
    iget p2, p0, Lcom/hzbhd/midwareproxy/iPod/RemoteEvent;->mTrackPosMS:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 285
    iget p2, p0, Lcom/hzbhd/midwareproxy/iPod/RemoteEvent;->mTrackPosSEC:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    iget p2, p0, Lcom/hzbhd/midwareproxy/iPod/RemoteEvent;->mTrackIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 287
    iget-byte p2, p0, Lcom/hzbhd/midwareproxy/iPod/RemoteEvent;->mPlayStatus:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 288
    iget-byte p2, p0, Lcom/hzbhd/midwareproxy/iPod/RemoteEvent;->mShuffleMode:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 289
    iget-byte p2, p0, Lcom/hzbhd/midwareproxy/iPod/RemoteEvent;->mRepeatMode:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 290
    iget p2, p0, Lcom/hzbhd/midwareproxy/iPod/RemoteEvent;->mNumOfTrackInNewPlaylist:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    iget-byte p2, p0, Lcom/hzbhd/midwareproxy/iPod/RemoteEvent;->mAudiobookSpeed:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
