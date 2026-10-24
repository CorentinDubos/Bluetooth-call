.class public Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;
.super Ljava/lang/Object;
.source "ScreenBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/screen/data/ScreenBean$DISPLAY_TYPE;
    }
.end annotation


# instance fields
.field Hrdware_Platform:Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

.field final TAG:Ljava/lang/String;

.field display_orientation:I

.field display_type:Lcom/hzbhd/midwareproxy/screen/data/ScreenBean$DISPLAY_TYPE;

.field private mContext:Landroid/content/Context;

.field mDefaultDisplay:Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay;

.field mDefaultPlayform:Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;

.field mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-class v0, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->display_orientation:I

    .line 21
    sget-object v0, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean$DISPLAY_TYPE;->land_screen:Lcom/hzbhd/midwareproxy/screen/data/ScreenBean$DISPLAY_TYPE;

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->display_type:Lcom/hzbhd/midwareproxy/screen/data/ScreenBean$DISPLAY_TYPE;

    .line 22
    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object v0

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->Hrdware_Platform:Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    .line 147
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->mHandler:Landroid/os/Handler;

    .line 35
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->mContext:Landroid/content/Context;

    .line 36
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  , ScreenBean , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->display_orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0, p2}, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->setDisplay_type(I)V

    .line 38
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->Hrdware_Platform:Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    invoke-static {p0, p1, p2}, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->getInstance(Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;Landroid/content/Context;Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;)Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;

    move-result-object p2

    iput-object p2, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->mDefaultPlayform:Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;

    .line 39
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->getBootDisplayOrientation()I

    move-result p2

    iput p2, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->display_orientation:I

    .line 40
    invoke-virtual {p0, p2}, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->setDisplay_orientation(I)V

    .line 42
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->display_type:Lcom/hzbhd/midwareproxy/screen/data/ScreenBean$DISPLAY_TYPE;

    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->getDisplay_orientation()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay;->getInstance(Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;Landroid/content/Context;Lcom/hzbhd/midwareproxy/screen/data/ScreenBean$DISPLAY_TYPE;I)Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->mDefaultDisplay:Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay;

    .line 43
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ScreenBean mDefaultPlayform : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->mDefaultPlayform:Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getBootDisplayOrientation()I
    .locals 3

    .line 153
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDefaultPlayform "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->mDefaultPlayform:Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->mDefaultPlayform:Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->getBootDisplayOrientation()I

    move-result v0

    return v0
.end method

.method public getDisplay_orientation()I
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDisplay_orientation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->display_orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget v0, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->display_orientation:I

    return v0
.end method

.method public getDisplay_orientationToAngle()I
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDisplay_orientationToAngle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->display_orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget v0, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->display_orientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/16 v0, 0x10e

    return v0

    :cond_1
    const/16 v0, 0xb4

    return v0

    :cond_2
    const/16 v0, 0x5a

    return v0
.end method

.method public getDisplay_type()Lcom/hzbhd/midwareproxy/screen/data/ScreenBean$DISPLAY_TYPE;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->display_type:Lcom/hzbhd/midwareproxy/screen/data/ScreenBean$DISPLAY_TYPE;

    return-object v0
.end method

.method public getHrdware_Platform()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->Hrdware_Platform:Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    return-object v0
.end method

.method public getmDefaultDisplay()Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->mDefaultDisplay:Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay;

    return-object v0
.end method

.method public getmDefaultPlayform()Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->mDefaultPlayform:Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;

    return-object v0
.end method

