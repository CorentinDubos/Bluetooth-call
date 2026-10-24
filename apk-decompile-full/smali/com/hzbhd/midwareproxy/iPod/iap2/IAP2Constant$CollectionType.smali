.class public final enum Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;
.super Ljava/lang/Enum;
.source "IAP2Constant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CollectionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;

.field public static final enum ALBUM:Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;

.field public static final enum ALBUM_ARTIST:Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;

.field public static final enum ARTIST:Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;

.field public static final enum COMPOSER:Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;

.field public static final enum GENRE:Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;

.field public static final enum PLAYLIST:Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;

.field public static final enum UNKNOWN:Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;


# instance fields
.field private mValue:B


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 125
    new-instance v0, Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;

    const-string v1, "PLAYLIST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;->PLAYLIST:Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;

    new-instance v0, Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;

    const-string v1, "ARTIST"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;->ARTIST:Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;

    new-instance v0, Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;

    const-string v1, "ALBUM"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;->ALBUM:Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;

    new-instance v0, Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;

    const-string v1, "ALBUM_ARTIST"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;->ALBUM_ARTIST:Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;

    new-instance v0, Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;

    const-string v1, "GENRE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;->GENRE:Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;

    new-instance v0, Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;

    const-string v1, "COMPOSER"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;->COMPOSER:Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;

    .line 126
    new-instance v0, Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;

    const-string v1, "UNKNOWN"

    const/4 v8, 0x6

    const/4 v9, -0x1

    invoke-direct {v0, v1, v8, v9}, Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;->UNKNOWN:Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;

    .line 124
    sget-object v9, Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;->PLAYLIST:Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;

    aput-object v9, v1, v2

    sget-object v2, Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;->ARTIST:Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;->ALBUM:Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;->ALBUM_ARTIST:Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;->GENRE:Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;

    aput-object v2, v1, v6

    sget-object v2, Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;->COMPOSER:Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;

    aput-object v2, v1, v7

    aput-object v0, v1, v8

    sput-object v1, Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;->$VALUES:[Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)V"
        }
    .end annotation

    .line 128
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 129
    iput-byte p3, p0, Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;->mValue:B

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;
    .locals 1

    .line 124
    const-class v0, Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;

    return-object p0
.end method

.method public static valueToCollectionType(B)Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;
    .locals 3

    .line 133
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;->PLAYLIST:Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;->value()B

    move-result v0

    if-lt p0, v0, :cond_1

    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;->COMPOSER:Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;->value()B

    move-result v0

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;

    const/4 v1, 0x0

    .line 137
    sget-object v2, Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;->PLAYLIST:Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;->ARTIST:Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;->ALBUM:Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;->ALBUM_ARTIST:Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;->GENRE:Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;->COMPOSER:Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;

    aput-object v2, v0, v1

    .line 145
    aget-object p0, v0, p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static values()[Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;
    .locals 1

    .line 124
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;->$VALUES:[Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;

    invoke-virtual {v0}, [Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;

    return-object v0
.end method


# virtual methods
.method public value()B
    .locals 1

    .line 149
    iget-byte v0, p0, Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$CollectionType;->mValue:B

    return v0
.end method
