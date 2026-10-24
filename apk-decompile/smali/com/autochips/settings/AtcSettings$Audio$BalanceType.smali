.class public final enum Lcom/autochips/settings/AtcSettings$Audio$BalanceType;
.super Ljava/lang/Enum;
.source "AtcSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/settings/AtcSettings$Audio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BalanceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/autochips/settings/AtcSettings$Audio$BalanceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/autochips/settings/AtcSettings$Audio$BalanceType;

.field public static final enum CENTER:Lcom/autochips/settings/AtcSettings$Audio$BalanceType;

.field public static final enum FRONT_LEFT:Lcom/autochips/settings/AtcSettings$Audio$BalanceType;

.field public static final enum FRONT_RIGHT:Lcom/autochips/settings/AtcSettings$Audio$BalanceType;

.field public static final enum LS:Lcom/autochips/settings/AtcSettings$Audio$BalanceType;

.field public static final enum REAR_LEFT:Lcom/autochips/settings/AtcSettings$Audio$BalanceType;

.field public static final enum REAR_RIGHT:Lcom/autochips/settings/AtcSettings$Audio$BalanceType;

.field public static final enum RS:Lcom/autochips/settings/AtcSettings$Audio$BalanceType;

.field public static final enum SUB_WOOFER:Lcom/autochips/settings/AtcSettings$Audio$BalanceType;

