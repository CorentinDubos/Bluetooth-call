.class public Lcom/hzbhd/midwareproxy/hardware/RK3399P_HardwarePlatform;
.super Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;
.source "RK3399P_HardwarePlatform.java"


# static fields
.field public static final BOOTLOADER_HD_PATH:Ljava/lang/String; = "/data/bhd/logo_hd.bmp"

.field public static final BOOTLOADER_SD_PATH:Ljava/lang/String; = "/data/bhd/logo_sd.bmp"

.field public static final ISNEEDMCUAVOUTDISPLAYSETTINGS:Z = false

.field public static final ISNEEDSYNCCAMERAPAUSERESUMEHANDER:Z = false

.field public static final ISNOSIGNALFORBITCAMERAPREVIEW:Z = false

.field public static final ISNeedOpenCamera_TWICE:Z = true

.field public static final PX6O_MR1_UART_PORT_BT:I = 0x4

.field public static final PX6O_MR1_UART_PORT_MCU:I = 0x1

.field public static final PX6O_MR1_UART_PORT_MPEG:I = 0x0

.field public static final PX6O_MR1_UART_PORT_NULL:I = -0x1

.field public static final PX6O_MR1_UART_PORT_TPMS:I = 0x6

.field public static final PX6_CAMERAID_CHANNEL0:I = 0x0

.field public static final PX6_CAMERAID_CHANNEL1:I = 0x1

.field public static final PX6_CAMERAID_CHANNEL2:I = 0x2

.field public static final PX6_CAMERAID_CHANNEL3:I = 0x3

.field public static final PX6_CAMERAID_DEFAULT:I = 0x7

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-class v0, Lcom/hzbhd/midwareproxy/hardware/RK3399P_HardwarePlatform;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/midwareproxy/hardware/RK3399P_HardwarePlatform;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;-><init>()V

    return-void
.end method

