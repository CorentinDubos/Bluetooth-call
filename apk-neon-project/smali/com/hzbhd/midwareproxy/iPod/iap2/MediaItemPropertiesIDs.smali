.class public Lcom/hzbhd/midwareproxy/iPod/iap2/MediaItemPropertiesIDs;
.super Lcom/hzbhd/midwareproxy/iPod/iap2/MediaItemIDs;
.source "MediaItemPropertiesIDs.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/hzbhd/midwareproxy/iPod/iap2/MediaItemPropertiesIDs;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mSupportedIds:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Lcom/hzbhd/midwareproxy/iPod/iap2/MediaItemPropertiesIDs$1;

    invoke-direct {v0}, Lcom/hzbhd/midwareproxy/iPod/iap2/MediaItemPropertiesIDs$1;-><init>()V

    sput-object v0, Lcom/hzbhd/midwareproxy/iPod/iap2/MediaItemPropertiesIDs;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/iPod/iap2/MediaItemIDs;-><init>()V

    const/16 v0, 0x16

    new-array v0, v0, [B

    .line 17
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/iap2/MediaItemPropertiesIDs;->mSupportedIds:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x19t
        0x1bt
    .end array-data
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/iap2/MediaItemIDs;-><init>(Landroid/os/Parcel;)V

    const/16 p1, 0x16

    new-array p1, p1, [B

    .line 17
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/iPod/iap2/MediaItemPropertiesIDs;->mSupportedIds:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x19t
        0x1bt
    .end array-data
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/hzbhd/midwareproxy/iPod/iap2/MediaItemPropertiesIDs$1;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/iap2/MediaItemPropertiesIDs;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public getSupportedIDs()[B
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/iap2/MediaItemPropertiesIDs;->mSupportedIds:[B

    return-object v0
.end method
