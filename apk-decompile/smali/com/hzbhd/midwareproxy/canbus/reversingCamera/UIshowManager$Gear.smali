.class public final enum Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Gear;
.super Ljava/lang/Enum;
.source "UIshowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Gear"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Gear;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Gear;

.field public static final enum D:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Gear;

.field public static final enum N:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Gear;

.field public static final enum P:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Gear;

.field public static final enum R:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Gear;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 49
    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Gear;

    const-string v1, "P"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Gear;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Gear;->P:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Gear;

    .line 50
    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Gear;

    const-string v1, "R"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Gear;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Gear;->R:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Gear;

    .line 51
    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Gear;

    const-string v1, "N"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Gear;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Gear;->N:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Gear;

    .line 52
    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Gear;

    const-string v1, "D"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Gear;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Gear;->D:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Gear;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Gear;

    .line 48
    sget-object v6, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Gear;->P:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Gear;

    aput-object v6, v1, v2

    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Gear;->R:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Gear;

    aput-object v2, v1, v3

    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Gear;->N:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Gear;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Gear;->$VALUES:[Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Gear;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Gear;
    .locals 1

    .line 48
    const-class v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Gear;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Gear;

    return-object p0
.end method

.method public static values()[Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Gear;
    .locals 1

    .line 48
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Gear;->$VALUES:[Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Gear;

    invoke-virtual {v0}, [Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Gear;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Gear;

    return-object v0
.end method
