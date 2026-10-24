.class public Lcom/hzbhd/midwareproxy/iPod/TimeOffsetArray;
.super Ljava/lang/Object;
.source "TimeOffsetArray.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/hzbhd/midwareproxy/iPod/TimeOffsetArray;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAckStatus:B

.field private mLength:I

.field private mTimeOffset:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    new-instance v0, Lcom/hzbhd/midwareproxy/iPod/TimeOffsetArray$1;

    invoke-direct {v0}, Lcom/hzbhd/midwareproxy/iPod/TimeOffsetArray$1;-><init>()V

    sput-object v0, Lcom/hzbhd/midwareproxy/iPod/TimeOffsetArray;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(B)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-byte p1, p0, Lcom/hzbhd/midwareproxy/iPod/TimeOffsetArray;->mAckStatus:B

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/hzbhd/midwareproxy/iPod/TimeOffsetArray;->mAckStatus:B

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/iPod/TimeOffsetArray;->mLength:I

    .line 43
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/TimeOffsetArray;->mTimeOffset:[I

    .line 44
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    return-void
.end method

.method public constructor <init>([I)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    array-length v0, p1

    iput v0, p0, Lcom/hzbhd/midwareproxy/iPod/TimeOffsetArray;->mLength:I

    .line 37
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/iPod/TimeOffsetArray;->mTimeOffset:[I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAckSatus()B
    .locals 1

    .line 52
    iget-byte v0, p0, Lcom/hzbhd/midwareproxy/iPod/TimeOffsetArray;->mAckStatus:B

    return v0
.end method

.method public getTimeOffsetArray()[I
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/TimeOffsetArray;->mTimeOffset:[I

    return-object v0
.end method

.method public setAckStatus(B)V
    .locals 0

    .line 48
    iput-byte p1, p0, Lcom/hzbhd/midwareproxy/iPod/TimeOffsetArray;->mAckStatus:B

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 79
    iget-byte p2, p0, Lcom/hzbhd/midwareproxy/iPod/TimeOffsetArray;->mAckStatus:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 80
    iget p2, p0, Lcom/hzbhd/midwareproxy/iPod/TimeOffsetArray;->mLength:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/iPod/TimeOffsetArray;->mTimeOffset:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void
.end method
