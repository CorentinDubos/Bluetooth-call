.class public final enum Lcom/autochips/settings/AtcSettings$Audio$ReverbType;
.super Ljava/lang/Enum;
.source "AtcSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/settings/AtcSettings$Audio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReverbType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/autochips/settings/AtcSettings$Audio$ReverbType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/autochips/settings/AtcSettings$Audio$ReverbType;

.field public static final enum ARENA:Lcom/autochips/settings/AtcSettings$Audio$ReverbType;

.field public static final enum BATHROOM:Lcom/autochips/settings/AtcSettings$Audio$ReverbType;

.field public static final enum CAVE:Lcom/autochips/settings/AtcSettings$Audio$ReverbType;

.field public static final enum CONCERT:Lcom/autochips/settings/AtcSettings$Audio$ReverbType;

.field public static final enum HALL:Lcom/autochips/settings/AtcSettings$Audio$ReverbType;

.field public static final enum LIVINGROOM:Lcom/autochips/settings/AtcSettings$Audio$ReverbType;

.field public static final enum OFF:Lcom/autochips/settings/AtcSettings$Audio$ReverbType;

.field private static sTypes:[Lcom/autochips/settings/AtcSettings$Audio$ReverbType;


# instance fields
.field private final nativeInt:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 611
    new-instance v0, Lcom/autochips/settings/AtcSettings$Audio$ReverbType;

    const-string v1, "OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/autochips/settings/AtcSettings$Audio$ReverbType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/settings/AtcSettings$Audio$ReverbType;->OFF:Lcom/autochips/settings/AtcSettings$Audio$ReverbType;

    .line 613
    new-instance v0, Lcom/autochips/settings/AtcSettings$Audio$ReverbType;

    const-string v1, "LIVINGROOM"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/autochips/settings/AtcSettings$Audio$ReverbType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/settings/AtcSettings$Audio$ReverbType;->LIVINGROOM:Lcom/autochips/settings/AtcSettings$Audio$ReverbType;

    .line 615
    new-instance v0, Lcom/autochips/settings/AtcSettings$Audio$ReverbType;

    const-string v1, "HALL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/autochips/settings/AtcSettings$Audio$ReverbType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/settings/AtcSettings$Audio$ReverbType;->HALL:Lcom/autochips/settings/AtcSettings$Audio$ReverbType;

    .line 617
    new-instance v0, Lcom/autochips/settings/AtcSettings$Audio$ReverbType;

    const-string v1, "CONCERT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/autochips/settings/AtcSettings$Audio$ReverbType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/settings/AtcSettings$Audio$ReverbType;->CONCERT:Lcom/autochips/settings/AtcSettings$Audio$ReverbType;

    .line 619
    new-instance v0, Lcom/autochips/settings/AtcSettings$Audio$ReverbType;

    const-string v1, "CAVE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/autochips/settings/AtcSettings$Audio$ReverbType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/settings/AtcSettings$Audio$ReverbType;->CAVE:Lcom/autochips/settings/AtcSettings$Audio$ReverbType;

    .line 621
    new-instance v0, Lcom/autochips/settings/AtcSettings$Audio$ReverbType;

    const-string v1, "BATHROOM"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/autochips/settings/AtcSettings$Audio$ReverbType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/settings/AtcSettings$Audio$ReverbType;->BATHROOM:Lcom/autochips/settings/AtcSettings$Audio$ReverbType;

    .line 623
    new-instance v0, Lcom/autochips/settings/AtcSettings$Audio$ReverbType;

    const-string v1, "ARENA"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/autochips/settings/AtcSettings$Audio$ReverbType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/settings/AtcSettings$Audio$ReverbType;->ARENA:Lcom/autochips/settings/AtcSettings$Audio$ReverbType;

    const/4 v1, 0x7

    new-array v9, v1, [Lcom/autochips/settings/AtcSettings$Audio$ReverbType;

    .line 609
    sget-object v10, Lcom/autochips/settings/AtcSettings$Audio$ReverbType;->OFF:Lcom/autochips/settings/AtcSettings$Audio$ReverbType;

    aput-object v10, v9, v2

    sget-object v11, Lcom/autochips/settings/AtcSettings$Audio$ReverbType;->LIVINGROOM:Lcom/autochips/settings/AtcSettings$Audio$ReverbType;

    aput-object v11, v9, v3

    sget-object v12, Lcom/autochips/settings/AtcSettings$Audio$ReverbType;->HALL:Lcom/autochips/settings/AtcSettings$Audio$ReverbType;

    aput-object v12, v9, v4

    sget-object v13, Lcom/autochips/settings/AtcSettings$Audio$ReverbType;->CONCERT:Lcom/autochips/settings/AtcSettings$Audio$ReverbType;

    aput-object v13, v9, v5

    sget-object v14, Lcom/autochips/settings/AtcSettings$Audio$ReverbType;->CAVE:Lcom/autochips/settings/AtcSettings$Audio$ReverbType;

    aput-object v14, v9, v6

    sget-object v15, Lcom/autochips/settings/AtcSettings$Audio$ReverbType;->BATHROOM:Lcom/autochips/settings/AtcSettings$Audio$ReverbType;

    aput-object v15, v9, v7

    aput-object v0, v9, v8

    sput-object v9, Lcom/autochips/settings/AtcSettings$Audio$ReverbType;->$VALUES:[Lcom/autochips/settings/AtcSettings$Audio$ReverbType;

    new-array v1, v1, [Lcom/autochips/settings/AtcSettings$Audio$ReverbType;

    aput-object v10, v1, v2

    aput-object v11, v1, v3

    aput-object v12, v1, v4

    aput-object v13, v1, v5

    aput-object v14, v1, v6

    aput-object v15, v1, v7

    aput-object v0, v1, v8

    .line 628
    sput-object v1, Lcom/autochips/settings/AtcSettings$Audio$ReverbType;->sTypes:[Lcom/autochips/settings/AtcSettings$Audio$ReverbType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 631
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 632
    iput p3, p0, Lcom/autochips/settings/AtcSettings$Audio$ReverbType;->nativeInt:I

    return-void
.end method

.method public static nativeToType(I)Lcom/autochips/settings/AtcSettings$Audio$ReverbType;
    .locals 1

    .line 637
    sget-object v0, Lcom/autochips/settings/AtcSettings$Audio$ReverbType;->sTypes:[Lcom/autochips/settings/AtcSettings$Audio$ReverbType;

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/autochips/settings/AtcSettings$Audio$ReverbType;
    .locals 1

    .line 609
    const-class v0, Lcom/autochips/settings/AtcSettings$Audio$ReverbType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/autochips/settings/AtcSettings$Audio$ReverbType;

    return-object p0
.end method

.method public static values()[Lcom/autochips/settings/AtcSettings$Audio$ReverbType;
    .locals 1

    .line 609
    sget-object v0, Lcom/autochips/settings/AtcSettings$Audio$ReverbType;->$VALUES:[Lcom/autochips/settings/AtcSettings$Audio$ReverbType;

    invoke-virtual {v0}, [Lcom/autochips/settings/AtcSettings$Audio$ReverbType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autochips/settings/AtcSettings$Audio$ReverbType;

    return-object v0
.end method
