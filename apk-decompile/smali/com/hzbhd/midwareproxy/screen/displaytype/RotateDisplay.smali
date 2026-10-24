.class public Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplay;
.super Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay;
.source "RotateDisplay.java"


# instance fields
.field final TAG:Ljava/lang/String;

.field private mIsInit:Z

.field private portrateFlag_temp:I

.field private portrateFlag_temp2:I


# direct methods
.method public constructor <init>(Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;Landroid/content/Context;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay;-><init>(Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;Landroid/content/Context;I)V

    .line 23
    const-class p1, Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplay;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplay;->TAG:Ljava/lang/String;

    const/4 p1, -0x1

    .line 25
    iput p1, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplay;->portrateFlag_temp:I

    const/4 p1, 0x0

    .line 26
    iput p1, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplay;->portrateFlag_temp2:I

    .line 27
    iput-boolean p1, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplay;->mIsInit:Z

    return-void
.end method


# virtual methods
.method public canRotate(II)Z
    .locals 1

    const/4 p1, 0x1

    if-eq p2, p1, :cond_1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    return p1
.end method

.method public isFobitRotate(II)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    .line 145
    iget-boolean v2, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplay;->mIsInit:Z

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-eqz v2, :cond_1

    .line 146
    invoke-virtual {p0, p1, p2}, Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplay;->canRotate(II)Z

    move-result p1

    if-nez p1, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method

.method public parse([I)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 45
    :cond_0
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplay;->TAG:Ljava/lang/String;

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

    .line 46
    aget v2, p1, v1

    const/4 v3, 0x2

    shr-int/2addr v2, v3

    and-int/2addr v2, v1

    .line 47
    aget p1, p1, v1

    shr-int/lit8 p1, p1, 0x6

    and-int/lit16 p1, p1, 0xff

    .line 48
    iget-object v4, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplay;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " , parse portrateFlag: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0, v2, p1}, Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplay;->isFobitRotate(II)Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    :cond_1
    if-eqz p1, :cond_8

    if-eq p1, v1, :cond_5

    if-eq p1, v3, :cond_2

    goto :goto_1

    .line 84
    :cond_2
    iget v2, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplay;->portrateFlag_temp2:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplay;->portrateFlag_temp2:I

    .line 85
    iget v2, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplay;->portrateFlag_temp:I

    if-eq p1, v2, :cond_3

    .line 86
    iput v0, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplay;->portrateFlag_temp2:I

    .line 88
    :cond_3
    iget v2, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplay;->portrateFlag_temp2:I

    if-le v2, v3, :cond_4

    return v0

    .line 91
    :cond_4
    sget-object v0, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;->DISPLAY_ORIENTATION_90:Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplay;->PRIMARY_DISPLAY_ORIENTATION:I

    goto :goto_1

    .line 72
    :cond_5
    iget v2, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplay;->portrateFlag_temp2:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplay;->portrateFlag_temp2:I

    .line 73
    iget v2, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplay;->portrateFlag_temp:I

    if-eq p1, v2, :cond_6

    .line 74
    iput v0, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplay;->portrateFlag_temp2:I

    .line 76
    :cond_6
    iget v2, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplay;->portrateFlag_temp2:I

    if-le v2, v3, :cond_7

    return v0

    .line 79
    :cond_7
    sget-object v0, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;->DISPLAY_ORIENTATION_0:Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplay;->PRIMARY_DISPLAY_ORIENTATION:I

    goto :goto_1

    :cond_8
    if-nez p1, :cond_a

    .line 60
    iget v2, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplay;->portrateFlag_temp:I

    if-eqz v2, :cond_a

    .line 62
    iget v2, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplay;->PRIMARY_DISPLAY_ORIENTATION:I

    sget-object v3, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;->DISPLAY_ORIENTATION_0:Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;

    invoke-virtual {v3}, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_9

    .line 63
    sget-object v2, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;->DISPLAY_ORIENTATION_90:Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;->ordinal()I

    move-result v2

    goto :goto_0

    .line 64
    :cond_9
    sget-object v2, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;->DISPLAY_ORIENTATION_0:Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;->ordinal()I

    move-result v2

    :goto_0
    iput v2, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplay;->PRIMARY_DISPLAY_ORIENTATION:I

    .line 66
    :cond_a
    iput v0, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplay;->portrateFlag_temp2:I

    .line 95
    :goto_1
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplay;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse portrateFlagendddd 11: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplay;->PRIMARY_DISPLAY_ORIENTATION:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iput p1, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplay;->portrateFlag_temp:I

    .line 98
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplay;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse portrateFlagendddd: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iput-boolean v1, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplay;->mIsInit:Z

    return v1
.end method

.method public rotateScreen(Z)V
    .locals 1

    .line 105
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplay;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "rotateScreen"

    invoke-static {p1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-static {}, Lcom/hzbhd/midwareproxy/misc/MiscOperation;->getMcuOperationInstant()Lcom/hzbhd/midwareproxy/misc/MiscOperation;

    move-result-object p1

    invoke-static {}, Lcom/hzbhd/midwareproxy/misc/MiscOperation;->isPortrateScreen()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/hzbhd/midwareproxy/misc/MiscOperation;->rotateScreen(Z)V

    return-void
.end method

.method public setBootLOGODisplayOrientation0(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplay;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBootLOGODisplayOrientation0 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 114
    :try_start_0
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplay;->mDefaultDisplayResolution:Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->getWidthLand()I

    move-result v1

    iget-object v2, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplay;->mDefaultDisplayResolution:Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->getHeightLand()I

    move-result v2

    invoke-static {p3, v1, v2, p1, v0}, Lcom/hzbhd/midwareproxy/screen/utils/ImageUtil;->toCopyImage(Landroid/graphics/Bitmap;IILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 115
    iget-object p3, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplay;->mScreenBean:Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;

    invoke-virtual {p3}, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->getmDefaultPlayform()Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->setBootLOGODisplayOrientation0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 117
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return v0
.end method

.method public setBootLOGODisplayOrientation180(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 1

    .line 136
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplay;->TAG:Ljava/lang/String;

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
    .locals 1

    .line 141
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplay;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setBootLOGODisplayOrientation270 "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public setBootLOGODisplayOrientation90(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplay;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBootLOGODisplayOrientation90 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplay;->mDefaultDisplayResolution:Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->getWidthPort()I

    move-result v0

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplay;->mDefaultDisplayResolution:Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->getHeightPort()I

    move-result v1

    const/16 v2, 0x5a

    invoke-static {p3, v0, v1, p1, v2}, Lcom/hzbhd/midwareproxy/screen/utils/ImageUtil;->toCopyImage(Landroid/graphics/Bitmap;IILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 128
    iget-object p3, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplay;->mScreenBean:Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;

    invoke-virtual {p3}, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->getmDefaultPlayform()Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->setBootLOGODisplayOrientation90(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 130
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method
