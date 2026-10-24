.class public Lcom/hzbhd/midwareproxy/iPod/FourBytesStatus;
.super Ljava/lang/Object;
.source "FourBytesStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final BIT_BASIC_PLAY_STATE:I = 0x0

.field public static final BIT_CHAPTER_INDEX:I = 0x5

.field public static final BIT_CHAPTER_TIME_OFFSET_MS:I = 0x6

.field public static final BIT_CHAPTER_TIME_OFFSET_SEC:I = 0x7

.field public static final BIT_EXTEND_PLAY_STATE:I = 0x1

.field public static final BIT_PLAYBACK_ENGINE_CONTENTS_CHANGED:I = 0xc

.field public static final BIT_TRACK_CAPABILITIES_CHANGED:I = 0xb

.field public static final BIT_TRACK_INDEX:I = 0x2

.field public static final BIT_TRACK_LYRICS_READY:I = 0xa

.field public static final BIT_TRACK_MEDIA_TYPE:I = 0x9

.field public static final BIT_TRACK_TIME_OFFSET_MS:I = 0x3

.field public static final BIT_TRACK_TIME_OFFSET_SEC:I = 0x4

.field public static final BIT_TRACK_UNIQUE_IDENTIFER:I = 0x8

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/hzbhd/midwareproxy/iPod/FourBytesStatus;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_VALID_BIT:I = 0xd


# instance fields
.field mMask:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 90
    new-instance v0, Lcom/hzbhd/midwareproxy/iPod/FourBytesStatus$1;

    invoke-direct {v0}, Lcom/hzbhd/midwareproxy/iPod/FourBytesStatus$1;-><init>()V

    sput-object v0, Lcom/hzbhd/midwareproxy/iPod/FourBytesStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lcom/hzbhd/midwareproxy/iPod/FourBytesStatus;->mMask:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/FourBytesStatus;->mMask:I

    return-void
.end method


# virtual methods
.method public clear(I)V
    .locals 3

    if-ltz p1, :cond_0

    .line 69
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/FourBytesStatus;->mMask:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/FourBytesStatus;->mMask:I

    return-void

    .line 66
    :cond_0
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

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public set(I)V
    .locals 3

    if-ltz p1, :cond_0

    const/16 v0, 0xd

    if-ge p1, v0, :cond_0

    .line 61
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/FourBytesStatus;->mMask:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    or-int/2addr p1, v0

    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/FourBytesStatus;->mMask:I

    return-void

    .line 58
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index < 0 || index > 12: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 74
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/FourBytesStatus;->set(I)V

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/FourBytesStatus;->clear(I)V

    :goto_0
    return-void
.end method

.method public setAll()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xd

    if-ge v0, v1, :cond_0

    .line 82
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/iPod/FourBytesStatus;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toByteArray()[B
    .locals 2

    .line 87
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/FourBytesStatus;->mMask:I

    sget-object v1, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;->BIG_ENDIAN:Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;->intToByteArray(ILcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;)[B

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 109
    iget p2, p0, Lcom/hzbhd/midwareproxy/iPod/FourBytesStatus;->mMask:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
