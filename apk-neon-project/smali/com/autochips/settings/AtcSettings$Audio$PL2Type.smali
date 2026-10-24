.class public final enum Lcom/autochips/settings/AtcSettings$Audio$PL2Type;
.super Ljava/lang/Enum;
.source "AtcSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/settings/AtcSettings$Audio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PL2Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/autochips/settings/AtcSettings$Audio$PL2Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/autochips/settings/AtcSettings$Audio$PL2Type;

.field public static final enum AUD_SE_PL2_AUTO:Lcom/autochips/settings/AtcSettings$Audio$PL2Type;

.field public static final enum AUD_SE_PL2_MOVIE:Lcom/autochips/settings/AtcSettings$Audio$PL2Type;

.field public static final enum AUD_SE_PL2_MUSIC:Lcom/autochips/settings/AtcSettings$Audio$PL2Type;

.field public static final enum AUD_SE_PL2_OFF:Lcom/autochips/settings/AtcSettings$Audio$PL2Type;

.field private static sTypes:[Lcom/autochips/settings/AtcSettings$Audio$PL2Type;


# instance fields
.field private final nativeInt:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 582
    new-instance v0, Lcom/autochips/settings/AtcSettings$Audio$PL2Type;

    const-string v1, "AUD_SE_PL2_OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/autochips/settings/AtcSettings$Audio$PL2Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/settings/AtcSettings$Audio$PL2Type;->AUD_SE_PL2_OFF:Lcom/autochips/settings/AtcSettings$Audio$PL2Type;

    .line 584
    new-instance v0, Lcom/autochips/settings/AtcSettings$Audio$PL2Type;

    const-string v1, "AUD_SE_PL2_MUSIC"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/autochips/settings/AtcSettings$Audio$PL2Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/settings/AtcSettings$Audio$PL2Type;->AUD_SE_PL2_MUSIC:Lcom/autochips/settings/AtcSettings$Audio$PL2Type;

    .line 586
    new-instance v0, Lcom/autochips/settings/AtcSettings$Audio$PL2Type;

    const-string v1, "AUD_SE_PL2_MOVIE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/autochips/settings/AtcSettings$Audio$PL2Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/settings/AtcSettings$Audio$PL2Type;->AUD_SE_PL2_MOVIE:Lcom/autochips/settings/AtcSettings$Audio$PL2Type;

    .line 588
    new-instance v0, Lcom/autochips/settings/AtcSettings$Audio$PL2Type;

    const-string v1, "AUD_SE_PL2_AUTO"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/autochips/settings/AtcSettings$Audio$PL2Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/settings/AtcSettings$Audio$PL2Type;->AUD_SE_PL2_AUTO:Lcom/autochips/settings/AtcSettings$Audio$PL2Type;

    const/4 v1, 0x4

    new-array v6, v1, [Lcom/autochips/settings/AtcSettings$Audio$PL2Type;

    .line 580
    sget-object v7, Lcom/autochips/settings/AtcSettings$Audio$PL2Type;->AUD_SE_PL2_OFF:Lcom/autochips/settings/AtcSettings$Audio$PL2Type;

    aput-object v7, v6, v2

    sget-object v8, Lcom/autochips/settings/AtcSettings$Audio$PL2Type;->AUD_SE_PL2_MUSIC:Lcom/autochips/settings/AtcSettings$Audio$PL2Type;

    aput-object v8, v6, v3

    sget-object v9, Lcom/autochips/settings/AtcSettings$Audio$PL2Type;->AUD_SE_PL2_MOVIE:Lcom/autochips/settings/AtcSettings$Audio$PL2Type;

    aput-object v9, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/autochips/settings/AtcSettings$Audio$PL2Type;->$VALUES:[Lcom/autochips/settings/AtcSettings$Audio$PL2Type;

    new-array v1, v1, [Lcom/autochips/settings/AtcSettings$Audio$PL2Type;

    aput-object v7, v1, v2

    aput-object v8, v1, v3

    aput-object v9, v1, v4

    aput-object v0, v1, v5

    .line 593
    sput-object v1, Lcom/autochips/settings/AtcSettings$Audio$PL2Type;->sTypes:[Lcom/autochips/settings/AtcSettings$Audio$PL2Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 596
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 597
    iput p3, p0, Lcom/autochips/settings/AtcSettings$Audio$PL2Type;->nativeInt:I

    return-void
.end method

.method public static nativeToType(I)Lcom/autochips/settings/AtcSettings$Audio$PL2Type;
    .locals 1

    .line 602
    sget-object v0, Lcom/autochips/settings/AtcSettings$Audio$PL2Type;->sTypes:[Lcom/autochips/settings/AtcSettings$Audio$PL2Type;

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/autochips/settings/AtcSettings$Audio$PL2Type;
    .locals 1

    .line 580
    const-class v0, Lcom/autochips/settings/AtcSettings$Audio$PL2Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/autochips/settings/AtcSettings$Audio$PL2Type;

    return-object p0
.end method

.method public static values()[Lcom/autochips/settings/AtcSettings$Audio$PL2Type;
    .locals 1

    .line 580
    sget-object v0, Lcom/autochips/settings/AtcSettings$Audio$PL2Type;->$VALUES:[Lcom/autochips/settings/AtcSettings$Audio$PL2Type;

    invoke-virtual {v0}, [Lcom/autochips/settings/AtcSettings$Audio$PL2Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autochips/settings/AtcSettings$Audio$PL2Type;

    return-object v0
.end method
