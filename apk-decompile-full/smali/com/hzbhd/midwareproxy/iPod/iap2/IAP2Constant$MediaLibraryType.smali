.class public final enum Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$MediaLibraryType;
.super Ljava/lang/Enum;
.source "IAP2Constant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MediaLibraryType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$MediaLibraryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$MediaLibraryType;

.field public static final enum INVALID:Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$MediaLibraryType;

.field public static final enum LOCAL:Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$MediaLibraryType;

.field public static final enum iTUNES:Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$MediaLibraryType;


# instance fields
.field private mValue:B


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 154
    new-instance v0, Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$MediaLibraryType;

    const-string v1, "LOCAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$MediaLibraryType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$MediaLibraryType;->LOCAL:Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$MediaLibraryType;

    .line 155
    new-instance v0, Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$MediaLibraryType;

    const-string v1, "iTUNES"

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$MediaLibraryType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$MediaLibraryType;->iTUNES:Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$MediaLibraryType;

    .line 156
    new-instance v0, Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$MediaLibraryType;

    const-string v1, "INVALID"

    const/4 v5, -0x1

    invoke-direct {v0, v1, v4, v5}, Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$MediaLibraryType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$MediaLibraryType;->INVALID:Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$MediaLibraryType;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$MediaLibraryType;

    .line 153
    sget-object v5, Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$MediaLibraryType;->LOCAL:Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$MediaLibraryType;

    aput-object v5, v1, v2

    sget-object v2, Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$MediaLibraryType;->iTUNES:Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$MediaLibraryType;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$MediaLibraryType;->$VALUES:[Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$MediaLibraryType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)V"
        }
    .end annotation

    .line 158
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 159
    iput-byte p3, p0, Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$MediaLibraryType;->mValue:B

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$MediaLibraryType;
    .locals 1

    .line 153
    const-class v0, Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$MediaLibraryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$MediaLibraryType;

    return-object p0
.end method

.method public static valueToType(B)Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$MediaLibraryType;
    .locals 1

    if-nez p0, :cond_0

    .line 168
    sget-object p0, Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$MediaLibraryType;->LOCAL:Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$MediaLibraryType;

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 170
    sget-object p0, Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$MediaLibraryType;->iTUNES:Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$MediaLibraryType;

    return-object p0

    .line 172
    :cond_1
    sget-object p0, Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$MediaLibraryType;->INVALID:Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$MediaLibraryType;

    return-object p0
.end method

.method public static values()[Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$MediaLibraryType;
    .locals 1

    .line 153
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$MediaLibraryType;->$VALUES:[Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$MediaLibraryType;

    invoke-virtual {v0}, [Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$MediaLibraryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$MediaLibraryType;

    return-object v0
.end method


# virtual methods
.method public value()B
    .locals 1

    .line 163
    iget-byte v0, p0, Lcom/hzbhd/midwareproxy/iPod/iap2/IAP2Constant$MediaLibraryType;->mValue:B

    return v0
.end method
