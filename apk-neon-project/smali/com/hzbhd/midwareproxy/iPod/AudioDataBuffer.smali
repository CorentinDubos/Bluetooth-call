.class public Lcom/hzbhd/midwareproxy/iPod/AudioDataBuffer;
.super Ljava/lang/Object;
.source "AudioDataBuffer.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/hzbhd/midwareproxy/iPod/AudioDataBuffer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAudioData:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Lcom/hzbhd/midwareproxy/iPod/AudioDataBuffer$1;

    invoke-direct {v0}, Lcom/hzbhd/midwareproxy/iPod/AudioDataBuffer$1;-><init>()V

    sput-object v0, Lcom/hzbhd/midwareproxy/iPod/AudioDataBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 31
    iput-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/AudioDataBuffer;->mAudioData:[B

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/iPod/AudioDataBuffer;->mAudioData:[B

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/AudioDataBuffer;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAudioData()[B
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/AudioDataBuffer;->mAudioData:[B

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/AudioDataBuffer;->mAudioData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 66
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/iPod/AudioDataBuffer;->mAudioData:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
