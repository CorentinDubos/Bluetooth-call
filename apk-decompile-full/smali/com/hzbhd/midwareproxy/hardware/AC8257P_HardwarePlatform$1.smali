.class synthetic Lcom/hzbhd/midwareproxy/hardware/AC8257P_HardwarePlatform$1;
.super Ljava/lang/Object;
.source "AC8257P_HardwarePlatform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/hardware/AC8257P_HardwarePlatform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$hzbhd$midwareproxy$hardware$HardwareConstant$BOOTLOADER_TYPE:[I

.field static final synthetic $SwitchMap$com$hzbhd$midwareproxy$hardware$HardwareConstant$CAMERA_TYPE:[I

.field static final synthetic $SwitchMap$com$hzbhd$midwareproxy$hardware$HardwareConstant$UARTTYPE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 205
    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$BOOTLOADER_TYPE;->values()[Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$BOOTLOADER_TYPE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/hzbhd/midwareproxy/hardware/AC8257P_HardwarePlatform$1;->$SwitchMap$com$hzbhd$midwareproxy$hardware$HardwareConstant$BOOTLOADER_TYPE:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$BOOTLOADER_TYPE;->BOOTLOADER_SD:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$BOOTLOADER_TYPE;

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$BOOTLOADER_TYPE;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/hzbhd/midwareproxy/hardware/AC8257P_HardwarePlatform$1;->$SwitchMap$com$hzbhd$midwareproxy$hardware$HardwareConstant$BOOTLOADER_TYPE:[I

    sget-object v3, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$BOOTLOADER_TYPE;->BOOTLOADER_HD:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$BOOTLOADER_TYPE;

    invoke-virtual {v3}, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$BOOTLOADER_TYPE;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 96
    :catch_1
    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;->values()[Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/hzbhd/midwareproxy/hardware/AC8257P_HardwarePlatform$1;->$SwitchMap$com$hzbhd$midwareproxy$hardware$HardwareConstant$CAMERA_TYPE:[I

    :try_start_2
    sget-object v3, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;->CAMERA_BACKCAMERA:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;

    invoke-virtual {v3}, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v2, Lcom/hzbhd/midwareproxy/hardware/AC8257P_HardwarePlatform$1;->$SwitchMap$com$hzbhd$midwareproxy$hardware$HardwareConstant$CAMERA_TYPE:[I

    sget-object v3, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;->CAMERA_PRECAMERA:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;

    invoke-virtual {v3}, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v2, 0x3

    :try_start_4
    sget-object v3, Lcom/hzbhd/midwareproxy/hardware/AC8257P_HardwarePlatform$1;->$SwitchMap$com$hzbhd$midwareproxy$hardware$HardwareConstant$CAMERA_TYPE:[I

    sget-object v4, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;->CAMERA_AUXIN:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;

    invoke-virtual {v4}, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v3, 0x4

    :try_start_5
    sget-object v4, Lcom/hzbhd/midwareproxy/hardware/AC8257P_HardwarePlatform$1;->$SwitchMap$com$hzbhd$midwareproxy$hardware$HardwareConstant$CAMERA_TYPE:[I

    sget-object v5, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;->CAMERA_MPEG:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;

    invoke-virtual {v5}, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v4, Lcom/hzbhd/midwareproxy/hardware/AC8257P_HardwarePlatform$1;->$SwitchMap$com$hzbhd$midwareproxy$hardware$HardwareConstant$CAMERA_TYPE:[I

    sget-object v5, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;->CAMERA_ATV:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;

    invoke-virtual {v5}, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;->ordinal()I

    move-result v5

    const/4 v6, 0x5

    aput v6, v4, v5
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v4, Lcom/hzbhd/midwareproxy/hardware/AC8257P_HardwarePlatform$1;->$SwitchMap$com$hzbhd$midwareproxy$hardware$HardwareConstant$CAMERA_TYPE:[I

    sget-object v5, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;->CAMERA_DTV:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;

    invoke-virtual {v5}, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;->ordinal()I

    move-result v5

    const/4 v6, 0x6

    aput v6, v4, v5
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v4, Lcom/hzbhd/midwareproxy/hardware/AC8257P_HardwarePlatform$1;->$SwitchMap$com$hzbhd$midwareproxy$hardware$HardwareConstant$CAMERA_TYPE:[I

    sget-object v5, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;->CAMERA_DVR:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;

    invoke-virtual {v5}, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;->ordinal()I

    move-result v5

    const/4 v6, 0x7

    aput v6, v4, v5
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    .line 76
    :catch_8
    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;->values()[Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/hzbhd/midwareproxy/hardware/AC8257P_HardwarePlatform$1;->$SwitchMap$com$hzbhd$midwareproxy$hardware$HardwareConstant$UARTTYPE:[I

    :try_start_9
    sget-object v5, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;->UART_BT:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;

    invoke-virtual {v5}, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v1, Lcom/hzbhd/midwareproxy/hardware/AC8257P_HardwarePlatform$1;->$SwitchMap$com$hzbhd$midwareproxy$hardware$HardwareConstant$UARTTYPE:[I

    sget-object v4, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;->UART_MCU:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;

    invoke-virtual {v4}, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;->ordinal()I

    move-result v4

    aput v0, v1, v4
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/AC8257P_HardwarePlatform$1;->$SwitchMap$com$hzbhd$midwareproxy$hardware$HardwareConstant$UARTTYPE:[I

    sget-object v1, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;->UART_TPMS:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/AC8257P_HardwarePlatform$1;->$SwitchMap$com$hzbhd$midwareproxy$hardware$HardwareConstant$UARTTYPE:[I

    sget-object v1, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;->UART_MPEG:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    return-void
.end method
