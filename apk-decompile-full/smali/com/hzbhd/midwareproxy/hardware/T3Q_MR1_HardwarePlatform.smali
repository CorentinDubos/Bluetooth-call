.class public Lcom/hzbhd/midwareproxy/hardware/T3Q_MR1_HardwarePlatform;
.super Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;
.source "T3Q_MR1_HardwarePlatform.java"


# static fields
.field public static final BOOTLOADER_HD_PATH:Ljava/lang/String; = "/cache/bootloader/logo_hd.bmp"

.field public static final BOOTLOADER_SD_PATH:Ljava/lang/String; = "/cache/bootloader/logo_sd.bmp"

.field public static final ISEQMCUFORCE_SETTINGS_10:Z = true

.field public static final ISNEEDMCUAVOUTDISPLAYSETTINGS:Z = false

.field public static final ISNEEDSYNCCAMERAPAUSERESUMEHANDER:Z = false

.field public static final ISNOSIGNALFORBITCAMERAPREVIEW:Z = false

.field public static final ISNeedOpenCamera_TWICE:Z = false

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

    .line 40
    const-class v0, Lcom/hzbhd/midwareproxy/hardware/T3Q_MR1_HardwarePlatform;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/midwareproxy/hardware/T3Q_MR1_HardwarePlatform;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput v0, p0, Lcom/hzbhd/midwareproxy/hardware/T3Q_MR1_HardwarePlatform;->mCameraId:I

    return-void
.end method

