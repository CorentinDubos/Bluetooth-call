.class public Lcom/hzbhd/midwareproxy/hardware/RK3399O_MR1_HardwarePlatform;
.super Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;
.source "RK3399O_MR1_HardwarePlatform.java"


# static fields
.field public static final BOOTLOADER_HD_PATH:Ljava/lang/String; = "/bootloader/logo_hd.bmp"

.field public static final BOOTLOADER_SD_PATH:Ljava/lang/String; = "/bootloader/logo_sd.bmp"

.field public static final ISNEEDMCUAVOUTDISPLAYSETTINGS:Z = false

.field public static final ISNEEDSYNCCAMERAPAUSERESUMEHANDER:Z = false

.field public static final ISNOSIGNALFORBITCAMERAPREVIEW:Z = false

.field public static final ISNeedOpenCamera_TWICE:Z = true

.field public static final PX6O_MR1_UART_PORT_BT:I = 0x3

.field public static final PX6O_MR1_UART_PORT_MCU:I = 0x1

.field public static final PX6O_MR1_UART_PORT_MPEG:I = 0x4

.field public static final PX6O_MR1_UART_PORT_NULL:I = -0x1

.field public static final PX6O_MR1_UART_PORT_TPMS:I = 0x6

.field public static final PX6_CAMERAID_DEFAULT:I = 0x7

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-class v0, Lcom/hzbhd/midwareproxy/hardware/RK3399O_MR1_HardwarePlatform;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/midwareproxy/hardware/RK3399O_MR1_HardwarePlatform;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;-><init>()V

    return-void
.end method

.method public static WriteVehicleDev(Ljava/lang/String;)V
    .locals 3

    .line 208
    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    new-instance v1, Ljava/io/File;

    const-string v2, "/dev/vehicle"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 209
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 210
    invoke-virtual {v1, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 213
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 215
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

    .line 178
    :try_start_0
    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 179
    new-instance p0, Ljava/io/BufferedReader;

    invoke-direct {p0, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 180
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 184
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public SwitchToDebug()V
    .locals 0

    return-void
.end method

.method public SwitchToUser()V
    .locals 0

    return-void
.end method

.method public getAsp7719AudioChannelPort()[Lcom/hzbhd/midware/constant/AudioAsp7719Constant$AudSrcChannel;
    .locals 1

    .line 196
    sget-object v0, Lcom/hzbhd/midware/constant/AudioAsp7719Constant;->AudSrcChanTbl_RK3399:[Lcom/hzbhd/midware/constant/AudioAsp7719Constant$AudSrcChannel;

    return-object v0
.end method

.method public getAvoutType()Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$AVOUT_TPYE;
    .locals 1

    .line 264
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$AVOUT_TPYE;->PX6_HDMI:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$AVOUT_TPYE;

    return-object v0
.end method

.method public getBootLogoPath(Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$BOOTLOADER_TYPE;)Ljava/lang/String;
    .locals 1

    .line 150
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/RK3399O_MR1_HardwarePlatform$1;->$SwitchMap$com$hzbhd$midwareproxy$hardware$HardwareConstant$BOOTLOADER_TYPE:[I

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
    const-string p1, "/bootloader/logo_hd.bmp"

    goto :goto_0

    :cond_1
    const-string p1, "/bootloader/logo_sd.bmp"

    :goto_0
    return-object p1
.end method

.method public getCameraID(Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;)I
    .locals 1

    .line 84
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/RK3399O_MR1_HardwarePlatform$1;->$SwitchMap$com$hzbhd$midwareproxy$hardware$HardwareConstant$CAMERA_TYPE:[I

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
    .locals 0

    const/4 p1, 0x7

    return p1
.end method

.method public getCvbsStatus(ZII)I
    .locals 2

    .line 113
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/video/VideoParkingManager;->getVideoParkingManager()Lcom/hzbhd/midwareproxy/video/VideoParkingManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/hzbhd/midwareproxy/video/VideoParkingManager;->getVideoState(I)I

    move-result p1

    const-string p2, "DeviceDifferen"

    .line 114
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

    .line 117
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return p3
.end method

.method public getDDRTypeInfoShow()Ljava/lang/String;
    .locals 1

    const-string v0, "LPDDR4"

    return-object v0
.end method

.method public getMinBootTimeMidServices()I
    .locals 1

    const/16 v0, 0x2710

    return v0
.end method

.method public getNativeSetBootLOgoType()Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$NATIVE_TYPE_SETBOOTLOGO;
    .locals 1

    .line 250
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$NATIVE_TYPE_SETBOOTLOGO;->RKBOOTLOGO:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$NATIVE_TYPE_SETBOOTLOGO;

    return-object v0
.end method

.method public getNativeSwitchCameraType()Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$NATIVE_TYPE_SWITCH_CAMERA;
    .locals 1

    .line 245
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$NATIVE_TYPE_SWITCH_CAMERA;->RK701FLASH:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$NATIVE_TYPE_SWITCH_CAMERA;

    return-object v0
.end method

.method public getOSUpgradeType()Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$OS_UPDATE_TPYE;
    .locals 1

    .line 274
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$OS_UPDATE_TPYE;->ROCK_CHIP:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$OS_UPDATE_TPYE;

    return-object v0
.end method

.method public getOsVersionBuildDisplay()Ljava/lang/String;
    .locals 4

    .line 136
    sget-wide v0, Landroid/os/Build;->TIME:J

    .line 137
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyyMMdd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSocChipInfoShow()Ljava/lang/String;
    .locals 1

    const-string v0, "RK3399 - "

    return-object v0
.end method

.method public getUartPort(Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;)I
    .locals 4

    .line 63
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/RK3399O_MR1_HardwarePlatform$1;->$SwitchMap$com$hzbhd$midwareproxy$hardware$HardwareConstant$UARTTYPE:[I

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_3

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    :cond_3
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

    const/4 v0, 0x1

    return v0
.end method

.method public isCameraViewTextureView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isChangeableOverlay_Settings(Landroid/content/pm/PackageInfo;)Z
    .locals 3

    .line 201
    const-class v0, Landroid/content/pm/PackageInfo;

    const-string v1, "overlayFlags"

    invoke-static {p1, v0, v1}, Lcom/hzbhd/midwareproxy/utils/ReflectionTools;->getFieldInteger(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 202
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

    const/4 v0, 0x1

    return v0
.end method

.method public msg_clear_cover_view_time()J
    .locals 2

    const-wide/16 v0, 0x1f4

    return-wide v0
.end method

.method public setAnalogInputColor(Landroid/hardware/Camera;III)V
    .locals 8

    .line 125
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

    .line 126
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

    .line 128
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public stopServices(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 143
    invoke-virtual {p1, p2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method
