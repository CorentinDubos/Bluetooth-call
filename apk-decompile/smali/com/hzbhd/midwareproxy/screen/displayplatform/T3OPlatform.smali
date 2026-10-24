.class public Lcom/hzbhd/midwareproxy/screen/displayplatform/T3OPlatform;
.super Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;
.source "T3OPlatform.java"


# instance fields
.field final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;-><init>(Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;Landroid/content/Context;)V

    .line 18
    const-class p1, Lcom/hzbhd/midwareproxy/screen/displayplatform/T3OPlatform;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/T3OPlatform;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBootDisplayOrientation()I
    .locals 2

    const-string v0, "persist.sys.is_portrate_screen"

    const/4 v1, 0x0

    .line 63
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public setBootDisplayOrientation()V
    .locals 5

    .line 32
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/T3OPlatform;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setStartUpDisplayOrientation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/T3OPlatform;->mScreenBean:Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->getDisplay_orientation()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/T3OPlatform;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/T3OPlatform;->mScreenBean:Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->getDisplay_orientation()I

    move-result v1

    const-string v2, "is_portrate_screen"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 34
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/T3OPlatform;->mScreenBean:Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->getDisplay_orientation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/screen/displayplatform/T3OPlatform;->setBootDisplayOrientation(I)V

    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/T3OPlatform;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    sget-object v0, Lcom/hzbhd/midwareproxy/screen/displayplatform/T3OPlatform;->vcfg:Ljava/lang/String;

    .line 40
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/T3OPlatform;->bhdCFG:Ljava/lang/String;

    sget-object v0, Lcom/hzbhd/midwareproxy/screen/displayplatform/T3OPlatform;->vcfg:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "is_portrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/T3OPlatform;->mScreenBean:Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->getDisplay_orientation()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-static {}, Lcom/hzbhd/midwareproxy/screen/utils/FileOperationUtils;->readBHDcfg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 43
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/screen/displayplatform/T3OPlatform;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/hzbhd/midwareproxy/screen/utils/FileOperationUtils;->readBHDcfg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " , FileOperationUtils "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_0

    .line 45
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/screen/utils/FileOperationUtils;->writeBHDcfg(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setBootDisplayOrientation(I)V
    .locals 1

    .line 74
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
