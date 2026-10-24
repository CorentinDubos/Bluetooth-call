.class public Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay;
.super Ljava/lang/Object;
.source "DefaultDisplay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay$DISPLAY_ORIENTATION;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String;

.field static mScreen:Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay;


# instance fields
.field protected PRIMARY_DISPLAY_ORIENTATION:I

.field protected mContext:Landroid/content/Context;

.field mDefaultDisplayResolution:Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;

.field mScreenBean:Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-class v0, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;Landroid/content/Context;I)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay;->PRIMARY_DISPLAY_ORIENTATION:I

    .line 37
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay;->mScreenBean:Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;

    .line 38
    iput-object p2, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay;->mContext:Landroid/content/Context;

    .line 39
    invoke-virtual {p0, p3}, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay;->setPRIMARY_DISPLAY_ORIENTATION(I)V

    .line 40
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p3}, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->getInstance(Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay;Landroid/content/Context;I)Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay;->mDefaultDisplayResolution:Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;

    return-void
.end method

.method public static getInstance(Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;Landroid/content/Context;Lcom/hzbhd/midwareproxy/screen/data/ScreenBean$DISPLAY_TYPE;I)Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay;
    .locals 4

    .line 55
    sget-object v0, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInstance "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " , "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    sget-object v0, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay;->mScreen:Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay;

    if-nez v0, :cond_7

    .line 57
    sget-object v0, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean$DISPLAY_TYPE;->land_screen:Lcom/hzbhd/midwareproxy/screen/data/ScreenBean$DISPLAY_TYPE;

    if-ne p2, v0, :cond_1

    .line 58
    invoke-static {}, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->isDZ1E0103_PA6()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    new-instance v0, Lcom/hzbhd/midwareproxy/screen/displaytype/LandDisplayMIPI;

    invoke-direct {v0, p0, p1, p3}, Lcom/hzbhd/midwareproxy/screen/displaytype/LandDisplayMIPI;-><init>(Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;Landroid/content/Context;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay;->mScreen:Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay;

    goto :goto_0

    .line 61
    :cond_0
    new-instance v0, Lcom/hzbhd/midwareproxy/screen/displaytype/LandDisplay;

    invoke-direct {v0, p0, p1, p3}, Lcom/hzbhd/midwareproxy/screen/displaytype/LandDisplay;-><init>(Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;Landroid/content/Context;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay;->mScreen:Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay;

    goto :goto_0

    .line 63
    :cond_1
    sget-object v0, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean$DISPLAY_TYPE;->portrate90_screen:Lcom/hzbhd/midwareproxy/screen/data/ScreenBean$DISPLAY_TYPE;

    if-ne p2, v0, :cond_2

    .line 64
    new-instance v0, Lcom/hzbhd/midwareproxy/screen/displaytype/Portrate90Display;

    invoke-direct {v0, p0, p1, p3}, Lcom/hzbhd/midwareproxy/screen/displaytype/Portrate90Display;-><init>(Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;Landroid/content/Context;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay;->mScreen:Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay;

    goto :goto_0

    .line 65
    :cond_2
    sget-object v0, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean$DISPLAY_TYPE;->rotate_screen:Lcom/hzbhd/midwareproxy/screen/data/ScreenBean$DISPLAY_TYPE;

    if-ne p2, v0, :cond_3

    .line 66
    new-instance v0, Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplay;

    invoke-direct {v0, p0, p1, p3}, Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplay;-><init>(Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;Landroid/content/Context;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay;->mScreen:Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay;

    goto :goto_0

    .line 67
    :cond_3
    sget-object v0, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean$DISPLAY_TYPE;->rotate_screen_by_hand:Lcom/hzbhd/midwareproxy/screen/data/ScreenBean$DISPLAY_TYPE;

    if-ne p2, v0, :cond_4

    .line 68
    new-instance v0, Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplayByHand;

    invoke-direct {v0, p0, p1, p3}, Lcom/hzbhd/midwareproxy/screen/displaytype/RotateDisplayByHand;-><init>(Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;Landroid/content/Context;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay;->mScreen:Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay;

    goto :goto_0

    .line 69
    :cond_4
    sget-object v0, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean$DISPLAY_TYPE;->portrate270_screen:Lcom/hzbhd/midwareproxy/screen/data/ScreenBean$DISPLAY_TYPE;

    if-ne p2, v0, :cond_5

    .line 70
    new-instance v0, Lcom/hzbhd/midwareproxy/screen/displaytype/Portrate270Display;

    invoke-direct {v0, p0, p1, p3}, Lcom/hzbhd/midwareproxy/screen/displaytype/Portrate270Display;-><init>(Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;Landroid/content/Context;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay;->mScreen:Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay;

    goto :goto_0

    .line 72
    :cond_5
    invoke-static {}, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->isDZ1E0103_PA6()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 73
    new-instance v0, Lcom/hzbhd/midwareproxy/screen/displaytype/LandDisplayMIPI;

    invoke-direct {v0, p0, p1, p3}, Lcom/hzbhd/midwareproxy/screen/displaytype/LandDisplayMIPI;-><init>(Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;Landroid/content/Context;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay;->mScreen:Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay;

    goto :goto_0

    .line 75
    :cond_6
    new-instance v0, Lcom/hzbhd/midwareproxy/screen/displaytype/LandDisplay;

    invoke-direct {v0, p0, p1, p3}, Lcom/hzbhd/midwareproxy/screen/displaytype/LandDisplay;-><init>(Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;Landroid/content/Context;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay;->mScreen:Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay;

    .line 79
    :cond_7
    :goto_0
    sget-object p0, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay;->mScreen:Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    sget-object p0, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay;->mScreen:Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay;

    return-object p0
.end method


# virtual methods
.method public getDefaultDisplayResolution()Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay;->mDefaultDisplayResolution:Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;

    return-object v0
.end method

.method public getPRIMARY_DISPLAY_ORIENTATION()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay;->PRIMARY_DISPLAY_ORIENTATION:I

    return v0
.end method

.method public isSplitScreenState()Z
    .locals 3

    .line 139
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "split_mode"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public parse([I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public rotateScreen(Z)V
    .locals 3

    .line 102
    sget-object v0, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rotateScreen "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->startEQ(Landroid/content/Context;)V

    return-void
.end method

.method public setBootLOGODisplayOrientation0(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 3

    .line 115
    sget-object v0, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBootLOGODisplayOrientation0 222 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 118
    :try_start_0
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay;->mDefaultDisplayResolution:Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->getWidthLand()I

    move-result v1

    iget-object v2, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay;->mDefaultDisplayResolution:Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/screen/resolution/DefaultDisplayResolution;->getHeightLand()I

    move-result v2

    invoke-static {p3, v1, v2, p1, v0}, Lcom/hzbhd/midwareproxy/screen/utils/ImageUtil;->toCopyImage(Landroid/graphics/Bitmap;IILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 119
    iget-object p3, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay;->mScreenBean:Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;

    invoke-virtual {p3}, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->getmDefaultPlayform()Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->setBootLOGODisplayOrientation0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 121
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return v0
.end method

.method public setBootLOGODisplayOrientation180(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 1

    .line 131
    sget-object p2, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay;->TAG:Ljava/lang/String;

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

    .line 135
    sget-object p2, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay;->TAG:Ljava/lang/String;

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
    .locals 1

    .line 127
    sget-object p2, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setBootLOGODisplayOrientation90 "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public setPRIMARY_DISPLAY_ORIENTATION(I)V
    .locals 0

    .line 98
    iput p1, p0, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay;->PRIMARY_DISPLAY_ORIENTATION:I

    return-void
.end method
