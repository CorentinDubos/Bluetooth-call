.class public Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;
.super Ljava/lang/Object;
.source "DefaultPlayform.java"


# static fields
.field static final TAG:Ljava/lang/String;

.field static mScreen:Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;

.field public static vcfg:Ljava/lang/String;


# instance fields
.field protected LogoFilePath:Ljava/lang/String;

.field protected bhdCFG:Ljava/lang/String;

.field protected mBootLOGO0:Ljava/lang/String;

.field protected mBootLOGO180:Ljava/lang/String;

.field protected mBootLOGO270:Ljava/lang/String;

.field protected mBootLOGO90:Ljava/lang/String;

.field protected mBootLOGODisplayOrientation0:Ljava/lang/String;

.field protected mBootLOGODisplayOrientation180:Ljava/lang/String;

.field protected mBootLOGODisplayOrientation270:Ljava/lang/String;

.field protected mBootLOGODisplayOrientation90:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field mScreenBean:Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-class v0, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->TAG:Ljava/lang/String;

    const-string v0, "bhd.cfg"

    .line 82
    sput-object v0, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->vcfg:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;Landroid/content/Context;)V
    .locals 2

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->mBootLOGODisplayOrientation0:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->mBootLOGODisplayOrientation90:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->mBootLOGODisplayOrientation180:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->mBootLOGODisplayOrientation270:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->mBootLOGO0:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->mBootLOGO90:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->mBootLOGO180:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->mBootLOGO270:Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->getbootloaderpath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->bhdCFG:Ljava/lang/String;

    const-string v0, "/data/data/com.hzbhd.carlogoselect/"

    .line 86
    iput-object v0, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->LogoFilePath:Ljava/lang/String;

    .line 89
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->mScreenBean:Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;

    .line 90
    iput-object p2, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->mContext:Landroid/content/Context;

    .line 93
    invoke-virtual {p2}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->LogoFilePath:Ljava/lang/String;

    .line 96
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->LogoFilePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/logo.bmp"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->mBootLOGODisplayOrientation0:Ljava/lang/String;

    .line 98
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->LogoFilePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/logo_hd_port.bmp"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->mBootLOGODisplayOrientation90:Ljava/lang/String;

    .line 100
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->LogoFilePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/logo_hd_port2.bmp"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->mBootLOGODisplayOrientation180:Ljava/lang/String;

    .line 102
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->LogoFilePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/logo_hd_port1.bmp"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->mBootLOGODisplayOrientation270:Ljava/lang/String;

    .line 105
    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object p1

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->getInstance(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;

    move-result-object p2

    invoke-virtual {p2}, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->getmBOOTLOADER_TYPE()Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$BOOTLOADER_TYPE;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->getBootLogoPath(Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$BOOTLOADER_TYPE;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->mBootLOGO0:Ljava/lang/String;

    .line 106
    sget-object p1, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mBootLOGO0  "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->mBootLOGO0:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->bhdCFG:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "logo_hd_port.bmp"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->mBootLOGO90:Ljava/lang/String;

    .line 110
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->bhdCFG:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "logo_hd_port2.bmp"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->mBootLOGO180:Ljava/lang/String;

    .line 112
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->bhdCFG:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "logo_hd_port1.bmp"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->mBootLOGO270:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized getInstance(Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;Landroid/content/Context;Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;)Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;
    .locals 1

    const-class p2, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;

    monitor-enter p2

    .line 117
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->mScreen:Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;

    if-nez v0, :cond_4

    .line 118
    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object v0

    instance-of v0, v0, Lcom/hzbhd/midwareproxy/hardware/RK3399P_HardwarePlatform;

    if-eqz v0, :cond_0

    .line 119
    new-instance v0, Lcom/hzbhd/midwareproxy/screen/displayplatform/RK3399PPlatform;

    invoke-direct {v0, p0, p1}, Lcom/hzbhd/midwareproxy/screen/displayplatform/RK3399PPlatform;-><init>(Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;Landroid/content/Context;)V

    sput-object v0, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->mScreen:Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;

    goto :goto_0

    .line 120
    :cond_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object v0

    instance-of v0, v0, Lcom/hzbhd/midwareproxy/hardware/T3O_MR1_HardwarePlatform;

    if-eqz v0, :cond_1

    .line 121
    new-instance v0, Lcom/hzbhd/midwareproxy/screen/displayplatform/T3OPlatform;

    invoke-direct {v0, p0, p1}, Lcom/hzbhd/midwareproxy/screen/displayplatform/T3OPlatform;-><init>(Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;Landroid/content/Context;)V

    sput-object v0, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->mScreen:Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;

    goto :goto_0

    .line 122
    :cond_1
    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object v0

    instance-of v0, v0, Lcom/hzbhd/midwareproxy/hardware/T3N_MR1_HardwarePlatform;

    if-eqz v0, :cond_2

    .line 123
    new-instance v0, Lcom/hzbhd/midwareproxy/screen/displayplatform/T3NPlatform;

    invoke-direct {v0, p0, p1}, Lcom/hzbhd/midwareproxy/screen/displayplatform/T3NPlatform;-><init>(Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;Landroid/content/Context;)V

    sput-object v0, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->mScreen:Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;

    goto :goto_0

    .line 124
    :cond_2
    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object v0

    instance-of v0, v0, Lcom/hzbhd/midwareproxy/hardware/T3Q_MR1_HardwarePlatform;

    if-eqz v0, :cond_3

    .line 125
    new-instance v0, Lcom/hzbhd/midwareproxy/screen/displayplatform/T3QPlatform;

    invoke-direct {v0, p0, p1}, Lcom/hzbhd/midwareproxy/screen/displayplatform/T3QPlatform;-><init>(Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;Landroid/content/Context;)V

    sput-object v0, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->mScreen:Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;

    goto :goto_0

    .line 127
    :cond_3
    new-instance v0, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;

    invoke-direct {v0, p0, p1}, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;-><init>(Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;Landroid/content/Context;)V

    sput-object v0, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->mScreen:Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;

    .line 130
    :cond_4
    :goto_0
    sget-object p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mScreen "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->mScreen:Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    sget-object p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->mScreen:Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit p2

    throw p0
.end method


# virtual methods
.method public getBootDisplayOrientation()I
    .locals 2

    const-string v0, "persist.sys.is_portrate_screen"

    const/4 v1, 0x0

    .line 143
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getmBootLOGO0()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->mBootLOGO0:Ljava/lang/String;

    return-object v0
.end method

.method public getmBootLOGO180()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->mBootLOGO180:Ljava/lang/String;

    return-object v0
.end method

.method public getmBootLOGO270()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->mBootLOGO270:Ljava/lang/String;

    return-object v0
.end method

.method public getmBootLOGO90()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->mBootLOGO90:Ljava/lang/String;

    return-object v0
.end method

.method public getmBootLOGODisplayOrientation0()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->mBootLOGODisplayOrientation0:Ljava/lang/String;

    return-object v0
.end method

.method public getmBootLOGODisplayOrientation180()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->mBootLOGODisplayOrientation180:Ljava/lang/String;

    return-object v0
.end method

.method public getmBootLOGODisplayOrientation270()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->mBootLOGODisplayOrientation270:Ljava/lang/String;

    return-object v0
.end method

.method public getmBootLOGODisplayOrientation90()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->mBootLOGODisplayOrientation90:Ljava/lang/String;

    return-object v0
.end method

.method public setBootDisplayOrientation()V
    .locals 0

    return-void
.end method

.method public setBootDisplayOrientation(I)V
    .locals 1

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "persist.sys.is_portrate_screen"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBootLOGODisplayOrientation0(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 158
    sget-object v0, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->TAG:Ljava/lang/String;

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

    :try_start_0
    const-string v1, "/bootlogo"

    .line 162
    invoke-static {v1}, Lcom/softwinner/SystemMix;->mkdir(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 163
    sget-object p1, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->TAG:Ljava/lang/String;

    const-string p2, "SystemMix.mkdir ERROR!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 166
    :cond_0
    sget-object v1, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->TAG:Ljava/lang/String;

    const-string v2, "SystemMix.mkdir succeed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    sget-object v1, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->TAG:Ljava/lang/String;

    const-string v2, "SystemMix.mount succeed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    sget-object v1, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->TAG:Ljava/lang/String;

    const-string v2, "desPath:"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-static {p1, p2}, Lcom/softwinner/SystemMix;->cp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 174
    sget-object p1, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->TAG:Ljava/lang/String;

    const-string p2, "SystemMix.cp ERROR!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 178
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public setBootLOGODisplayOrientation180(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 190
    sget-object v0, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->TAG:Ljava/lang/String;

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

    .line 191
    invoke-virtual {p0, p1, p2}, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->setBootLOGODisplayOrientation0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setBootLOGODisplayOrientation270(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 194
    sget-object v0, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->TAG:Ljava/lang/String;

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

    .line 195
    invoke-virtual {p0, p1, p2}, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->setBootLOGODisplayOrientation0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setBootLOGODisplayOrientation90(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 186
    sget-object v0, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->TAG:Ljava/lang/String;

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

    .line 187
    invoke-virtual {p0, p1, p2}, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->setBootLOGODisplayOrientation0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
