.class Lcom/hzbhd/midwareproxy/iPod/iap2/PlaybackAttributesIDs$1;
.super Ljava/lang/Object;
.source "PlaybackAttributesIDs.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/iPod/iap2/PlaybackAttributesIDs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/hzbhd/midwareproxy/iPod/iap2/PlaybackAttributesIDs;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/hzbhd/midwareproxy/iPod/iap2/PlaybackAttributesIDs;
    .locals 1

    .line 104
    new-instance v0, Lcom/hzbhd/midwareproxy/iPod/iap2/PlaybackAttributesIDs;

    invoke-direct {v0, p1}, Lcom/hzbhd/midwareproxy/iPod/iap2/PlaybackAttributesIDs;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 101
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/iap2/PlaybackAttributesIDs$1;->createFromParcel(Landroid/os/Parcel;)Lcom/hzbhd/midwareproxy/iPod/iap2/PlaybackAttributesIDs;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/hzbhd/midwareproxy/iPod/iap2/PlaybackAttributesIDs;
    .locals 0

    .line 109
    new-array p1, p1, [Lcom/hzbhd/midwareproxy/iPod/iap2/PlaybackAttributesIDs;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 101
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/iap2/PlaybackAttributesIDs$1;->newArray(I)[Lcom/hzbhd/midwareproxy/iPod/iap2/PlaybackAttributesIDs;

    move-result-object p1

    return-object p1
.end method
