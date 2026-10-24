.class public Lcom/hzbhd/midware/jni/JniBoda/JniBodaUtil;
.super Ljava/lang/Object;
.source "JniBodaUtil.java"


# static fields
.field public static final GPIO_INDEX_GPIO_O_AMP_CTL:I = 0x9

.field public static final GPIO_INDEX_GPIO_O_BT_RESET1:I = 0x5

.field public static final GPIO_INDEX_GPIO_O_CP_RESET:I = 0x1

.field public static final GPIO_INDEX_GPIO_O_DSP_RESET:I = 0x4

.field public static final GPIO_INDEX_GPIO_O_GPS_RESET:I = 0x2

.field public static final GPIO_INDEX_GPIO_O_MUTE:I = 0x0

.field public static final GPIO_INDEX_GPIO_O_PI02_CTL:I = 0x6

.field public static final GPIO_INDEX_GPIO_O_TUNER_RESET1:I = 0x3

.field static TAG:Ljava/lang/String; = null

.field public static final TVOUT_OFF:I = 0x1

.field public static final TVOUT_ON:I = 0x2

.field public static final UART_MCU:I

.field public static final UART_MPEG:I

.field public static final UART_TPMS:I

.field public static final USBSER_TPMS:I = 0xa


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    const-class v0, Lcom/hzbhd/midware/jni/JniBoda/JniBodaUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/midware/jni/JniBoda/JniBodaUtil;->TAG:Ljava/lang/String;

    .line 19
    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;->UART_MPEG:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->getUartPort(Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;)I

    move-result v0

    sput v0, Lcom/hzbhd/midware/jni/JniBoda/JniBodaUtil;->UART_MPEG:I

    .line 20
    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;->UART_MCU:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->getUartPort(Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;)I

    move-result v0

    sput v0, Lcom/hzbhd/midware/jni/JniBoda/JniBodaUtil;->UART_MCU:I

    .line 21
    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;->UART_TPMS:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->getUartPort(Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;)I

    move-result v0

    sput v0, Lcom/hzbhd/midware/jni/JniBoda/JniBodaUtil;->UART_TPMS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAHDchannelSignal(I)I
    .locals 0

    .line 296
    :try_start_0
    invoke-static {p0}, Lcom/hzbhd/midware/jni/JniBoda/JniBoda;->getAHDchannelSignal(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 298
    invoke-virtual {p0}, Ljava/lang/Error;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method public static getUbootVersion()I
    .locals 4

    .line 344
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midware/jni/JniBoda/JniBoda;->getUbootVersion()I

    move-result v0

    const-string/jumbo v1, "ubootVersion"

    .line 345
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ubootVersion:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 348
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public static gpioGetReverse()I
    .locals 1

    .line 97
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midware/jni/JniBoda/JniBoda;->gpioGetReverse()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 99
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public static gpioOutputSet(II)I
    .locals 0

    .line 283
    :try_start_0
    invoke-static {p0, p1}, Lcom/hzbhd/midware/jni/JniBoda/JniBoda;->gpioOutputSet(II)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 285
    invoke-virtual {p0}, Ljava/lang/Error;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method public static gpioSetBootCompleted(I)I
    .locals 3

    .line 106
    :try_start_0
    sget-object v0, Lcom/hzbhd/midware/jni/JniBoda/JniBodaUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAHDchanneltype gpioSetBootCompleted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-static {p0}, Lcom/hzbhd/midware/jni/JniBoda/JniBoda;->gpioSetBootCompleted(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 109
    invoke-virtual {p0}, Ljava/lang/Error;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method public static gpioSetMute(I)I
    .locals 0

    .line 115
    :try_start_0
    invoke-static {p0}, Lcom/hzbhd/midware/jni/JniBoda/JniBoda;->gpioSetMute(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 117
    invoke-virtual {p0}, Ljava/lang/Error;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method public static jni_back_car_mirror(I)V
    .locals 0

    .line 201
    :try_start_0
    invoke-static {p0}, Lcom/hzbhd/midware/jni/JniBoda/JniBoda;->jni_back_car_mirror(I)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 203
    invoke-virtual {p0}, Ljava/lang/Error;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static jni_get_gpio_level(II)I
    .locals 0

    .line 273
    :try_start_0
    invoke-static {p0, p1}, Lcom/hzbhd/midware/jni/JniBoda/JniBoda;->jni_get_gpio_level(II)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 275
    invoke-virtual {p0}, Ljava/lang/Error;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method public static jni_gpio_dev_close(I)V
    .locals 0

    .line 250
    :try_start_0
    invoke-static {p0}, Lcom/hzbhd/midware/jni/JniBoda/JniBoda;->jni_gpio_dev_close(I)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 252
    invoke-virtual {p0}, Ljava/lang/Error;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static jni_gpio_dev_open()I
    .locals 1

    .line 242
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midware/jni/JniBoda/JniBoda;->jni_gpio_dev_open()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 244
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public static jni_serial_close(I)V
    .locals 0

    .line 193
    :try_start_0
    invoke-static {p0}, Lcom/hzbhd/midware/jni/JniBoda/JniBoda;->jni_serial_close(I)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 195
    invoke-virtual {p0}, Ljava/lang/Error;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static jni_serial_open(I)I
    .locals 0

    .line 161
    :try_start_0
    invoke-static {p0}, Lcom/hzbhd/midware/jni/JniBoda/JniBoda;->jni_serial_open(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 163
    invoke-virtual {p0}, Ljava/lang/Error;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method public static jni_serial_read_data(I[BII)I
    .locals 0

    .line 185
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/hzbhd/midware/jni/JniBoda/JniBoda;->jni_serial_read_data(I[BII)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 187
    invoke-virtual {p0}, Ljava/lang/Error;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method public static jni_serial_setup(IIICI)I
    .locals 0

    .line 169
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/hzbhd/midware/jni/JniBoda/JniBoda;->jni_serial_setup(IIICI)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 171
    invoke-virtual {p0}, Ljava/lang/Error;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method public static jni_serial_write_data(I[BI)I
    .locals 0

    .line 177
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/hzbhd/midware/jni/JniBoda/JniBoda;->jni_serial_write_data(I[BI)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 179
    invoke-virtual {p0}, Ljava/lang/Error;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method public static jni_set_gpio_high(II)Z
    .locals 0

    .line 257
    :try_start_0
    invoke-static {p0, p1}, Lcom/hzbhd/midware/jni/JniBoda/JniBoda;->jni_set_gpio_high(II)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 259
    invoke-virtual {p0}, Ljava/lang/Error;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public static jni_set_gpio_low(II)Z
    .locals 0

    .line 265
    :try_start_0
    invoke-static {p0, p1}, Lcom/hzbhd/midware/jni/JniBoda/JniBoda;->jni_set_gpio_low(II)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 267
    invoke-virtual {p0}, Ljava/lang/Error;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public static jni_spidev_close(I)V
    .locals 0

    .line 152
    :try_start_0
    invoke-static {p0}, Lcom/hzbhd/midware/jni/JniBoda/JniBoda;->jni_spidev_close(I)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 154
    invoke-virtual {p0}, Ljava/lang/Error;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static jni_spidev_read_data(I[BI)I
    .locals 0

    .line 136
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/hzbhd/midware/jni/JniBoda/JniBoda;->jni_spidev_read_data(I[BI)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 138
    invoke-virtual {p0}, Ljava/lang/Error;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method public static jni_spidev_write_data(I[BI)I
    .locals 0

    .line 144
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/hzbhd/midware/jni/JniBoda/JniBoda;->jni_spidev_write_data(I[BI)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 146
    invoke-virtual {p0}, Ljava/lang/Error;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method public static jni_video_out_ntsc_pal(I)V
    .locals 0

    .line 208
    :try_start_0
    invoke-static {p0}, Lcom/hzbhd/midware/jni/JniBoda/JniBoda;->jni_video_out_ntsc_pal(I)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 210
    invoke-virtual {p0}, Ljava/lang/Error;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static nvp6158cChannelSignal(I)I
    .locals 3

    .line 318
    :try_start_0
    sget-object v0, Lcom/hzbhd/midware/jni/JniBoda/JniBodaUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " nvp6158cChannelSignal "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-static {p0}, Lcom/hzbhd/midware/jni/JniBoda/JniBoda;->nvp6158cChannelSignal(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 321
    invoke-virtual {p0}, Ljava/lang/Error;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method public static nvp6158cEnableChanel(I)I
    .locals 0

    .line 335
    :try_start_0
    invoke-static {p0}, Lcom/hzbhd/midware/jni/JniBoda/JniBoda;->nvp6158cEnableChanel(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 337
    invoke-virtual {p0}, Ljava/lang/Error;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method public static nvp6158cSetChanneltype(II)I
    .locals 0

    .line 327
    :try_start_0
    invoke-static {p0, p1}, Lcom/hzbhd/midware/jni/JniBoda/JniBoda;->nvp6158cSetChanneltype(II)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 329
    invoke-virtual {p0}, Ljava/lang/Error;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method public static setAHDchanneltype(II)I
    .locals 0

    .line 308
    :try_start_0
    invoke-static {p0, p1}, Lcom/hzbhd/midware/jni/JniBoda/JniBoda;->setAHDchanneltype(II)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 310
    invoke-virtual {p0}, Ljava/lang/Error;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method public static setSleepStatus(I)I
    .locals 0

    .line 123
    :try_start_0
    invoke-static {p0}, Lcom/hzbhd/midware/jni/JniBoda/JniBoda;->setSleepStatus(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 125
    invoke-virtual {p0}, Ljava/lang/Error;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method public static uartClose(I)V
    .locals 0

    .line 75
    :try_start_0
    invoke-static {p0}, Lcom/hzbhd/midware/jni/JniBoda/JniBoda;->uartClose(I)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 77
    invoke-virtual {p0}, Ljava/lang/Error;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static uartOpen(I)I
    .locals 0

    .line 43
    :try_start_0
    invoke-static {p0}, Lcom/hzbhd/midware/jni/JniBoda/JniBoda;->uartOpen(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 45
    invoke-virtual {p0}, Ljava/lang/Error;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method public static uartRead(I[BI)I
    .locals 0

    .line 67
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/hzbhd/midware/jni/JniBoda/JniBoda;->uartRead(I[BI)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 69
    invoke-virtual {p0}, Ljava/lang/Error;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method public static uartSetup(IICII)I
    .locals 0

    .line 51
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/hzbhd/midware/jni/JniBoda/JniBoda;->uartSetup(IICII)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 53
    invoke-virtual {p0}, Ljava/lang/Error;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method public static uartWrite(I[BI)I
    .locals 0

    .line 59
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/hzbhd/midware/jni/JniBoda/JniBoda;->uartWrite(I[BI)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 61
    invoke-virtual {p0}, Ljava/lang/Error;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method
