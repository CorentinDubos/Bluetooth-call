.class public Lcom/hzbhd/midwareproxy/screen/displayplatform/RK3399PPlatform;
.super Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;
.source "RK3399PPlatform.java"


# instance fields
.field final TAG:Ljava/lang/String;

.field private mSettings:Lcom/hzbhd/midwareproxy/setting/bean/Settings;


# direct methods
.method public constructor <init>(Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;Landroid/content/Context;)V
    .locals 1

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;-><init>(Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;Landroid/content/Context;)V

    .line 31
    const-class p1, Lcom/hzbhd/midwareproxy/screen/displayplatform/RK3399PPlatform;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/RK3399PPlatform;->TAG:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/RK3399PPlatform;->mContext:Landroid/content/Context;

    .line 43
    invoke-virtual {p2}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/RK3399PPlatform;->LogoFilePath:Ljava/lang/String;

    .line 44
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/RK3399PPlatform;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/setting/bean/Settings;->getInstance(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/setting/bean/Settings;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/RK3399PPlatform;->mSettings:Lcom/hzbhd/midwareproxy/setting/bean/Settings;

    .line 47
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/RK3399PPlatform;->LogoFilePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/logo.bmp"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/RK3399PPlatform;->mBootLOGODisplayOrientation0:Ljava/lang/String;

    .line 49
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/RK3399PPlatform;->LogoFilePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/logo_port.bmp"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/RK3399PPlatform;->mBootLOGODisplayOrientation90:Ljava/lang/String;

    .line 51
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/RK3399PPlatform;->LogoFilePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/logo_port2.bmp"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/RK3399PPlatform;->mBootLOGODisplayOrientation180:Ljava/lang/String;

    .line 53
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/RK3399PPlatform;->LogoFilePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/logo_port1.bmp"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/RK3399PPlatform;->mBootLOGODisplayOrientation270:Ljava/lang/String;

    .line 56
    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object p1

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->getInstance(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;

    move-result-object p2

    invoke-virtual {p2}, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->getmBOOTLOADER_TYPE()Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$BOOTLOADER_TYPE;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->getBootLogoPath(Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$BOOTLOADER_TYPE;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/RK3399PPlatform;->mBootLOGO0:Ljava/lang/String;

    const-string p1, "/data/bhd/logo_port.bmp"

    .line 58
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/RK3399PPlatform;->mBootLOGO90:Ljava/lang/String;

    const-string p1, "/data/bhd/logo_port2.bmp"

    .line 60
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/RK3399PPlatform;->mBootLOGO180:Ljava/lang/String;

    const-string p1, "/data/bhd/logo_port1.bmp"

    .line 62
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/RK3399PPlatform;->mBootLOGO270:Ljava/lang/String;

    return-void
.end method

.method private setRkBookLogo(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 8

    .line 163
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/RK3399PPlatform;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "window"

    .line 164
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/RK3399PPlatform;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_setRkBookLogo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  , "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :try_start_0
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 168
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 169
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 170
    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 171
    iget p2, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 172
    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "0"

    const-string v5, "bhd.rotate.logo"

    const-wide/16 v6, 0x14

    if-gt v0, p2, :cond_1

    if-le v1, v3, :cond_0

    goto :goto_0

    .line 193
    :cond_0
    :try_start_1
    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    .line 194
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-static {p1}, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->bhd_set_rkogo(Ljava/lang/String;)I

    .line 199
    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    .line 200
    invoke-static {v5, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/RK3399PPlatform;->TAG:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "_setRkBookLogo 22"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 179
    :cond_1
    :goto_0
    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    .line 180
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-static {p1}, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->bhd_set_rkogo(Ljava/lang/String;)I

    .line 182
    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    .line 186
    invoke-static {v5, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/RK3399PPlatform;->TAG:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "_setRkBookLogo 11"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 210
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/RK3399PPlatform;->TAG:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "_setRkBookLogo 44"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p2

    .line 206
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 207
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/RK3399PPlatform;->TAG:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "_setRkBookLogo 33"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public getBootDisplayOrientation()I
    .locals 2

    const-string v0, "persist.sys.display.orientation"

    const/4 v1, 0x0

    .line 123
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public setBootDisplayOrientation()V
    .locals 8

    const-string v0, ","

    .line 84
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/RK3399PPlatform;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setStartUpDisplayOrientation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/RK3399PPlatform;->mScreenBean:Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;

    invoke-virtual {v3}, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->getDisplay_orientation()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/RK3399PPlatform;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/RK3399PPlatform;->mScreenBean:Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->getDisplay_orientation()I

    move-result v2

    const-string v3, "is_portrate_screen"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 86
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/RK3399PPlatform;->mScreenBean:Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->getDisplay_orientation()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/hzbhd/midwareproxy/screen/displayplatform/RK3399PPlatform;->setBootDisplayOrientation(I)V

    .line 91
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/RK3399PPlatform;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/hzbhd/midwareproxy/screen/displayplatform/RK3399PPlatform;->vcfg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/RK3399PPlatform;->bhdCFG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/hzbhd/midwareproxy/screen/displayplatform/RK3399PPlatform;->vcfg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 94
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/RK3399PPlatform;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->getInstance(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;

    move-result-object v3

    iget-object v4, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/RK3399PPlatform;->mScreenBean:Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;

    invoke-virtual {v4}, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->getDisplay_orientation()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->getKernelCameraPosition(I)Ljava/lang/String;

    move-result-object v3

    .line 95
    iget-object v4, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/RK3399PPlatform;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/RK3399PPlatform;->mSettings:Lcom/hzbhd/midwareproxy/setting/bean/Settings;

    invoke-virtual {v6}, Lcom/hzbhd/midwareproxy/setting/bean/Settings;->getCameraMode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " 666 mSettings "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v4, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/RK3399PPlatform;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->getInstance(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;

    move-result-object v4

    iget-object v5, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/RK3399PPlatform;->mScreenBean:Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;

    invoke-virtual {v5}, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->getDisplay_orientation()I

    move-result v5

    iget-object v6, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/RK3399PPlatform;->mSettings:Lcom/hzbhd/midwareproxy/setting/bean/Settings;

    invoke-virtual {v6}, Lcom/hzbhd/midwareproxy/setting/bean/Settings;->getCameraMode()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    invoke-virtual {v4, v5, v7}, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->getCameraAngleAndMirror(IZ)I

    move-result v4

    .line 97
    iget-object v5, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/RK3399PPlatform;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "666 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, " "

    .line 98
    invoke-virtual {v3, v5, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 99
    iget-object v5, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/RK3399PPlatform;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "666222 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "rotate="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/RK3399PPlatform;->mScreenBean:Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;

    invoke-virtual {v6}, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->getDisplay_orientationToAngle()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " camera="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u0000"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/RK3399PPlatform;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "666222 outputString "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/RK3399PPlatform;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/hzbhd/midwareproxy/screen/displayplatform/RK3399PPlatform;->vcfg:Ljava/lang/String;

    invoke-static {v3, v4, v0}, Lcom/hzbhd/midwareproxy/utils/FileUtils;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object v0

    instance-of v0, v0, Lcom/hzbhd/midwareproxy/hardware/RK3399P_HardwarePlatform;

    if-eqz v0, :cond_1

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data/bhd/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/hzbhd/midwareproxy/screen/displayplatform/RK3399PPlatform;->vcfg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 106
    :cond_1
    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/screen/utils/FileOperationUtils;->isSameFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 107
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/RK3399PPlatform;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FileOperationUtils "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_2

    .line 109
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/RK3399PPlatform;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "22 FileOperationUtils "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-static {v1, v2}, Lcom/softwinner/SystemMix;->cp(Ljava/lang/String;Ljava/lang/String;)Z

    .line 111
    invoke-static {}, Lcom/hzbhd/midwareproxy/screen/utils/BHD_pwriteUtils;->bhd_cfg_pwrite()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 114
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method public setBootDisplayOrientation(I)V
    .locals 1

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "persist.sys.display.orientation"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBootLOGODisplayOrientation0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setBootLOGODisplayOrientation0(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 138
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/RK3399PPlatform;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBootLOGODisplayOrientation0 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 140
    invoke-direct {p0, p1, p2, v0}, Lcom/hzbhd/midwareproxy/screen/displayplatform/RK3399PPlatform;->setRkBookLogo(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public setBootLOGODisplayOrientation180()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setBootLOGODisplayOrientation180(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 152
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/RK3399PPlatform;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBootLOGODisplayOrientation180 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 154
    invoke-direct {p0, p1, p2, v0}, Lcom/hzbhd/midwareproxy/screen/displayplatform/RK3399PPlatform;->setRkBookLogo(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public setBootLOGODisplayOrientation270()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setBootLOGODisplayOrientation270(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 158
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/RK3399PPlatform;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBootLOGODisplayOrientation270 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 160
    invoke-direct {p0, p1, p2, v0}, Lcom/hzbhd/midwareproxy/screen/displayplatform/RK3399PPlatform;->setRkBookLogo(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public setBootLOGODisplayOrientation90()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setBootLOGODisplayOrientation90(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 146
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/RK3399PPlatform;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBootLOGODisplayOrientation90 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 148
    invoke-direct {p0, p1, p2, v0}, Lcom/hzbhd/midwareproxy/screen/displayplatform/RK3399PPlatform;->setRkBookLogo(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method
