.class public Lcom/hzbhd/midwareproxy/hardware/AC8257P_HardwarePlatform;
.super Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;
.source "AC8257P_HardwarePlatform.java"


# static fields
.field public static final AC82547_CAMERAID_CHANNEL0:I = 0x0

.field public static final AC82547_CAMERAID_CHANNEL1:I = 0x1

.field public static final AC82547_CAMERAID_CHANNEL10:I = 0xa

.field public static final AC82547_CAMERAID_CHANNEL11:I = 0xb

.field public static final AC82547_CAMERAID_CHANNEL2:I = 0x2

.field public static final AC82547_CAMERAID_CHANNEL3:I = 0x3

.field public static final AC82547_CAMERAID_CHANNEL8:I = 0x8

.field public static final AC82547_CAMERAID_CHANNEL9:I = 0x9

.field public static final BOOTLOADER_HD_PATH:Ljava/lang/String; = "/bhd/logo_hd.bmp"

.field public static final BOOTLOADER_SD_PATH:Ljava/lang/String; = "/bhd/logo_sd.bmp"

.field public static final ISNEEDMCUAVOUTDISPLAYSETTINGS:Z = false

.field public static final ISNEEDSYNCCAMERAPAUSERESUMEHANDER:Z = false

.field public static final ISNOSIGNALFORBITCAMERAPREVIEW:Z = false

.field public static final ISNeedOpenCamera_TWICE:Z = true

.field public static final PX6O_MR1_UART_PORT_BT:I = 0x4

.field public static final PX6O_MR1_UART_PORT_MCU:I = 0x1

.field public static final PX6O_MR1_UART_PORT_MPEG:I = 0x3

.field public static final PX6O_MR1_UART_PORT_NULL:I = -0x1

.field public static final PX6O_MR1_UART_PORT_TPMS:I = 0x6

.field public static final PX6_CAMERAID_DEFAULT:I = 0x7

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Lcom/hzbhd/midwareproxy/hardware/AC8257P_HardwarePlatform;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/midwareproxy/hardware/AC8257P_HardwarePlatform;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;-><init>()V

    return-void
.end method

