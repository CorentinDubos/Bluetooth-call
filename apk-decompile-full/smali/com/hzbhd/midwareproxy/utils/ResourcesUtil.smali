.class public Lcom/hzbhd/midwareproxy/utils/ResourcesUtil;
.super Ljava/lang/Object;
.source "ResourcesUtil.java"


# static fields
.field private static resourcesUtil:Lcom/hzbhd/midwareproxy/utils/ResourcesUtil;


# instance fields
.field packageManager:Landroid/content/pm/PackageManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/utils/ResourcesUtil;->packageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method public static getResourcesUtil(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/utils/ResourcesUtil;
    .locals 1

    .line 26
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/ResourcesUtil;->resourcesUtil:Lcom/hzbhd/midwareproxy/utils/ResourcesUtil;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/hzbhd/midwareproxy/utils/ResourcesUtil;

    invoke-direct {v0, p0}, Lcom/hzbhd/midwareproxy/utils/ResourcesUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/hzbhd/midwareproxy/utils/ResourcesUtil;->resourcesUtil:Lcom/hzbhd/midwareproxy/utils/ResourcesUtil;

    .line 29
    :cond_0
    sget-object p0, Lcom/hzbhd/midwareproxy/utils/ResourcesUtil;->resourcesUtil:Lcom/hzbhd/midwareproxy/utils/ResourcesUtil;

    return-object p0
.end method


# virtual methods
.method public getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 55
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/utils/ResourcesUtil;->getResources(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p1

    const/16 v0, 0x1e0

    const/4 v1, 0x0

    .line 58
    :try_start_0
    invoke-virtual {p1, p2, v0, v1}, Landroid/content/res/Resources;->getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x140

    .line 60
    invoke-virtual {p1, p2, v0, v1}, Landroid/content/res/Resources;->getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const/16 v0, 0xf0

    .line 63
    invoke-virtual {p1, p2, v0, v1}, Landroid/content/res/Resources;->getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    const/16 v0, 0x78

    .line 66
    invoke-virtual {p1, p2, v0, v1}, Landroid/content/res/Resources;->getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object v0

    :catch_0
    return-object v1
.end method

.method public getDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 46
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/utils/ResourcesUtil;->getResources(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDrawable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ResourcesUtil"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "drawable"

    .line 48
    invoke-virtual {v0, p2, v1, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getResources(Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 1

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/utils/ResourcesUtil;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 40
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method
