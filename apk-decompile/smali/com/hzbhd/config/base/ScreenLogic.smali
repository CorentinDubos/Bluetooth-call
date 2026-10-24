.class public Lcom/hzbhd/config/base/ScreenLogic;
.super Ljava/lang/Object;
.source "ScreenLogic.java"


# static fields
.field static TAG:Ljava/lang/String;

.field static orientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-class v0, Lcom/hzbhd/config/base/ScreenLogic;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/config/base/ScreenLogic;->TAG:Ljava/lang/String;

    const/4 v0, -0x1

    .line 16
    sput v0, Lcom/hzbhd/config/base/ScreenLogic;->orientation:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getScreenOrientation(Landroid/content/Context;)I
    .locals 2

    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "user_rotation"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static isLandScreen(Landroid/content/Context;)Z
    .locals 2

    .line 53
    invoke-static {p0}, Lcom/hzbhd/config/base/ScreenLogic;->getScreenOrientation(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isLandUIAndPortUI(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "IKWE0101-PE5"

    .line 31
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "IKWE0102-PE5"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "BHDE0110-PE5"

    .line 32
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isPortScreen(Landroid/content/Context;)Z
    .locals 2

    .line 65
    invoke-static {p0}, Lcom/hzbhd/config/base/ScreenLogic;->getScreenOrientation(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public static isRotateScreen()Z
    .locals 2

    .line 22
    sget-object v0, Lcom/hzbhd/config/androidconfig/BHDAndroidConfigXML$SHARED_KEY;->DISPLAY_PRODUCT_TYPE:Lcom/hzbhd/config/androidconfig/BHDAndroidConfigXML$SHARED_KEY;

    invoke-virtual {v0}, Lcom/hzbhd/config/androidconfig/BHDAndroidConfigXML$SHARED_KEY;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/DefaultSharedUtil;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isRotateScreenByHand()Z
    .locals 2

    .line 26
    sget-object v0, Lcom/hzbhd/config/androidconfig/BHDAndroidConfigXML$SHARED_KEY;->DISPLAY_PRODUCT_TYPE:Lcom/hzbhd/config/androidconfig/BHDAndroidConfigXML$SHARED_KEY;

    invoke-virtual {v0}, Lcom/hzbhd/config/androidconfig/BHDAndroidConfigXML$SHARED_KEY;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/DefaultSharedUtil;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isRotateScreenOrRotateScreenByHand()Z
    .locals 1

    .line 19
    invoke-static {}, Lcom/hzbhd/config/base/ScreenLogic;->isRotateScreen()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/hzbhd/config/base/ScreenLogic;->isRotateScreenByHand()Z

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

.method public static isScreenOreitaionChanged(Landroid/content/res/Configuration;)Z
    .locals 3

    .line 37
    sget v0, Lcom/hzbhd/config/base/ScreenLogic;->orientation:I

    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 38
    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    sput p0, Lcom/hzbhd/config/base/ScreenLogic;->orientation:I

    const/4 p0, 0x1

    return p0

    .line 41
    :cond_0
    sget-object v0, Lcom/hzbhd/config/base/ScreenLogic;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isScreenOreitaionChanged  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static setOrientation(I)V
    .locals 0

    .line 46
    sput p0, Lcom/hzbhd/config/base/ScreenLogic;->orientation:I

    return-void
.end method
