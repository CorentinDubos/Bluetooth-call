.class public Lcom/hzbhd/midwareproxy/hardware/T3O_MR1_HardwarePlatform;
.super Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;
.source "T3O_MR1_HardwarePlatform.java"


# static fields
.field public static final BOOTLOADER_HD_PATH:Ljava/lang/String; = "/bootloader/logo_hd.bmp"

.field public static final BOOTLOADER_SD_PATH:Ljava/lang/String; = "/bootloader/logo_sd.bmp"

.field public static final ISEQMCUFORCE_SETTINGS_10:Z = true

.field public static final ISIgnoreWallpaperManagergetBitmap:Z = true

.field public static final ISNEEDMCUAVOUTDISPLAYSETTINGS:Z = false

.field public static final ISNEEDSYNCCAMERAPAUSERESUMEHANDER:Z = false

.field public static final ISNOSIGNALFORBITCAMERAPREVIEW:Z = true

.field public static final ISNeedOpenCamera_TWICE:Z = true

.field public static final N3_CHANNEL0:I = 0x0

.field public static final N3_CHANNEL1:I = 0x1

.field public static final N3_CHANNEL2:I = 0x2

.field public static final N3_CHANNEL3:I = 0x3

.field public static final T3N_CAMERAID_DEFAULT:I = 0x3

.field public static final T3N_CAMERAID_MPEG:I = 0x0

.field public static final T3N_ONEBROAR_CAMERAID_AUXIN:I = 0x1

.field public static final T3N_ONEBROAR_CAMERAID_BACKCAMERA:I = 0x3

.field public static final T3N_ONEBROAR_CAMERAID_DTV:I = 0x0

.field public static final T3N_ONEBROAR_CAMERAID_PRECAMERA:I = 0x2

.field public static final T3N_UART_PORT_BT:I = 0x3

.field public static final T3N_UART_PORT_MCU:I = 0x5

.field public static final T3N_UART_PORT_MPEG:I = 0x4

.field public static final T3N_UART_PORT_NULL:I = -0x1

.field public static final T3N_UART_PORT_TPMS:I = 0x6

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mCameraId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-class v0, Lcom/hzbhd/midwareproxy/hardware/T3O_MR1_HardwarePlatform;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/midwareproxy/hardware/T3O_MR1_HardwarePlatform;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;-><init>()V

    const/4 v0, 0x0

    .line 72
    iput v0, p0, Lcom/hzbhd/midwareproxy/hardware/T3O_MR1_HardwarePlatform;->mCameraId:I

    return-void
.end method

