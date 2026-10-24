.class public Lcom/hzbhd/midwareproxy/hardware/T3N_MR1_HardwarePlatform;
.super Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;
.source "T3N_MR1_HardwarePlatform.java"


# static fields
.field public static final BOOTLOADER_HD_PATH:Ljava/lang/String; = "/bootloader/logo_hd.bmp"

.field public static final BOOTLOADER_SD_PATH:Ljava/lang/String; = "/bootloader/logo_sd.bmp"

.field public static final ISNEEDMCUAVOUTDISPLAYSETTINGS:Z = false

.field public static final ISNEEDSYNCCAMERAPAUSERESUMEHANDER:Z = false

.field public static final ISNOSIGNALFORBITCAMERAPREVIEW:Z = false

.field public static final ISNeedOpenCamera_TWICE:Z = true

.field public static final T3N_CAMERAID_DEFAULT:I = 0x7

.field public static final T3N_CAMERAID_MPEG:I = 0x4

.field public static final T3N_ONEBROAR_CAMERAID_AUXIN:I = 0x5

.field public static final T3N_ONEBROAR_CAMERAID_BACKCAMERA:I = 0x7

.field public static final T3N_ONEBROAR_CAMERAID_PRECAMERA:I = 0x6

.field public static final T3N_UART_PORT_BT:I = 0x3

.field public static final T3N_UART_PORT_MCU:I = 0x5

.field public static final T3N_UART_PORT_MPEG:I = 0x4

.field public static final T3N_UART_PORT_NULL:I = -0x1

.field public static final T3N_UART_PORT_TPMS:I = 0x6

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lcom/hzbhd/midwareproxy/hardware/T3N_MR1_HardwarePlatform;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/midwareproxy/hardware/T3N_MR1_HardwarePlatform;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;-><init>()V

    return-void
.end method

