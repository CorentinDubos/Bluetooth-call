.class interface abstract Lcom/hzbhd/midwareproxy/hardware/IHardware_Platform;
.super Ljava/lang/Object;
.source "IHardware_Platform.java"


# virtual methods
.method public abstract SwitchToDebug()V
.end method

.method public abstract SwitchToUser()V
.end method

.method public abstract detectSignalDistance()J
.end method

.method public abstract double_detect_signal()Z
.end method

.method public abstract getAsp7719AudioChannelPort()[Lcom/hzbhd/midware/constant/AudioAsp7719Constant$AudSrcChannel;
.end method

.method public abstract getAvoutType()Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$AVOUT_TPYE;
.end method

.method public abstract getBootLogoPath(Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$BOOTLOADER_TYPE;)Ljava/lang/String;
.end method

.method public abstract getCameraID(Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;)I
.end method

.method public abstract getCameraID(Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$MCUSOFTVERSION;Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;)I
.end method

.method public abstract getCoverViewDelayTime()I
.end method

.method public abstract getCpuTemperature()I
.end method

.method public abstract getCvbsStatus(ZII)I
.end method

.method public abstract getDDRTypeInfoShow()Ljava/lang/String;
.end method

.method public abstract getDSPBoardType()Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_DSP_BOARD;
.end method

.method public abstract getDVRCameraIndex()I
.end method

.method public abstract getMinBootTimeMidServices()I
.end method

.method public abstract getNativeSetBootLOgoType()Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$NATIVE_TYPE_SETBOOTLOGO;
.end method

.method public abstract getNativeSwitchCameraType()Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$NATIVE_TYPE_SWITCH_CAMERA;
.end method

.method public abstract getOSStandySleepType()I
.end method

.method public abstract getOSUpgradeType()Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$OS_UPDATE_TPYE;
.end method

.method public abstract getOsVersionBuildDisplay()Ljava/lang/String;
.end method

.method public abstract getSocChipInfoShow()Ljava/lang/String;
.end method

.method public abstract getType()Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$SUPPORT_AUDIO_TYPE;
.end method

.method public abstract getUartPort(Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;)I
.end method

.method public abstract getbootloaderpath()Ljava/lang/String;
.end method

.method public abstract getfactory_hardware_info_path()Ljava/lang/String;
.end method

.method public abstract has701Flash()Z
.end method

.method public abstract isCameraViewTextureView()Z
.end method

.method public abstract isChangeableOverlay_Settings(Landroid/content/pm/PackageInfo;)Z
.end method

.method public abstract isEQMCUForce_Settings_10()Z
.end method

.method public abstract isIgnoreWallpaperManagergetBitmap()Z
.end method

.method public abstract isMpegPauseNeedCoverView()Z
.end method

.method public abstract isNeedMCUAvOutDisplaySettings()Z
.end method

.method public abstract isNeedSyncCameraPauseResumeHandler()Z
.end method

.method public abstract isNeedTransitionAnimationScaleSetting()Z
.end method

.method public abstract isNoSignalForbidCameraPreview()Z
.end method

.method public abstract isOpenCamera_twice()Z
.end method

.method public abstract isPreCameraRemoveResumeConverView()Z
.end method

.method public abstract ishasChip701()Z
.end method

.method public abstract ishasMpuControlChip6502()Z
.end method

.method public abstract ishasMpuControlChipAHD_N3_or_Nvp6158c()Z
.end method

.method public abstract msg_clear_cover_view_time()J
.end method

.method public abstract msg_disp_tvd_delay_time()J
.end method

.method public abstract needTemperatureCheckVolume()Z
.end method

.method public abstract setAnalogInputColor(Landroid/hardware/Camera;III)V
.end method

.method public abstract setAnalogInputColor(Landroid/hardware/Camera;IIII)V
.end method

.method public abstract show_night_display()Z
.end method

.method public abstract stopServices(Landroid/content/Context;Landroid/content/Intent;)V
.end method
