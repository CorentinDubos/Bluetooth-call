.class public Lcom/hzbhd/midwareproxy/iPod/PlayStatus;
.super Ljava/lang/Object;
.source "PlayStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/hzbhd/midwareproxy/iPod/PlayStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAckStatus:B

.field private mPlayerState:B

.field private mPlayingTrackIndex:I

.field private mTrackCountMS:I

.field private mTrackPosMS:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 83
    new-instance v0, Lcom/hzbhd/midwareproxy/iPod/PlayStatus$1;

    invoke-direct {v0}, Lcom/hzbhd/midwareproxy/iPod/PlayStatus$1;-><init>()V

    sput-object v0, Lcom/hzbhd/midwareproxy/iPod/PlayStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-direct {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/PlayStatus;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatus;->mAckStatus:B

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatus;->mTrackCountMS:I

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatus;->mTrackPosMS:I

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatus;->mPlayerState:B

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatus;->mPlayingTrackIndex:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAckStatus()B
    .locals 1

    .line 44
    iget-byte v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatus;->mAckStatus:B

    return v0
.end method

.method public getPlayerState()B
    .locals 1

    .line 68
    iget-byte v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatus;->mPlayerState:B

    return v0
.end method

.method public getPlayingTrackIndex()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatus;->mPlayingTrackIndex:I

    return v0
.end method

.method public getTrackCountMS()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatus;->mTrackCountMS:I

    return v0
.end method

.method public getTrackPosMS()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatus;->mTrackPosMS:I

    return v0
.end method

.method public setAckStatus(B)V
    .locals 0

    .line 40
    iput-byte p1, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatus;->mAckStatus:B

    return-void
.end method

.method public setPlayerState(B)V
    .locals 0

    .line 64
    iput-byte p1, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatus;->mPlayerState:B

    return-void
.end method

.method public setPlayingTrackIndex(I)V
    .locals 0

    .line 72
    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatus;->mPlayingTrackIndex:I

    return-void
.end method

.method public setTrackCountMS(I)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatus;->mTrackCountMS:I

    return-void
.end method

.method public setTrackPosMS(I)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatus;->mTrackPosMS:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 97
    iget-byte p2, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatus;->mAckStatus:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 98
    iget p2, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatus;->mTrackCountMS:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget p2, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatus;->mTrackPosMS:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget-byte p2, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatus;->mPlayerState:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 101
    iget p2, p0, Lcom/hzbhd/midwareproxy/iPod/PlayStatus;->mPlayingTrackIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
