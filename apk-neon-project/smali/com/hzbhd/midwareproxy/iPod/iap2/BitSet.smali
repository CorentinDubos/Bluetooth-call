.class public Lcom/hzbhd/midwareproxy/iPod/iap2/BitSet;
.super Ljava/lang/Object;
.source "BitSet.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/hzbhd/midwareproxy/iPod/iap2/BitSet;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_BIT_COUNT:I = 0x400


# instance fields
.field private mBitArray:[B

.field private mBitCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 115
    new-instance v0, Lcom/hzbhd/midwareproxy/iPod/iap2/BitSet$1;

    invoke-direct {v0}, Lcom/hzbhd/midwareproxy/iPod/iap2/BitSet$1;-><init>()V

    sput-object v0, Lcom/hzbhd/midwareproxy/iPod/iap2/BitSet;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/iap2/BitSet;->mBitArray:[B

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/hzbhd/midwareproxy/iPod/iap2/BitSet;->mBitCount:I

    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 39
    iput-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/iap2/BitSet;->mBitArray:[B

    const/16 v0, 0x8

    .line 40
    iput v0, p0, Lcom/hzbhd/midwareproxy/iPod/iap2/BitSet;->mBitCount:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/iap2/BitSet;->mBitArray:[B

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/hzbhd/midwareproxy/iPod/iap2/BitSet;->mBitCount:I

    if-lez p1, :cond_0

    const/16 v0, 0x400

    if-gt p1, v0, :cond_0

    .line 58
    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/iap2/BitSet;->mBitCount:I

    add-int/lit8 p1, p1, 0x7

    .line 60
    div-int/lit8 p1, p1, 0x8

    .line 61
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/iPod/iap2/BitSet;->mBitArray:[B

    return-void

    .line 56
    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid bit count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/iap2/BitSet;->mBitArray:[B

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/hzbhd/midwareproxy/iPod/iap2/BitSet;->mBitCount:I

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/iPod/iap2/BitSet;->mBitCount:I

    .line 50
    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/iap2/BitSet;->mBitArray:[B

    .line 51
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/iap2/BitSet;->mBitArray:[B

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/hzbhd/midwareproxy/iPod/iap2/BitSet;->mBitCount:I

    .line 44
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/iPod/iap2/BitSet;->mBitArray:[B

    .line 45
    array-length p1, p1

    mul-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/iap2/BitSet;->mBitCount:I

    return-void
.end method


# virtual methods
.method public cardinality()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 102
    :goto_0
    iget v2, p0, Lcom/hzbhd/midwareproxy/iPod/iap2/BitSet;->mBitCount:I

    if-ge v0, v2, :cond_1

    .line 103
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/iPod/iap2/BitSet;->isBitSet(I)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isBitSet(I)Z
    .locals 3

    if-ltz p1, :cond_1

    .line 81
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/iap2/BitSet;->mBitCount:I

    if-ge p1, v0, :cond_1

    .line 85
    div-int/lit8 v0, p1, 0x8

    .line 86
    rem-int/lit8 p1, p1, 0x8

    .line 87
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/iPod/iap2/BitSet;->mBitArray:[B

    aget-byte v0, v1, v0

    const/4 v1, 0x1

    shl-int p1, v1, p1

    int-to-byte p1, p1

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 82
    :cond_1
    new-instance v0, Ljava/security/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid bit count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(I)V
    .locals 4

    if-ltz p1, :cond_0

    .line 69
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/iap2/BitSet;->mBitCount:I

    if-ge p1, v0, :cond_0

    .line 73
    div-int/lit8 v0, p1, 0x8

    .line 74
    rem-int/lit8 p1, p1, 0x8

    .line 75
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/iPod/iap2/BitSet;->mBitArray:[B

    aget-byte v2, v1, v0

    const/4 v3, 0x1

    shl-int p1, v3, p1

    or-int/2addr p1, v2

    int-to-byte p1, p1

    .line 77
    aput-byte p1, v1, v0

    return-void

    .line 70
    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid bit count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toByteArray()[B
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/iap2/BitSet;->mBitArray:[B

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 134
    iget p2, p0, Lcom/hzbhd/midwareproxy/iPod/iap2/BitSet;->mBitCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/iPod/iap2/BitSet;->mBitArray:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
