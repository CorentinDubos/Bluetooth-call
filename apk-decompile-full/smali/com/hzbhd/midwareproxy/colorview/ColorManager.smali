.class public Lcom/hzbhd/midwareproxy/colorview/ColorManager;
.super Ljava/lang/Object;
.source "ColorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/colorview/ColorManager$ColorChangeCallback;
    }
.end annotation


# static fields
.field private static mColorManager:Lcom/hzbhd/midwareproxy/colorview/ColorManager;


# instance fields
.field private mColorChangeCallbackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hzbhd/midwareproxy/colorview/ColorManager$ColorChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mColorContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/colorview/ColorManager;->mColorChangeCallbackList:Ljava/util/List;

    .line 94
    new-instance v0, Lcom/hzbhd/midwareproxy/colorview/ColorManager$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/hzbhd/midwareproxy/colorview/ColorManager$1;-><init>(Lcom/hzbhd/midwareproxy/colorview/ColorManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/colorview/ColorManager;->mColorContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/hzbhd/midwareproxy/colorview/ColorManager;)Landroid/content/Context;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/hzbhd/midwareproxy/colorview/ColorManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/hzbhd/midwareproxy/colorview/ColorManager;)Ljava/util/List;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/hzbhd/midwareproxy/colorview/ColorManager;->mColorChangeCallbackList:Ljava/util/List;

    return-object p0
.end method

.method public static declared-synchronized getInstance()Lcom/hzbhd/midwareproxy/colorview/ColorManager;
    .locals 2

    const-class v0, Lcom/hzbhd/midwareproxy/colorview/ColorManager;

    monitor-enter v0

    .line 30
    :try_start_0
    sget-object v1, Lcom/hzbhd/midwareproxy/colorview/ColorManager;->mColorManager:Lcom/hzbhd/midwareproxy/colorview/ColorManager;

    if-nez v1, :cond_0

    .line 31
    new-instance v1, Lcom/hzbhd/midwareproxy/colorview/ColorManager;

    invoke-direct {v1}, Lcom/hzbhd/midwareproxy/colorview/ColorManager;-><init>()V

    sput-object v1, Lcom/hzbhd/midwareproxy/colorview/ColorManager;->mColorManager:Lcom/hzbhd/midwareproxy/colorview/ColorManager;

    .line 33
    :cond_0
    sget-object v1, Lcom/hzbhd/midwareproxy/colorview/ColorManager;->mColorManager:Lcom/hzbhd/midwareproxy/colorview/ColorManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getPointSaveColor(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const/4 v0, -0x1

    .line 39
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/colorview/ColorUtil;->convertToARGB(I)Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    sget-object v2, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->DEFAULT_MULTICOLOR:Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getSharedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "com.misc.colorpickerpoint.color"

    invoke-static {p1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 42
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, p1

    goto :goto_0

    .line 44
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    move-object v0, v1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public initRegisterContentObserver(Landroid/content/Context;Lcom/hzbhd/midwareproxy/colorview/ColorManager$ColorChangeCallback;)V
    .locals 3

    .line 80
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/colorview/ColorManager;->mContext:Landroid/content/Context;

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "com.misc.colorpickerpoint.color"

    .line 82
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/colorview/ColorManager;->mColorContentObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    .line 81
    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 86
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/colorview/ColorManager;->mColorChangeCallbackList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeRegisterContentObserver(Lcom/hzbhd/midwareproxy/colorview/ColorManager$ColorChangeCallback;)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/colorview/ColorManager;->mColorChangeCallbackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setPointColor(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 51
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->DEFAULT_MULTICOLOR:Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getSharedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.misc.colorpickerpoint.color"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 54
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 56
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v2, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    :goto_0
    return-void
.end method
