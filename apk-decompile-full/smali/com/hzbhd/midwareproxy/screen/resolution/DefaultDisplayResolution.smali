.class public Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;
.super Ljava/lang/Object;
.source "DefaultDisplayResolution.java"


# static fields
.field static final TAG:Ljava/lang/String;

.field static mScreen:Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;


# instance fields
.field protected height:I

.field protected heightLand:I

.field protected heightPort:I

.field protected mBOOTLOADER_TYPE:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$BOOTLOADER_TYPE;

.field protected mContext:Landroid/content/Context;

.field mDefaultDisplay:Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay;

.field private navigation_bar_height:I

.field private status_bar_height:I

.field protected width:I

.field protected widthLand:I

.field protected widthPort:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 4

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x400

    .line 25
    iput v0, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->width:I

    const/16 v1, 0x258

    .line 26
    iput v1, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->height:I

    .line 27
    iput v0, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->widthLand:I

    .line 28
    iput v1, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->heightLand:I

    .line 29
    iput v1, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->widthPort:I

    .line 30
    iput v0, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->heightPort:I

    .line 152
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$BOOTLOADER_TYPE;->BOOTLOADER_HD:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$BOOTLOADER_TYPE;

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->mBOOTLOADER_TYPE:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$BOOTLOADER_TYPE;

    .line 61
    sget-object v0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DefaultDisplayResolution "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->mContext:Landroid/content/Context;

    .line 63
    iput p2, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->width:I

    .line 64
    iput p3, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->height:I

    .line 65
    iput p2, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->widthLand:I

    .line 66
    iput p3, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->heightLand:I

    mul-int v0, p3, p3

    .line 67
    div-int/2addr v0, p2

    .line 68
    div-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x2

    .line 69
    iput v0, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->heightPort:I

    .line 70
    iput p3, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->widthPort:I

    .line 71
    invoke-static {}, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->isDZ1E0103_PA6()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iput p3, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->heightPort:I

    .line 73
    iput p2, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->widthPort:I

    .line 75
    :cond_0
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->status_bar_height:I

    .line 76
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->navigation_bar_height:I

    .line 77
    sget-object p1, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->widthPort:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->heightPort:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->status_bar_height:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->navigation_bar_height:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;
    .locals 8

    .line 96
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string/jumbo v1, "window"

    .line 98
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 99
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 100
    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 101
    sget-object v1, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mScreen displayMetrics "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/util/DisplayMetrics;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    sget-object v1, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->mScreen:Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;

    if-nez v1, :cond_13

    .line 103
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v2, 0x400

    const/16 v3, 0x300

    if-eq v1, v3, :cond_12

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v1, v3, :cond_0

    goto/16 :goto_2

    .line 106
    :cond_0
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v3, 0x258

    if-eq v1, v3, :cond_11

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v1, v3, :cond_1

    goto/16 :goto_1

    .line 109
    :cond_1
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v4, 0x438

    const/16 v5, 0x780

    if-eq v1, v4, :cond_10

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v1, v4, :cond_2

    goto/16 :goto_0

    .line 112
    :cond_2
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v4, 0x1e0

    const/16 v6, 0x500

    if-ne v1, v6, :cond_3

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-eq v1, v4, :cond_4

    :cond_3
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v1, v6, :cond_5

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ne v1, v4, :cond_5

    .line 116
    :cond_4
    new-instance v0, Lcom/hzbhd/midwareproxy/screen/resolution/Display1280x480;

    invoke-direct {v0, p0, v6, v4}, Lcom/hzbhd/midwareproxy/screen/resolution/Display1280x480;-><init>(Landroid/content/Context;II)V

    sput-object v0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->mScreen:Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;

    goto/16 :goto_3

    .line 117
    :cond_5
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v7, 0x2d0

    if-ne v1, v6, :cond_6

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-eq v1, v7, :cond_7

    :cond_6
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v1, v6, :cond_9

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ne v1, v7, :cond_9

    .line 121
    :cond_7
    invoke-static {}, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->isDZ1E0103_PA6()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 122
    new-instance v0, Lcom/hzbhd/midwareproxy/screen/resolution/Display1280x720MIPI;

    invoke-direct {v0, p0, v6, v7}, Lcom/hzbhd/midwareproxy/screen/resolution/Display1280x720MIPI;-><init>(Landroid/content/Context;II)V

    sput-object v0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->mScreen:Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;

    goto :goto_3

    .line 124
    :cond_8
    new-instance v0, Lcom/hzbhd/midwareproxy/screen/resolution/Display1280x720;

    invoke-direct {v0, p0, v6, v7}, Lcom/hzbhd/midwareproxy/screen/resolution/Display1280x720;-><init>(Landroid/content/Context;II)V

    sput-object v0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->mScreen:Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;

    goto :goto_3

    .line 126
    :cond_9
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v6, 0x320

    if-ne v1, v6, :cond_a

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-eq v1, v4, :cond_b

    :cond_a
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v1, v6, :cond_c

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ne v1, v4, :cond_c

    .line 130
    :cond_b
    new-instance v0, Lcom/hzbhd/midwareproxy/screen/resolution/Display800x480;

    invoke-direct {v0, p0, v6, v4}, Lcom/hzbhd/midwareproxy/screen/resolution/Display800x480;-><init>(Landroid/content/Context;II)V

    sput-object v0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->mScreen:Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;

    goto :goto_3

    .line 132
    :cond_c
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v1, v7, :cond_d

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-eq v1, v5, :cond_e

    :cond_d
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v1, v5, :cond_f

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ne v0, v7, :cond_f

    .line 139
    :cond_e
    new-instance v0, Lcom/hzbhd/midwareproxy/screen/resolution/Display1920x720;

    invoke-direct {v0, p0, v5, v7}, Lcom/hzbhd/midwareproxy/screen/resolution/Display1920x720;-><init>(Landroid/content/Context;II)V

    sput-object v0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->mScreen:Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;

    goto :goto_3

    .line 142
    :cond_f
    new-instance v0, Lcom/hzbhd/midwareproxy/screen/resolution/Display1024x600;

    invoke-direct {v0, p0, v2, v3}, Lcom/hzbhd/midwareproxy/screen/resolution/Display1024x600;-><init>(Landroid/content/Context;II)V

    sput-object v0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->mScreen:Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;

    goto :goto_3

    .line 111
    :cond_10
    :goto_0
    new-instance v0, Lcom/hzbhd/midwareproxy/screen/resolution/Display1920x1080;

    invoke-direct {v0, p0, v5, v4}, Lcom/hzbhd/midwareproxy/screen/resolution/Display1920x1080;-><init>(Landroid/content/Context;II)V

    sput-object v0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->mScreen:Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;

    goto :goto_3

    .line 108
    :cond_11
    :goto_1
    new-instance v0, Lcom/hzbhd/midwareproxy/screen/resolution/Display1024x600;

    invoke-direct {v0, p0, v2, v3}, Lcom/hzbhd/midwareproxy/screen/resolution/Display1024x600;-><init>(Landroid/content/Context;II)V

    sput-object v0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->mScreen:Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;

    goto :goto_3

    .line 105
    :cond_12
    :goto_2
    new-instance v0, Lcom/hzbhd/midwareproxy/screen/resolution/Display1024x768;

    invoke-direct {v0, p0, v2, v3}, Lcom/hzbhd/midwareproxy/screen/resolution/Display1024x768;-><init>(Landroid/content/Context;II)V

    sput-object v0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->mScreen:Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;

    .line 145
    :cond_13
    :goto_3
    sget-object p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mScreen "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->mScreen:Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    sget-object p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->mScreen:Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;

    return-object p0
