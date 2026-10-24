.class public final enum Lcom/hzbhd/midware/constant/SourceSwitchConstant$CarPlay_navi_state;
.super Ljava/lang/Enum;
.source "SourceSwitchConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midware/constant/SourceSwitchConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CarPlay_navi_state"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hzbhd/midware/constant/SourceSwitchConstant$CarPlay_navi_state;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hzbhd/midware/constant/SourceSwitchConstant$CarPlay_navi_state;

.field public static final enum RUNNING:Lcom/hzbhd/midware/constant/SourceSwitchConstant$CarPlay_navi_state;

.field public static final enum STOP:Lcom/hzbhd/midware/constant/SourceSwitchConstant$CarPlay_navi_state;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 51
    new-instance v0, Lcom/hzbhd/midware/constant/SourceSwitchConstant$CarPlay_navi_state;

    const-string v1, "STOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hzbhd/midware/constant/SourceSwitchConstant$CarPlay_navi_state;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/SourceSwitchConstant$CarPlay_navi_state;->STOP:Lcom/hzbhd/midware/constant/SourceSwitchConstant$CarPlay_navi_state;

    .line 52
    new-instance v0, Lcom/hzbhd/midware/constant/SourceSwitchConstant$CarPlay_navi_state;

    const-string v1, "RUNNING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/hzbhd/midware/constant/SourceSwitchConstant$CarPlay_navi_state;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/SourceSwitchConstant$CarPlay_navi_state;->RUNNING:Lcom/hzbhd/midware/constant/SourceSwitchConstant$CarPlay_navi_state;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/hzbhd/midware/constant/SourceSwitchConstant$CarPlay_navi_state;

    .line 50
    sget-object v4, Lcom/hzbhd/midware/constant/SourceSwitchConstant$CarPlay_navi_state;->STOP:Lcom/hzbhd/midware/constant/SourceSwitchConstant$CarPlay_navi_state;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/hzbhd/midware/constant/SourceSwitchConstant$CarPlay_navi_state;->$VALUES:[Lcom/hzbhd/midware/constant/SourceSwitchConstant$CarPlay_navi_state;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hzbhd/midware/constant/SourceSwitchConstant$CarPlay_navi_state;
    .locals 1

    .line 50
    const-class v0, Lcom/hzbhd/midware/constant/SourceSwitchConstant$CarPlay_navi_state;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hzbhd/midware/constant/SourceSwitchConstant$CarPlay_navi_state;

    return-object p0
.end method

.method public static values()[Lcom/hzbhd/midware/constant/SourceSwitchConstant$CarPlay_navi_state;
    .locals 1

    .line 50
    sget-object v0, Lcom/hzbhd/midware/constant/SourceSwitchConstant$CarPlay_navi_state;->$VALUES:[Lcom/hzbhd/midware/constant/SourceSwitchConstant$CarPlay_navi_state;

    invoke-virtual {v0}, [Lcom/hzbhd/midware/constant/SourceSwitchConstant$CarPlay_navi_state;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hzbhd/midware/constant/SourceSwitchConstant$CarPlay_navi_state;

    return-object v0
.end method
