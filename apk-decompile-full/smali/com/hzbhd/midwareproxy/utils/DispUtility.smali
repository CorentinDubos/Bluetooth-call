.class public final Lcom/hzbhd/midwareproxy/utils/DispUtility;
.super Ljava/lang/Object;
.source "DispUtility.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disabledDisplayDpiChange(Landroid/content/res/Resources;)Landroid/content/res/Resources;
    .locals 4

    .line 24
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 25
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/16 v3, 0x17

    if-lt v1, v3, :cond_1

    .line 27
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 28
    iput v2, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 30
    :cond_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/utils/DispUtility;->getDefaultDisplayDensity()I

    move-result v1

    iput v1, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 31
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    .line 35
    iput v2, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 36
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_2
    :goto_0
    return-object p0
.end method

.method private static getDefaultDisplayDensity()I
    .locals 7

    :try_start_0
    const-string v0, "android.view.WindowManagerGlobal"

    .line 47
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getWindowManagerService"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 48
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x1

    .line 49
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v4, v2, [Ljava/lang/Object;

    .line 50
    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v4, "getInitialDisplayDensity"

    new-array v5, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 52
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v3, v3, [Ljava/lang/Object;

    .line 53
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 54
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 56
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method