.end method

.method public static getInstance(Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay;Landroid/content/Context;I)Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;
    .locals 0

    .line 93
    invoke-static {p1}, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->getInstance(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;

    move-result-object p0

    return-object p0
.end method

.method public static isDZ1E0103_PA6()Z
    .locals 2

    .line 295
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getDeviceInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DZ1E0103-PA6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getDeviceInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DZ1E0113-PA6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->isKC1E0126_PA9()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->isKC1E0150_PA9()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->isMIPI90_SCREEN()Z

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

.method public static isKC1E0126_PA9()Z
    .locals 2

    .line 306
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getDeviceInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KC1E0126-PA9"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isKC1E0150_PA9()Z
    .locals 2

    .line 309
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getDeviceInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KC1E0150-PA9"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isMIPI90_SCREEN()Z
    .locals 1

    .line 312
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->IS_MIPI90_SCREEN:Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/DefaultSharedUtil;->getBool(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isPA6()Z
    .locals 2

    .line 303
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getDeviceInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PA6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public UseGPUStrategy()V
    .locals 0

    return-void
.end method

.method public UseHWCStrategy()V
    .locals 0

    return-void
.end method

.method public getCameraAngle(I)I
    .locals 3

    .line 208
    sget-object v0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCameraAngle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x4

    return p1

    :cond_1
    return v0
.end method

.method public getCameraAngleAndMirror(IZ)I
    .locals 1

    .line 291
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->getCameraAngle(I)I

    move-result v0

    invoke-virtual {p0, p1, p2}, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->getMirror(IZ)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public getCameraPosition(I)Ljava/lang/String;
    .locals 5

    .line 169
    sget-object v0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCameraPosition "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget v0, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->widthLand:I

    const/16 v1, 0x1c2

    sub-int/2addr v0, v1

    const-string v2, "0 0 "

    const-string v3, " "

    if-eqz p1, :cond_3

    const/4 v4, 0x1

    if-eq p1, v4, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 183
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->widthLand:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->heightLand:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 181
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->widthPort:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 179
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->widthLand:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->heightLand:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 177
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " 0 "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->widthPort:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 175
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->widthLand:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->heightLand:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCameraPositionSplit(IZ)Ljava/lang/String;
    .locals 5

    const-string v0, "0 "

    const/4 v1, 0x2

    const-string v2, " "

    if-eqz p1, :cond_6

    const/4 v3, 0x1

    const-string v4, " 0 "

    if-eq p1, v3, :cond_4

    if-eq p1, v1, :cond_2

    const/4 v3, 0x3

    if-eq p1, v3, :cond_0

    .line 281
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "0 0 "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->widthLand:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->heightLand:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    .line 276
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget p2, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->navigation_bar_height:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->widthLand:I

    iget v0, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->navigation_bar_height:I

    sub-int/2addr p2, v0

    iget v0, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->status_bar_height:I

    sub-int/2addr p2, v0

    div-int/2addr p2, v1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->widthPort:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 278
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->widthLand:I

    div-int/2addr p2, v1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->widthLand:I

    div-int/2addr p2, v1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->heightLand:I

    iget v0, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->status_bar_height:I

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    if-eqz p2, :cond_3

    .line 270
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->widthLand:I

    div-int/2addr p2, v1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->widthLand:I

    div-int/2addr p2, v1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->heightLand:I

    iget v0, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->status_bar_height:I

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 272
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->status_bar_height:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->widthLand:I

    div-int/2addr p2, v1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->heightLand:I

    iget v0, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->status_bar_height:I

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    if-eqz p2, :cond_5

    .line 264
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->widthLand:I

    div-int/2addr p2, v1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->widthLand:I

    div-int/2addr p2, v1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->heightLand:I

    iget v0, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->status_bar_height:I

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 266
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget p2, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->navigation_bar_height:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->widthLand:I

    iget v0, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->navigation_bar_height:I

    sub-int/2addr p2, v0

    iget v0, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->status_bar_height:I

    sub-int/2addr p2, v0

    div-int/2addr p2, v1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->widthPort:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    if-eqz p2, :cond_7

    .line 258
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->status_bar_height:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->widthLand:I

    div-int/2addr p2, v1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->heightLand:I

    iget v0, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->status_bar_height:I

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 260
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->widthLand:I

    div-int/2addr p2, v1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->widthLand:I

    div-int/2addr p2, v1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->heightLand:I

    iget v0, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->status_bar_height:I

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHeight()I
    .locals 3

    .line 56
    sget-object v0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHeight "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget v0, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->height:I

    return v0
.end method

.method public getHeightLand()I
    .locals 3

    .line 38
    sget-object v0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHeightLand "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->heightLand:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget v0, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->heightLand:I

    return v0
.end method

.method public getHeightPort()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->widthPort:I

    return v0
.end method

.method public getKernelCameraPosition(I)Ljava/lang/String;
    .locals 7

    .line 194
    iget v0, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->widthLand:I

    const/4 v1, 0x2

    div-int/2addr v0, v1

    add-int/lit16 v0, v0, -0xe1

    const-string v2, "0 0 "

    const-string v3, " "

    if-eqz p1, :cond_3

    const/4 v4, 0x1

    const-string v5, " 0 "

    const/16 v6, 0x1c2

    if-eq p1, v4, :cond_2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    .line 205
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->widthLand:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->heightLand:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 203
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->widthPort:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 201
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->widthLand:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->heightLand:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 199
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->widthPort:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 197
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->widthLand:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->heightLand:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMirror(IZ)I
    .locals 3

    .line 229
    sget-object v0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMirror : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_4

    const/16 p2, 0x10

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    const/16 v1, 0x20

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    return p2

    :cond_2
    return v1

    :cond_3
    return p2

    :cond_4
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getMirror(IZI)I
    .locals 3

    .line 224
    sget-object v0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMirror : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "channel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0, p1, p2}, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->getMirror(IZ)I

    move-result p1

    return p1
.end method

.method public getNavigationBarHeight(Landroid/content/Context;)I
    .locals 3

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "navigation_bar_height"

    const-string v1, "dimen"

    const-string v2, "android"

    .line 87
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 88
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1
.end method

.method public getStatusBarHeight(Landroid/content/Context;)I
    .locals 3

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string/jumbo v0, "status_bar_height"

    const-string v1, "dimen"

    const-string v2, "android"

    .line 81
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 82
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1
.end method

.method public getWidth()I
    .locals 3

    .line 51
    sget-object v0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWidth "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget v0, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->width:I

    return v0
.end method

.method public getWidthLand()I
    .locals 3

    .line 33
    sget-object v0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWidthLand "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->widthLand:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget v0, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->widthLand:I

    return v0
.end method

.method public getWidthPort()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->heightPort:I

    return v0
.end method

.method public getmBOOTLOADER_TYPE()Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$BOOTLOADER_TYPE;
    .locals 3

    .line 155
    sget-object v0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBootLOGO0  mBOOTLOADER_TYPE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->mBOOTLOADER_TYPE:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$BOOTLOADER_TYPE;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->mBOOTLOADER_TYPE:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$BOOTLOADER_TYPE;

    return-object v0
.end method

.method public setHWCStrategy(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public setLogo(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public setmBOOTLOADER_TYPE(Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$BOOTLOADER_TYPE;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->mBOOTLOADER_TYPE:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$BOOTLOADER_TYPE;

    return-void
.end method
