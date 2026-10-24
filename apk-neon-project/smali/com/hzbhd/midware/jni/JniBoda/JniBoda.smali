.class public Lcom/hzbhd/midware/jni/JniBoda/JniBoda;
.super Ljava/lang/Object;
.source "JniBoda.java"


# static fields
.field public static final GPIO_INDEX_GPIO_O_BT_RESET1:I = 0x5

.field public static final GPIO_INDEX_GPIO_O_CP_RESET:I = 0x1

.field public static final GPIO_INDEX_GPIO_O_DSP_RESET:I = 0x4

.field public static final GPIO_INDEX_GPIO_O_GPS_RESET:I = 0x2

.field public static final GPIO_INDEX_GPIO_O_MUTE:I = 0x0

.field public static final GPIO_INDEX_GPIO_O_PI02_CTL:I = 0x6

.field public static final GPIO_INDEX_GPIO_O_TUNER_RESET1:I = 0x3

.field public static final TVOUT_OFF:I = 0x1

.field public static final TVOUT_ON:I = 0x2

.field public static final UART_MCU:I

.field public static final UART_MPEG:I

.field public static final UART_TPMS:I

.field public static final USBSER_TPMS:I = 0xa


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "JniBoda"

    .line 13
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 21
    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;->UART_MPEG:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->getUartPort(Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;)I

    move-result v0

    sput v0, Lcom/hzbhd/midware/jni/JniBoda/JniBoda;->UART_MPEG:I

    .line 22
    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;->UART_MCU:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->getUartPort(Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;)I

    move-result v0

    sput v0, Lcom/hzbhd/midware/jni/JniBoda/JniBoda;->UART_MCU:I

    .line 23
    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;->UART_TPMS:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->getUartPort(Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;)I

    move-result v0

    sput v0, Lcom/hzbhd/midware/jni/JniBoda/JniBoda;->UART_TPMS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native getAHDchannelSignal(I)I
.end method

.method public static native getUbootVersion()I
.end method

.method public static native gpioGetReverse()I
.end method

.method public static native gpioOutputSet(II)I
.end method

.method public static native gpioSetBootCompleted(I)I
.end method

.method public static native gpioSetMute(I)I
.end method

.method public static native jni_back_car_mirror(I)V
.end method

.method public static native jni_get_gpio_level(II)I
.end method

.method public static native jni_gpio_dev_close(I)V
.end method

.method public static native jni_gpio_dev_open()I
.end method

.method public static native jni_serial_close(I)V
.end method

.method public static native jni_serial_open(I)I
.end method

.method public static native jni_serial_read_data(I[BII)I
.end method

.method public static native jni_serial_setup(IIICI)I
.end method

.method public static native jni_serial_write_data(I[BI)I
.end method

.method public static native jni_set_gpio_high(II)Z
.end method

.method public static native jni_set_gpio_low(II)Z
.end method

.method public static native jni_spidev_close(I)V
.end method

.method public static native jni_spidev_read_data(I[BI)I
.end method

.method public static native jni_spidev_write_data(I[BI)I
.end method

.method public static native jni_video_out_ntsc_pal(I)V
.end method

.method public static native nvp6158cChannelSignal(I)I
.end method

.method public static native nvp6158cEnableChanel(I)I
.end method

.method public static native nvp6158cReSet()V
.end method

.method public static native nvp6158cSetChanneltype(II)I
.end method

.method public static native setAHDchanneltype(II)I
.end method

.method public static native setSleepStatus(I)I
.end method

.method public static native uartClose(I)V
.end method

.method public static native uartOpen(I)I
.end method

.method public static native uartRead(I[BI)I
.end method

.method public static native uartSetup(IICII)I
.end method

.method public static native uartWrite(I[BI)I
.end method