.method public static WriteVehicleDev(Ljava/lang/String;)V
    .locals 3

    .line 251
    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    new-instance v1, Ljava/io/File;

    const-string v2, "/dev/vehicle"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 252
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 253
    invoke-virtual {v1, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 254
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 256
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 258
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

    .line 216
    :try_start_0
    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 217
    new-instance p0, Ljava/io/BufferedReader;

    invoke-direct {p0, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 218
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 219
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 222
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public SwitchToDebug()V
    .locals 1

    const/4 v0, 0x2

    .line 360
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/hardware/RK3399P_HardwarePlatform;->SwitchToDebugDialogRk3399(I)V

    return-void
.end method

.method public SwitchToDebugDialogRk3399(I)V
    .locals 3

    const-string v0, "ctl.start"

    const-string v1, "persist.service.hzbhd.usb0"

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    const-string p1, "device"

    .line 371
    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "bhd_usb0_device"

    .line 372
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "host"

    .line 375
    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "bhd_usb0_host"

    .line 376
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public SwitchToUser()V
    .locals 1

    const/4 v0, 0x1

    .line 367
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/hardware/RK3399P_HardwarePlatform;->SwitchToDebugDialogRk3399(I)V

    return-void
.end method

.method public getAsp7719AudioChannelPort()[Lcom/hzbhd/midware/constant/AudioAsp7719Constant$AudSrcChannel;
    .locals 1

    .line 239
    sget-object v0, Lcom/hzbhd/midware/constant/AudioAsp7719Constant;->AudSrcChanTbl_RK3399:[Lcom/hzbhd/midware/constant/AudioAsp7719Constant$AudSrcChannel;

    return-object v0
.end method

.method public getAvoutType()Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$AVOUT_TPYE;
    .locals 1

    .line 314
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$AVOUT_TPYE;->PX6_HDMI:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$AVOUT_TPYE;

    return-object v0
.end method

.method public getBootLogoPath(Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$BOOTLOADER_TYPE;)Ljava/lang/String;
    .locals 1

    .line 188
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/RK3399P_HardwarePlatform$1;->$SwitchMap$com$hzbhd$midwareproxy$hardware$HardwareConstant$BOOTLOADER_TYPE:[I

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
    const-string p1, "/data/bhd/logo_hd.bmp"

    goto :goto_0

    :cond_1
    const-string p1, "/data/bhd/logo_sd.bmp"

    :goto_0
    return-object p1
.end method

.method public getCameraID(Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;)I
    .locals 1

    .line 95
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/RK3399P_HardwarePlatform$1;->$SwitchMap$com$hzbhd$midwareproxy$hardware$HardwareConstant$CAMERA_TYPE:[I

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    :cond_0
    const/4 p1, 0x7

    return p1
.end method

.method public getCameraID(Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$MCUSOFTVERSION;Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;)I
    .locals 1

    .line 122
    sget-object p1, Lcom/hzbhd/midwareproxy/hardware/RK3399P_HardwarePlatform$1;->$SwitchMap$com$hzbhd$midwareproxy$hardware$HardwareConstant$CAMERA_TYPE:[I

    invoke-virtual {p2}, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x2

    const/4 v0, 0x3

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move p2, v0

    goto :goto_0

    :pswitch_1
    const/4 p2, 0x0

    goto :goto_0

    :pswitch_2
    const/4 p2, 0x1

    :goto_0
    :pswitch_3
    return p2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getCoverViewDelayTime()I
    .locals 1

    const/16 v0, 0x514

    return v0
.end method

.method public getCpuTemperature()I
    .locals 2

    .line 344
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/thermal/thermal_zone0/temp"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 345
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 346
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/hardware/RK3399P_HardwarePlatform;->readFileStr(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 347
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 348
    div-int/lit16 v0, v0, 0x3e8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 351
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCvbsStatus(ZII)I
    .locals 2

    .line 147
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/video/VideoParkingManager;->getVideoParkingManager()Lcom/hzbhd/midwareproxy/video/VideoParkingManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/hzbhd/midwareproxy/video/VideoParkingManager;->getVideoState(I)I

    move-result p1

    const-string p2, "DeviceDifferen"

    .line 148
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

    .line 151
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

    .line 334
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_DSP_BOARD;->PX6P:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_DSP_BOARD;

    return-object v0
.end method

.method public getMinBootTimeMidServices()I
    .locals 1

    const/16 v0, 0x2710

    return v0
.end method

.method public getNativeSetBootLOgoType()Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$NATIVE_TYPE_SETBOOTLOGO;
    .locals 1

    .line 300
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$NATIVE_TYPE_SETBOOTLOGO;->RKBOOTLOGO:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$NATIVE_TYPE_SETBOOTLOGO;

    return-object v0
.end method

.method public getNativeSwitchCameraType()Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$NATIVE_TYPE_SWITCH_CAMERA;
    .locals 1

    .line 295
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$NATIVE_TYPE_SWITCH_CAMERA;->RK701FLASH:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$NATIVE_TYPE_SWITCH_CAMERA;

    return-object v0
.end method

.method public getOSUpgradeType()Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$OS_UPDATE_TPYE;
    .locals 1

    .line 324
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$OS_UPDATE_TPYE;->ROCK_CHIP:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$OS_UPDATE_TPYE;

    return-object v0
.end method

.method public getOsVersionBuildDisplay()Ljava/lang/String;
    .locals 5

    .line 172
    sget-wide v0, Landroid/os/Build;->TIME:J

    .line 173
    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    const-string/jumbo v4, "yyyyMMdd"

    invoke-direct {v2, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v3, "GMT+8:00"

    .line 174
    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 175
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSocChipInfoShow()Ljava/lang/String;
    .locals 4

    .line 268
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->RK3399_CUSTOMER_SHOW_CHIP_NAME:Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/DefaultSharedUtil;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 269
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 270
    sget-object v1, Lcom/hzbhd/midwareproxy/hardware/RK3399P_HardwarePlatform;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "11 getSocChipInfoShow "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 273
    :cond_0
    sget-object v1, Lcom/hzbhd/midwareproxy/hardware/RK3399P_HardwarePlatform;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSocChipInfoShow "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/hardware/RK3399P_HardwarePlatform;->isNeedShowSocChipInfo_PX7()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "PX7 - "

    return-object v0

    :cond_1
    const-string v0, "RK3399 - "

    return-object v0
.end method

.method public getUartPort(Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;)I
    .locals 3

    .line 74
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/RK3399P_HardwarePlatform$1;->$SwitchMap$com$hzbhd$midwareproxy$hardware$HardwareConstant$UARTTYPE:[I

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    goto :goto_0

    :cond_2
    move v0, v1

    :cond_3
    :goto_0
    return v0
.end method

.method public getUsbMode()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform$USB_MODE;
    .locals 3

    .line 420
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/RK3399P_HardwarePlatform;->TAG:Ljava/lang/String;

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

    .line 421
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    const-string v1, "force_usb_mode"

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getSharedInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 423
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform$USB_MODE;->DEVIE:Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform$USB_MODE;

    return-object v0

    .line 425
    :cond_0
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform$USB_MODE;->HOST:Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform$USB_MODE;

    return-object v0
.end method

.method public getUsbToDeviceMode()Z
    .locals 2

    .line 400
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/RK3399P_HardwarePlatform;->TAG:Ljava/lang/String;

    const-string v1, "getUsbToDeviceMode"

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    const-string v1, "force_usb_mode"

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getSharedInt(Ljava/lang/String;)I

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

.method public getUsbToHostMode()Z
    .locals 2

    .line 405
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/RK3399P_HardwarePlatform;->TAG:Ljava/lang/String;

    const-string v1, "getUsbToHostMode"

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    const-string v1, "force_usb_mode"

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getSharedInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

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

    .line 309
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/hardware/RK3399P_HardwarePlatform;->ishasMpuControlChipAHD_N3_or_Nvp6158c()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isCameraViewTextureView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isChangeableOverlay_Settings(Landroid/content/pm/PackageInfo;)Z
    .locals 3

    .line 244
    const-class v0, Landroid/content/pm/PackageInfo;

    const-string v1, "overlayFlags"

    invoke-static {p1, v0, v1}, Lcom/hzbhd/midwareproxy/utils/ReflectionTools;->getFieldInteger(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 245
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

.method public isNeedShowSocChipInfo_PX7()Z
    .locals 2

    .line 433
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getDeviceInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XWQE0101-PC4"

    .line 434
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "XWQE0102-PC4"

    .line 435
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
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

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->haschipnvp6158c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ishasMpuControlChip6502()Z
    .locals 1

    .line 338
    sget-boolean v0, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->hasMpuControlChip6502:Z

    return v0
.end method

.method public ishasMpuControlChipAHD_N3_or_Nvp6158c()Z
    .locals 1

    .line 329
    sget-boolean v0, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->haschipn3:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->haschipnvp6158c:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public msg_clear_cover_view_time()J
    .locals 2

    const-wide/16 v0, 0x1f4

    return-wide v0
.end method

.method public setAnalogInputColor(Landroid/hardware/Camera;III)V
    .locals 1

    const-string/jumbo p1, "setAnalogInputColor"

    const-string/jumbo v0, "setAnalogInputColor......"

    .line 159
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->ishasMpuControlChipAHD_N3_or_Nvp6158c()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 162
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p4}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->setAnalogInputColor(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 164
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setUsbMode(I)Z
    .locals 3

    .line 411
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/RK3399P_HardwarePlatform;->TAG:Ljava/lang/String;

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

    .line 413
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/hardware/RK3399P_HardwarePlatform;->setUsbToDeviceMode()Z

    move-result p1

    return p1

    .line 415
    :cond_0
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/hardware/RK3399P_HardwarePlatform;->setUsbToHostMode()Z

    move-result p1

    return p1
.end method

.method public setUsbToDeviceMode()Z
    .locals 3

    .line 384
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/RK3399P_HardwarePlatform;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setUsbToDeviceMode"

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "persist.service.hzbhd.usb0"

    const-string v1, "device"

    .line 385
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ctl.start"

    const-string v1, "bhd_usb0_device"

    .line 386
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    const-string v1, "force_usb_mode"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->setSharedInt(Ljava/lang/String;I)V

    const/4 v0, 0x1

    return v0
.end method

.method public setUsbToHostMode()Z
    .locals 3

    .line 392
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/RK3399P_HardwarePlatform;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setUsbToHostMode"

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "persist.service.hzbhd.usb0"

    const-string v1, "host"

    .line 393
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ctl.start"

    const-string v1, "bhd_usb0_host"

    .line 394
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    const-string v1, "force_usb_mode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->setSharedInt(Ljava/lang/String;I)V

    return v2
.end method

.method public stopServices(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 181
    invoke-virtual {p1, p2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method
