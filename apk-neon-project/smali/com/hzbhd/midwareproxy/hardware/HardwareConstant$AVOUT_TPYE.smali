.class public final enum Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$AVOUT_TPYE;
.super Ljava/lang/Enum;
.source "HardwareConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/hardware/HardwareConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AVOUT_TPYE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$AVOUT_TPYE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$AVOUT_TPYE;

.field public static final enum DEFALUT_CVBS:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$AVOUT_TPYE;

.field public static final enum PX6_HDMI:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$AVOUT_TPYE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 78
    new-instance v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$AVOUT_TPYE;

    const-string v1, "DEFALUT_CVBS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$AVOUT_TPYE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$AVOUT_TPYE;->DEFALUT_CVBS:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$AVOUT_TPYE;

    .line 79
    new-instance v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$AVOUT_TPYE;

    const-string v1, "PX6_HDMI"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$AVOUT_TPYE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$AVOUT_TPYE;->PX6_HDMI:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$AVOUT_TPYE;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$AVOUT_TPYE;

    .line 77
    sget-object v4, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$AVOUT_TPYE;->DEFALUT_CVBS:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$AVOUT_TPYE;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$AVOUT_TPYE;->$VALUES:[Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$AVOUT_TPYE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$AVOUT_TPYE;
    .locals 1

    .line 77
    const-class v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$AVOUT_TPYE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$AVOUT_TPYE;

    return-object p0
.end method

.method public static values()[Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$AVOUT_TPYE;
    .locals 1

    .line 77
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$AVOUT_TPYE;->$VALUES:[Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$AVOUT_TPYE;

    invoke-virtual {v0}, [Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$AVOUT_TPYE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$AVOUT_TPYE;

    return-object v0
.end method