.method public isMidwareService()Z
    .locals 4

    .line 149
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , isMidwareService "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.hzbhd.midware.service"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public parse([I)Z
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->mDefaultDisplay:Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay;

    invoke-virtual {v0, p1}, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay;->parse([I)Z

    move-result p1

    .line 126
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parse  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->mDefaultDisplay:Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay;

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay;->getPRIMARY_DISPLAY_ORIENTATION()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->setDisplay_orientation(I)V

    :cond_0
    const/4 v0, -0x1

    const-string/jumbo v1, "rotate_debug"

    .line 129
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_1

    const/4 p1, 0x0

    .line 131
    invoke-static {v1, p1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->setDisplay_orientation(I)V

    const/4 p1, 0x1

    :cond_1
    return p1
.end method

.method public rotateScreen(Z)V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->mDefaultDisplay:Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay;

    invoke-virtual {v0, p1}, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay;->rotateScreen(Z)V

    return-void
.end method

.method public setBootDisplayOrientation()V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean$1;

    invoke-direct {v1, p0}, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean$1;-><init>(Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setBootLOGO(Landroid/graphics/Bitmap;)Z
    .locals 3

    .line 162
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->mDefaultDisplay:Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay;

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->mDefaultPlayform:Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->getmBootLOGODisplayOrientation0()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->mDefaultPlayform:Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->getmBootLOGO0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay;->setBootLOGODisplayOrientation0(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->mDefaultDisplay:Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay;

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->mDefaultPlayform:Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;

    .line 163
    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->getmBootLOGODisplayOrientation90()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->mDefaultPlayform:Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->getmBootLOGO90()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay;->setBootLOGODisplayOrientation90(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->mDefaultDisplay:Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay;

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->mDefaultPlayform:Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;

    .line 164
    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->getmBootLOGODisplayOrientation180()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->mDefaultPlayform:Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->getmBootLOGO180()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay;->setBootLOGODisplayOrientation180(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->mDefaultDisplay:Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay;

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->mDefaultPlayform:Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;

    .line 165
    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->getmBootLOGODisplayOrientation270()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->mDefaultPlayform:Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->getmBootLOGO270()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/hzbhd/midwareproxy/screen/displaytype/DefaultDisplay;->setBootLOGODisplayOrientation270(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setDisplay_orientation(I)V
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "display_type 1 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->display_type:Lcom/hzbhd/midwareproxy/screen/data/ScreenBean$DISPLAY_TYPE;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "  , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->display_type:Lcom/hzbhd/midwareproxy/screen/data/ScreenBean$DISPLAY_TYPE;

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean$DISPLAY_TYPE;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->display_type:Lcom/hzbhd/midwareproxy/screen/data/ScreenBean$DISPLAY_TYPE;

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean$DISPLAY_TYPE;->ordinal()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    iput v1, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->display_orientation:I

    goto :goto_0

    .line 80
    :cond_1
    iput p1, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->display_orientation:I

    goto :goto_0

    .line 76
    :cond_2
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "display_type 22 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->display_type:Lcom/hzbhd/midwareproxy/screen/data/ScreenBean$DISPLAY_TYPE;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iput p1, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->display_orientation:I

    goto :goto_0

    .line 73
    :cond_3
    iput v1, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->display_orientation:I

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    .line 70
    iput p1, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->display_orientation:I

    :goto_0
    return-void
.end method

.method public setDisplay_type(I)V
    .locals 1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    sget-object p1, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean$DISPLAY_TYPE;->portrate270_screen:Lcom/hzbhd/midwareproxy/screen/data/ScreenBean$DISPLAY_TYPE;

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->display_type:Lcom/hzbhd/midwareproxy/screen/data/ScreenBean$DISPLAY_TYPE;

    goto :goto_0

    .line 107
    :cond_1
    sget-object p1, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean$DISPLAY_TYPE;->rotate_screen_by_hand:Lcom/hzbhd/midwareproxy/screen/data/ScreenBean$DISPLAY_TYPE;

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->display_type:Lcom/hzbhd/midwareproxy/screen/data/ScreenBean$DISPLAY_TYPE;

    goto :goto_0

    .line 104
    :cond_2
    sget-object p1, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean$DISPLAY_TYPE;->rotate_screen:Lcom/hzbhd/midwareproxy/screen/data/ScreenBean$DISPLAY_TYPE;

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->display_type:Lcom/hzbhd/midwareproxy/screen/data/ScreenBean$DISPLAY_TYPE;

    goto :goto_0

    .line 101
    :cond_3
    sget-object p1, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean$DISPLAY_TYPE;->portrate90_screen:Lcom/hzbhd/midwareproxy/screen/data/ScreenBean$DISPLAY_TYPE;

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->display_type:Lcom/hzbhd/midwareproxy/screen/data/ScreenBean$DISPLAY_TYPE;

    goto :goto_0

    .line 98
    :cond_4
    sget-object p1, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean$DISPLAY_TYPE;->land_screen:Lcom/hzbhd/midwareproxy/screen/data/ScreenBean$DISPLAY_TYPE;

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->display_type:Lcom/hzbhd/midwareproxy/screen/data/ScreenBean$DISPLAY_TYPE;

    :goto_0
    return-void
.end method

.method public setHrdware_Platform(Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->Hrdware_Platform:Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    return-void
.end method
