.class public final enum Lcom/autochips/settings/AtcSettings$Audio$TestToneSubType;
.super Ljava/lang/Enum;
.source "AtcSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/settings/AtcSettings$Audio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TestToneSubType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/autochips/settings/AtcSettings$Audio$TestToneSubType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/autochips/settings/AtcSettings$Audio$TestToneSubType;

.field public static final enum PINK_NOISE:Lcom/autochips/settings/AtcSettings$Audio$TestToneSubType;

.field public static final enum PINK_NOISE_DOLBY:Lcom/autochips/settings/AtcSettings$Audio$TestToneSubType;

.field public static final enum SINE_WAVE:Lcom/autochips/settings/AtcSettings$Audio$TestToneSubType;

.field public static final enum TRIANGLE_WAVE:Lcom/autochips/settings/AtcSettings$Audio$TestToneSubType;

.field public static final enum WHITE_NOISE:Lcom/autochips/settings/AtcSettings$Audio$TestToneSubType;

.field private static sTypes:[Lcom/autochips/settings/AtcSettings$Audio$TestToneSubType;


# instance fields
.field private final nativeInt:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 304
    new-instance v0, Lcom/autochips/settings/AtcSettings$Audio$TestToneSubType;

    const-string v1, "PINK_NOISE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/autochips/settings/AtcSettings$Audio$TestToneSubType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/settings/AtcSettings$Audio$TestToneSubType;->PINK_NOISE:Lcom/autochips/settings/AtcSettings$Audio$TestToneSubType;

    .line 306
    new-instance v0, Lcom/autochips/settings/AtcSettings$Audio$TestToneSubType;

    const-string v1, "TRIANGLE_WAVE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/autochips/settings/AtcSettings$Audio$TestToneSubType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/settings/AtcSettings$Audio$TestToneSubType;->TRIANGLE_WAVE:Lcom/autochips/settings/AtcSettings$Audio$TestToneSubType;

    .line 308
    new-instance v0, Lcom/autochips/settings/AtcSettings$Audio$TestToneSubType;

    const-string v1, "SINE_WAVE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/autochips/settings/AtcSettings$Audio$TestToneSubType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/settings/AtcSettings$Audio$TestToneSubType;->SINE_WAVE:Lcom/autochips/settings/AtcSettings$Audio$TestToneSubType;

    .line 310
    new-instance v0, Lcom/autochips/settings/AtcSettings$Audio$TestToneSubType;

    const-string v1, "WHITE_NOISE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/autochips/settings/AtcSettings$Audio$TestToneSubType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/settings/AtcSettings$Audio$TestToneSubType;->WHITE_NOISE:Lcom/autochips/settings/AtcSettings$Audio$TestToneSubType;

    .line 312
    new-instance v0, Lcom/autochips/settings/AtcSettings$Audio$TestToneSubType;

    const-string v1, "PINK_NOISE_DOLBY"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/autochips/settings/AtcSettings$Audio$TestToneSubType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/settings/AtcSettings$Audio$TestToneSubType;->PINK_NOISE_DOLBY:Lcom/autochips/settings/AtcSettings$Audio$TestToneSubType;

    const/4 v1, 0x5

    new-array v7, v1, [Lcom/autochips/settings/AtcSettings$Audio$TestToneSubType;

    .line 302
    sget-object v8, Lcom/autochips/settings/AtcSettings$Audio$TestToneSubType;->PINK_NOISE:Lcom/autochips/settings/AtcSettings$Audio$TestToneSubType;

    aput-object v8, v7, v2

    sget-object v9, Lcom/autochips/settings/AtcSettings$Audio$TestToneSubType;->TRIANGLE_WAVE:Lcom/autochips/settings/AtcSettings$Audio$TestToneSubType;

    aput-object v9, v7, v3

    sget-object v10, Lcom/autochips/settings/AtcSettings$Audio$TestToneSubType;->SINE_WAVE:Lcom/autochips/settings/AtcSettings$Audio$TestToneSubType;

    aput-object v10, v7, v4

    sget-object v11, Lcom/autochips/settings/AtcSettings$Audio$TestToneSubType;->WHITE_NOISE:Lcom/autochips/settings/AtcSettings$Audio$TestToneSubType;

    aput-object v11, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/autochips/settings/AtcSettings$Audio$TestToneSubType;->$VALUES:[Lcom/autochips/settings/AtcSettings$Audio$TestToneSubType;

    new-array v1, v1, [Lcom/autochips/settings/AtcSettings$Audio$TestToneSubType;

    aput-object v8, v1, v2

    aput-object v9, v1, v3

    aput-object v10, v1, v4

    aput-object v11, v1, v5

    aput-object v0, v1, v6

    .line 317
    sput-object v1, Lcom/autochips/settings/AtcSettings$Audio$TestToneSubType;->sTypes:[Lcom/autochips/settings/AtcSettings$Audio$TestToneSubType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 320
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 321
    iput p3, p0, Lcom/autochips/settings/AtcSettings$Audio$TestToneSubType;->nativeInt:I

    return-void
.end method

.method public static nativeToType(I)Lcom/autochips/settings/AtcSettings$Audio$TestToneSubType;
    .locals 1

    .line 326
    sget-object v0, Lcom/autochips/settings/AtcSettings$Audio$TestToneSubType;->sTypes:[Lcom/autochips/settings/AtcSettings$Audio$TestToneSubType;

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/autochips/settings/AtcSettings$Audio$TestToneSubType;
    .locals 1

    .line 302
    const-class v0, Lcom/autochips/settings/AtcSettings$Audio$TestToneSubType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/autochips/settings/AtcSettings$Audio$TestToneSubType;

    return-object p0
.end method

.method public static values()[Lcom/autochips/settings/AtcSettings$Audio$TestToneSubType;
    .locals 1

    .line 302
    sget-object v0, Lcom/autochips/settings/AtcSettings$Audio$TestToneSubType;->$VALUES:[Lcom/autochips/settings/AtcSettings$Audio$TestToneSubType;

    invoke-virtual {v0}, [Lcom/autochips/settings/AtcSettings$Audio$TestToneSubType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autochips/settings/AtcSettings$Audio$TestToneSubType;

    return-object v0
.end method
