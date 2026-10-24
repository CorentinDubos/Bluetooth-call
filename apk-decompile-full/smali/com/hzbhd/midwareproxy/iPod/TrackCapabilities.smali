.class public Lcom/hzbhd/midwareproxy/iPod/TrackCapabilities;
.super Ljava/lang/Object;
.source "TrackCapabilities.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final BIT_AUDIO_BOOK:I = 0x0

.field public static final BIT_CAN_GEN_GENIUS_PLAYLIST:I = 0xd

.field public static final BIT_CONTAINS_VIDEO:I = 0x7

.field public static final BIT_HAS_ALBUM_ARTWORK:I = 0x2

.field public static final BIT_HAS_A_PODCAST_EPISODE:I = 0x4

.field public static final BIT_HAS_CHAPTERS:I = 0x1

.field public static final BIT_HAS_DESCRIPTION:I = 0x6

.field public static final BIT_HAS_RELEASE_DATE:I = 0x5

.field public static final BIT_HAS_SONG_LYRICS:I = 0x3

.field public static final BIT_IS_ITUNESU_EPISODE:I = 0xe

.field public static final BIT_QUEUED_TO_PLAY:I = 0x8

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/hzbhd/midwareproxy/iPod/TrackCapabilities;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mContent:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 91
    new-instance v0, Lcom/hzbhd/midwareproxy/iPod/TrackCapabilities$1;

    invoke-direct {v0}, Lcom/hzbhd/midwareproxy/iPod/TrackCapabilities$1;-><init>()V

    sput-object v0, Lcom/hzbhd/midwareproxy/iPod/TrackCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lcom/hzbhd/midwareproxy/iPod/TrackCapabilities;->mContent:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lcom/hzbhd/midwareproxy/iPod/TrackCapabilities;->mContent:I

    .line 76
    invoke-direct {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/TrackCapabilities;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lcom/hzbhd/midwareproxy/iPod/TrackCapabilities;->mContent:I

    .line 64
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;->BIG_ENDIAN:Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;

    invoke-static {p1, v0}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;->byteArrayToInt([BLcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;)I

    move-result p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/TrackCapabilities;->mContent:I

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 3

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lcom/hzbhd/midwareproxy/iPod/TrackCapabilities;->mContent:I

    .line 68
    array-length v0, p1

    sub-int/2addr v0, p2

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 71
    aget-byte v0, p1, p2

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    add-int/lit8 p2, p2, 0x3

    aget-byte p1, p1, p2

    invoke-static {v0, v1, v2, p1}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;->byteToInt(BBBB)I

    move-result p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/TrackCapabilities;->mContent:I

    return-void

    .line 69
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "need 4 bytes at least, actual: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    sub-int/2addr p1, p2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/TrackCapabilities;->mContent:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public get(I)Z
    .locals 3

    if-ltz p1, :cond_1

    .line 88
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/TrackCapabilities;->mContent:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 85
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getOriginalData()I
    .locals 1

    .line 80
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/TrackCapabilities;->mContent:I

    return v0
.end method

.method public toByteArray()[B
    .locals 2

    .line 117
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/TrackCapabilities;->mContent:I

    sget-object v1, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;->BIG_ENDIAN:Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;->intToByteArray(ILcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;)[B

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 109
    iget p2, p0, Lcom/hzbhd/midwareproxy/iPod/TrackCapabilities;->mContent:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
