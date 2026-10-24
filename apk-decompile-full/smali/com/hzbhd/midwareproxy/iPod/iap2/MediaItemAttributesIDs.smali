.class public Lcom/hzbhd/midwareproxy/iPod/iap2/MediaItemAttributesIDs;
.super Lcom/hzbhd/midwareproxy/iPod/iap2/MediaItemIDs;
.source "MediaItemAttributesIDs.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/hzbhd/midwareproxy/iPod/iap2/MediaItemAttributesIDs;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mSupportedIds:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Lcom/hzbhd/midwareproxy/iPod/iap2/MediaItemAttributesIDs$1;

    invoke-direct {v0}, Lcom/hzbhd/midwareproxy/iPod/iap2/MediaItemAttributesIDs$1;-><init>()V

    sput-object v0, Lcom/hzbhd/midwareproxy/iPod/iap2/MediaItemAttributesIDs;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/iPod/iap2/MediaItemIDs;-><init>()V

    const/16 v0, 0x11

    new-array v0, v0, [B

    .line 34
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/iap2/MediaItemAttributesIDs;->mSupportedIds:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x4t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xct
        0x10t
        0x12t
        0x15t
        0x16t
        0x17t
        0x18t
        0x1at
        0x1bt
    .end array-data
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/iap2/MediaItemIDs;-><init>(Landroid/os/Parcel;)V

    const/16 p1, 0x11

    new-array p1, p1, [B

    .line 34
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/iPod/iap2/MediaItemAttributesIDs;->mSupportedIds:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x4t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xct
        0x10t
        0x12t
        0x15t
        0x16t
        0x17t
        0x18t
        0x1at
        0x1bt
    .end array-data
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/hzbhd/midwareproxy/iPod/iap2/MediaItemAttributesIDs$1;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/iap2/MediaItemAttributesIDs;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public getSupportedIDs()[B
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/iap2/MediaItemAttributesIDs;->mSupportedIds:[B

    return-object v0
.end method
