.class public Lcom/hzbhd/midwareproxy/screen/data/ScreenLogic;
.super Ljava/lang/Object;
.source "ScreenLogic.java"


# static fields
.field static final TAG:Ljava/lang/String;

.field static mScreen:Lcom/hzbhd/midwareproxy/screen/data/ScreenLogic;


# instance fields
.field mContext:Landroid/content/Context;

.field mDefaultLogic:Lcom/hzbhd/midwareproxy/screen/customerlogic/DefaultLogic;

.field screenBean:Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/hzbhd/midwareproxy/screen/data/ScreenLogic;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/midwareproxy/screen/data/ScreenLogic;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenLogic;->mContext:Landroid/content/Context;

    .line 37
    invoke-static {}, Lcom/hzbhd/midwareproxy/screen/customerlogic/DefaultLogic;->getDisplayProductType()I

    move-result p1

    .line 41
    sget-object v0, Lcom/hzbhd/midwareproxy/screen/data/ScreenLogic;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ScreenLogic : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    new-instance v0, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenLogic;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenLogic;->screenBean:Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;

    .line 45
    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->setBootDisplayOrientation()V

    .line 46
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenLogic;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenLogic;->screenBean:Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;

    invoke-static {p1, v0}, Lcom/hzbhd/midwareproxy/screen/customerlogic/DefaultLogic;->getInstance(Landroid/content/Context;Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;)Lcom/hzbhd/midwareproxy/screen/customerlogic/DefaultLogic;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenLogic;->mDefaultLogic:Lcom/hzbhd/midwareproxy/screen/customerlogic/DefaultLogic;

    .line 47
    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/screen/customerlogic/DefaultLogic;->setDisplayOrientation()V

    return-void
.end method