.method public static WriteTsDev(Ljava/lang/String;I)V
    .locals 3

    .line 306
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/T3Q_MR1_HardwarePlatform;->TAG:Ljava/lang/String;

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

    .line 308
    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 309
    new-instance p0, Ljava/io/BufferedWriter;

    invoke-direct {p0, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 310
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 313
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static readFileStr(Ljava/io/File;)Ljava/lang/String;
    .locals 1

    .line 372
    :try_start_0
    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 373
    new-instance p0, Ljava/io/BufferedReader;

    invoke-direct {p0, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 374
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 375
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 378
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

    .line 395
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->DTV_INDEPENDENT:Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/DefaultSharedUtil;->getBool(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    sget-object v0, Lcom/hzbhd/midware/constant/AudioAsp7719Constant;->AudSrcChanTbl_T3_B2:[Lcom/hzbhd/midware/constant/AudioAsp7719Constant$AudSrcChannel;

    return-object v0

    .line 398
    :cond_0
    sget-object v0, Lcom/hzbhd/midware/constant/AudioAsp7719Constant;->AudSrcChanTbl_T3:[Lcom/hzbhd/midware/constant/AudioAsp7719Constant$AudSrcChannel;

    return-object v0
.end method

.method public getBootLogoPath(Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$BOOTLOADER_TYPE;)Ljava/lang/String;
    .locals 1

    .line 344
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/T3Q_MR1_HardwarePlatform$1;->$SwitchMap$com$hzbhd$midwareproxy$hardware$HardwareConstant$BOOTLOADER_TYPE:[I

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
    const-string p1, "/cache/bootloader/logo_hd.bmp"

    goto :goto_0

    :cond_1
    const-string p1, "/cache/bootloader/logo_sd.bmp"

    :goto_0
    return-object p1
.end method

.method public getCameraID(Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;)I
    .locals 2

    .line 97
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/T3Q_MR1_HardwarePlatform$1;->$SwitchMap$com$hzbhd$midwareproxy$hardware$HardwareConstant$CAMERA_TYPE:[I

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public getCameraID(Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$MCUSOFTVERSION;Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;)I
    .locals 4

    .line 120
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/T3Q_MR1_HardwarePlatform$1;->$SwitchMap$com$hzbhd$midwareproxy$hardware$HardwareConstant$MCUSOFTVERSION:[I

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$MCUSOFTVERSION;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq p1, v2, :cond_5

    if-eq p1, v0, :cond_0

    goto/16 :goto_2

    .line 145
    :cond_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->ishasMpuControlChipAHD_N3_or_Nvp6158c()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 146
    sget-object p1, Lcom/hzbhd/midwareproxy/hardware/T3Q_MR1_HardwarePlatform$1;->$SwitchMap$com$hzbhd$midwareproxy$hardware$HardwareConstant$CAMERA_TYPE:[I

    invoke-virtual {p2}, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;->ordinal()I

    move-result p2

    aget p1, p1, p2

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move v0, v3

    goto :goto_0

    :pswitch_1
    move v0, v1

    goto :goto_0

    :pswitch_2
    move v0, v2

    :goto_0
    :pswitch_3
    return v0

    .line 169
    :cond_1
    sget-object p1, Lcom/hzbhd/midwareproxy/hardware/T3Q_MR1_HardwarePlatform$1;->$SwitchMap$com$hzbhd$midwareproxy$hardware$HardwareConstant$CAMERA_TYPE:[I

    invoke-virtual {p2}, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;->ordinal()I

    move-result p2

    aget p1, p1, p2

    packed-switch p1, :pswitch_data_1

    goto :goto_2

    .line 195
    :pswitch_4
    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->ishasMpuControlChip6502()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    .line 198
    :cond_2
    sget-object p1, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->DTV_INDEPENDENT:Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/app/DefaultSharedUtil;->getBool(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    .line 207
    :pswitch_5
    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->ishasMpuControlChip6502()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    .line 210
    :cond_3
    sget-object p1, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->DTV_INDEPENDENT:Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/app/DefaultSharedUtil;->getBool(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    .line 188
    :pswitch_6
    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->ishasMpuControlChip6502()Z

    move-result p1

    if-eqz p1, :cond_4

    :goto_1
    :pswitch_7
    move v0, v1

    goto :goto_3

    .line 181
    :pswitch_8
    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->ishasMpuControlChip6502()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_3

    .line 174
    :pswitch_9
    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->ishasMpuControlChip6502()Z

    move-result p1

    if-eqz p1, :cond_6

    :goto_2
    :pswitch_a
    move v0, v3

    goto :goto_3

    .line 122
    :cond_5
    sget-object p1, Lcom/hzbhd/midwareproxy/hardware/T3Q_MR1_HardwarePlatform$1;->$SwitchMap$com$hzbhd$midwareproxy$hardware$HardwareConstant$CAMERA_TYPE:[I

    invoke-virtual {p2}, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;->ordinal()I

    move-result p2

    aget p1, p1, p2

    packed-switch p1, :pswitch_data_2

    goto :goto_2

    :cond_6
    :goto_3
    return v0

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

.method public getCvbsStatus(ZII)I
    .locals 3

    .line 229
    iput p2, p0, Lcom/hzbhd/midwareproxy/hardware/T3Q_MR1_HardwarePlatform;->mCameraId:I

    .line 231
    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->ishasMpuControlChipAHD_N3_or_Nvp6158c()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 233
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/video/VideoParkingManager;->getVideoParkingManager()Lcom/hzbhd/midwareproxy/video/VideoParkingManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/hzbhd/midwareproxy/video/VideoParkingManager;->getVideoState(I)I

    move-result p1

    const-string p2, "DeviceDifferen"

    .line 234
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

    .line 237
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return p3

    :cond_0
    const/4 p1, 0x1

    if-eqz p2, :cond_4

    if-eq p2, p1, :cond_3

    const/4 p3, 0x2

    if-eq p2, p3, :cond_2

    const/4 p3, 0x3

    if-eq p2, p3, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    .line 259
    :cond_1
    new-instance p2, Ljava/io/File;

    const-string p3, "/sys/class/extcon/tvd_lock3/state"

    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 256
    :cond_2
    new-instance p2, Ljava/io/File;

    const-string p3, "/sys/class/extcon/tvd_lock2/state"

    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 253
    :cond_3
    new-instance p2, Ljava/io/File;

    const-string p3, "/sys/class/extcon/tvd_lock1/state"

    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 243
    :cond_4
    sget-object p2, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->sCURRENT_HARDWARD_ATTRIBUTE:Ljava/lang/String;

    const-string p3, "SECONDBROAD"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_8

    sget-object p2, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->sCURRENT_HARDWARD_ATTRIBUTE:Ljava/lang/String;

    const-string p3, "SECONDSTM32"

    .line 244
    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_8

    sget-object p2, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->sCURRENT_HARDWARD_ATTRIBUTE:Ljava/lang/String;

    const-string p3, "BROADONEDISC"

    .line 245
    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_1

    .line 249
    :cond_5
    new-instance p2, Ljava/io/File;

    const-string p3, "/sys/class/extcon/tvd_lock0/state"

    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    const/4 p3, 0x0

    if-eqz p2, :cond_7

    .line 262
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 263
    invoke-static {p2}, Lcom/hzbhd/midwareproxy/hardware/T3Q_MR1_HardwarePlatform;->readFileStr(Ljava/io/File;)Ljava/lang/String;

    move-result-object p2

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "diaplayTVD cvbsStatus= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mww"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_6

    return p3

    :cond_6
    if-ne p2, p1, :cond_7

    return p1

    :cond_7
    return p3

    :cond_8
    :goto_1
    return p1
.end method

.method public getDDRTypeInfoShow()Ljava/lang/String;
    .locals 1

    const-string v0, "DDR3"

    return-object v0
.end method

.method public getDVRCameraIndex()I
    .locals 2

    .line 409
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->sCURRENT_HARDWARD_ATTRIBUTE:Ljava/lang/String;

    const-string v1, "SECONDBROAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->sCURRENT_HARDWARD_ATTRIBUTE:Ljava/lang/String;

    const-string v1, "SECONDSTM32"

    .line 410
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->sCURRENT_HARDWARD_ATTRIBUTE:Ljava/lang/String;

    const-string v1, "BROADONEDISC"

    .line 411
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

.method public getOSStandySleepType()I
    .locals 1

    .line 446
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_ANDROID_STANDY_SLEEP_TYPE;->DEFAULT:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_ANDROID_STANDY_SLEEP_TYPE;

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_ANDROID_STANDY_SLEEP_TYPE;->ordinal()I

    move-result v0

    return v0
.end method

.method public getOsVersionBuildDisplay()Ljava/lang/String;
    .locals 4

    .line 320
    sget-wide v0, Landroid/os/Build;->TIME:J

    .line 321
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
    .locals 2

    .line 424
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getDeviceInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZY1C0101"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Octacore Processor V310A "

    return-object v0

    .line 426
    :cond_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getDeviceInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ST1C01D1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getDeviceInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ST1C01D4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 427
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getDeviceInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ST1C01D5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "4-Core AllWinner -"

    return-object v0

    :cond_2
    :goto_0
    const-string v0, "8-Core AllWinner -"

    return-object v0
.end method

.method public getType()Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$SUPPORT_AUDIO_TYPE;
    .locals 1

    .line 385
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$SUPPORT_AUDIO_TYPE;->t3q:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$SUPPORT_AUDIO_TYPE;

    return-object v0
.end method

.method public getUartPort(Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;)I
    .locals 3

    .line 76
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/T3Q_MR1_HardwarePlatform$1;->$SwitchMap$com$hzbhd$midwareproxy$hardware$HardwareConstant$UARTTYPE:[I

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

.method public getbootloaderpath()Ljava/lang/String;
    .locals 1

    const-string v0, "/cache/bootloader"

    return-object v0
.end method

.method public getfactory_hardware_info_path()Ljava/lang/String;
    .locals 1

    const-string v0, "/system/etc/factory_hardware_info"

    return-object v0
.end method

.method public isEQMCUForce_Settings_10()Z
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

    .line 404
    sget-boolean v0, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->hasMpuControlChip6502:Z

    return v0
.end method

.method public ishasMpuControlChipAHD_N3_or_Nvp6158c()Z
    .locals 1

    .line 465
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

.method public setAnalogInputColor(Landroid/hardware/Camera;III)V
    .locals 4

    .line 281
    sget-object p1, Lcom/hzbhd/midwareproxy/hardware/T3Q_MR1_HardwarePlatform;->TAG:Ljava/lang/String;

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

    iget v1, p0, Lcom/hzbhd/midwareproxy/hardware/T3Q_MR1_HardwarePlatform;->mCameraId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget p1, p0, Lcom/hzbhd/midwareproxy/hardware/T3Q_MR1_HardwarePlatform;->mCameraId:I

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 295
    :cond_2
    :goto_0
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

    .line 296
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/bhd_contrast"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 297
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/bhd_saturation"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 298
    invoke-static {p1, p2}, Lcom/hzbhd/midwareproxy/hardware/T3Q_MR1_HardwarePlatform;->WriteTsDev(Ljava/lang/String;I)V

    .line 299
    invoke-static {v2, p3}, Lcom/hzbhd/midwareproxy/hardware/T3Q_MR1_HardwarePlatform;->WriteTsDev(Ljava/lang/String;I)V

    .line 300
    invoke-static {v0, p4}, Lcom/hzbhd/midwareproxy/hardware/T3Q_MR1_HardwarePlatform;->WriteTsDev(Ljava/lang/String;I)V

    .line 302
    sget-object p1, Lcom/hzbhd/midwareproxy/hardware/T3Q_MR1_HardwarePlatform;->TAG:Ljava/lang/String;

    const-string p2, "end setAnalogInputColor "

    invoke-static {p1, p2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public stopServices(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 337
    invoke-virtual {p1, p2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method
