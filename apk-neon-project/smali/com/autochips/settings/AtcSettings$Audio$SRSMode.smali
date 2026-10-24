.class public final enum Lcom/autochips/settings/AtcSettings$Audio$SRSMode;
.super Ljava/lang/Enum;
.source "AtcSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/settings/AtcSettings$Audio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SRSMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/autochips/settings/AtcSettings$Audio$SRSMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/autochips/settings/AtcSettings$Audio$SRSMode;

.field public static final enum CINEMA:Lcom/autochips/settings/AtcSettings$Audio$SRSMode;

.field public static final enum LCRS:Lcom/autochips/settings/AtcSettings$Audio$SRSMode;

.field public static final enum MONO:Lcom/autochips/settings/AtcSettings$Audio$SRSMode;

.field public static final enum MUSIC:Lcom/autochips/settings/AtcSettings$Audio$SRSMode;

.field public static final enum PRO:Lcom/autochips/settings/AtcSettings$Audio$SRSMode;

.field private static sTypes:[Lcom/autochips/settings/AtcSettings$Audio$SRSMode;


# instance fields
.field private final nativeInt:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 430
    new-instance v0, Lcom/autochips/settings/AtcSettings$Audio$SRSMode;

    const-string v1, "CINEMA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/autochips/settings/AtcSettings$Audio$SRSMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/settings/AtcSettings$Audio$SRSMode;->CINEMA:Lcom/autochips/settings/AtcSettings$Audio$SRSMode;

    .line 432
    new-instance v0, Lcom/autochips/settings/AtcSettings$Audio$SRSMode;

    const-string v1, "PRO"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/autochips/settings/AtcSettings$Audio$SRSMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/settings/AtcSettings$Audio$SRSMode;->PRO:Lcom/autochips/settings/AtcSettings$Audio$SRSMode;

    .line 434
    new-instance v0, Lcom/autochips/settings/AtcSettings$Audio$SRSMode;

    const-string v1, "MUSIC"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/autochips/settings/AtcSettings$Audio$SRSMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/settings/AtcSettings$Audio$SRSMode;->MUSIC:Lcom/autochips/settings/AtcSettings$Audio$SRSMode;

    .line 436
    new-instance v0, Lcom/autochips/settings/AtcSettings$Audio$SRSMode;

    const-string v1, "MONO"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/autochips/settings/AtcSettings$Audio$SRSMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/settings/AtcSettings$Audio$SRSMode;->MONO:Lcom/autochips/settings/AtcSettings$Audio$SRSMode;

    .line 438
    new-instance v0, Lcom/autochips/settings/AtcSettings$Audio$SRSMode;

    const-string v1, "LCRS"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/autochips/settings/AtcSettings$Audio$SRSMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/settings/AtcSettings$Audio$SRSMode;->LCRS:Lcom/autochips/settings/AtcSettings$Audio$SRSMode;

    const/4 v1, 0x5

    new-array v7, v1, [Lcom/autochips/settings/AtcSettings$Audio$SRSMode;

    .line 428
    sget-object v8, Lcom/autochips/settings/AtcSettings$Audio$SRSMode;->CINEMA:Lcom/autochips/settings/AtcSettings$Audio$SRSMode;

    aput-object v8, v7, v2

    sget-object v9, Lcom/autochips/settings/AtcSettings$Audio$SRSMode;->PRO:Lcom/autochips/settings/AtcSettings$Audio$SRSMode;

    aput-object v9, v7, v3

    sget-object v10, Lcom/autochips/settings/AtcSettings$Audio$SRSMode;->MUSIC:Lcom/autochips/settings/AtcSettings$Audio$SRSMode;

    aput-object v10, v7, v4

    sget-object v11, Lcom/autochips/settings/AtcSettings$Audio$SRSMode;->MONO:Lcom/autochips/settings/AtcSettings$Audio$SRSMode;

    aput-object v11, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/autochips/settings/AtcSettings$Audio$SRSMode;->$VALUES:[Lcom/autochips/settings/AtcSettings$Audio$SRSMode;

    new-array v1, v1, [Lcom/autochips/settings/AtcSettings$Audio$SRSMode;

    aput-object v8, v1, v2

    aput-object v9, v1, v3

    aput-object v10, v1, v4

    aput-object v11, v1, v5

    aput-object v0, v1, v6

    .line 443
    sput-object v1, Lcom/autochips/settings/AtcSettings$Audio$SRSMode;->sTypes:[Lcom/autochips/settings/AtcSettings$Audio$SRSMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 446
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 447
    iput p3, p0, Lcom/autochips/settings/AtcSettings$Audio$SRSMode;->nativeInt:I

    return-void
.end method

.method public static nativeToType(I)Lcom/autochips/settings/AtcSettings$Audio$SRSMode;
    .locals 1

    .line 452
    sget-object v0, Lcom/autochips/settings/AtcSettings$Audio$SRSMode;->sTypes:[Lcom/autochips/settings/AtcSettings$Audio$SRSMode;

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/autochips/settings/AtcSettings$Audio$SRSMode;
    .locals 1

    .line 428
    const-class v0, Lcom/autochips/settings/AtcSettings$Audio$SRSMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/autochips/settings/AtcSettings$Audio$SRSMode;

    return-object p0
.end method

.method public static values()[Lcom/autochips/settings/AtcSettings$Audio$SRSMode;
    .locals 1

    .line 428
    sget-object v0, Lcom/autochips/settings/AtcSettings$Audio$SRSMode;->$VALUES:[Lcom/autochips/settings/AtcSettings$Audio$SRSMode;

    invoke-virtual {v0}, [Lcom/autochips/settings/AtcSettings$Audio$SRSMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autochips/settings/AtcSettings$Audio$SRSMode;

    return-object v0
.end method