.method public static getDisplayProductType()I
    .locals 1

    .line 74
    invoke-static {}, Lcom/hzbhd/midwareproxy/screen/customerlogic/DefaultLogic;->getDisplayProductType()I

    move-result v0

    return v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/screen/data/ScreenLogic;
    .locals 4

    const-class v0, Lcom/hzbhd/midwareproxy/screen/data/ScreenLogic;

    monitor-enter v0

    .line 28
    :try_start_0
    sget-object v1, Lcom/hzbhd/midwareproxy/screen/data/ScreenLogic;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ScreenLogic getInstance:  IPAddress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/hzbhd/midwareproxy/utils/WIFIUtils;->getInstance(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/utils/WIFIUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hzbhd/midwareproxy/utils/WIFIUtils;->getIPAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    sget-object v1, Lcom/hzbhd/midwareproxy/screen/data/ScreenLogic;->mScreen:Lcom/hzbhd/midwareproxy/screen/data/ScreenLogic;

    if-nez v1, :cond_0

    .line 30
    new-instance v1, Lcom/hzbhd/midwareproxy/screen/data/ScreenLogic;

    invoke-direct {v1, p0}, Lcom/hzbhd/midwareproxy/screen/data/ScreenLogic;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/hzbhd/midwareproxy/screen/data/ScreenLogic;->mScreen:Lcom/hzbhd/midwareproxy/screen/data/ScreenLogic;

    .line 32
    :cond_0
    sget-object p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenLogic;->mScreen:Lcom/hzbhd/midwareproxy/screen/data/ScreenLogic;
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
    .locals 1

    .line 60
    invoke-static {}, Lcom/hzbhd/midwareproxy/screen/customerlogic/DefaultLogic;->isLandScreen()Z

    move-result v0

    return v0
.end method

.method public static isPort270Screen()Z
    .locals 1

    .line 66
    invoke-static {}, Lcom/hzbhd/midwareproxy/screen/customerlogic/DefaultLogic;->isPort270Screen()Z

    move-result v0

    return v0
.end method

.method public static isPort90Screen()Z
    .locals 1

    .line 63
    invoke-static {}, Lcom/hzbhd/midwareproxy/screen/customerlogic/DefaultLogic;->isPort90Screen()Z

    move-result v0

    return v0
.end method

.method public static isPort90ScreenOrPort270Screen()Z
    .locals 1

    .line 70
    invoke-static {}, Lcom/hzbhd/midwareproxy/screen/data/ScreenLogic;->isPort90Screen()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/hzbhd/midwareproxy/screen/data/ScreenLogic;->isPort270Screen()Z

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

.method public static isRotateScreen()Z
    .locals 1

    .line 77
    invoke-static {}, Lcom/hzbhd/midwareproxy/screen/customerlogic/DefaultLogic;->isRotateScreen()Z

    move-result v0

    return v0
.end method

.method public static isRotateScreenAndRotaScreenByHnad()Z
    .locals 1

    .line 57
    invoke-static {}, Lcom/hzbhd/midwareproxy/screen/customerlogic/DefaultLogic;->isRotateScreenAndRotaScreenByHnad()Z

    move-result v0

    return v0
.end method

.method public static parser(Landroid/content/Context;Ljava/lang/String;)I
    .locals 5

    .line 92
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p0

    .line 96
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/bhd/android_config.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v1, "UTF-8"

    .line 98
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 100
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    :goto_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 105
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 106
    sget-object v2, Lcom/hzbhd/midwareproxy/screen/data/ScreenLogic;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ScreenLogic_display_product_type 22 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "map"

    .line 107
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 109
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 119
    :cond_1
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 121
    :cond_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 123
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getPrimary_display_orientation()I
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenLogic;->mDefaultLogic:Lcom/hzbhd/midwareproxy/screen/customerlogic/DefaultLogic;

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/screen/customerlogic/DefaultLogic;->getPrimary_display_orientation()I

    move-result v0

    return v0
.end method

.method public getmDefaultPlayform()Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;
    .locals 3

    .line 142
    sget-object v0, Lcom/hzbhd/midwareproxy/screen/data/ScreenLogic;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getmDefaultPlayform "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenLogic;->screenBean:Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->getmDefaultPlayform()Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenLogic;->screenBean:Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->getmDefaultPlayform()Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;

    move-result-object v0

    return-object v0
.end method

.method public isDisplayOrientation90()Z
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenLogic;->mDefaultLogic:Lcom/hzbhd/midwareproxy/screen/customerlogic/DefaultLogic;

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/screen/customerlogic/DefaultLogic;->isDisplayOrientation90()Z

    move-result v0

    return v0
.end method

.method public rotateScreen(Z)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenLogic;->mDefaultLogic:Lcom/hzbhd/midwareproxy/screen/customerlogic/DefaultLogic;

    invoke-virtual {v0, p1}, Lcom/hzbhd/midwareproxy/screen/customerlogic/DefaultLogic;->rotateScreen(Z)V

    return-void
.end method

.method public screenResponse([I)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenLogic;->mDefaultLogic:Lcom/hzbhd/midwareproxy/screen/customerlogic/DefaultLogic;

    invoke-virtual {v0, p1}, Lcom/hzbhd/midwareproxy/screen/customerlogic/DefaultLogic;->screenResponse([I)V

    return-void
.end method

.method public screenResponseStop()V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenLogic;->mDefaultLogic:Lcom/hzbhd/midwareproxy/screen/customerlogic/DefaultLogic;

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/screen/customerlogic/DefaultLogic;->screenResponseStop()V

    return-void
.end method

.method public setBootLOGO(Landroid/graphics/Bitmap;)Z
    .locals 4

    .line 133
    sget-object v0, Lcom/hzbhd/midwareproxy/screen/data/ScreenLogic;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBootLOGO "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageResourcePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    sget-object v0, Lcom/hzbhd/midwareproxy/screen/data/ScreenLogic;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    sget-object v0, Lcom/hzbhd/midwareproxy/screen/data/ScreenLogic;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/data/ScreenLogic;->screenBean:Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;

    invoke-virtual {v0, p1}, Lcom/hzbhd/midwareproxy/screen/data/ScreenBean;->setBootLOGO(Landroid/graphics/Bitmap;)Z

    move-result p1

    return p1
.end method
