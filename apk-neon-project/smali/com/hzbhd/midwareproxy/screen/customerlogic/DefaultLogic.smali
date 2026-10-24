.class public Lcom/hzbhd/midwareproxy/screen/customerlogic/DefaultLogic;
.super Ljava/lang/Object;
.source "DefaultLogic.java"


# static fields
.field static TAG:Ljava/lang/String;

.field static mScreen:Lcom/hzbhd/midwareproxy/screen/customerlogic/DefaultLogic;


# instance fields
.field mContext:Landroid/content/Context;

.field screenBean:Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-class v0, Lcom/hzbhd/midwareproxy/screen/customerlogic/DefaultLogic;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/midwareproxy/screen/customerlogic/DefaultLogic;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/screen/customerlogic/DefaultLogic;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/hzbhd/midwareproxy/screen/customerlogic/DefaultLogic;->screenBean:Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;

    return-void
.end method

.method public static getDisplayProductType()I
    .locals 5

    .line 116
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->DISPLAY_PRODUCT_TYPE:Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/DefaultSharedUtil;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "DISPLAY_PRODUCT_TYPE"

    const/4 v2, 0x0

    .line 117
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 118
    sget-object v2, Lcom/hzbhd/midwareproxy/screen/customerlogic/DefaultLogic;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDisplayProductType. : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;)Lcom/hzbhd/midwareproxy/screen/customerlogic/DefaultLogic;
    .locals 3

    const-class v0, Lcom/hzbhd/midwareproxy/screen/customerlogic/DefaultLogic;

    monitor-enter v0

    .line 21
    :try_start_0
    sget-object v1, Lcom/hzbhd/midwareproxy/screen/customerlogic/DefaultLogic;->mScreen:Lcom/hzbhd/midwareproxy/screen/customerlogic/DefaultLogic;

    if-nez v1, :cond_2

    .line 22
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getDeviceInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FY1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 23
    new-instance v1, Lcom/hzbhd/midwareproxy/screen/customerlogic/Logic_FY1;

    invoke-direct {v1, p0, p1}, Lcom/hzbhd/midwareproxy/screen/customerlogic/Logic_FY1;-><init>(Landroid/content/Context;Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;)V

    sput-object v1, Lcom/hzbhd/midwareproxy/screen/customerlogic/DefaultLogic;->mScreen:Lcom/hzbhd/midwareproxy/screen/customerlogic/DefaultLogic;

    goto :goto_0

    .line 24
    :cond_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getDeviceInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KC1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 25
    new-instance v1, Lcom/hzbhd/midwareproxy/screen/customerlogic/Logic_KC1;

    invoke-direct {v1, p0, p1}, Lcom/hzbhd/midwareproxy/screen/customerlogic/Logic_KC1;-><init>(Landroid/content/Context;Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;)V

    sput-object v1, Lcom/hzbhd/midwareproxy/screen/customerlogic/DefaultLogic;->mScreen:Lcom/hzbhd/midwareproxy/screen/customerlogic/DefaultLogic;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v1, Lcom/hzbhd/midwareproxy/screen/customerlogic/Logic_KC1;

    invoke-direct {v1, p0, p1}, Lcom/hzbhd/midwareproxy/screen/customerlogic/Logic_KC1;-><init>(Landroid/content/Context;Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;)V

    sput-object v1, Lcom/hzbhd/midwareproxy/screen/customerlogic/DefaultLogic;->mScreen:Lcom/hzbhd/midwareproxy/screen/customerlogic/DefaultLogic;

    .line 36
    :cond_2
    :goto_0
    sget-object p0, Lcom/hzbhd/midwareproxy/screen/customerlogic/DefaultLogic;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mScreen "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/hzbhd/midwareproxy/screen/customerlogic/DefaultLogic;->mScreen:Lcom/hzbhd/midwareproxy/screen/customerlogic/DefaultLogic;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    sget-object p0, Lcom/hzbhd/midwareproxy/screen/customerlogic/DefaultLogic;->mScreen:Lcom/hzbhd/midwareproxy/screen/customerlogic/DefaultLogic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static isLandScreen()Z
    .locals 4

    .line 96
    invoke-static {}, Lcom/hzbhd/midwareproxy/screen/customerlogic/DefaultLogic;->getDisplayProductType()I

    move-result v0

    .line 97
    sget-object v1, Lcom/hzbhd/midwareproxy/screen/customerlogic/DefaultLogic;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isLandScreen. : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    sget-object v1, Lcom/hzbhd/midwareproxy/screen/customerlogic/DefaultLogic;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->toList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isOneDisplayOrientation()Z
    .locals 3

    .line 139
    invoke-static {}, Lcom/hzbhd/midwareproxy/screen/customerlogic/DefaultLogic;->getDisplayProductType()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 140
    invoke-static {}, Lcom/hzbhd/midwareproxy/screen/customerlogic/DefaultLogic;->getDisplayProductType()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 141
    invoke-static {}, Lcom/hzbhd/midwareproxy/screen/customerlogic/DefaultLogic;->getDisplayProductType()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public static isPort270Screen()Z
    .locals 4

    .line 88
    invoke-static {}, Lcom/hzbhd/midwareproxy/screen/customerlogic/DefaultLogic;->getDisplayProductType()I

    move-result v0

    .line 89
    sget-object v1, Lcom/hzbhd/midwareproxy/screen/customerlogic/DefaultLogic;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPort270Screen. : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isPort90Screen()Z
    .locals 4

    .line 80
    invoke-static {}, Lcom/hzbhd/midwareproxy/screen/customerlogic/DefaultLogic;->getDisplayProductType()I

    move-result v0

    .line 81
    sget-object v1, Lcom/hzbhd/midwareproxy/screen/customerlogic/DefaultLogic;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPort90Screen. : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isRotateScreen()Z
    .locals 4

    .line 105
    invoke-static {}, Lcom/hzbhd/midwareproxy/screen/customerlogic/DefaultLogic;->getDisplayProductType()I

    move-result v0

    .line 106
    sget-object v1, Lcom/hzbhd/midwareproxy/screen/customerlogic/DefaultLogic;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRotateScreen. : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    sget-object v1, Lcom/hzbhd/midwareproxy/screen/customerlogic/DefaultLogic;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->toList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isRotateScreenAndRotaScreenByHnad()Z
    .locals 4

    .line 69
    invoke-static {}, Lcom/hzbhd/midwareproxy/screen/customerlogic/DefaultLogic;->getDisplayProductType()I

    move-result v0

    .line 70
    sget-object v1, Lcom/hzbhd/midwareproxy/screen/customerlogic/DefaultLogic;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRotateScreenAndRotaScreenByHnad. : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method public getBootUp_display_orientation()I
    .locals 1

    .line 61
    sget-object v0, Lcom/hzbhd/midwareproxy/screen/customerlogic/DefaultLogic;->mScreen:Lcom/hzbhd/midwareproxy/screen/customerlogic/DefaultLogic;

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/screen/customerlogic/DefaultLogic;->getBootUp_display_orientation()I

    move-result v0

    return v0
