.class public Lcom/hzbhd/midwareproxy/screen/displaytype/Portrate270Display;
.super Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay;
.source "Portrate270Display.java"


# instance fields
.field final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;Landroid/content/Context;I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay;-><init>(Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;Landroid/content/Context;I)V

    .line 13
    const-class p1, Lcom/hzbhd/midwareproxy/screen/displaytype/Portrate270Display;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/Portrate270Display;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public parse([I)Z
    .locals 3

    .line 28
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/Portrate270Display;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parse  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget p1, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/Portrate270Display;->PRIMARY_DISPLAY_ORIENTATION:I

    sget-object v0, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;->DISPLAY_ORIENTATION_270:Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 30
    :cond_0
    sget-object p1, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;->DISPLAY_ORIENTATION_270:Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/Portrate270Display;->PRIMARY_DISPLAY_ORIENTATION:I

    const/4 p1, 0x1

    return p1
.end method

.method public setBootLOGODisplayOrientation0(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public setBootLOGODisplayOrientation180(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public setBootLOGODisplayOrientation270(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/Portrate270Display;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBootLOGODisplayOrientation270 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/Portrate270Display;->mDefaultDisplayResolution:Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->getWidthPort()I

    move-result v0

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/Portrate270Display;->mDefaultDisplayResolution:Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->getHeightPort()I

    move-result v1

    const/16 v2, 0x10e

    invoke-static {p3, v0, v1, p1, v2}, Lcom/hzbhd/midwareproxy/screen/utils/ImageUtil;->toCopyImage(Landroid/graphics/Bitmap;IILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 50
    iget-object p3, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/Portrate270Display;->mScreenBean:Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;

    invoke-virtual {p3}, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->getmDefaultPlayform()Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->setBootLOGODisplayOrientation270(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 52
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public setBootLOGODisplayOrientation90(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
