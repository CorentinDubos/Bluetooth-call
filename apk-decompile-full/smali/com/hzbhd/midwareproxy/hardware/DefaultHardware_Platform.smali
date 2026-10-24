.class public Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;
.super Ljava/lang/Object;
.source "DefaultHardware_Platform.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/hardware/IHardware_Platform;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform$USB_MODE;
    }
.end annotation


# static fields
.field static TAG:Ljava/lang/String;


# instance fields
.field protected bhd_env_path:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->getbootloaderpath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "bhd_env"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->bhd_env_path:Ljava/lang/String;

    return-void
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

.method public detectSignalDistance()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public double_detect_signal()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAsp7719AudioChannelPort()[Lcom/hzbhd/midware/constant/AudioAsp7719Constant$AudSrcChannel;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/hzbhd/midware/constant/AudioAsp7719Constant$AudSrcChannel;

    return-object v0
.end method

.method public getAvoutType()Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$AVOUT_TPYE;
    .locals 1

    .line 244
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$AVOUT_TPYE;->DEFALUT_CVBS:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$AVOUT_TPYE;

    return-object v0
.end method

.method public getBootLogoPath(Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$BOOTLOADER_TYPE;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getCameraID(Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getCameraID(Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$MCUSOFTVERSION;Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCoverViewDelayTime()I
    .locals 1

    const/16 v0, 0x1f4

    return v0
.end method

.method public getCpuTemperature()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCvbsStatus(ZII)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getDDRTypeInfoShow()Ljava/lang/String;
    .locals 1

    const-string v0, "DDR"

    return-object v0
.end method

.method public getDSPBoardType()Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_DSP_BOARD;
    .locals 1

    .line 259
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_DSP_BOARD;->DEFAULT:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_DSP_BOARD;

    return-object v0
.end method

.method public getDVRCameraIndex()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMinBootTimeMidServices()I
    .locals 1

    const/16 v0, 0x4e20

    return v0
.end method

.method public getNativeSetBootLOgoType()Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$NATIVE_TYPE_SETBOOTLOGO;
    .locals 1

    .line 190
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$NATIVE_TYPE_SETBOOTLOGO;->DEFALUT:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$NATIVE_TYPE_SETBOOTLOGO;

    return-object v0
.end method

.method public getNativeSwitchCameraType()Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$NATIVE_TYPE_SWITCH_CAMERA;
    .locals 1

    .line 185
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$NATIVE_TYPE_SWITCH_CAMERA;->DEFALUT:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$NATIVE_TYPE_SWITCH_CAMERA;

    return-object v0
.end method

.method public getOSStandySleepType()I
    .locals 1

    .line 281
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_ANDROID_STANDY_SLEEP_TYPE;->DEFAULT:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_ANDROID_STANDY_SLEEP_TYPE;

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_ANDROID_STANDY_SLEEP_TYPE;->ordinal()I

    move-result v0

    return v0
.end method

.method public getOSUpgradeType()Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$OS_UPDATE_TPYE;
    .locals 1

    .line 249
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$OS_UPDATE_TPYE;->DEFALUT_ALLWINNER:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$OS_UPDATE_TPYE;

    return-object v0
.end method

.method public getOsVersionBuildDisplay()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getSocChipInfoShow()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getType()Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$SUPPORT_AUDIO_TYPE;
    .locals 1

    .line 230
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$SUPPORT_AUDIO_TYPE;->DEFAULT:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$SUPPORT_AUDIO_TYPE;

    return-object v0
.end method

.method public getUartPort(Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getUsbMode()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform$USB_MODE;
    .locals 3

    .line 316
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->TAG:Ljava/lang/String;

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

    .line 317
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->readUSBMode()B

    move-result v0

    .line 318
    sget-object v1, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform$USB_MODE;->DEVIE:Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform$USB_MODE;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform$USB_MODE;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 319
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform$USB_MODE;->DEVIE:Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform$USB_MODE;

    return-object v0

    .line 321
    :cond_0
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform$USB_MODE;->HOST:Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform$USB_MODE;

    return-object v0
.end method

.method public getUsbToDeviceMode()Z
    .locals 2

    .line 325
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->TAG:Ljava/lang/String;

    const-string v1, "getUsbToDeviceMode"

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->readUSBMode()B

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

    .line 329
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->TAG:Ljava/lang/String;

    const-string v1, "getUsbToHostMode"

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->readUSBMode()B

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getbootloaderpath()Ljava/lang/String;
    .locals 1

    const-string v0, "/bootloader"

    return-object v0
.end method

.method public getfactory_hardware_info_path()Ljava/lang/String;
    .locals 1

    const-string v0, "/bootloader/factory_hardware_info"

    return-object v0
.end method

.method public has701Flash()Z
    .locals 1

    .line 239
    sget-boolean v0, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->has701flash:Z

    return v0
.end method

.method public isCameraViewTextureView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isChangeableOverlay_Settings(Landroid/content/pm/PackageInfo;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isEQMCUForce_Settings_10()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isIgnoreWallpaperManagergetBitmap()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMpegPauseNeedCoverView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
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

.method public isNeedTransitionAnimationScaleSetting()Z
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

    const/4 v0, 0x0

    return v0
.end method

.method public isPreCameraRemoveResumeConverView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ishasChip701()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ishasMpuControlChip6502()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ishasMpuControlChipAHD_N3_or_Nvp6158c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public msg_clear_cover_view_time()J
    .locals 2

    const-wide/16 v0, 0xc8

    return-wide v0
.end method

.method public msg_disp_tvd_delay_time()J
    .locals 2

    const-wide/16 v0, 0x12c

    return-wide v0
.end method

.method public needTemperatureCheckVolume()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public readUSBFile()[B
    .locals 5

    .line 342
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bhd_env_path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->bhd_env_path:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->bhd_env_path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 344
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v1, v3

    new-array v1, v1, [B

    .line 345
    sget-object v3, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->bhd_env_path:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 349
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    .line 350
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 353
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public readUSBMode()B
    .locals 4

    .line 333
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->readUSBFile()[B

    move-result-object v0

    .line 334
    sget-object v1, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readUSBMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v0

    invoke-static {v0, v3}, Lcom/hzbhd/misc/jni/FgeString;->bytes2HexString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v1, 0x3

    .line 338
    aget-byte v0, v0, v1

    return v0
.end method

.method public setAnalogInputColor(Landroid/hardware/Camera;III)V
    .locals 0

    return-void
.end method

.method public setAnalogInputColor(Landroid/hardware/Camera;IIII)V
    .locals 0

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 389
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setUsbMode(I)Z
    .locals 3

    .line 312
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUsbMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    int-to-byte p1, p1

    .line 313
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->switchUSB(B)Z

    move-result p1

    return p1
.end method

.method public setUsbMode(Landroid/content/Context;I)Z
    .locals 3

    .line 307
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUsbMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->setContext(Landroid/content/Context;)V

    int-to-byte p1, p2

    .line 309
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->setUsbMode(I)Z

    move-result p1

    return p1
.end method

.method public setUsbToDeviceMode()Z
    .locals 2

    .line 299
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setUsbToDeviceMode"

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 300
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->switchUSB(B)Z

    move-result v0

    return v0
.end method

.method public setUsbToHostMode()Z
    .locals 2

    .line 303
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setUsbToHostMode"

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 304
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->switchUSB(B)Z

    move-result v0

    return v0
.end method

.method public show_night_display()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public stopServices(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public switchUSB(B)Z
    .locals 3

    .line 359
    :try_start_0
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->readUSBFile()[B

    move-result-object v0

    .line 360
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->bhd_env_path:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x3

    .line 361
    aput-byte p1, v0, v2

    .line 362
    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 363
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 366
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public t3o_ahd_6158c()Z
    .locals 1

    .line 372
    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->ishasMpuControlChipAHD_N3_or_Nvp6158c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object v0

    instance-of v0, v0, Lcom/hzbhd/midwareproxy/hardware/T3O_MR1_HardwarePlatform;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public t3o_t3q_ahd_6158c()Z
    .locals 1

    .line 381
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->t3o_ahd_6158c()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->t3q_ahd_6158c()Z

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

.method public t3q_ahd_6158c()Z
    .locals 1

    .line 378
    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->ishasMpuControlChipAHD_N3_or_Nvp6158c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object v0

    instance-of v0, v0, Lcom/hzbhd/midwareproxy/hardware/T3Q_MR1_HardwarePlatform;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
