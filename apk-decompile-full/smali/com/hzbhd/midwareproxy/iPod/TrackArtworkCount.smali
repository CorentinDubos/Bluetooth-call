.class public Lcom/hzbhd/midwareproxy/iPod/TrackArtworkCount;
.super Ljava/lang/Object;
.source "TrackArtworkCount.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/hzbhd/midwareproxy/iPod/TrackArtworkCount;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mArtworkCountDatas:[Landroid/os/Parcelable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Lcom/hzbhd/midwareproxy/iPod/TrackArtworkCount$1;

    invoke-direct {v0}, Lcom/hzbhd/midwareproxy/iPod/TrackArtworkCount$1;-><init>()V

    sput-object v0, Lcom/hzbhd/midwareproxy/iPod/TrackArtworkCount;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-direct {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/TrackArtworkCount;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>([Lcom/hzbhd/midwareproxy/iPod/ArtworkCountData;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/iPod/TrackArtworkCount;->mArtworkCountDatas:[Landroid/os/Parcelable;

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 70
    const-class v0, Lcom/hzbhd/midwareproxy/iPod/ArtworkCountData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/iPod/TrackArtworkCount;->mArtworkCountDatas:[Landroid/os/Parcelable;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public get(I)Lcom/hzbhd/midwareproxy/iPod/ArtworkCountData;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/TrackArtworkCount;->mArtworkCountDatas:[Landroid/os/Parcelable;

    aget-object p1, v0, p1

    check-cast p1, Lcom/hzbhd/midwareproxy/iPod/ArtworkCountData;

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/TrackArtworkCount;->mArtworkCountDatas:[Landroid/os/Parcelable;

    array-length v0, v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/TrackArtworkCount;->mArtworkCountDatas:[Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    return-void
.end method