.method private getCameraID_CW1C0103_N94()I
    .locals 11

    const-string v0, "RIGHT_TURN_LAMP_DET"

    const/4 v1, 0x0

    .line 299
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "LEFT_TURN_LAMP_DET"

    .line 300
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "JniBoda_gpioGetReverse"

    const/4 v3, 0x1

    .line 301
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v4, "refreshPreview_CW1C0103_N94"

    const-string v5, ""

    .line 302
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 303
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RIGHT_TURN_LAMP_DET= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "qqq"

    invoke-static {v6, v5}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LEFT_TURN_LAMP_DET= "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "JniBoda_gpioGetReverse= "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "refreshPreview_CW1C0103_N94= "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v5

    sget-object v6, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->IS_LEFT_RIGHT_CAMERA:Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;

    invoke-virtual {v6}, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getSharedBool(Ljava/lang/String;)Z

    const/4 v5, 0x7

    if-nez v2, :cond_0

    return v5

    :cond_0
    const/4 v6, 0x4

    if-ne v0, v3, :cond_1

    return v6

    :cond_1
    const/4 v8, 0x6

    if-ne v1, v3, :cond_2

    return v8

    :cond_2
    const-string v9, "__n94__back"

    .line 320
    invoke-virtual {v4, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    return v5

    :cond_3
    const-string v9, "__n94__precamera"

    .line 322
    invoke-virtual {v4, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    return v8

    :cond_4
    const-string v9, "__n94__middlecamera"

    .line 324
    invoke-virtual {v4, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    return v6

    .line 327
    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "qqq22"

    invoke-static {v10, v9}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "qqq3366"

    invoke-static {v7, v4}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_6

    return v5

    :cond_6
    if-ne v0, v3, :cond_7

    return v6

    :cond_7
    if-ne v1, v3, :cond_8

    return v8

    :cond_8
    return v5
.end method

.method private static readFileStr(Ljava/io/File;)Ljava/lang/String;
    .locals 1

    .line 259
    :try_start_0
    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 260
    new-instance p0, Ljava/io/BufferedReader;

    invoke-direct {p0, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 261
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 262
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 265
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

    .line 277
    sget-object v0, Lcom/hzbhd/midware/constant/AudioAsp7719Constant;->AudSrcChanTbl_T3:[Lcom/hzbhd/midware/constant/AudioAsp7719Constant$AudSrcChannel;

    return-object v0
.end method

.method public getBootLogoPath(Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$BOOTLOADER_TYPE;)Ljava/lang/String;
    .locals 1

    .line 231
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/T3N_MR1_HardwarePlatform$1;->$SwitchMap$com$hzbhd$midwareproxy$hardware$HardwareConstant$BOOTLOADER_TYPE:[I

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
    .locals 3

    .line 86
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/T3N_MR1_HardwarePlatform$1;->$SwitchMap$com$hzbhd$midwareproxy$hardware$HardwareConstant$CAMERA_TYPE:[I

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x4

    const/4 v2, 0x7

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    if-eq p1, v1, :cond_1

    const/4 v0, 0x5

    :cond_0
    move v1, v2

    :cond_1
    return v1
.end method

.method public getCameraID(Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$MCUSOFTVERSION;Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;)I
    .locals 4

    .line 109
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/T3N_MR1_HardwarePlatform$1;->$SwitchMap$com$hzbhd$midwareproxy$hardware$HardwareConstant$MCUSOFTVERSION:[I

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$MCUSOFTVERSION;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x4

    const/4 v2, 0x5

    const/4 v3, 0x7

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 133
    :cond_0
    sget-object p1, Lcom/hzbhd/midwareproxy/hardware/T3N_MR1_HardwarePlatform$1;->$SwitchMap$com$hzbhd$midwareproxy$hardware$HardwareConstant$CAMERA_TYPE:[I

    invoke-virtual {p2}, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;->ordinal()I

    move-result p2

    aget p1, p1, p2

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 164
    :pswitch_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->ishasMpuControlChip6502()Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_0

    .line 168
    :cond_1
    sget-object p1, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->IS_THREE_CAMERA:Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/app/DefaultSharedUtil;->getBool(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto/16 :goto_1

    .line 174
    :pswitch_1
    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->ishasMpuControlChip6502()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 157
    :pswitch_2
    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->ishasMpuControlChip6502()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 150
    :pswitch_3
    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->ishasMpuControlChip6502()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    .line 143
    :pswitch_4
    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->ishasMpuControlChip6502()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x6

    goto :goto_1

    .line 135
    :pswitch_5
    sget-object p1, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->IS_THREE_CAMERA:Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/app/DefaultSharedUtil;->getBool(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 136
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/hardware/T3N_MR1_HardwarePlatform;->getCameraID_CW1C0103_N94()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "22qq_getCameraID_CW1C0103_N94"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/hardware/T3N_MR1_HardwarePlatform;->getCameraID_CW1C0103_N94()I

    move-result v1

    goto :goto_1

    :cond_4
    :goto_0
    :pswitch_6
    move v1, v3

    goto :goto_1

    .line 111
    :cond_5
    sget-object p1, Lcom/hzbhd/midwareproxy/hardware/T3N_MR1_HardwarePlatform$1;->$SwitchMap$com$hzbhd$midwareproxy$hardware$HardwareConstant$CAMERA_TYPE:[I

    invoke-virtual {p2}, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;->ordinal()I

    move-result p2

    aget p1, p1, p2

    packed-switch p1, :pswitch_data_1

    goto :goto_0

    :goto_1
    :pswitch_7
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public getCvbsStatus(ZII)I
    .locals 4

    const/4 p1, 0x0

    .line 190
    :try_start_0
    const-class p3, Landroid/hardware/Camera;

    const-string v0, "getCVBSInStatus"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, p1

    invoke-virtual {p3, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    .line 192
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->IS_THREE_CAMERA:Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/DefaultSharedUtil;->getBool(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-array p2, v1, [Ljava/lang/Object;

    .line 193
    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/hardware/T3N_MR1_HardwarePlatform;->getCameraID_CW1C0103_N94()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, p1

    invoke-virtual {p3, v2, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0

    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    .line 196
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p1

    invoke-virtual {p3, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_0
    const-string p3, "DeviceDifferen:"

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCVBSInStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p2

    :catch_0
    move-exception p2

    .line 201
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    return p1
.end method

.method public getDDRTypeInfoShow()Ljava/lang/String;
    .locals 1

    const-string v0, "DDR3"

    return-object v0
.end method

.method public getDVRCameraIndex()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getOsVersionBuildDisplay()Ljava/lang/String;
    .locals 3

    .line 219
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    const/16 v1, 0x19

    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSocChipInfoShow()Ljava/lang/String;
    .locals 1

    const-string v0, "4-Core AllWinner -"

    return-object v0
.end method

.method public getUartPort(Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$UARTTYPE;)I
    .locals 3

    .line 65
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/T3N_MR1_HardwarePlatform$1;->$SwitchMap$com$hzbhd$midwareproxy$hardware$HardwareConstant$UARTTYPE:[I

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

.method public ishasMpuControlChip6502()Z
    .locals 1

    .line 282
    sget-boolean v0, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->hasMpuControlChip6502:Z

    return v0
.end method

.method public setAnalogInputColor(Landroid/hardware/Camera;III)V
    .locals 8

    .line 209
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

    .line 210
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

    .line 212
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public stopServices(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 224
    invoke-virtual {p1, p2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method
