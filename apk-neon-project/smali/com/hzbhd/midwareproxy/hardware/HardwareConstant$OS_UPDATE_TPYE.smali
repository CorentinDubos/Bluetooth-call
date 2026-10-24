.class public final enum Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$OS_UPDATE_TPYE;
.super Ljava/lang/Enum;
.source "HardwareConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/hardware/HardwareConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OS_UPDATE_TPYE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$OS_UPDATE_TPYE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$OS_UPDATE_TPYE;

.field public static final enum AC8257:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$OS_UPDATE_TPYE;

.field public static final enum DEFALUT_ALLWINNER:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$OS_UPDATE_TPYE;

.field public static final enum ROCK_CHIP:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$OS_UPDATE_TPYE;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 82
    new-instance v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$OS_UPDATE_TPYE;

    const-string v1, "DEFALUT_ALLWINNER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$OS_UPDATE_TPYE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$OS_UPDATE_TPYE;->DEFALUT_ALLWINNER:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$OS_UPDATE_TPYE;

    .line 83
    new-instance v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$OS_UPDATE_TPYE;

    const-string v1, "ROCK_CHIP"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$OS_UPDATE_TPYE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$OS_UPDATE_TPYE;->ROCK_CHIP:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$OS_UPDATE_TPYE;

    .line 84
    new-instance v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$OS_UPDATE_TPYE;

    const-string v1, "AC8257"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$OS_UPDATE_TPYE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$OS_UPDATE_TPYE;->AC8257:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$OS_UPDATE_TPYE;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$OS_UPDATE_TPYE;

    .line 81
    sget-object v5, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$OS_UPDATE_TPYE;->DEFALUT_ALLWINNER:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$OS_UPDATE_TPYE;

    aput-object v5, v1, v2

    sget-object v2, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$OS_UPDATE_TPYE;->ROCK_CHIP:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$OS_UPDATE_TPYE;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$OS_UPDATE_TPYE;->$VALUES:[Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$OS_UPDATE_TPYE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$OS_UPDATE_TPYE;
    .locals 1

    .line 81
    const-class v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$OS_UPDATE_TPYE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$OS_UPDATE_TPYE;

    return-object p0
.end method

.method public static values()[Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$OS_UPDATE_TPYE;
    .locals 1

    .line 81
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$OS_UPDATE_TPYE;->$VALUES:[Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$OS_UPDATE_TPYE;

    invoke-virtual {v0}, [Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$OS_UPDATE_TPYE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$OS_UPDATE_TPYE;

    return-object v0
.end method
