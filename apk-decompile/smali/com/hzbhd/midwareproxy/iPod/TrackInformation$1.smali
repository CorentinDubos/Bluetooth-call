.class Lcom/hzbhd/midwareproxy/iPod/TrackInformation$1;
.super Ljava/lang/Object;
.source "TrackInformation.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/iPod/TrackInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/hzbhd/midwareproxy/iPod/TrackInformation;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/hzbhd/midwareproxy/iPod/TrackInformation;
    .locals 1

    .line 483
    new-instance v0, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;

    invoke-direct {v0, p1}, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 481
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/TrackInformation$1;->createFromParcel(Landroid/os/Parcel;)Lcom/hzbhd/midwareproxy/iPod/TrackInformation;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/hzbhd/midwareproxy/iPod/TrackInformation;
    .locals 0

    .line 487
    new-array p1, p1, [Lcom/hzbhd/midwareproxy/iPod/TrackInformation;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 481
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/TrackInformation$1;->newArray(I)[Lcom/hzbhd/midwareproxy/iPod/TrackInformation;

    move-result-object p1

    return-object p1
.end method
