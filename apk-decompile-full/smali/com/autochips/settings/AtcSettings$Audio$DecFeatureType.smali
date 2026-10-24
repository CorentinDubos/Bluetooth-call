.class public final enum Lcom/autochips/settings/AtcSettings$Audio$DecFeatureType;
.super Ljava/lang/Enum;
.source "AtcSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/settings/AtcSettings$Audio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DecFeatureType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/autochips/settings/AtcSettings$Audio$DecFeatureType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/autochips/settings/AtcSettings$Audio$DecFeatureType;

.field public static final enum AAC:Lcom/autochips/settings/AtcSettings$Audio$DecFeatureType;

.field public static final enum AACUSED_ONLY:Lcom/autochips/settings/AtcSettings$Audio$DecFeatureType;

.field public static final enum NEO6:Lcom/autochips/settings/AtcSettings$Audio$DecFeatureType;

.field public static final enum PROLOGICII:Lcom/autochips/settings/AtcSettings$Audio$DecFeatureType;

.field public static final enum SACD:Lcom/autochips/settings/AtcSettings$Audio$DecFeatureType;

.field private static sTypes:[Lcom/autochips/settings/AtcSettings$Audio$DecFeatureType;


# instance fields
.field private final nativeInt:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 372
    new-instance v0, Lcom/autochips/settings/AtcSettings$Audio$DecFeatureType;

    const-string v1, "PROLOGICII"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/autochips/settings/AtcSettings$Audio$DecFeatureType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/settings/AtcSettings$Audio$DecFeatureType;->PROLOGICII:Lcom/autochips/settings/AtcSettings$Audio$DecFeatureType;

    .line 374
    new-instance v0, Lcom/autochips/settings/AtcSettings$Audio$DecFeatureType;

    const-string v1, "SACD"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/autochips/settings/AtcSettings$Audio$DecFeatureType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/settings/AtcSettings$Audio$DecFeatureType;->SACD:Lcom/autochips/settings/AtcSettings$Audio$DecFeatureType;

    .line 376
    new-instance v0, Lcom/autochips/settings/AtcSettings$Audio$DecFeatureType;

    const-string v1, "AAC"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/autochips/settings/AtcSettings$Audio$DecFeatureType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/settings/AtcSettings$Audio$DecFeatureType;->AAC:Lcom/autochips/settings/AtcSettings$Audio$DecFeatureType;

    .line 378
    new-instance v0, Lcom/autochips/settings/AtcSettings$Audio$DecFeatureType;

    const-string v1, "AACUSED_ONLY"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/autochips/settings/AtcSettings$Audio$DecFeatureType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/settings/AtcSettings$Audio$DecFeatureType;->AACUSED_ONLY:Lcom/autochips/settings/AtcSettings$Audio$DecFeatureType;

    .line 380
    new-instance v0, Lcom/autochips/settings/AtcSettings$Audio$DecFeatureType;

    const-string v1, "NEO6"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/autochips/settings/AtcSettings$Audio$DecFeatureType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/settings/AtcSettings$Audio$DecFeatureType;->NEO6:Lcom/autochips/settings/AtcSettings$Audio$DecFeatureType;

    const/4 v1, 0x5

    new-array v7, v1, [Lcom/autochips/settings/AtcSettings$Audio$DecFeatureType;

    .line 370
    sget-object v8, Lcom/autochips/settings/AtcSettings$Audio$DecFeatureType;->PROLOGICII:Lcom/autochips/settings/AtcSettings$Audio$DecFeatureType;

    aput-object v8, v7, v2

    sget-object v9, Lcom/autochips/settings/AtcSettings$Audio$DecFeatureType;->SACD:Lcom/autochips/settings/AtcSettings$Audio$DecFeatureType;

    aput-object v9, v7, v3

    sget-object v10, Lcom/autochips/settings/AtcSettings$Audio$DecFeatureType;->AAC:Lcom/autochips/settings/AtcSettings$Audio$DecFeatureType;

    aput-object v10, v7, v4

    sget-object v11, Lcom/autochips/settings/AtcSettings$Audio$DecFeatureType;->AACUSED_ONLY:Lcom/autochips/settings/AtcSettings$Audio$DecFeatureType;

    aput-object v11, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/autochips/settings/AtcSettings$Audio$DecFeatureType;->$VALUES:[Lcom/autochips/settings/AtcSettings$Audio$DecFeatureType;

    new-array v1, v1, [Lcom/autochips/settings/AtcSettings$Audio$DecFeatureType;

    aput-object v8, v1, v2

    aput-object v9, v1, v3

    aput-object v10, v1, v4

    aput-object v11, v1, v5

    aput-object v0, v1, v6

    .line 385
    sput-object v1, Lcom/autochips/settings/AtcSettings$Audio$DecFeatureType;->sTypes:[Lcom/autochips/settings/AtcSettings$Audio$DecFeatureType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 388
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 389
    iput p3, p0, Lcom/autochips/settings/AtcSettings$Audio$DecFeatureType;->nativeInt:I

    return-void
.end method

.method public static nativeToType(I)Lcom/autochips/settings/AtcSettings$Audio$DecFeatureType;
    .locals 1

    .line 394
    sget-object v0, Lcom/autochips/settings/AtcSettings$Audio$DecFeatureType;->sTypes:[Lcom/autochips/settings/AtcSettings$Audio$DecFeatureType;

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/autochips/settings/AtcSettings$Audio$DecFeatureType;
    .locals 1

    .line 370
    const-class v0, Lcom/autochips/settings/AtcSettings$Audio$DecFeatureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/autochips/settings/AtcSettings$Audio$DecFeatureType;

    return-object p0
.end method

.method public static values()[Lcom/autochips/settings/AtcSettings$Audio$DecFeatureType;
    .locals 1

    .line 370
    sget-object v0, Lcom/autochips/settings/AtcSettings$Audio$DecFeatureType;->$VALUES:[Lcom/autochips/settings/AtcSettings$Audio$DecFeatureType;

    invoke-virtual {v0}, [Lcom/autochips/settings/AtcSettings$Audio$DecFeatureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autochips/settings/AtcSettings$Audio$DecFeatureType;

    return-object v0
.end method
