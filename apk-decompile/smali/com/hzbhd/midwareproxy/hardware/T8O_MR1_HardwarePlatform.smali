.class public Lcom/hzbhd/midwareproxy/hardware/T8O_MR1_HardwarePlatform;
.super Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;
.source "T8O_MR1_HardwarePlatform.java"


# static fields
.field public static final BOOTLOADER_PATH:Ljava/lang/String; = "/bootloader/logo_hd.bmp"

.field public static final ISEQMCUFORCE_SETTINGS_10:Z = true

.field public static final ISHASCHIP_701:Z = true

.field public static final ISMPEGPAUSENEEDCOVERVIEW:Z = true

.field public static final ISNEEDMCUAVOUTDISPLAYSETTINGS:Z = true

.field public static final ISNEEDSYNCCAMERAPAUSERESUMEHANDER:Z = true

.field public static final ISNOSIGNALFORBITCAMERAPREVIEW:Z = true

.field public static final T8N_CAMERAID_DEFAULT:I = 0x0

.field public static final T8N_UART_PORT_BT:I = 0x2

.field public static final T8N_UART_PORT_MCU:I = 0x4

.field public static final T8N_UART_PORT_MPEG:I = 0x0

.field public static final T8N_UART_PORT_NULL:I = -0x1

.field public static final T8N_UART_PORT_TPMS:I = 0x3

.field public static final TAG:Ljava/lang/String;

.field public static final isPreCameraRemoveResumeConverView:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lcom/hzbhd/midwareproxy/hardware/T8O_MR1_HardwarePlatform;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/midwareproxy/hardware/T8O_MR1_HardwarePlatform;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;-><init>()V

    return-void
.end method

.method private static readFileStr(Ljava/io/File;)Ljava/lang/String;
    .locals 1

    .line 180
    :try_start_0
    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 181
    new-instance p0, Ljava/io/BufferedReader;

    invoke-direct {p0, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 182
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 186
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

    .line 219
    sget-object v0, Lcom/hzbhd/midware/constant/AudioAsp7719Constant;->AudSrcChanTbl_T8:[Lcom/hzbhd/midware/constant/AudioAsp7719Constant$AudSrcChannel;

    return-object v0
.end method

.method public getBootLogoPath(Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$BOOTLOADER_TYPE;)Ljava/lang/String;
    .locals 0

    const-string p1, "/bootloader/logo_hd.bmp"

    return-object p1
.end method

.method public getCameraID(Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;)I
    .locals 1

    .line 81
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/T8O_MR1_HardwarePlatform$1;->$SwitchMap$com$hzbhd$midwareproxy$hardware$HardwareConstant$CAMERA_TYPE:[I

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
    const/4 p1, 0x0

    return p1
.end method

.method public getCameraID(Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$MCUSOFTVERSION;Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getCoverViewDelayTime()I
    .locals 1

    const/16 v0, 0x258

    return v0
.end method

.method public getCpuTemperature()I
    .locals 3

    const/4 v0, 0x0

    .line 256
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/devices/virtual/input/input666666/thr_temp"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 257
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 258
    invoke-static {v1}, Lcom/hzbhd/midwareproxy/hardware/T8O_MR1_HardwarePlatform;->readFileStr(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    .line 259
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v0

    .line 260
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 264
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return v0
.end method

.method public getCvbsStatus(ZII)I
    .locals 3

    if-eqz p1, :cond_4

    .line 112
    :try_start_0
    new-instance p1, Ljava/io/File;

    const-string p2, "/sys/kernel/sign_flag/sign_flag"

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 114
    invoke-static {p1}, Lcom/hzbhd/midwareproxy/hardware/T8O_MR1_HardwarePlatform;->readFileStr(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "DeviceDifferen"

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readFileStr cvbsStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/16 p2, 0x49

    if-eq p1, p2, :cond_2

    const/16 p2, 0x55

    if-eq p1, p2, :cond_2

    .line 119
    sget-boolean p2, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->has701flash:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p2, :cond_1

    const/16 p2, 0x66

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_3
    return v0

    :catch_0
    move-exception p1

    .line 129
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    return p3
.end method

.method public getDDRTypeInfoShow()Ljava/lang/String;
    .locals 1

    const-string v0, "DDR3"

    return-object v0
.end method

.method public getDVRCameraIndex()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getNativeSwitchCameraType()Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$NATIVE_TYPE_SWITCH_CAMERA;
    .locals 1

    .line 240
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$NATIVE_TYPE_SWITCH_CAMERA;->T8_701:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$NATIVE_TYPE_SWITCH_CAMERA;

    return-object v0
.end method

.method public getOsVersionBuildDisplay()Ljava/lang/String;
    .locals 3

    .line 145
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x28

    if-le v1, v2, :cond_0

    const/16 v1, 0x20

    .line 147
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSocChipInfoShow()Ljava/lang/String;
    .locals 1

    const-string v0, "8-Core AllWinner -"

    return-object v0
.end method

.method public getUartPort(Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;)I
    .locals 4

    .line 61
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/T8O_MR1_HardwarePlatform$1;->$SwitchMap$com$hzbhd$midwareproxy$hardware$HardwareConstant$UARTTYPE:[I

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq p1, v0, :cond_2

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v3

    :cond_3
    :goto_0
    return v1
.end method

.method public isChangeableOverlay_Settings(Landroid/content/pm/PackageInfo;)Z
    .locals 2

    .line 193
    const-class v0, Landroid/content/pm/PackageInfo;

    const-string v1, "isStaticOverlay"

    invoke-static {p1, v0, v1}, Lcom/hzbhd/midwareproxy/utils/ReflectionTools;->getFieldBoolean(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 194
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isEQMCUForce_Settings_10()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isMpegPauseNeedCoverView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isNeedMCUAvOutDisplaySettings()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isNeedSyncCameraPauseResumeHandler()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isNoSignalForbidCameraPreview()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isPreCameraRemoveResumeConverView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public ishasChip701()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public needTemperatureCheckVolume()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setAnalogInputColor(Landroid/hardware/Camera;III)V
    .locals 0

    .line 137
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p4}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->setAnalogInputColor(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 139
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public stopServices(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 154
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    return-void
.end method
