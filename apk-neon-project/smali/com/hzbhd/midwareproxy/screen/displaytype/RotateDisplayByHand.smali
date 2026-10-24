.class public Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplayByHand;
.super Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay;
.source "RotateDisplayByHand.java"


# instance fields
.field final TAG:Ljava/lang/String;

.field private portrateFlag_temp:I


# direct methods
.method public constructor <init>(Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;Landroid/content/Context;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay;-><init>(Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;Landroid/content/Context;I)V

    .line 21
    const-class p1, Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplayByHand;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplayByHand;->TAG:Ljava/lang/String;

    const/4 p1, -0x1

    .line 34
    iput p1, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplayByHand;->portrateFlag_temp:I

    return-void
.end method


# virtual methods
.method public parse([I)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 50
    :cond_0
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplayByHand;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    invoke-static {p1, v3}, Lcom/hzbhd/misc/jni/FgeString;->bytes2HexString([II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 51
    aget p1, p1, v1

    shr-int/lit8 p1, p1, 0x6

    and-int/lit16 p1, p1, 0xff

    .line 52
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplayByHand;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parse portrateFlag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_5

    if-eq p1, v1, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    goto :goto_0

    .line 83
    :cond_1
    iget v2, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplayByHand;->PRIMARY_DISPLAY_ORIENTATION:I

    sget-object v3, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;->DISPLAY_ORIENTATION_270:Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;

    invoke-virtual {v3}, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_2

    return v0

    .line 84
    :cond_2
    sget-object v0, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;->DISPLAY_ORIENTATION_270:Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplayByHand;->PRIMARY_DISPLAY_ORIENTATION:I

    goto :goto_0

    .line 79
    :cond_3
    iget v2, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplayByHand;->PRIMARY_DISPLAY_ORIENTATION:I

    sget-object v3, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;->DISPLAY_ORIENTATION_90:Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;

    invoke-virtual {v3}, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_4

    return v0

    .line 80
    :cond_4
    sget-object v0, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;->DISPLAY_ORIENTATION_90:Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplayByHand;->PRIMARY_DISPLAY_ORIENTATION:I

    goto :goto_0

    .line 73
    :cond_5
    iget v2, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplayByHand;->PRIMARY_DISPLAY_ORIENTATION:I

    sget-object v3, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;->DISPLAY_ORIENTATION_0:Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;

    invoke-virtual {v3}, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_6

    return v0

    .line 74
    :cond_6
    sget-object v0, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;->DISPLAY_ORIENTATION_0:Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplayByHand;->PRIMARY_DISPLAY_ORIENTATION:I

    .line 88
    :goto_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplayByHand;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse portrateFlagendddd 11: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplayByHand;->PRIMARY_DISPLAY_ORIENTATION:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iput p1, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplayByHand;->portrateFlag_temp:I

    .line 91
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplayByHand;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse portrateFlagendddd: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public rotateScreen(Z)V
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplayByHand;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " rotateScreen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplayByHand;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->startEQ(Landroid/content/Context;)V

    return-void
.end method

.method public setBootLOGODisplayOrientation0(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 3

    .line 100
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplayByHand;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBootLOGODisplayOrientation0 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplayByHand;->mDefaultDisplayResolution:Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->getWidthLand()I

    move-result v0

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplayByHand;->mDefaultDisplayResolution:Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->getHeightLand()I

    move-result v1

    iget-object v2, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplayByHand;->mScreenBean:Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->getmDefaultPlayform()Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->getmBootLOGODisplayOrientation0()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v0, v1, v2, p1}, Lcom/hzbhd/midwareproxy/screen/utils/ImageUtil;->toCopyImage(Landroid/graphics/Bitmap;IILjava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    .line 104
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplayByHand;->mScreenBean:Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->getmDefaultPlayform()Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;

    move-result-object v0

    invoke-virtual {v0, p3, p2}, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->setBootLOGODisplayOrientation0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p2

    .line 106
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    return p1
.end method

.method public setBootLOGODisplayOrientation180(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 1

    .line 122
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplayByHand;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setBootLOGODisplayOrientation180 "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public setBootLOGODisplayOrientation270(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 4

    .line 126
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplayByHand;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBootLOGODisplayOrientation270 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplayByHand;->mDefaultDisplayResolution:Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->getWidthPort()I

    move-result v0

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplayByHand;->mDefaultDisplayResolution:Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->getHeightPort()I

    move-result v1

    iget-object v2, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplayByHand;->mScreenBean:Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->getmDefaultPlayform()Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->getmBootLOGODisplayOrientation270()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10e

    invoke-static {p3, v0, v1, v2, v3}, Lcom/hzbhd/midwareproxy/screen/utils/ImageUtil;->toCopyImage(Landroid/graphics/Bitmap;IILjava/lang/String;I)Ljava/lang/String;

    .line 130
    iget-object p3, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplayByHand;->mScreenBean:Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;

    invoke-virtual {p3}, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->getmDefaultPlayform()Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->setBootLOGODisplayOrientation270(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 132
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public setBootLOGODisplayOrientation90(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 4

    .line 111
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplayByHand;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBootLOGODisplayOrientation90 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplayByHand;->mDefaultDisplayResolution:Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->getWidthPort()I

    move-result v0

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplayByHand;->mDefaultDisplayResolution:Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->getHeightPort()I

    move-result v1

    iget-object v2, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplayByHand;->mScreenBean:Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->getmDefaultPlayform()Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->getmBootLOGODisplayOrientation90()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x5a

    invoke-static {p3, v0, v1, v2, v3}, Lcom/hzbhd/midwareproxy/screen/utils/ImageUtil;->toCopyImage(Landroid/graphics/Bitmap;IILjava/lang/String;I)Ljava/lang/String;

    .line 115
    iget-object p3, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplayByHand;->mScreenBean:Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;

    invoke-virtual {p3}, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->getmDefaultPlayform()Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->setBootLOGODisplayOrientation90(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 117
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method
