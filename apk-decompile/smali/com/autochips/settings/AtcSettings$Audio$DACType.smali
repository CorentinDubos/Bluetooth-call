.class public final enum Lcom/autochips/settings/AtcSettings$Audio$DACType;
.super Ljava/lang/Enum;
.source "AtcSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/settings/AtcSettings$Audio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DACType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/autochips/settings/AtcSettings$Audio$DACType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/autochips/settings/AtcSettings$Audio$DACType;

.field public static final enum EXTERNAL:Lcom/autochips/settings/AtcSettings$Audio$DACType;

.field public static final enum PWM:Lcom/autochips/settings/AtcSettings$Audio$DACType;

.field private static sTypes:[Lcom/autochips/settings/AtcSettings$Audio$DACType;


# instance fields
.field private final nativeInt:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 252
    new-instance v0, Lcom/autochips/settings/AtcSettings$Audio$DACType;

    const-string v1, "PWM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/autochips/settings/AtcSettings$Audio$DACType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/settings/AtcSettings$Audio$DACType;->PWM:Lcom/autochips/settings/AtcSettings$Audio$DACType;

    .line 254
    new-instance v0, Lcom/autochips/settings/AtcSettings$Audio$DACType;

    const-string v1, "EXTERNAL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/autochips/settings/AtcSettings$Audio$DACType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/settings/AtcSettings$Audio$DACType;->EXTERNAL:Lcom/autochips/settings/AtcSettings$Audio$DACType;

    const/4 v1, 0x2

    new-array v4, v1, [Lcom/autochips/settings/AtcSettings$Audio$DACType;

    .line 250
    sget-object v5, Lcom/autochips/settings/AtcSettings$Audio$DACType;->PWM:Lcom/autochips/settings/AtcSettings$Audio$DACType;

    aput-object v5, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/autochips/settings/AtcSettings$Audio$DACType;->$VALUES:[Lcom/autochips/settings/AtcSettings$Audio$DACType;

    new-array v1, v1, [Lcom/autochips/settings/AtcSettings$Audio$DACType;

    aput-object v5, v1, v2

    aput-object v0, v1, v3

    .line 259
    sput-object v1, Lcom/autochips/settings/AtcSettings$Audio$DACType;->sTypes:[Lcom/autochips/settings/AtcSettings$Audio$DACType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 262
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 263
    iput p3, p0, Lcom/autochips/settings/AtcSettings$Audio$DACType;->nativeInt:I

    return-void
.end method

.method public static nativeToType(I)Lcom/autochips/settings/AtcSettings$Audio$DACType;
    .locals 1

    .line 268
    sget-object v0, Lcom/autochips/settings/AtcSettings$Audio$DACType;->sTypes:[Lcom/autochips/settings/AtcSettings$Audio$DACType;

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/autochips/settings/AtcSettings$Audio$DACType;
    .locals 1

    .line 250
    const-class v0, Lcom/autochips/settings/AtcSettings$Audio$DACType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/autochips/settings/AtcSettings$Audio$DACType;

    return-object p0
.end method

.method public static values()[Lcom/autochips/settings/AtcSettings$Audio$DACType;
    .locals 1

    .line 250
    sget-object v0, Lcom/autochips/settings/AtcSettings$Audio$DACType;->$VALUES:[Lcom/autochips/settings/AtcSettings$Audio$DACType;

    invoke-virtual {v0}, [Lcom/autochips/settings/AtcSettings$Audio$DACType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autochips/settings/AtcSettings$Audio$DACType;

    return-object v0
.end method
