.class public final enum Lcom/autochips/settings/AtcSettings$Audio$TestToneMainType;
.super Ljava/lang/Enum;
.source "AtcSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/settings/AtcSettings$Audio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TestToneMainType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/autochips/settings/AtcSettings$Audio$TestToneMainType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/autochips/settings/AtcSettings$Audio$TestToneMainType;

.field public static final enum FRONT:Lcom/autochips/settings/AtcSettings$Audio$TestToneMainType;

.field public static final enum OFF:Lcom/autochips/settings/AtcSettings$Audio$TestToneMainType;

.field public static final enum REAR:Lcom/autochips/settings/AtcSettings$Audio$TestToneMainType;

.field private static sTypes:[Lcom/autochips/settings/AtcSettings$Audio$TestToneMainType;


# instance fields
.field private final nativeInt:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 277
    new-instance v0, Lcom/autochips/settings/AtcSettings$Audio$TestToneMainType;

    const-string v1, "FRONT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/autochips/settings/AtcSettings$Audio$TestToneMainType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/settings/AtcSettings$Audio$TestToneMainType;->FRONT:Lcom/autochips/settings/AtcSettings$Audio$TestToneMainType;

    .line 279
    new-instance v0, Lcom/autochips/settings/AtcSettings$Audio$TestToneMainType;

    const-string v1, "REAR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/autochips/settings/AtcSettings$Audio$TestToneMainType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/settings/AtcSettings$Audio$TestToneMainType;->REAR:Lcom/autochips/settings/AtcSettings$Audio$TestToneMainType;

    .line 281
    new-instance v0, Lcom/autochips/settings/AtcSettings$Audio$TestToneMainType;

    const-string v1, "OFF"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/autochips/settings/AtcSettings$Audio$TestToneMainType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/settings/AtcSettings$Audio$TestToneMainType;->OFF:Lcom/autochips/settings/AtcSettings$Audio$TestToneMainType;

    const/4 v1, 0x3

    new-array v5, v1, [Lcom/autochips/settings/AtcSettings$Audio$TestToneMainType;

    .line 275
    sget-object v6, Lcom/autochips/settings/AtcSettings$Audio$TestToneMainType;->FRONT:Lcom/autochips/settings/AtcSettings$Audio$TestToneMainType;

    aput-object v6, v5, v2

    sget-object v7, Lcom/autochips/settings/AtcSettings$Audio$TestToneMainType;->REAR:Lcom/autochips/settings/AtcSettings$Audio$TestToneMainType;

    aput-object v7, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/autochips/settings/AtcSettings$Audio$TestToneMainType;->$VALUES:[Lcom/autochips/settings/AtcSettings$Audio$TestToneMainType;

    new-array v1, v1, [Lcom/autochips/settings/AtcSettings$Audio$TestToneMainType;

    aput-object v6, v1, v2

    aput-object v7, v1, v3

    aput-object v0, v1, v4

    .line 286
    sput-object v1, Lcom/autochips/settings/AtcSettings$Audio$TestToneMainType;->sTypes:[Lcom/autochips/settings/AtcSettings$Audio$TestToneMainType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 289
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 290
    iput p3, p0, Lcom/autochips/settings/AtcSettings$Audio$TestToneMainType;->nativeInt:I

    return-void
.end method

.method public static nativeToType(I)Lcom/autochips/settings/AtcSettings$Audio$TestToneMainType;
    .locals 1

    .line 295
    sget-object v0, Lcom/autochips/settings/AtcSettings$Audio$TestToneMainType;->sTypes:[Lcom/autochips/settings/AtcSettings$Audio$TestToneMainType;

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/autochips/settings/AtcSettings$Audio$TestToneMainType;
    .locals 1

    .line 275
    const-class v0, Lcom/autochips/settings/AtcSettings$Audio$TestToneMainType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/autochips/settings/AtcSettings$Audio$TestToneMainType;

    return-object p0
.end method

.method public static values()[Lcom/autochips/settings/AtcSettings$Audio$TestToneMainType;
    .locals 1

    .line 275
    sget-object v0, Lcom/autochips/settings/AtcSettings$Audio$TestToneMainType;->$VALUES:[Lcom/autochips/settings/AtcSettings$Audio$TestToneMainType;

    invoke-virtual {v0}, [Lcom/autochips/settings/AtcSettings$Audio$TestToneMainType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autochips/settings/AtcSettings$Audio$TestToneMainType;

    return-object v0
.end method
