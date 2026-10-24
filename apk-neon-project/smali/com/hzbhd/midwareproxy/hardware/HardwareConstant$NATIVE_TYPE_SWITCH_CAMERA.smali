.class public final enum Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$NATIVE_TYPE_SWITCH_CAMERA;
.super Ljava/lang/Enum;
.source "HardwareConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/hardware/HardwareConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NATIVE_TYPE_SWITCH_CAMERA"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$NATIVE_TYPE_SWITCH_CAMERA;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$NATIVE_TYPE_SWITCH_CAMERA;

.field public static final enum DEFALUT:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$NATIVE_TYPE_SWITCH_CAMERA;

.field public static final enum RK701FLASH:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$NATIVE_TYPE_SWITCH_CAMERA;

.field public static final enum T8_701:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$NATIVE_TYPE_SWITCH_CAMERA;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 72
    new-instance v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$NATIVE_TYPE_SWITCH_CAMERA;

    const-string v1, "DEFALUT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$NATIVE_TYPE_SWITCH_CAMERA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$NATIVE_TYPE_SWITCH_CAMERA;->DEFALUT:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$NATIVE_TYPE_SWITCH_CAMERA;

    .line 73
    new-instance v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$NATIVE_TYPE_SWITCH_CAMERA;

    const-string v1, "RK701FLASH"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$NATIVE_TYPE_SWITCH_CAMERA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$NATIVE_TYPE_SWITCH_CAMERA;->RK701FLASH:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$NATIVE_TYPE_SWITCH_CAMERA;

    .line 74
    new-instance v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$NATIVE_TYPE_SWITCH_CAMERA;

    const-string v1, "T8_701"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$NATIVE_TYPE_SWITCH_CAMERA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$NATIVE_TYPE_SWITCH_CAMERA;->T8_701:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$NATIVE_TYPE_SWITCH_CAMERA;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$NATIVE_TYPE_SWITCH_CAMERA;

    .line 71
    sget-object v5, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$NATIVE_TYPE_SWITCH_CAMERA;->DEFALUT:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$NATIVE_TYPE_SWITCH_CAMERA;

    aput-object v5, v1, v2

    sget-object v2, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$NATIVE_TYPE_SWITCH_CAMERA;->RK701FLASH:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$NATIVE_TYPE_SWITCH_CAMERA;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$NATIVE_TYPE_SWITCH_CAMERA;->$VALUES:[Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$NATIVE_TYPE_SWITCH_CAMERA;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$NATIVE_TYPE_SWITCH_CAMERA;
    .locals 1

    .line 71
    const-class v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$NATIVE_TYPE_SWITCH_CAMERA;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$NATIVE_TYPE_SWITCH_CAMERA;

    return-object p0
.end method

.method public static values()[Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$NATIVE_TYPE_SWITCH_CAMERA;
    .locals 1

    .line 71
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$NATIVE_TYPE_SWITCH_CAMERA;->$VALUES:[Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$NATIVE_TYPE_SWITCH_CAMERA;

    invoke-virtual {v0}, [Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$NATIVE_TYPE_SWITCH_CAMERA;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$NATIVE_TYPE_SWITCH_CAMERA;

    return-object v0
.end method
