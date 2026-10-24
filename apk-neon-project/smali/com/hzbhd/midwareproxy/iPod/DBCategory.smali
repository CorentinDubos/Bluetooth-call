.class public Lcom/hzbhd/midwareproxy/iPod/DBCategory;
.super Ljava/lang/Object;
.source "DBCategory.java"


# static fields
.field public static final CATEGORY_ALBUM:B = 0x3t

.field public static final CATEGORY_ARTIST:B = 0x2t

.field public static final CATEGORY_AUDIOBOOK:B = 0x7t

.field public static final CATEGORY_COMPOSER:B = 0x6t

.field public static final CATEGORY_GENIUS_MIXES:B = 0xat

.field public static final CATEGORY_GENRE:B = 0x4t

.field public static final CATEGORY_ITUNESU:B = 0xbt

.field public static final CATEGORY_NESTED_PLAYLIST:B = 0x9t

.field public static final CATEGORY_PLAYLIST:B = 0x1t

.field public static final CATEGORY_PODCAST:B = 0x8t

.field public static final CATEGORY_TOP_LEVEL:B = 0x0t

.field public static final CATEGORY_TRACK:B = 0x5t

.field public static final HIERARCHY_AUDIO:B = 0x1t

.field public static final HIERARCHY_VIDEO:B = 0x2t

.field public static final INDEX_MOVIES:B = 0x0t

.field public static final INDEX_MUSIC_VIDEOES:B = 0x1t

.field public static final INDEX_RENTED_MOVIES:B = 0x4t

.field public static final INDEX_TV_SHOWS:B = 0x2t

.field public static final INDEX_VIDEO_ITUNESU:B = 0x5t

.field public static final INDEX_VIDEO_PODCASTS:B = 0x3t


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToCollectionType(B)Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;
    .locals 1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    .line 107
    sget-object p0, Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;->GENRE:Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 109
    sget-object p0, Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;->ARTIST:Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;

    return-object p0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    .line 111
    sget-object p0, Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;->ALBUM:Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;

    return-object p0

    :cond_2
    const/4 v0, 0x6

    if-ne p0, v0, :cond_3

    .line 113
    sget-object p0, Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;->COMPOSER:Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;

    return-object p0

    :cond_3
    const/4 v0, 0x1

    if-ne p0, v0, :cond_4

    .line 115
    sget-object p0, Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;->PLAYLIST:Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;

    return-object p0

    .line 117
    :cond_4
    sget-object p0, Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;->UNKNOWN:Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;

    return-object p0
.end method
