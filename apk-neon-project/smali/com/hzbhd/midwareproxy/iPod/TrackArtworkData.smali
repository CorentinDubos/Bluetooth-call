.class public Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData;
.super Ljava/lang/Object;
.source "TrackArtworkData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAckStatus:B

.field private mBottomRightX:I

.field private mBottomRightY:I

.field private mImageBufActualLength:I

.field private mImageBufCapability:I

.field private mImageData:[B

.field private mImageHeightPx:I

.field private mImageWidthPx:I

.field private mPixelFormat:B

.field private mRowSize:I

.field private mTopLeftX:I

.field private mTopLeftY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 146
    new-instance v0, Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData$1;

    invoke-direct {v0}, Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData$1;-><init>()V

    sput-object v0, Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData;->mImageBufCapability:I

    .line 42
    iput v0, p0, Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData;->mImageBufActualLength:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData;->mImageBufCapability:I

    .line 42
    iput v0, p0, Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData;->mImageBufActualLength:I

    .line 50
    invoke-direct {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData;->mAckStatus:B

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData;->mPixelFormat:B

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData;->mImageWidthPx:I

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData;->mImageHeightPx:I

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData;->mTopLeftX:I

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData;->mTopLeftY:I

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData;->mBottomRightX:I

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData;->mBottomRightY:I

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData;->mRowSize:I

    .line 190
    iget-byte v0, p0, Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData;->mAckStatus:B

    if-nez v0, :cond_0

    .line 191
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData;->mImageWidthPx:I

    iget v1, p0, Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData;->mImageHeightPx:I

    mul-int/2addr v0, v1

    iget-byte v1, p0, Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData;->mPixelFormat:B

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/iPod/DisplayPixelFormat;->getBitDepth(B)I

    move-result v1

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x8

    .line 192
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData;->mImageData:[B

    .line 193
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addImgData([B)V
    .locals 4

    .line 132
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData;->mImageBufCapability:I

    iget v1, p0, Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData;->mImageBufActualLength:I

    sub-int/2addr v0, v1

    .line 133
    array-length v1, p1

    if-le v0, v1, :cond_0

    array-length v0, p1

    :cond_0
    const/4 v1, 0x0

    .line 134
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData;->mImageData:[B

    iget v3, p0, Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData;->mImageBufActualLength:I

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 135
    iget p1, p0, Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData;->mImageBufActualLength:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData;->mImageBufActualLength:I

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAckStatus()B
    .locals 1

    .line 58
    iget-byte v0, p0, Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData;->mAckStatus:B

    return v0
.end method

.method public getBottomRightX()I
    .locals 1

    .line 112
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData;->mBottomRightX:I

    return v0
.end method

.method public getBottomRightY()I
    .locals 1

    .line 120
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData;->mBottomRightY:I

    return v0
.end method

.method public getImageDataLength()I
    .locals 1

    .line 139
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData;->mImageBufActualLength:I

    return v0
.end method

.method public getImgData()[B
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData;->mImageData:[B

    return-object v0
.end method

.method public getImgHeightPx()I
    .locals 1

    .line 88
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData;->mImageHeightPx:I

    return v0
.end method

.method public getImgWidthPx()I
    .locals 1

    .line 80
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData;->mImageWidthPx:I

    return v0
.end method

.method public getPixelFormat()B
    .locals 1

    .line 72
    iget-byte v0, p0, Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData;->mPixelFormat:B

    return v0
.end method

.method public getRowSize()I
    .locals 1

    .line 128
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData;->mRowSize:I

    return v0
.end method

.method public getTopLeftX()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData;->mTopLeftX:I

    return v0
.end method

.method public getTopLeftY()I
    .locals 1

    .line 104
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData;->mTopLeftY:I

    return v0
.end method

.method public setAckStatus(B)V
    .locals 0

    .line 54
    iput-byte p1, p0, Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData;->mAckStatus:B

    return-void
.end method

.method public setBottomRightX(I)V
    .locals 0

    .line 108
    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData;->mBottomRightX:I

    return-void
.end method

.method public setBottomRightY(I)V
    .locals 0

    .line 116
    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData;->mBottomRightY:I

    return-void
.end method

.method public setImageBufferCapability(I)V
    .locals 1

    .line 62
    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData;->mImageBufCapability:I

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData;->mImageBufActualLength:I

    .line 64
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData;->mImageData:[B

    return-void
.end method

.method public setImgHeightPx(I)V
    .locals 0

    .line 84
    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData;->mImageHeightPx:I

    return-void
.end method

.method public setImgWidthPx(I)V
    .locals 0

    .line 76
    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData;->mImageWidthPx:I

    return-void
.end method

.method public setPixelFormat(B)V
    .locals 0

    .line 68
    iput-byte p1, p0, Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData;->mPixelFormat:B

    return-void
.end method

.method public setRowSize(I)V
    .locals 0

    .line 124
    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData;->mRowSize:I

    return-void
.end method

.method public setTopLeftX(I)V
    .locals 0

    .line 92
    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData;->mTopLeftX:I

    return-void
.end method

.method public setTopLeftY(I)V
    .locals 0

    .line 100
    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData;->mTopLeftY:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 166
    iget-byte p2, p0, Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData;->mAckStatus:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 167
    iget-byte p2, p0, Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData;->mPixelFormat:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 168
    iget p2, p0, Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData;->mImageWidthPx:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    iget p2, p0, Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData;->mImageHeightPx:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    iget p2, p0, Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData;->mTopLeftX:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    iget p2, p0, Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData;->mTopLeftY:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    iget p2, p0, Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData;->mBottomRightX:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    iget p2, p0, Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData;->mBottomRightY:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    iget p2, p0, Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData;->mRowSize:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    iget-byte p2, p0, Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData;->mAckStatus:B

    if-nez p2, :cond_0

    .line 176
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData;->mImageData:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    :cond_0
    return-void
.end method