.method public static WriteTsDev(Ljava/lang/String;I)V
    .locals 3

    .line 415
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/T3O_MR1_HardwarePlatform;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WriteTsDev fileName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 418
    new-instance p0, Ljava/io/BufferedWriter;

    invoke-direct {p0, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 419
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 420
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 422
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private getSignalStatusfromFile(I)I
    .locals 5

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 261
    :cond_0
    new-instance p1, Ljava/io/File;

    const-string v1, "/sys/class/extcon/tvd_lock3/state"

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 258
    :cond_1
    new-instance p1, Ljava/io/File;

    const-string v1, "/sys/class/extcon/tvd_lock2/state"

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 255
    :cond_2
    new-instance p1, Ljava/io/File;

    const-string v1, "/sys/class/extcon/tvd_lock1/state"

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 245
    :cond_3
    sget-object p1, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->sCURRENT_HARDWARD_ATTRIBUTE:Ljava/lang/String;

    const-string v1, "SECONDBROAD"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    sget-object p1, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->sCURRENT_HARDWARD_ATTRIBUTE:Ljava/lang/String;

    const-string v1, "SECONDSTM32"

    .line 246
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    sget-object p1, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->sCURRENT_HARDWARD_ATTRIBUTE:Ljava/lang/String;

    const-string v1, "BROADONEDISC"

    .line 247
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    .line 251
    :cond_4
    new-instance p1, Ljava/io/File;

    const-string v1, "/sys/class/extcon/tvd_lock0/state"

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 265
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 266
    invoke-static {p1}, Lcom/hzbhd/midwareproxy/hardware/T3O_MR1_HardwarePlatform;->readFileStr(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    .line 267
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "diaplayTVD cvbsStatus= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "mww"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    if-ne p1, v0, :cond_6

    return v0

    :cond_6
    return v1

    :cond_7
    :goto_1
    return v0
.end method

.method private getSignalStatusfromVideoState(II)I
    .locals 3

    .line 232
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/video/VideoParkingManager;->getVideoParkingManager()Lcom/hzbhd/midwareproxy/video/VideoParkingManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hzbhd/midwareproxy/video/VideoParkingManager;->getVideoState(I)I

    move-result p1

    const-string v0, "DeviceDifferen"

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/hzbhd/midwareproxy/hardware/T3O_MR1_HardwarePlatform;->mCameraId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , <getCvbsStatus>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 236
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return p2
.end method

.method private static readFileStr(Ljava/io/File;)Ljava/lang/String;
    .locals 1

    .line 403
    :try_start_0
    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 404
    new-instance p0, Ljava/io/BufferedReader;

    invoke-direct {p0, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 405
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 406
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 409
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

.method public detectSignalDistance()J
    .locals 2

    const-wide/16 v0, 0x46

    return-wide v0
.end method

.method public double_detect_signal()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAsp7719AudioChannelPort()[Lcom/hzbhd/midware/constant/AudioAsp7719Constant$AudSrcChannel;
    .locals 1

    .line 440
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->DTV_INDEPENDENT:Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/DefaultSharedUtil;->getBool(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    sget-object v0, Lcom/hzbhd/midware/constant/AudioAsp7719Constant;->AudSrcChanTbl_T3_B2:[Lcom/hzbhd/midware/constant/AudioAsp7719Constant$AudSrcChannel;

    return-object v0

    .line 443
    :cond_0
    sget-object v0, Lcom/hzbhd/midware/constant/AudioAsp7719Constant;->AudSrcChanTbl_T3:[Lcom/hzbhd/midware/constant/AudioAsp7719Constant$AudSrcChannel;

    return-object v0
.end method

.method public getBootLogoPath(Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$BOOTLOADER_TYPE;)Ljava/lang/String;
    .locals 1

    .line 375
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/T3O_MR1_HardwarePlatform$1;->$SwitchMap$com$hzbhd$midwareproxy$hardware$HardwareConstant$BOOTLOADER_TYPE:[I

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

.method public getCameraID(Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$MCUSOFTVERSION;Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;)I
    .locals 4

    .line 97
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/T3O_MR1_HardwarePlatform$1;->$SwitchMap$com$hzbhd$midwareproxy$hardware$HardwareConstant$MCUSOFTVERSION:[I

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$MCUSOFTVERSION;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq p1, v2, :cond_7

    if-eq p1, v0, :cond_0

    goto/16 :goto_3

    .line 121
    :cond_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->ishasMpuControlChipAHD_N3_or_Nvp6158c()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 122
    sget-object p1, Lcom/hzbhd/midwareproxy/hardware/T3O_MR1_HardwarePlatform$1;->$SwitchMap$com$hzbhd$midwareproxy$hardware$HardwareConstant$CAMERA_TYPE:[I

    invoke-virtual {p2}, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;->ordinal()I

    move-result p2

    aget p1, p1, p2

    packed-switch p1, :pswitch_data_0

    :cond_1
    move v0, v3

    goto :goto_1

    .line 141
    :pswitch_0
    sget-object p1, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->DTV_INDEPENDENT:Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/app/DefaultSharedUtil;->getBool(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :pswitch_1
    move v0, v2

    goto :goto_1

    .line 125
    :pswitch_2
    sget-boolean p1, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->haschipn5:Z

    if-eqz p1, :cond_1

    :goto_0
    move v0, v1

    :cond_2
    :goto_1
    :pswitch_3
    return v0

    .line 152
    :cond_3
    sget-object p1, Lcom/hzbhd/midwareproxy/hardware/T3O_MR1_HardwarePlatform$1;->$SwitchMap$com$hzbhd$midwareproxy$hardware$HardwareConstant$CAMERA_TYPE:[I

    invoke-virtual {p2}, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;->ordinal()I

    move-result p2

    aget p1, p1, p2

    packed-switch p1, :pswitch_data_1

    goto :goto_3

    .line 189
    :pswitch_4
    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->ishasMpuControlChip6502()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_3

    .line 192
    :cond_4
    sget-object p1, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->DTV_INDEPENDENT:Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/app/DefaultSharedUtil;->getBool(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_2

    .line 178
    :pswitch_5
    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->ishasMpuControlChip6502()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_3

    .line 181
    :cond_5
    sget-object p1, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->DTV_INDEPENDENT:Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/app/DefaultSharedUtil;->getBool(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_2

    .line 171
    :pswitch_6
    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->ishasMpuControlChip6502()Z

    move-result p1

    if-eqz p1, :cond_6

    :goto_2
    :pswitch_7
    move v0, v1

    goto :goto_4

    .line 164
    :pswitch_8
    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->ishasMpuControlChip6502()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_3

    :cond_6
    move v0, v2

    goto :goto_4

    .line 157
    :pswitch_9
    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->ishasMpuControlChip6502()Z

    move-result p1

    if-eqz p1, :cond_8

    :goto_3
    :pswitch_a
    move v0, v3

    goto :goto_4

    .line 99
    :cond_7
    sget-object p1, Lcom/hzbhd/midwareproxy/hardware/T3O_MR1_HardwarePlatform$1;->$SwitchMap$com$hzbhd$midwareproxy$hardware$HardwareConstant$CAMERA_TYPE:[I

    invoke-virtual {p2}, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;->ordinal()I

    move-result p2

    aget p1, p1, p2

    packed-switch p1, :pswitch_data_2

    goto :goto_3

    :cond_8
    :goto_4
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_7
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method

.method public getCoverViewDelayTime()I
    .locals 2

    .line 456
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->sCURRENT_HARDWARD_ATTRIBUTE:Ljava/lang/String;

    const-string v1, "SECONDBROAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->sCURRENT_HARDWARD_ATTRIBUTE:Ljava/lang/String;

    const-string v1, "SECONDSTM32"

    .line 457
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x1f4

    return v0

    :cond_1
    :goto_0
    const/16 v0, 0x2bc

    return v0
.end method

.method public getCpuTemperature()I
    .locals 2

    .line 552
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/thermal/thermal_zone0/temp"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 553
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 554
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/hardware/T3O_MR1_HardwarePlatform;->readFileStr(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 555
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 559
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCvbsStatus(ZII)I
    .locals 0

    .line 215
    iput p2, p0, Lcom/hzbhd/midwareproxy/hardware/T3O_MR1_HardwarePlatform;->mCameraId:I

    .line 216
    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->ishasMpuControlChipAHD_N3_or_Nvp6158c()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 218
    sget-boolean p1, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->autocheck_cameraic:Z

    if-eqz p1, :cond_0

    sget-boolean p1, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->haschipn5:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    .line 219
    invoke-direct {p0, p1}, Lcom/hzbhd/midwareproxy/hardware/T3O_MR1_HardwarePlatform;->getSignalStatusfromFile(I)I

    move-result p1

    return p1

    .line 221
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/hzbhd/midwareproxy/hardware/T3O_MR1_HardwarePlatform;->getSignalStatusfromVideoState(II)I

    move-result p1

    return p1

    .line 225
    :cond_1
    invoke-direct {p0, p2}, Lcom/hzbhd/midwareproxy/hardware/T3O_MR1_HardwarePlatform;->getSignalStatusfromFile(I)I

    move-result p1

    return p1
.end method

.method public getDDRTypeInfoShow()Ljava/lang/String;
    .locals 1

    const-string v0, "DDR3"

    return-object v0
.end method

.method public getDVRCameraIndex()I
    .locals 2

    .line 498
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->sCURRENT_HARDWARD_ATTRIBUTE:Ljava/lang/String;

    const-string v1, "SECONDBROAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->sCURRENT_HARDWARD_ATTRIBUTE:Ljava/lang/String;

    const-string v1, "SECONDSTM32"

    .line 499
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->sCURRENT_HARDWARD_ATTRIBUTE:Ljava/lang/String;

    const-string v1, "BROADONEDISC"

    .line 500
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->haschipn3:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public getOsVersionBuildDisplay()Ljava/lang/String;
    .locals 3

    .line 363
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    const/16 v1, 0x19

    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSocChipInfoShow()Ljava/lang/String;
    .locals 2

    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/utils/SystemUtils;->getCPUCoreNumber(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-Core AllWinner -"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$SUPPORT_AUDIO_TYPE;
    .locals 1

    .line 541
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$SUPPORT_AUDIO_TYPE;->t3O:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$SUPPORT_AUDIO_TYPE;

    return-object v0
.end method

.method public getUartPort(Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;)I
    .locals 3

    .line 77
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/T3O_MR1_HardwarePlatform$1;->$SwitchMap$com$hzbhd$midwareproxy$hardware$HardwareConstant$UARTTYPE:[I

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x4

    const/4 v2, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    if-eq p1, v2, :cond_0

    if-eq p1, v1, :cond_3

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    goto :goto_0

    :cond_2
    move v1, v2

    :cond_3
    :goto_0
    return v1
.end method

.method public isChangeableOverlay_Settings(Landroid/content/pm/PackageInfo;)Z
    .locals 3

    .line 433
    const-class v0, Landroid/content/pm/PackageInfo;

    const-string v1, "overlayFlags"

    invoke-static {p1, v0, v1}, Lcom/hzbhd/midwareproxy/utils/ReflectionTools;->getFieldInteger(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 434
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

.method public isEQMCUForce_Settings_10()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isIgnoreWallpaperManagergetBitmap()Z
    .locals 1

    const/4 v0, 0x1

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

    const/4 v0, 0x1

    return v0
.end method

.method public isNoSignalForbidCameraPreview()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isOpenCamera_twice()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ishasMpuControlChip6502()Z
    .locals 1

    .line 208
    sget-boolean v0, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->hasMpuControlChip6502:Z

    return v0
.end method

.method public ishasMpuControlChipAHD_N3_or_Nvp6158c()Z
    .locals 5

    .line 585
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/T3O_MR1_HardwarePlatform;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ishasMpuControlChipAHD_N3_or_Nvp6158c  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->haschipn3:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->haschipnvp6158c:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->haschipn5:Z

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

    .line 586
    sget-boolean v0, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->haschipn3:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->haschipnvp6158c:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->haschipn5:Z

    if-eqz v0, :cond_3

    :cond_2
    move v3, v4

    :cond_3
    return v3
.end method

.method public msg_clear_cover_view_time()J
    .locals 2

    .line 485
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->sCURRENT_HARDWARD_ATTRIBUTE:Ljava/lang/String;

    const-string v1, "SECONDBROAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->sCURRENT_HARDWARD_ATTRIBUTE:Ljava/lang/String;

    const-string v1, "SECONDSTM32"

    .line 486
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x190

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, 0x258

    return-wide v0
.end method

.method public msg_disp_tvd_delay_time()J
    .locals 2

    .line 477
    sget-boolean v0, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->haschipn3:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0xc8

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public needTemperatureCheckVolume()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setAnalogInputColor(Landroid/hardware/Camera;III)V
    .locals 8

    .line 283
    sget-object p1, Lcom/hzbhd/midwareproxy/hardware/T3O_MR1_HardwarePlatform;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "setAnalogInputColor: start"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->ishasMpuControlChipAHD_N3_or_Nvp6158c()Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 286
    sget-boolean p1, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->autocheck_cameraic:Z

    if-eqz p1, :cond_0

    sget-boolean p1, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->haschipn5:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/hzbhd/midwareproxy/hardware/T3O_MR1_HardwarePlatform;->mCameraId:I

    if-ne p1, v1, :cond_0

    goto :goto_1

    .line 291
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p4}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->setAnalogInputColor(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 293
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    move p1, v0

    goto :goto_2

    :cond_1
    :goto_1
    move p1, v2

    .line 300
    :goto_2
    sget-object v3, Lcom/hzbhd/midwareproxy/hardware/T3O_MR1_HardwarePlatform;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setAnalogInputColor: flags="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_6

    .line 302
    sget-object p1, Lcom/hzbhd/midwareproxy/hardware/T3O_MR1_HardwarePlatform;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAnalogInputColor: brightness= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ,contrast= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ,saturation= "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ,mCameraId= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/hzbhd/midwareproxy/hardware/T3O_MR1_HardwarePlatform;->mCameraId:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    sget-object p1, Lcom/hzbhd/midwareproxy/hardware/T3O_MR1_HardwarePlatform;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setAnalogInputColor brightness= "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/hzbhd/midwareproxy/hardware/T3O_MR1_HardwarePlatform;->mCameraId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget p1, p0, Lcom/hzbhd/midwareproxy/hardware/T3O_MR1_HardwarePlatform;->mCameraId:I

    const/4 v3, 0x3

    if-eq p1, v2, :cond_5

    if-eq p1, v1, :cond_3

    if-eq p1, v3, :cond_2

    goto :goto_4

    :cond_2
    move v0, v3

    goto :goto_4

    .line 310
    :cond_3
    sget-boolean p1, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->haschipn5:Z

    if-eqz p1, :cond_4

    .line 311
    sget-object p1, Lcom/hzbhd/midwareproxy/hardware/T3O_MR1_HardwarePlatform;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAnalogInputColor: haschipn5 mCameraIndex="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    move v0, v1

    goto :goto_4

    :cond_5
    :goto_3
    move v0, v2

    .line 323
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/sys/kernel/bhd_tvd"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/bhd_brightness"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 324
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/bhd_contrast"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 325
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/bhd_saturation"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 326
    invoke-static {p1, p2}, Lcom/hzbhd/midwareproxy/hardware/T3O_MR1_HardwarePlatform;->WriteTsDev(Ljava/lang/String;I)V

    .line 327
    invoke-static {v2, p3}, Lcom/hzbhd/midwareproxy/hardware/T3O_MR1_HardwarePlatform;->WriteTsDev(Ljava/lang/String;I)V

    .line 328
    invoke-static {v0, p4}, Lcom/hzbhd/midwareproxy/hardware/T3O_MR1_HardwarePlatform;->WriteTsDev(Ljava/lang/String;I)V

    .line 330
    sget-object p1, Lcom/hzbhd/midwareproxy/hardware/T3O_MR1_HardwarePlatform;->TAG:Ljava/lang/String;

    const-string p2, "end setAnalogInputColor "

    invoke-static {p1, p2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public setAnalogInputColor(Landroid/hardware/Camera;IIII)V
    .locals 3

    .line 337
    sget-object p1, Lcom/hzbhd/midwareproxy/hardware/T3O_MR1_HardwarePlatform;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAnalogInputColor brightness= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,contrast= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,saturation= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,mCameraId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hzbhd/midwareproxy/hardware/T3O_MR1_HardwarePlatform;->mCameraId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p5, v1, :cond_1

    if-eq p5, v0, :cond_0

    if-eq p5, p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    move p1, v0

    goto :goto_0

    :cond_1
    move p1, v1

    .line 351
    :cond_2
    :goto_0
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "/sys/kernel/bhd_tvd"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/bhd_brightness"

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 352
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/bhd_contrast"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 353
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/bhd_saturation"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 354
    invoke-static {p5, p2}, Lcom/hzbhd/midwareproxy/hardware/T3O_MR1_HardwarePlatform;->WriteTsDev(Ljava/lang/String;I)V

    .line 355
    invoke-static {v1, p3}, Lcom/hzbhd/midwareproxy/hardware/T3O_MR1_HardwarePlatform;->WriteTsDev(Ljava/lang/String;I)V

    .line 356
    invoke-static {p1, p4}, Lcom/hzbhd/midwareproxy/hardware/T3O_MR1_HardwarePlatform;->WriteTsDev(Ljava/lang/String;I)V

    .line 357
    sget-object p1, Lcom/hzbhd/midwareproxy/hardware/T3O_MR1_HardwarePlatform;->TAG:Ljava/lang/String;

    const-string p2, "end setAnalogInputColor "

    invoke-static {p1, p2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public show_night_display()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public stopServices(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 368
    invoke-virtual {p1, p2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method
