.class public Lcom/hzbhd/midwareproxy/iPod/DBiTunesInfo;
.super Ljava/lang/Object;
.source "DBiTunesInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/hzbhd/midwareproxy/iPod/DBiTunesInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_DB_LAST_SYNC_DATA_TIME:B = 0x1t

.field public static final TYPE_DB_UID:B = 0x0t

.field public static final TYPE_TOTAL_AUDIOBOOK_COUNT:B = 0x4t

.field public static final TYPE_TOTAL_AUDIO_TRACK_COUNT:B = 0x2t

.field public static final TYPE_TOTAL_PHOTO_COUNT:B = 0x5t

.field public static final TYPE_TOTAL_VIDEO_TRACK_COUNT:B = 0x3t


# instance fields
.field private mITunesUID:[B

.field private mLastSyncDateTime:Lcom/hzbhd/midwareproxy/iPod/DateTime;

.field private mMetadataType:B

.field private mTotalAudioTrackCount:I

.field private mTotalAudiobookCount:I

.field private mTotalPhotoCount:I

.field private mTotalVideoTrackCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 180
    new-instance v0, Lcom/hzbhd/midwareproxy/iPod/DBiTunesInfo$1;

    invoke-direct {v0}, Lcom/hzbhd/midwareproxy/iPod/DBiTunesInfo$1;-><init>()V

    sput-object v0, Lcom/hzbhd/midwareproxy/iPod/DBiTunesInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 55
    iput-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/DBiTunesInfo;->mITunesUID:[B

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/hzbhd/midwareproxy/iPod/DBiTunesInfo;->mMetadataType:B

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/DBiTunesInfo;->mTotalPhotoCount:I

    goto :goto_0

    .line 114
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/DBiTunesInfo;->mTotalAudiobookCount:I

    goto :goto_0

    .line 111
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/DBiTunesInfo;->mTotalVideoTrackCount:I

    goto :goto_0

    .line 108
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/DBiTunesInfo;->mTotalAudioTrackCount:I

    goto :goto_0

    .line 105
    :cond_4
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/DateTime;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hzbhd/midwareproxy/iPod/DateTime;

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/iPod/DBiTunesInfo;->mLastSyncDateTime:Lcom/hzbhd/midwareproxy/iPod/DateTime;

    goto :goto_0

    .line 102
    :cond_5
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/DBiTunesInfo;->mITunesUID:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    :goto_0
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 55
    iput-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/DBiTunesInfo;->mITunesUID:[B

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/hzbhd/midwareproxy/iPod/DBiTunesInfo;->parse([BI)V

    return-void
.end method

.method private parse([BI)V
    .locals 4

    .line 70
    aget-byte v0, p1, p2

    iput-byte v0, p0, Lcom/hzbhd/midwareproxy/iPod/DBiTunesInfo;->mMetadataType:B

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v2, :cond_4

    const/4 v1, 0x4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p2, 0x1

    .line 92
    aget-byte v0, p1, v0

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    add-int/lit8 v3, p2, 0x3

    aget-byte v3, p1, v3

    add-int/2addr p2, v1

    aget-byte p1, p1, p2

    invoke-static {v0, v2, v3, p1}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;->byteToInt(BBBB)I

    move-result p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/DBiTunesInfo;->mTotalPhotoCount:I

    goto :goto_0

    :cond_1
    add-int/lit8 v0, p2, 0x1

    .line 88
    aget-byte v0, p1, v0

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    add-int/lit8 v3, p2, 0x3

    aget-byte v3, p1, v3

    add-int/2addr p2, v1

    aget-byte p1, p1, p2

    invoke-static {v0, v2, v3, p1}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;->byteToInt(BBBB)I

    move-result p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/DBiTunesInfo;->mTotalAudiobookCount:I

    goto :goto_0

    :cond_2
    add-int/lit8 v0, p2, 0x1

    .line 84
    aget-byte v0, p1, v0

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    add-int/lit8 v3, p2, 0x3

    aget-byte v3, p1, v3

    add-int/2addr p2, v1

    aget-byte p1, p1, p2

    invoke-static {v0, v2, v3, p1}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;->byteToInt(BBBB)I

    move-result p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/DBiTunesInfo;->mTotalVideoTrackCount:I

    goto :goto_0

    :cond_3
    add-int/lit8 v0, p2, 0x1

    .line 80
    aget-byte v0, p1, v0

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    add-int/lit8 v3, p2, 0x3

    aget-byte v3, p1, v3

    add-int/2addr p2, v1

    aget-byte p1, p1, p2

    invoke-static {v0, v2, v3, p1}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;->byteToInt(BBBB)I

    move-result p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/DBiTunesInfo;->mTotalAudioTrackCount:I

    goto :goto_0

    .line 77
    :cond_4
    new-instance v0, Lcom/hzbhd/midwareproxy/iPod/DateTime;

    add-int/2addr p2, v2

    invoke-direct {v0, p1, p2, v1}, Lcom/hzbhd/midwareproxy/iPod/DateTime;-><init>([BII)V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/DBiTunesInfo;->mLastSyncDateTime:Lcom/hzbhd/midwareproxy/iPod/DateTime;

    goto :goto_0

    :cond_5
    add-int/2addr p2, v2

    .line 74
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/DBiTunesInfo;->mITunesUID:[B

    const/16 v2, 0x8

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    :goto_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLastSyncDateTime()Lcom/hzbhd/midwareproxy/iPod/DateTime;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/DBiTunesInfo;->mLastSyncDateTime:Lcom/hzbhd/midwareproxy/iPod/DateTime;

    return-object v0
.end method

.method public getMetadataType()B
    .locals 1

    .line 123
    iget-byte v0, p0, Lcom/hzbhd/midwareproxy/iPod/DBiTunesInfo;->mMetadataType:B

    return v0
.end method

.method public getTotalAudioTrackCount()I
    .locals 1

    .line 135
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/DBiTunesInfo;->mTotalAudioTrackCount:I

    return v0
.end method

.method public getTotalAudiobookCount()I
    .locals 1

    .line 139
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/DBiTunesInfo;->mTotalAudiobookCount:I

    return v0
.end method

.method public getTotalPhotoCount()I
    .locals 1

    .line 147
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/DBiTunesInfo;->mTotalPhotoCount:I

    return v0
.end method

.method public getTotalVideoTrackCount()I
    .locals 1

    .line 143
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/DBiTunesInfo;->mTotalVideoTrackCount:I

    return v0
.end method

.method public getiTunesUID()[B
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/DBiTunesInfo;->mITunesUID:[B

    return-object v0
.end method

.method public toByteArray()[B
    .locals 8

    .line 194
    iget-byte v0, p0, Lcom/hzbhd/midwareproxy/iPod/DBiTunesInfo;->mMetadataType:B

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_4

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eq v0, v6, :cond_3

    if-eq v0, v5, :cond_2

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_0

    new-array v0, v2, [B

    goto/16 :goto_1

    :cond_0
    new-array v3, v3, [B

    aput-byte v0, v3, v2

    .line 236
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/DBiTunesInfo;->mTotalPhotoCount:I

    sget-object v7, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;->BIG_ENDIAN:Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;

    invoke-static {v0, v7}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;->intToByteArray(ILcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;)[B

    move-result-object v0

    .line 237
    aget-byte v2, v0, v2

    aput-byte v2, v3, v1

    .line 238
    aget-byte v1, v0, v1

    aput-byte v1, v3, v6

    .line 239
    aget-byte v1, v0, v6

    aput-byte v1, v3, v5

    .line 240
    aget-byte v0, v0, v5

    aput-byte v0, v3, v4

    goto/16 :goto_0

    :cond_1
    new-array v3, v3, [B

    aput-byte v0, v3, v2

    .line 227
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/DBiTunesInfo;->mTotalAudiobookCount:I

    sget-object v7, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;->BIG_ENDIAN:Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;

    invoke-static {v0, v7}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;->intToByteArray(ILcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;)[B

    move-result-object v0

    .line 228
    aget-byte v2, v0, v2

    aput-byte v2, v3, v1

    .line 229
    aget-byte v1, v0, v1

    aput-byte v1, v3, v6

    .line 230
    aget-byte v1, v0, v6

    aput-byte v1, v3, v5

    .line 231
    aget-byte v0, v0, v5

    aput-byte v0, v3, v4

    goto :goto_0

    :cond_2
    new-array v3, v3, [B

    aput-byte v0, v3, v2

    .line 218
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/DBiTunesInfo;->mTotalVideoTrackCount:I

    sget-object v7, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;->BIG_ENDIAN:Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;

    invoke-static {v0, v7}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;->intToByteArray(ILcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;)[B

    move-result-object v0

    .line 219
    aget-byte v2, v0, v2

    aput-byte v2, v3, v1

    .line 220
    aget-byte v1, v0, v1

    aput-byte v1, v3, v6

    .line 221
    aget-byte v1, v0, v6

    aput-byte v1, v3, v5

    .line 222
    aget-byte v0, v0, v5

    aput-byte v0, v3, v4

    goto :goto_0

    :cond_3
    new-array v3, v3, [B

    aput-byte v0, v3, v2

    .line 209
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/DBiTunesInfo;->mTotalAudioTrackCount:I

    sget-object v7, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;->BIG_ENDIAN:Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;

    invoke-static {v0, v7}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;->intToByteArray(ILcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;)[B

    move-result-object v0

    .line 210
    aget-byte v2, v0, v2

    aput-byte v2, v3, v1

    .line 211
    aget-byte v1, v0, v1

    aput-byte v1, v3, v6

    .line 212
    aget-byte v1, v0, v6

    aput-byte v1, v3, v5

    .line 213
    aget-byte v0, v0, v5

    aput-byte v0, v3, v4

    goto :goto_0

    .line 201
    :cond_4
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/DBiTunesInfo;->mLastSyncDateTime:Lcom/hzbhd/midwareproxy/iPod/DateTime;

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/iPod/DateTime;->toByteArray()[B

    move-result-object v0

    .line 202
    array-length v3, v0

    add-int/2addr v3, v1

    new-array v3, v3, [B

    .line 203
    iget-byte v4, p0, Lcom/hzbhd/midwareproxy/iPod/DBiTunesInfo;->mMetadataType:B

    aput-byte v4, v3, v2

    .line 204
    array-length v4, v0

    invoke-static {v0, v2, v3, v1, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_0

    :cond_5
    const/16 v3, 0x9

    new-array v3, v3, [B

    aput-byte v0, v3, v2

    .line 198
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/DBiTunesInfo;->mITunesUID:[B

    const/16 v4, 0x8

    invoke-static {v0, v2, v3, v1, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    :goto_0
    move-object v0, v3

    :goto_1
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 157
    iget-byte v0, p0, Lcom/hzbhd/midwareproxy/iPod/DBiTunesInfo;->mMetadataType:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 158
    iget-byte v0, p0, Lcom/hzbhd/midwareproxy/iPod/DBiTunesInfo;->mMetadataType:B

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 p2, 0x2

    if-eq v0, p2, :cond_3

    const/4 p2, 0x3

    if-eq v0, p2, :cond_2

    const/4 p2, 0x4

    if-eq v0, p2, :cond_1

    const/4 p2, 0x5

    if-eq v0, p2, :cond_0

    goto :goto_0

    .line 175
    :cond_0
    iget p2, p0, Lcom/hzbhd/midwareproxy/iPod/DBiTunesInfo;->mTotalPhotoCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 172
    :cond_1
    iget p2, p0, Lcom/hzbhd/midwareproxy/iPod/DBiTunesInfo;->mTotalAudiobookCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 169
    :cond_2
    iget p2, p0, Lcom/hzbhd/midwareproxy/iPod/DBiTunesInfo;->mTotalVideoTrackCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 166
    :cond_3
    iget p2, p0, Lcom/hzbhd/midwareproxy/iPod/DBiTunesInfo;->mTotalAudioTrackCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 163
    :cond_4
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/DBiTunesInfo;->mLastSyncDateTime:Lcom/hzbhd/midwareproxy/iPod/DateTime;

    invoke-virtual {v0, p1, p2}, Lcom/hzbhd/midwareproxy/iPod/DateTime;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 160
    :cond_5
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/iPod/DBiTunesInfo;->mITunesUID:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    :goto_0
    return-void
.end method
