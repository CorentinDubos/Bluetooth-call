.class public Lcom/hzbhd/midwareproxy/iPod/ArtworkFormats;
.super Ljava/lang/Object;
.source "ArtworkFormats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/iPod/ArtworkFormats$ArtworkFormat;
    }
.end annotation


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/hzbhd/midwareproxy/iPod/ArtworkFormats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAckStatus:B

.field private mArtworkFormats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/hzbhd/midwareproxy/iPod/ArtworkFormats$ArtworkFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    new-instance v0, Lcom/hzbhd/midwareproxy/iPod/ArtworkFormats$1;

    invoke-direct {v0}, Lcom/hzbhd/midwareproxy/iPod/ArtworkFormats$1;-><init>()V

    sput-object v0, Lcom/hzbhd/midwareproxy/iPod/ArtworkFormats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 32
    iput-byte v0, p0, Lcom/hzbhd/midwareproxy/iPod/ArtworkFormats;->mAckStatus:B

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/ArtworkFormats;->mArtworkFormats:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 32
    iput-byte v0, p0, Lcom/hzbhd/midwareproxy/iPod/ArtworkFormats;->mAckStatus:B

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/ArtworkFormats;->mArtworkFormats:Ljava/util/ArrayList;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/hzbhd/midwareproxy/iPod/ArtworkFormats;->mAckStatus:B

    .line 63
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/ArtworkFormats;->mArtworkFormats:Ljava/util/ArrayList;

    sget-object v1, Lcom/hzbhd/midwareproxy/iPod/ArtworkFormats$ArtworkFormat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    return-void
.end method


# virtual methods
.method public addArtworkFormats(Lcom/hzbhd/midwareproxy/iPod/ArtworkFormats$ArtworkFormat;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/ArtworkFormats;->mArtworkFormats:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/ArtworkFormats;->mArtworkFormats:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAckStatus()B
    .locals 1

    .line 44
    iget-byte v0, p0, Lcom/hzbhd/midwareproxy/iPod/ArtworkFormats;->mAckStatus:B

    return v0
.end method

.method public getArtworkFormat(I)Lcom/hzbhd/midwareproxy/iPod/ArtworkFormats$ArtworkFormat;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/ArtworkFormats;->mArtworkFormats:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hzbhd/midwareproxy/iPod/ArtworkFormats$ArtworkFormat;

    return-object p1
.end method

.method public setAckStatus(B)V
    .locals 0

    .line 40
    iput-byte p1, p0, Lcom/hzbhd/midwareproxy/iPod/ArtworkFormats;->mAckStatus:B

    return-void
.end method

.method public size()I
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/ArtworkFormats;->mArtworkFormats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 86
    iget-byte p2, p0, Lcom/hzbhd/midwareproxy/iPod/ArtworkFormats;->mAckStatus:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 87
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/iPod/ArtworkFormats;->mArtworkFormats:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
