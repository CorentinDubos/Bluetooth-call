.class public abstract Lcom/hzbhd/midwareproxy/iPod/iap2/ParamItemIDs;
.super Ljava/lang/Object;
.source "ParamItemIDs.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final TAG:Ljava/lang/String; = "ParamItemIDs"


# instance fields
.field private mBitSet:Lcom/hzbhd/midwareproxy/iPod/iap2/BitSet;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/hzbhd/midwareproxy/iPod/iap2/BitSet;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/hzbhd/midwareproxy/iPod/iap2/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/iap2/ParamItemIDs;->mBitSet:Lcom/hzbhd/midwareproxy/iPod/iap2/BitSet;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/hzbhd/midwareproxy/iPod/iap2/BitSet;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/hzbhd/midwareproxy/iPod/iap2/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/iap2/ParamItemIDs;->mBitSet:Lcom/hzbhd/midwareproxy/iPod/iap2/BitSet;

    .line 39
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/iap2/BitSet;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hzbhd/midwareproxy/iPod/iap2/BitSet;

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/iPod/iap2/ParamItemIDs;->mBitSet:Lcom/hzbhd/midwareproxy/iPod/iap2/BitSet;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract getMaxID()I
.end method

.method public abstract getSupportedIDs()[B
.end method

.method public isIDSet(B)Z
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/iap2/ParamItemIDs;->mBitSet:Lcom/hzbhd/midwareproxy/iPod/iap2/BitSet;

    invoke-virtual {v0, p1}, Lcom/hzbhd/midwareproxy/iPod/iap2/BitSet;->isBitSet(I)Z

    move-result p1

    return p1
.end method

.method protected isIdValid(B)Z
    .locals 4

    .line 76
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/iPod/iap2/ParamItemIDs;->getSupportedIDs()[B

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 77
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 78
    aget-byte v3, v0, v2

    if-ne p1, v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public setUpdateID(B)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/iap2/ParamItemIDs;->mBitSet:Lcom/hzbhd/midwareproxy/iPod/iap2/BitSet;

    invoke-virtual {v0, p1}, Lcom/hzbhd/midwareproxy/iPod/iap2/BitSet;->set(I)V

    return-void
.end method

.method public toByteArray()[B
    .locals 8

    .line 52
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/iap2/ParamItemIDs;->mBitSet:Lcom/hzbhd/midwareproxy/iPod/iap2/BitSet;

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/iPod/iap2/BitSet;->cardinality()I

    move-result v0

    const/4 v1, 0x4

    mul-int/2addr v0, v1

    .line 55
    new-array v0, v0, [B

    .line 57
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/iPod/iap2/ParamItemIDs;->getMaxID()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-gt v4, v2, :cond_2

    int-to-byte v6, v4

    .line 59
    invoke-virtual {p0, v6}, Lcom/hzbhd/midwareproxy/iPod/iap2/ParamItemIDs;->isIdValid(B)Z

    move-result v7

    if-nez v7, :cond_0

    .line 60
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "This ID is invalid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", just ignore this ID!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ParamItemIDs"

    invoke-static {v7, v6}, Lcom/hzbhd/midwareproxy/iPod/utils/Trace;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 64
    :cond_0
    iget-object v7, p0, Lcom/hzbhd/midwareproxy/iPod/iap2/ParamItemIDs;->mBitSet:Lcom/hzbhd/midwareproxy/iPod/iap2/BitSet;

    invoke-virtual {v7, v4}, Lcom/hzbhd/midwareproxy/iPod/iap2/BitSet;->isBitSet(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 65
    aput-byte v3, v0, v5

    add-int/lit8 v7, v5, 0x1

    .line 66
    aput-byte v1, v0, v7

    add-int/lit8 v7, v5, 0x2

    .line 67
    aput-byte v3, v0, v7

    add-int/lit8 v7, v5, 0x3

    .line 68
    aput-byte v6, v0, v7

    add-int/lit8 v5, v5, 0x4

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/iap2/ParamItemIDs;->mBitSet:Lcom/hzbhd/midwareproxy/iPod/iap2/BitSet;

    invoke-virtual {v0, p1, p2}, Lcom/hzbhd/midwareproxy/iPod/iap2/BitSet;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
