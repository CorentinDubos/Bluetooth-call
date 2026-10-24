.class public Lcom/hzbhd/midwareproxy/iPod/ArtworkCountData;
.super Ljava/lang/Object;
.source "ArtworkCountData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/hzbhd/midwareproxy/iPod/ArtworkCountData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mArtworkCount:I

.field private mFormatID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Lcom/hzbhd/midwareproxy/iPod/ArtworkCountData$1;

    invoke-direct {v0}, Lcom/hzbhd/midwareproxy/iPod/ArtworkCountData$1;-><init>()V

    sput-object v0, Lcom/hzbhd/midwareproxy/iPod/ArtworkCountData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/ArtworkCountData;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-direct {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/ArtworkCountData;->parse([B)V

    return-void
.end method

.method private parse([B)V
    .locals 2

    const/4 v0, 0x0

    .line 53
    aget-byte v0, p1, v0

    const/4 v1, 0x1

    aget-byte v1, p1, v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;->byteToShort(BB)S

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/iPod/ArtworkCountData;->mFormatID:I

    const/4 v0, 0x2

    .line 54
    aget-byte v0, p1, v0

    const/4 v1, 0x3

    aget-byte p1, p1, v1

    invoke-static {v0, p1}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;->byteToShort(BB)S

    move-result p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/ArtworkCountData;->mArtworkCount:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getArtworkCount()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/ArtworkCountData;->mArtworkCount:I

    return v0
.end method

.method public getFormatID()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/ArtworkCountData;->mFormatID:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/iPod/ArtworkCountData;->mFormatID:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/ArtworkCountData;->mArtworkCount:I

    return-void
.end method

.method public toByteArray()[B
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 90
    iget v1, p0, Lcom/hzbhd/midwareproxy/iPod/ArtworkCountData;->mFormatID:I

    int-to-short v1, v1

    .line 91
    sget-object v2, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;->BIG_ENDIAN:Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;

    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;->shortToByteArray(SLcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;)[B

    move-result-object v1

    .line 93
    iget v2, p0, Lcom/hzbhd/midwareproxy/iPod/ArtworkCountData;->mArtworkCount:I

    int-to-short v2, v2

    .line 94
    sget-object v3, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;->BIG_ENDIAN:Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;

    invoke-static {v2, v3}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;->shortToByteArray(SLcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;)[B

    move-result-object v2

    const/4 v3, 0x0

    .line 96
    aget-byte v4, v1, v3

    aput-byte v4, v0, v3

    const/4 v4, 0x1

    .line 97
    aget-byte v1, v1, v4

    aput-byte v1, v0, v4

    .line 99
    aget-byte v1, v2, v3

    const/4 v3, 0x2

    aput-byte v1, v0, v3

    .line 100
    aget-byte v1, v2, v4

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 78
    iget p2, p0, Lcom/hzbhd/midwareproxy/iPod/ArtworkCountData;->mFormatID:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget p2, p0, Lcom/hzbhd/midwareproxy/iPod/ArtworkCountData;->mArtworkCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
