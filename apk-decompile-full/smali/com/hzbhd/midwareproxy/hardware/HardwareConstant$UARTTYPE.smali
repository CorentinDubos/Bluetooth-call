.class public final enum Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;
.super Ljava/lang/Enum;
.source "HardwareConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/hardware/HardwareConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UARTTYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;

.field public static final enum UART_BT:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;

.field public static final enum UART_MCU:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;

.field public static final enum UART_MPEG:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;

.field public static final enum UART_TPMS:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 32
    new-instance v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;

    const-string v1, "UART_MCU"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;->UART_MCU:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;

    .line 33
    new-instance v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;

    const-string v1, "UART_TPMS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;->UART_TPMS:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;

    .line 34
    new-instance v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;

    const-string v1, "UART_MPEG"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;->UART_MPEG:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;

    .line 35
    new-instance v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;

    const-string v1, "UART_BT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;->UART_BT:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;

    .line 31
    sget-object v6, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;->UART_MCU:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;

    aput-object v6, v1, v2

    sget-object v2, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;->UART_TPMS:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;

    aput-object v2, v1, v3

    sget-object v2, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;->UART_MPEG:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;->$VALUES:[Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;
    .locals 1

    .line 31
    const-class v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;

    return-object p0
.end method

.method public static values()[Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;
    .locals 1

    .line 31
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;->$VALUES:[Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;

    invoke-virtual {v0}, [Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;

    return-object v0
.end method
