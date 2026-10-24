.class public Lcom/hzbhd/midwareproxy/iPod/iap2/MediaItemIDs;
.super Lcom/hzbhd/midwareproxy/iPod/iap2/ParamItemIDs;
.source "MediaItemIDs.java"


# static fields
.field public static final ID_ALBUM_ARTIST:B = 0xet

.field public static final ID_ALBUM_ARTIST_PERSISTENT_IDENTIFIER:B = 0xdt

.field public static final ID_ALBUM_DISC_COUNT:B = 0xat

.field public static final ID_ALBUM_DISC_NUM:B = 0x9t

.field public static final ID_ALBUM_PERSISTENT_IDENTIFIER:B = 0x5t

.field public static final ID_ALBUM_TITLE:B = 0x6t

.field public static final ID_ALBUM_TRACK_COUNT:B = 0x8t

.field public static final ID_ALBUM_TRACK_NUM:B = 0x7t

.field public static final ID_ARTIST:B = 0xct

.field public static final ID_ARTIST_PERSISTENT_IDENTIFIER:B = 0xbt

.field public static final ID_ARTWORK_FILE_TRANSFER_IDENTIFIER:B = 0x1at

.field public static final ID_CHAPTER_COUNT:B = 0x1bt

.field public static final ID_COMPOSER:B = 0x12t

.field public static final ID_COMPOSER_PERSISTENT_IDENTIFIER:B = 0x11t

.field public static final ID_GENRE:B = 0x10t

.field public static final ID_GENRE_PERSISTENT_IDENTIFIER:B = 0xft

.field public static final ID_IS_BANNED:B = 0x18t

.field public static final ID_IS_BAN_SUPPORTED:B = 0x16t

.field public static final ID_IS_LIKED:B = 0x17t

.field public static final ID_IS_LIKE_SUPPORTED:B = 0x15t

.field public static final ID_IS_PART_OF_COMPILATION:B = 0x13t

.field public static final ID_IS_RESIDENT_ON_DEVICE:B = 0x19t

.field public static final ID_MEDIA_TYPE:B = 0x2t

.field public static final ID_PERSISTENT_IDENTIFIER:B = 0x0t

.field public static final ID_PLAYBACK_DURATION_MS:B = 0x4t

.field public static final ID_RATING:B = 0x3t

.field public static final ID_TITLE:B = 0x1t

.field private static final TAG:Ljava/lang/String; = "MediaItem"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/iPod/iap2/ParamItemIDs;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/iap2/ParamItemIDs;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public getMaxID()I
    .locals 1

    const/16 v0, 0x1b

    return v0
.end method

.method public getSupportedIDs()[B
    .locals 1

    const/16 v0, 0x1b

    new-array v0, v0, [B

    .line 82
    fill-array-data v0, :array_0

    return-object v0

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
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        0x1at
        0x1bt
    .end array-data
.end method

.method public toByteArray()[B
    .locals 2

    const/4 v0, 0x0

    .line 73
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/iPod/iap2/MediaItemIDs;->isIDSet(B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/iPod/iap2/MediaItemIDs;->setUpdateID(B)V

    .line 76
    :cond_0
    invoke-super {p0}, Lcom/hzbhd/midwareproxy/iPod/iap2/ParamItemIDs;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