.method public static WriteVehicleDev(Ljava/lang/String;)V
    .locals 3

    .line 263
    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    new-instance v1, Ljava/io/File;

    const-string v2, "/dev/vehicle"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 264
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 265
    invoke-virtual {v1, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 268
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 270
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WriteVehicleDev: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DeviceDifferen"

    invoke-static {v0, p0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static readFileStr(Ljava/io/File;)Ljava/lang/String;
    .locals 1

    .line 233
    :try_start_0
    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 234
    new-instance p0, Ljava/io/BufferedReader;

    invoke-direct {p0, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 235
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 239
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public SwitchToDebug()V
    .locals 1

    const/4 v0, 0x2

    .line 347
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/hardware/AC8257P_HardwarePlatform;->SwitchToDebugDialogRk3399(I)V

    return-void
.end method

.method public SwitchToDebugDialogRk3399(I)V
    .locals 3

    const-string v0, "ctl.start"

    const-string v1, "persist.service.hzbhd.usb0"

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    const-string p1, "device"

    .line 358
    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "bhd_usb0_device"

    .line 359
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "host"

    .line 362
    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "bhd_usb0_host"

    .line 363
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public SwitchToUser()V
    .locals 1

    const/4 v0, 0x1

    .line 354
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/hardware/AC8257P_HardwarePlatform;->SwitchToDebugDialogRk3399(I)V

    return-void
.end method

.method public getAsp7719AudioChannelPort()[Lcom/hzbhd/midware/constant/AudioAsp7719Constant$AudSrcChannel;
    .locals 1

    .line 251
    sget-object v0, Lcom/hzbhd/midware/constant/AudioAsp7719Constant;->AudSrcChanTbl_RK3399:[Lcom/hzbhd/midware/constant/AudioAsp7719Constant$AudSrcChannel;

    return-object v0
.end method

.method public getBootLogoPath(Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$BOOTLOADER_TYPE;)Ljava/lang/String;
    .locals 1

    .line 205
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/AC8257P_HardwarePlatform$1;->$SwitchMap$com$hzbhd$midwareproxy$hardware$HardwareConstant$BOOTLOADER_TYPE:[I

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$BOOTLOADER_TYPE;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    const-string p1, "/bhd/logo_hd.bmp"

    goto :goto_0

    :cond_1
    const-string p1, "/bhd/logo_sd.bmp"

    :goto_0
    return-object p1
.end method

.method public getCameraID(Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;)I
    .locals 2

    .line 96
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/AC8257P_HardwarePlatform$1;->$SwitchMap$com$hzbhd$midwareproxy$hardware$HardwareConstant$CAMERA_TYPE:[I

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    const/4 v1, 0x3

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 108
    :pswitch_0
    invoke-static {}, Lcom/hzbhd/config/base/ConfigUtil;->getJarConfig()Lcom/hzbhd/config/base/Config;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/config/base/Config;->getSettings()Lcom/hzbhd/config/base/Config$Settings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/config/base/Config$Settings;->getCamera()Lcom/hzbhd/config/base/Config$Settings$Camera;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/config/base/Config$Settings$Camera;->getCameraHardwareChannel()I

    move-result p1

    if-ne p1, v0, :cond_1

    const/4 v1, -0x1

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x8

    goto :goto_0

    .line 98
    :pswitch_2
    invoke-static {}, Lcom/hzbhd/config/base/ConfigUtil;->getJarConfig()Lcom/hzbhd/config/base/Config;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/config/base/Config;->getSettings()Lcom/hzbhd/config/base/Config$Settings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/config/base/Config$Settings;->getCamera()Lcom/hzbhd/config/base/Config$Settings$Camera;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/config/base/Config$Settings$Camera;->getCameraHardwareChannel()I

    move-result p1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x9

    :cond_1
    :goto_0
    :pswitch_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public getCameraID(Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$MCUSOFTVERSION;Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;)I
    .locals 1

    .line 133
    sget-object p1, Lcom/hzbhd/midwareproxy/hardware/AC8257P_HardwarePlatform$1;->$SwitchMap$com$hzbhd$midwareproxy$hardware$HardwareConstant$CAMERA_TYPE:[I

    invoke-virtual {p2}, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x2

    const/4 v0, 0x3

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 145
    :pswitch_0
    invoke-static {}, Lcom/hzbhd/config/base/ConfigUtil;->getJarConfig()Lcom/hzbhd/config/base/Config;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/config/base/Config;->getSettings()Lcom/hzbhd/config/base/Config$Settings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/config/base/Config$Settings;->getCamera()Lcom/hzbhd/config/base/Config$Settings$Camera;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/config/base/Config$Settings$Camera;->getCameraHardwareChannel()I

    move-result p1

    if-ne p1, p2, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x8

    goto :goto_0

    .line 135
    :pswitch_2
    invoke-static {}, Lcom/hzbhd/config/base/ConfigUtil;->getJarConfig()Lcom/hzbhd/config/base/Config;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/config/base/Config;->getSettings()Lcom/hzbhd/config/base/Config$Settings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/config/base/Config$Settings;->getCamera()Lcom/hzbhd/config/base/Config$Settings$Camera;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/config/base/Config$Settings$Camera;->getCameraHardwareChannel()I

    move-result p1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    :cond_1
    :goto_0
    :pswitch_3
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public getCpuTemperature()I
    .locals 2

    .line 331
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/thermal/thermal_zone0/temp"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 332
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 333
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/hardware/AC8257P_HardwarePlatform;->readFileStr(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 334
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 335
    div-int/lit16 v0, v0, 0x3e8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 338
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCvbsStatus(ZII)I
    .locals 2

    .line 166
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/video/VideoParkingManager;->getVideoParkingManager()Lcom/hzbhd/midwareproxy/video/VideoParkingManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/hzbhd/midwareproxy/video/VideoParkingManager;->getVideoState(I)I

    move-result p1

    const-string p2, "DeviceDifferen"

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<getCvbsStatus>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 170
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return p3
.end method

.method public getDDRTypeInfoShow()Ljava/lang/String;
    .locals 1

    const-string v0, "LPDDR4"

    return-object v0
.end method

.method public getDSPBoardType()Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_DSP_BOARD;
    .locals 1

    .line 321
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_DSP_BOARD;->PX6P:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_DSP_BOARD;

    return-object v0
.end method

.method public getMinBootTimeMidServices()I
    .locals 1

    const/16 v0, 0x2710

    return v0
.end method

.method public getOSUpgradeType()Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$OS_UPDATE_TPYE;
    .locals 1

    .line 310
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$OS_UPDATE_TPYE;->AC8257:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$OS_UPDATE_TPYE;

    return-object v0
.end method

.method public getOsVersionBuildDisplay()Ljava/lang/String;
    .locals 5

    .line 189
    sget-wide v0, Landroid/os/Build;->TIME:J

    .line 190
    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    const-string/jumbo v4, "yyyyMMdd"

    invoke-direct {v2, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v3, "GMT+8:00"

    .line 191
    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 192
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSocChipInfoShow()Ljava/lang/String;
    .locals 2

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AC8257 - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/utils/SystemUtils;->getCPUCoreNumber(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Core - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUartPort(Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;)I
    .locals 4

    .line 76
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/AC8257P_HardwarePlatform$1;->$SwitchMap$com$hzbhd$midwareproxy$hardware$HardwareConstant$UARTTYPE:[I

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    goto :goto_0

    :cond_2
    move v0, v2

    :cond_3
    :goto_0
    return v0
.end method

.method public getUsbMode()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform$USB_MODE;
    .locals 3

    .line 413
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/AC8257P_HardwarePlatform;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform$USB_MODE;->HOST:Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform$USB_MODE;

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform$USB_MODE;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "getUsbToDeviceMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform$USB_MODE;->DEVIE:Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform$USB_MODE;

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform$USB_MODE;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    const-string v1, "force_usb_mode"

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getSharedInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 416
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform$USB_MODE;->DEVIE:Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform$USB_MODE;

    return-object v0

    .line 418
    :cond_0
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform$USB_MODE;->HOST:Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform$USB_MODE;

    return-object v0
.end method

.method public getUsbToDeviceMode()Z
    .locals 2

    .line 391
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/AC8257P_HardwarePlatform;->TAG:Ljava/lang/String;

    const-string v1, "getUsbToDeviceMode"

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    invoke-static {}, Lcom/hzbhd/config/base/ConfigUtil;->getJarConfig()Lcom/hzbhd/config/base/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/config/base/Config;->getSettings()Lcom/hzbhd/config/base/Config$Settings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/config/base/Config$Settings;->getUsbMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getUsbToHostMode()Z
    .locals 2

    .line 397
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/AC8257P_HardwarePlatform;->TAG:Ljava/lang/String;

    const-string v1, "getUsbToHostMode"

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    invoke-static {}, Lcom/hzbhd/config/base/ConfigUtil;->getJarConfig()Lcom/hzbhd/config/base/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/config/base/Config;->getSettings()Lcom/hzbhd/config/base/Config$Settings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/config/base/Config$Settings;->getUsbMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getfactory_hardware_info_path()Ljava/lang/String;
    .locals 1

    const-string v0, "/system/etc/factory_hardware_info"

    return-object v0
.end method

.method public has701Flash()Z
    .locals 1

    .line 300
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/hardware/AC8257P_HardwarePlatform;->ishasMpuControlChipAHD_N3_or_Nvp6158c()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isChangeableOverlay_Settings(Landroid/content/pm/PackageInfo;)Z
    .locals 3

    .line 256
    const-class v0, Landroid/content/pm/PackageInfo;

    const-string v1, "overlayFlags"

    invoke-static {p1, v0, v1}, Lcom/hzbhd/midwareproxy/utils/ReflectionTools;->getFieldInteger(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 257
    const-class v1, Landroid/content/pm/PackageInfo;

    const-string v2, "FLAG_OVERLAY_STATIC"

    invoke-static {p1, v1, v2}, Lcom/hzbhd/midwareproxy/utils/ReflectionTools;->getFieldInteger(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz p1, :cond_0

    and-int p1, v0, v1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isNeedMCUAvOutDisplaySettings()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isNeedSyncCameraPauseResumeHandler()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isNoSignalForbidCameraPreview()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isOpenCamera_twice()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public ishasChip701()Z
    .locals 1

    .line 290
    sget-boolean v0, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->haschipn3:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public ishasMpuControlChip6502()Z
    .locals 1

    .line 325
    sget-boolean v0, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->hasMpuControlChip6502:Z

    return v0
.end method

.method public ishasMpuControlChipAHD_N3_or_Nvp6158c()Z
    .locals 5

    .line 315
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/AC8257P_HardwarePlatform;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ishasMpuControlChipAHD_N3_or_Nvp6158c  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->haschipn3:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->haschipnvp6158c:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v4

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    sget-boolean v0, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->haschipn3:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->haschipnvp6158c:Z

    if-eqz v0, :cond_3

    :cond_2
    move v3, v4

    :cond_3
    return v3
.end method

.method public msg_clear_cover_view_time()J
    .locals 2

    const-wide/16 v0, 0x1f4

    return-wide v0
.end method

.method public setAnalogInputColor(Landroid/hardware/Camera;III)V
    .locals 8

    .line 178
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "setAnalogInputColor"

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 179
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v6

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v7

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 181
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setUsbMode(I)Z
    .locals 3

    .line 404
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/AC8257P_HardwarePlatform;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUsbMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 406
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/hardware/AC8257P_HardwarePlatform;->setUsbToDeviceMode()Z

    move-result p1

    return p1

    .line 408
    :cond_0
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/hardware/AC8257P_HardwarePlatform;->setUsbToHostMode()Z

    move-result p1

    return p1
.end method

.method public setUsbToDeviceMode()Z
    .locals 3

    .line 371
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/AC8257P_HardwarePlatform;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setUsbToDeviceMode"

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "persist.service.hzbhd.usb0"

    const-string v1, "device"

    .line 372
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ctl.start"

    const-string v1, "bhd_usb0_device"

    .line 373
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    const-string v1, "force_usb_mode"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->setSharedInt(Ljava/lang/String;I)V

    .line 375
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/AC8257P_HardwarePlatform;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUsbToDeviceMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/hzbhd/config/base/ConfigUtil;->getJarConfig()Lcom/hzbhd/config/base/Config;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hzbhd/config/base/Config;->getSettings()Lcom/hzbhd/config/base/Config$Settings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hzbhd/config/base/Config$Settings;->getUsbMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    invoke-static {}, Lcom/hzbhd/config/base/ConfigUtil;->getJarConfig()Lcom/hzbhd/config/base/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/config/base/Config;->getSettings()Lcom/hzbhd/config/base/Config$Settings;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/hardware/AC8257P_HardwarePlatform;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/hzbhd/config/base/Config$Settings;->chooseUsbMode(Landroid/content/Context;I)V

    return v2
.end method

.method public setUsbToHostMode()Z
    .locals 4

    .line 381
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/AC8257P_HardwarePlatform;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setUsbToHostMode"

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "persist.service.hzbhd.usb0"

    const-string v1, "host"

    .line 382
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ctl.start"

    const-string v1, "bhd_usb0_host"

    .line 383
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    const-string v1, "force_usb_mode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->setSharedInt(Ljava/lang/String;I)V

    .line 385
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/AC8257P_HardwarePlatform;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setUsbToHostMode "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/hzbhd/config/base/ConfigUtil;->getJarConfig()Lcom/hzbhd/config/base/Config;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hzbhd/config/base/Config;->getSettings()Lcom/hzbhd/config/base/Config$Settings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hzbhd/config/base/Config$Settings;->getUsbMode()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    invoke-static {}, Lcom/hzbhd/config/base/ConfigUtil;->getJarConfig()Lcom/hzbhd/config/base/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/config/base/Config;->getSettings()Lcom/hzbhd/config/base/Config$Settings;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/hardware/AC8257P_HardwarePlatform;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3}, Lcom/hzbhd/config/base/Config$Settings;->chooseUsbMode(Landroid/content/Context;I)V

    return v2
.end method

.method public stopServices(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 198
    invoke-virtual {p1, p2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method
