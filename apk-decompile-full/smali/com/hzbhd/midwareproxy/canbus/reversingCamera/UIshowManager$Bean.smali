.class public final enum Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;
.super Ljava/lang/Enum;
.source "UIshowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Bean"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

.field public static final enum FrontRadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

.field public static final enum RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

.field public static final enum RearRadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

.field public static final enum ShowRadarUI:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

.field public static final enum TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 56
    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    const-string v1, "RearRadarCanbusInfo"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RearRadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    .line 57
    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    const-string v1, "FrontRadarCanbusInfo"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->FrontRadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    .line 58
    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    const-string v1, "RadarCanbusInfo"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    .line 59
    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    const-string v1, "TrackCanbusInfo"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    .line 60
    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    const-string v1, "ShowRadarUI"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->ShowRadarUI:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    .line 55
    sget-object v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RearRadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    aput-object v7, v1, v2

    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->FrontRadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    aput-object v2, v1, v3

    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->RadarCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    aput-object v2, v1, v4

    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->TrackCanbusInfo:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->$VALUES:[Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;
    .locals 1

    .line 55
    const-class v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    return-object p0
.end method

.method public static values()[Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;
    .locals 1

    .line 55
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->$VALUES:[Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    invoke-virtual {v0}, [Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIshowManager$Bean;

    return-object v0
.end method
