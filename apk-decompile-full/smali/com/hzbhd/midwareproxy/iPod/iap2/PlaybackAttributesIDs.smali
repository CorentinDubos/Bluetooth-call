.class public Lcom/hzbhd/midwareproxy/iPod/iap2/PlaybackAttributesIDs;
.super Lcom/hzbhd/midwareproxy/iPod/iap2/ParamItemIDs;
.source "PlaybackAttributesIDs.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/hzbhd/midwareproxy/iPod/iap2/PlaybackAttributesIDs;",
            ">;"
        }
    .end annotation
.end field

.field public static final ID_PB_iTunes_RADIO_AD:B = 0x9t

.field public static final ID_PB_iTunes_RADIO_STATION_MEDIA_PLAYLIST_PERSISTENT_ID:B = 0xbt

.field public static final ID_PB_iTunes_RADIO_STATION_NAME:B = 0xat

.field public static final ID_PLAYBACK_APP_BUNDLE_ID:B = 0x10t

.field public static final ID_PLAYBACK_APP_NAME:B = 0x7t

.field public static final ID_PLAYBACK_ELAPSED_TIME_MS:B = 0x1t

.field public static final ID_PLAYBACK_MEDIA_LIB_UNIQUE_IDENTIFIER:B = 0x8t

.field public static final ID_PLAYBACK_QUEUE_CHAPTER_INDEX:B = 0x4t

.field public static final ID_PLAYBACK_QUEUE_COUNT:B = 0x3t

.field public static final ID_PLAYBACK_QUEUE_INDEX:B = 0x2t

.field public static final ID_PLAYBACK_QUEUE_LIST_AVAIL:B = 0xet

.field public static final ID_PLAYBACK_QUEUE_LIST_TRANSFER_ID:B = 0xft

.field public static final ID_PLAYBACK_REPEAT_MODE:B = 0x6t

.field public static final ID_PLAYBACK_SHUFFLE_MODE:B = 0x5t

.field public static final ID_PLAYBACK_SPEED:B = 0xct

.field public static final ID_PLAYBACK_STATUS:B = 0x0t

.field public static final ID_SET_ELAPSED_TIME_AVAILABLE:B = 0xdt


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 101
    new-instance v0, Lcom/hzbhd/midwareproxy/iPod/iap2/PlaybackAttributesIDs$1;

    invoke-direct {v0}, Lcom/hzbhd/midwareproxy/iPod/iap2/PlaybackAttributesIDs$1;-><init>()V

    sput-object v0, Lcom/hzbhd/midwareproxy/iPod/iap2/PlaybackAttributesIDs;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/iPod/iap2/ParamItemIDs;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/iap2/ParamItemIDs;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public getMaxID()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public getSupportedIDs()[B
    .locals 1

    const/16 v0, 0x11

    new-array v0, v0, [B

    .line 72
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
    .end array-data
.end method

.method public toByteArray()[B
    .locals 2

    const/4 v0, 0x7

    .line 62
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/iPod/iap2/PlaybackAttributesIDs;->isIDSet(B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 63
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/iPod/iap2/PlaybackAttributesIDs;->setUpdateID(B)V

    .line 65
    :cond_0
    invoke-super {p0}, Lcom/hzbhd/midwareproxy/iPod/iap2/ParamItemIDs;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