.end method

.method public getPrimary_display_orientation()I
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/customerlogic/DefaultLogic;->screenBean:Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->getDisplay_orientation()I

    move-result v0

    return v0
.end method

.method public isDisplayOrientation90()Z
    .locals 3

    .line 64
    sget-object v0, Lcom/hzbhd/midwareproxy/screen/customerlogic/DefaultLogic;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "screenBean.display_orientation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hzbhd/midwareproxy/screen/customerlogic/DefaultLogic;->screenBean:Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->getDisplay_orientation()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/customerlogic/DefaultLogic;->screenBean:Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->getDisplay_orientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public rotateScreen(Z)V
    .locals 1

    .line 148
    sget-object v0, Lcom/hzbhd/midwareproxy/screen/customerlogic/DefaultLogic;->mScreen:Lcom/hzbhd/midwareproxy/screen/customerlogic/DefaultLogic;

    invoke-virtual {v0, p1}, Lcom/hzbhd/midwareproxy/screen/customerlogic/DefaultLogic;->rotateScreen(Z)V

    return-void
.end method

.method public screenResponse([I)V
    .locals 1

    .line 46
    sget-object v0, Lcom/hzbhd/midwareproxy/screen/customerlogic/DefaultLogic;->mScreen:Lcom/hzbhd/midwareproxy/screen/customerlogic/DefaultLogic;

    invoke-virtual {v0, p1}, Lcom/hzbhd/midwareproxy/screen/customerlogic/DefaultLogic;->screenResponse([I)V

    return-void
.end method

.method public screenResponseStop()V
    .locals 0

    return-void
.end method

.method public setDisplayOrientation()V
    .locals 3

    .line 53
    sget-object v0, Lcom/hzbhd/midwareproxy/screen/customerlogic/DefaultLogic;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDisplayOrientation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hzbhd/midwareproxy/screen/customerlogic/DefaultLogic;->screenBean:Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->getDisplay_orientation()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    sget-object v0, Lcom/hzbhd/midwareproxy/screen/customerlogic/DefaultLogic;->mScreen:Lcom/hzbhd/midwareproxy/screen/customerlogic/DefaultLogic;

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/screen/customerlogic/DefaultLogic;->setDisplayOrientation()V

    return-void
.end method
