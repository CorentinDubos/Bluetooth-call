.class public final enum Lcom/autochips/settings/AtcSettings$Audio$SRSSwitchType;
.super Ljava/lang/Enum;
.source "AtcSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/settings/AtcSettings$Audio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SRSSwitchType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/autochips/settings/AtcSettings$Audio$SRSSwitchType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/autochips/settings/AtcSettings$Audio$SRSSwitchType;

.field public static final enum AUTO:Lcom/autochips/settings/AtcSettings$Audio$SRSSwitchType;

.field public static final enum OFF:Lcom/autochips/settings/AtcSettings$Audio$SRSSwitchType;

.field public static final enum ON:Lcom/autochips/settings/AtcSettings$Audio$SRSSwitchType;

.field private static sTypes:[Lcom/autochips/settings/AtcSettings$Audio$SRSSwitchType;


# instance fields
.field private final nativeInt:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 403
    new-instance v0, Lcom/autochips/settings/AtcSettings$Audio$SRSSwitchType;

    const-string v1, "OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/autochips/settings/AtcSettings$Audio$SRSSwitchType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/settings/AtcSettings$Audio$SRSSwitchType;->OFF:Lcom/autochips/settings/AtcSettings$Audio$SRSSwitchType;

    .line 405
    new-instance v0, Lcom/autochips/settings/AtcSettings$Audio$SRSSwitchType;

    const-string v1, "ON"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/autochips/settings/AtcSettings$Audio$SRSSwitchType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/settings/AtcSettings$Audio$SRSSwitchType;->ON:Lcom/autochips/settings/AtcSettings$Audio$SRSSwitchType;

    .line 407
    new-instance v0, Lcom/autochips/settings/AtcSettings$Audio$SRSSwitchType;

    const-string v1, "AUTO"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/autochips/settings/AtcSettings$Audio$SRSSwitchType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/settings/AtcSettings$Audio$SRSSwitchType;->AUTO:Lcom/autochips/settings/AtcSettings$Audio$SRSSwitchType;

    const/4 v1, 0x3

    new-array v5, v1, [Lcom/autochips/settings/AtcSettings$Audio$SRSSwitchType;

    .line 401
    sget-object v6, Lcom/autochips/settings/AtcSettings$Audio$SRSSwitchType;->OFF:Lcom/autochips/settings/AtcSettings$Audio$SRSSwitchType;

    aput-object v6, v5, v2

    sget-object v7, Lcom/autochips/settings/AtcSettings$Audio$SRSSwitchType;->ON:Lcom/autochips/settings/AtcSettings$Audio$SRSSwitchType;

    aput-object v7, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/autochips/settings/AtcSettings$Audio$SRSSwitchType;->$VALUES:[Lcom/autochips/settings/AtcSettings$Audio$SRSSwitchType;

    new-array v1, v1, [Lcom/autochips/settings/AtcSettings$Audio$SRSSwitchType;

    aput-object v6, v1, v2

    aput-object v7, v1, v3

    aput-object v0, v1, v4

    .line 412
    sput-object v1, Lcom/autochips/settings/AtcSettings$Audio$SRSSwitchType;->sTypes:[Lcom/autochips/settings/AtcSettings$Audio$SRSSwitchType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 415
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 416
    iput p3, p0, Lcom/autochips/settings/AtcSettings$Audio$SRSSwitchType;->nativeInt:I

    return-void
.end method

.method public static nativeToType(I)Lcom/autochips/settings/AtcSettings$Audio$SRSSwitchType;
    .locals 1

    .line 421
    sget-object v0, Lcom/autochips/settings/AtcSettings$Audio$SRSSwitchType;->sTypes:[Lcom/autochips/settings/AtcSettings$Audio$SRSSwitchType;

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/autochips/settings/AtcSettings$Audio$SRSSwitchType;
    .locals 1

    .line 401
    const-class v0, Lcom/autochips/settings/AtcSettings$Audio$SRSSwitchType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/autochips/settings/AtcSettings$Audio$SRSSwitchType;

    return-object p0
.end method

.method public static values()[Lcom/autochips/settings/AtcSettings$Audio$SRSSwitchType;
    .locals 1

    .line 401
    sget-object v0, Lcom/autochips/settings/AtcSettings$Audio$SRSSwitchType;->$VALUES:[Lcom/autochips/settings/AtcSettings$Audio$SRSSwitchType;

    invoke-virtual {v0}, [Lcom/autochips/settings/AtcSettings$Audio$SRSSwitchType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autochips/settings/AtcSettings$Audio$SRSSwitchType;

    return-object v0
.end method