.field private static sTypes:[Lcom/autochips/settings/AtcSettings$Audio$BalanceType;


# instance fields
.field private final nativeInt:I


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 335
    new-instance v0, Lcom/autochips/settings/AtcSettings$Audio$BalanceType;

    const-string v1, "FRONT_LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/autochips/settings/AtcSettings$Audio$BalanceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/settings/AtcSettings$Audio$BalanceType;->FRONT_LEFT:Lcom/autochips/settings/AtcSettings$Audio$BalanceType;

    .line 337
    new-instance v0, Lcom/autochips/settings/AtcSettings$Audio$BalanceType;

    const-string v1, "FRONT_RIGHT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/autochips/settings/AtcSettings$Audio$BalanceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/settings/AtcSettings$Audio$BalanceType;->FRONT_RIGHT:Lcom/autochips/settings/AtcSettings$Audio$BalanceType;

    .line 339
    new-instance v0, Lcom/autochips/settings/AtcSettings$Audio$BalanceType;

    const-string v1, "REAR_LEFT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/autochips/settings/AtcSettings$Audio$BalanceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/settings/AtcSettings$Audio$BalanceType;->REAR_LEFT:Lcom/autochips/settings/AtcSettings$Audio$BalanceType;

    .line 341
    new-instance v0, Lcom/autochips/settings/AtcSettings$Audio$BalanceType;

    const-string v1, "REAR_RIGHT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/autochips/settings/AtcSettings$Audio$BalanceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/settings/AtcSettings$Audio$BalanceType;->REAR_RIGHT:Lcom/autochips/settings/AtcSettings$Audio$BalanceType;

    .line 343
    new-instance v0, Lcom/autochips/settings/AtcSettings$Audio$BalanceType;

    const-string v1, "CENTER"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/autochips/settings/AtcSettings$Audio$BalanceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/settings/AtcSettings$Audio$BalanceType;->CENTER:Lcom/autochips/settings/AtcSettings$Audio$BalanceType;

    .line 345
    new-instance v0, Lcom/autochips/settings/AtcSettings$Audio$BalanceType;

    const-string v1, "SUB_WOOFER"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/autochips/settings/AtcSettings$Audio$BalanceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/settings/AtcSettings$Audio$BalanceType;->SUB_WOOFER:Lcom/autochips/settings/AtcSettings$Audio$BalanceType;

    .line 347
    new-instance v0, Lcom/autochips/settings/AtcSettings$Audio$BalanceType;

    const-string v1, "LS"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/autochips/settings/AtcSettings$Audio$BalanceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/settings/AtcSettings$Audio$BalanceType;->LS:Lcom/autochips/settings/AtcSettings$Audio$BalanceType;

    .line 349
    new-instance v0, Lcom/autochips/settings/AtcSettings$Audio$BalanceType;

    const-string v1, "RS"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lcom/autochips/settings/AtcSettings$Audio$BalanceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/settings/AtcSettings$Audio$BalanceType;->RS:Lcom/autochips/settings/AtcSettings$Audio$BalanceType;

    const/16 v1, 0x8

    new-array v10, v1, [Lcom/autochips/settings/AtcSettings$Audio$BalanceType;

    .line 333
    sget-object v11, Lcom/autochips/settings/AtcSettings$Audio$BalanceType;->FRONT_LEFT:Lcom/autochips/settings/AtcSettings$Audio$BalanceType;

    aput-object v11, v10, v2

    sget-object v12, Lcom/autochips/settings/AtcSettings$Audio$BalanceType;->FRONT_RIGHT:Lcom/autochips/settings/AtcSettings$Audio$BalanceType;

    aput-object v12, v10, v3

    sget-object v13, Lcom/autochips/settings/AtcSettings$Audio$BalanceType;->REAR_LEFT:Lcom/autochips/settings/AtcSettings$Audio$BalanceType;

    aput-object v13, v10, v4

    sget-object v14, Lcom/autochips/settings/AtcSettings$Audio$BalanceType;->REAR_RIGHT:Lcom/autochips/settings/AtcSettings$Audio$BalanceType;

    aput-object v14, v10, v5

    sget-object v15, Lcom/autochips/settings/AtcSettings$Audio$BalanceType;->CENTER:Lcom/autochips/settings/AtcSettings$Audio$BalanceType;

    aput-object v15, v10, v6

    sget-object v16, Lcom/autochips/settings/AtcSettings$Audio$BalanceType;->SUB_WOOFER:Lcom/autochips/settings/AtcSettings$Audio$BalanceType;

    aput-object v16, v10, v7

    sget-object v17, Lcom/autochips/settings/AtcSettings$Audio$BalanceType;->LS:Lcom/autochips/settings/AtcSettings$Audio$BalanceType;

    aput-object v17, v10, v8

    aput-object v0, v10, v9

    sput-object v10, Lcom/autochips/settings/AtcSettings$Audio$BalanceType;->$VALUES:[Lcom/autochips/settings/AtcSettings$Audio$BalanceType;

    new-array v1, v1, [Lcom/autochips/settings/AtcSettings$Audio$BalanceType;

    aput-object v11, v1, v2

    aput-object v12, v1, v3

    aput-object v13, v1, v4

    aput-object v14, v1, v5

    aput-object v15, v1, v6

    aput-object v16, v1, v7

    aput-object v17, v1, v8

    aput-object v0, v1, v9

    .line 354
    sput-object v1, Lcom/autochips/settings/AtcSettings$Audio$BalanceType;->sTypes:[Lcom/autochips/settings/AtcSettings$Audio$BalanceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 357
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 358
    iput p3, p0, Lcom/autochips/settings/AtcSettings$Audio$BalanceType;->nativeInt:I

    return-void
.end method

.method public static nativeToType(I)Lcom/autochips/settings/AtcSettings$Audio$BalanceType;
    .locals 1

    .line 363
    sget-object v0, Lcom/autochips/settings/AtcSettings$Audio$BalanceType;->sTypes:[Lcom/autochips/settings/AtcSettings$Audio$BalanceType;

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/autochips/settings/AtcSettings$Audio$BalanceType;
    .locals 1

    .line 333
    const-class v0, Lcom/autochips/settings/AtcSettings$Audio$BalanceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/autochips/settings/AtcSettings$Audio$BalanceType;

    return-object p0
.end method

.method public static values()[Lcom/autochips/settings/AtcSettings$Audio$BalanceType;
    .locals 1

    .line 333
    sget-object v0, Lcom/autochips/settings/AtcSettings$Audio$BalanceType;->$VALUES:[Lcom/autochips/settings/AtcSettings$Audio$BalanceType;

    invoke-virtual {v0}, [Lcom/autochips/settings/AtcSettings$Audio$BalanceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autochips/settings/AtcSettings$Audio$BalanceType;

    return-object v0
.end method
