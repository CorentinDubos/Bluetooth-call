.class public Lcom/hzbhd/midwareproxy/iPod/ArtworkFormats$ArtworkFormat;
.super Ljava/lang/Object;
.source "ArtworkFormats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/iPod/ArtworkFormats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArtworkFormat"
.end annotation


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/hzbhd/midwareproxy/iPod/ArtworkFormats$ArtworkFormat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mFormatID:I

.field public mImgHeight:I

.field public mImgWidth:I

.field public mPixelFormat:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 134
    new-instance v0, Lcom/hzbhd/midwareproxy/iPod/ArtworkFormats$ArtworkFormat$1;

    invoke-direct {v0}, Lcom/hzbhd/midwareproxy/iPod/ArtworkFormats$ArtworkFormat$1;-><init>()V

    sput-object v0, Lcom/hzbhd/midwareproxy/iPod/ArtworkFormats$ArtworkFormat;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/iPod/ArtworkFormats$ArtworkFormat;->mFormatID:I

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/hzbhd/midwareproxy/iPod/ArtworkFormats$ArtworkFormat;->mPixelFormat:B

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/iPod/ArtworkFormats$ArtworkFormat;->mImgWidth:I

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/ArtworkFormats$ArtworkFormat;->mImgHeight:I

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/hzbhd/midwareproxy/iPod/ArtworkFormats$ArtworkFormat;->parse([BI)V

    return-void
.end method

.method private parse([BI)V
    .locals 2

    .line 128
    aget-byte v0, p1, p2

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;->byteToShort(BB)S

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/iPod/ArtworkFormats$ArtworkFormat;->mFormatID:I

    add-int/lit8 v0, p2, 0x2

    .line 129
    aget-byte v0, p1, v0

    iput-byte v0, p0, Lcom/hzbhd/midwareproxy/iPod/ArtworkFormats$ArtworkFormat;->mPixelFormat:B

    add-int/lit8 v0, p2, 0x3

    .line 130
    aget-byte v0, p1, v0

    add-int/lit8 v1, p2, 0x4

    aget-byte v1, p1, v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;->byteToShort(BB)S

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/iPod/ArtworkFormats$ArtworkFormat;->mImgWidth:I

    add-int/lit8 v0, p2, 0x5

    .line 131
    aget-byte v0, p1, v0

    add-int/lit8 p2, p2, 0x6

    aget-byte p1, p1, p2

    invoke-static {v0, p1}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;->byteToShort(BB)S

    move-result p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/ArtworkFormats$ArtworkFormat;->mImgHeight:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFormatID()I
    .locals 1

    .line 105
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/ArtworkFormats$ArtworkFormat;->mFormatID:I

    return v0
.end method

.method public getImageHeight()I
    .locals 1

    .line 117
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/ArtworkFormats$ArtworkFormat;->mImgHeight:I

    return v0
.end method

.method public getImageWidth()I
    .locals 1

    .line 113
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/ArtworkFormats$ArtworkFormat;->mImgWidth:I

    return v0
.end method

.method public getPixelFormat()B
    .locals 1

    .line 109
    iget-byte v0, p0, Lcom/hzbhd/midwareproxy/iPod/ArtworkFormats$ArtworkFormat;->mPixelFormat:B

    return v0
.end method

.method public toByteArray()[B
    .locals 7

    const/4 v0, 0x7

    new-array v0, v0, [B

    .line 162
    iget v1, p0, Lcom/hzbhd/midwareproxy/iPod/ArtworkFormats$ArtworkFormat;->mFormatID:I

    int-to-short v1, v1

    sget-object v2, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;->BIG_ENDIAN:Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;

    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;->shortToByteArray(SLcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;)[B

    move-result-object v1

    .line 163
    iget v2, p0, Lcom/hzbhd/midwareproxy/iPod/ArtworkFormats$ArtworkFormat;->mImgWidth:I

    int-to-short v2, v2

    sget-object v3, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;->BIG_ENDIAN:Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;

    invoke-static {v2, v3}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;->shortToByteArray(SLcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;)[B

    move-result-object v2

    .line 164
    iget v3, p0, Lcom/hzbhd/midwareproxy/iPod/ArtworkFormats$ArtworkFormat;->mImgHeight:I

    int-to-short v3, v3

    sget-object v4, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;->BIG_ENDIAN:Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;

    invoke-static {v3, v4}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;->shortToByteArray(SLcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;)[B

    move-result-object v3

    const/4 v4, 0x0

    .line 166
    aget-byte v5, v1, v4

    aput-byte v5, v0, v4

    const/4 v5, 0x1

    .line 167
    aget-byte v1, v1, v5

    aput-byte v1, v0, v5

    .line 169
    iget-byte v1, p0, Lcom/hzbhd/midwareproxy/iPod/ArtworkFormats$ArtworkFormat;->mPixelFormat:B

    const/4 v6, 0x2

    aput-byte v1, v0, v6

    .line 171
    aget-byte v1, v2, v4

    const/4 v6, 0x3

    aput-byte v1, v0, v6

    .line 172
    aget-byte v1, v2, v5

    const/4 v2, 0x4

    aput-byte v1, v0, v2

    .line 174
    aget-byte v1, v3, v4

    const/4 v2, 0x5

    aput-byte v1, v0, v2

    .line 175
    aget-byte v1, v3, v5

    const/4 v2, 0x6

    aput-byte v1, v0, v2

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 153
    iget p2, p0, Lcom/hzbhd/midwareproxy/iPod/ArtworkFormats$ArtworkFormat;->mFormatID:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget-byte p2, p0, Lcom/hzbhd/midwareproxy/iPod/ArtworkFormats$ArtworkFormat;->mPixelFormat:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 155
    iget p2, p0, Lcom/hzbhd/midwareproxy/iPod/ArtworkFormats$ArtworkFormat;->mImgWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    iget p2, p0, Lcom/hzbhd/midwareproxy/iPod/ArtworkFormats$ArtworkFormat;->mImgHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
