.class public abstract Lcom/hzbhd/midwareproxy/iPod/FourByteMask;
.super Ljava/lang/Object;
.source "FourByteMask.java"


# instance fields
.field protected mMask:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/hzbhd/midwareproxy/iPod/FourByteMask;->mMask:I

    return-void
.end method


# virtual methods
.method public clear(I)V
    .locals 3

    if-ltz p1, :cond_0

    .line 48
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/FourByteMask;->mMask:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/FourByteMask;->mMask:I

    return-void

    .line 45
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

.method public isAllClear()Z
    .locals 1

    .line 32
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/FourByteMask;->mMask:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public set(I)V
    .locals 3

    if-ltz p1, :cond_0

    const/16 v0, 0x20

    if-ge p1, v0, :cond_0

    .line 40
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/FourByteMask;->mMask:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    or-int/2addr p1, v0

    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/FourByteMask;->mMask:I

    return-void

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index < 0 || index > 32:"

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

    .line 53
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/FourByteMask;->set(I)V

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/FourByteMask;->clear(I)V

    :goto_0
    return-void
.end method

.method public toByteArray()[B
    .locals 2

    .line 60
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/FourByteMask;->mMask:I

    sget-object v1, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;->LITTLE_ENDIAN:Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;->intToByteArray(ILcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;)[B

    move-result-object v0

    return-object v0
.end method
