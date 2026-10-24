.class public Lcom/hzbhd/midwareproxy/utils/OverrideUtil;
.super Ljava/lang/Object;
.source "OverrideUtil.java"


# static fields
.field public static final DEFAULT_BG_01:Ljava/lang/String; = "__01__bg"

.field public static final DEFAULT_BG_SETTINGS:Ljava/lang/String; = "__n1__bg"

.field public static final DEFAULT_BG_SPLIT_01:Ljava/lang/String; = "__01__split_bg"

.field private static final MISC_PACKAGE:Ljava/lang/String; = "com.hzbhd.misc"

.field private static final SETTINGS:Ljava/lang/String; = "com.android.settings.Settings"

.field private static final SETTING_PACKAGE:Ljava/lang/String; = "com.android.settings"

.field static TAG:Ljava/lang/String;

.field private static UI_ID:Ljava/lang/String;

.field private static UI_ID_PROT:Ljava/lang/String;

.field private static bgs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private static split_bgs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private static theme:Landroid/content/res/Resources$Theme;

.field private static uiid_land:Ljava/lang/String;

.field private static uiid_port:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "ui_id"

    .line 29
    sput-object v0, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->UI_ID:Ljava/lang/String;

    const-string/jumbo v0, "ui_id_port"

    .line 30
    sput-object v0, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->UI_ID_PROT:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->bgs:Ljava/util/HashMap;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->split_bgs:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 40
    sput-object v0, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->uiid_land:Ljava/lang/String;

    .line 41
    sput-object v0, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->uiid_port:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static changePassWordToUiId(I)Ljava/lang/String;
    .locals 2

    .line 158
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getSelectUIArray()[Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, p0, -0x1

    aget-object p0, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 160
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "password = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OverrideUtil"

    invoke-static {v0, p0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method private static changeUiIdToPassWord(Ljava/lang/String;)I
    .locals 4

    .line 132
    invoke-static {}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getSelectUIArray()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 134
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 135
    aget-object v3, v0, v1

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    return v2
.end method

.method public static customerStyle(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 352
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.android.systemui"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getDeviceInfo()Ljava/lang/String;

    move-result-object p0

    const-string v0, "HS1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getDeviceInfo()Ljava/lang/String;

    move-result-object p0

    const-string v0, "O38"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "__HS_38__config_style"

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getBg(Landroid/app/Activity;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getBg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OverrideUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    const-string v1, "com.android.settings.Settings"

    invoke-static {p0, v1, p1, v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getBg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 119
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

    invoke-static {p0, v0, p1, v1}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getBg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private static getBg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;
    .locals 1

    if-eqz p3, :cond_2

    .line 90
    sget-object p3, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->split_bgs:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    const-string p3, "__01__bg"

    .line 91
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p2, "__01__split_bg"

    .line 94
    :cond_0
    sget-object p3, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->split_bgs:Ljava/util/HashMap;

    .line 95
    invoke-static {p0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getUIConfig(Landroid/content/Context;)Lcom/hzbhd/config/base/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/config/base/Config;->getCommon()Lcom/hzbhd/config/base/Config$Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/config/base/Config$Common;->getSplitBgList()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->loadBg(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 94
    invoke-virtual {p3, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :cond_1
    sget-object p0, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->split_bgs:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 99
    :cond_2
    sget-object p3, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->bgs:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 100
    sget-object p3, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->bgs:Ljava/util/HashMap;

    .line 101
    invoke-static {p0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getUIConfig(Landroid/content/Context;)Lcom/hzbhd/config/base/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/config/base/Config;->getCommon()Lcom/hzbhd/config/base/Config$Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/config/base/Config$Common;->getBgList()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->loadBg(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 100
    invoke-virtual {p3, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_3
    sget-object p0, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->bgs:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getResBool(I)Z
    .locals 3

    .line 283
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->theme:Landroid/content/res/Resources$Theme;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 284
    invoke-virtual {p0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 285
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return v0
.end method

.method public static getResBool(Landroid/content/Context;I)Z
    .locals 0

    .line 340
    invoke-static {p1}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResBool(I)Z

    move-result p0

    return p0
.end method

.method public static getResDimen(I)F
    .locals 3

    .line 307
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->theme:Landroid/content/res/Resources$Theme;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 v0, 0x0

    .line 308
    invoke-virtual {p0, v2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    .line 309
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return v0
.end method

.method public static getResId(I)I
    .locals 3

    .line 272
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 273
    sget-object v1, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->theme:Landroid/content/res/Resources$Theme;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 274
    iget p0, v0, Landroid/util/TypedValue;->resourceId:I

    return p0
.end method

.method public static getResId(Landroid/content/Context;I)I
    .locals 0

    .line 336
    invoke-static {p1}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResId(I)I

    move-result p0

    return p0
.end method

.method public static getResInt(I)I
    .locals 3

    .line 319
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 320
    sget-object v1, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->theme:Landroid/content/res/Resources$Theme;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 321
    iget p0, v0, Landroid/util/TypedValue;->data:I

    return p0
.end method

.method public static getResInt(Landroid/content/Context;I)I
    .locals 0

    .line 344
    invoke-static {p1}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result p0

    return p0
.end method

.method public static getResStr(I)Ljava/lang/String;
    .locals 3

    .line 330
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 331
    sget-object v1, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->theme:Landroid/content/res/Resources$Theme;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 332
    iget-object p0, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    iget-object p0, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getResStr(Landroid/content/Context;I)Ljava/lang/String;
    .locals 0

    .line 348
    invoke-static {p1}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResStr(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getResStringArrays(I)[Ljava/lang/CharSequence;
    .locals 3

    .line 295
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->theme:Landroid/content/res/Resources$Theme;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 296
    invoke-virtual {p0, v2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 297
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method public static getSelectUIArray()[Ljava/lang/String;
    .locals 3

    const-string v0, ","

    .line 233
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    sget-object v2, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->SELECT_UI_ARRAY:Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getSharedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 234
    array-length v1, v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 235
    sget-object v0, Lcom/hzbhd/midware/proxy/BuildConfig;->UI_ARRAYS:[Ljava/lang/String;

    return-object v0

    .line 237
    :cond_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    sget-object v2, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->SELECT_UI_ARRAY:Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getSharedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 239
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "01"

    .line 240
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSelectUIPortArray()[Ljava/lang/String;
    .locals 3

    const-string v0, ","

    .line 245
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    sget-object v2, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->SELECT_UI_PORT_ARRAY:Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getSharedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 246
    array-length v1, v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 247
    sget-object v0, Lcom/hzbhd/midware/proxy/BuildConfig;->UI_ARRAYS_PORT:[Ljava/lang/String;

    return-object v0

    .line 249
    :cond_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    sget-object v2, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->SELECT_UI_PORT_ARRAY:Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getSharedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 251
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "01"

    .line 252
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUIConfig(Landroid/content/Context;)Lcom/hzbhd/config/base/Config;
    .locals 1

    .line 108
    invoke-static {p0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getUiId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/hzbhd/config/base/ConfigUtil;->getMultiuiUIConfig(Landroid/content/Context;Ljava/lang/String;)Lcom/hzbhd/config/base/Config;

    move-result-object p0

    return-object p0
.end method

.method public static getUiId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "f8"

    return-object v0
.end method

.method private static getUiIdLand(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 212
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->uiid_land:Ljava/lang/String;

    const-string v1, "get ui id land:"

    const-string v2, "fzy"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->UI_ID:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->uiid_land:Ljava/lang/String;

    .line 214
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->uiid_land:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_1
    sget-object p0, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->uiid_land:Ljava/lang/String;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 217
    :cond_2
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p0

    sget-object v0, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->SELECT_UI:Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getSharedInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->changePassWordToUiId(I)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->uiid_land:Ljava/lang/String;

    .line 218
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->uiid_land:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_3
    sget-object p0, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->uiid_land:Ljava/lang/String;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 224
    :cond_4
    invoke-static {}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getSelectUIArray()[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    sput-object p0, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->uiid_land:Ljava/lang/String;

    .line 225
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->uiid_land:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_5
    sget-object p0, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->uiid_land:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getUiIdPort(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 192
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->uiid_port:Ljava/lang/String;

    const-string v1, "get ui id port:"

    const-string v2, "fzy"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->UI_ID_PROT:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->uiid_port:Ljava/lang/String;

    .line 194
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->uiid_port:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_1
    sget-object p0, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->uiid_port:Ljava/lang/String;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 197
    :cond_2
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p0

    sget-object v0, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->SELECT_UI_PORT:Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getSharedInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->changePassWordToUiId(I)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->uiid_port:Ljava/lang/String;

    .line 198
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->uiid_port:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_3
    sget-object p0, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->uiid_port:Ljava/lang/String;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 204
    :cond_4
    invoke-static {}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getSelectUIPortArray()[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    sput-object p0, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->uiid_port:Ljava/lang/String;

    .line 205
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->uiid_port:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_5
    sget-object p0, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->uiid_port:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static init(Landroid/content/res/Resources;I)V
    .locals 1

    .line 260
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->theme:Landroid/content/res/Resources$Theme;

    if-nez v0, :cond_0

    .line 261
    invoke-virtual {p0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    sput-object p0, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->theme:Landroid/content/res/Resources$Theme;

    const/4 v0, 0x1

    .line 262
    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_0
    return-void
.end method

.method public static init(Landroid/content/res/Resources;Landroid/content/Context;I)V
    .locals 6

    .line 46
    invoke-static {p1}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getUiId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "__"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "__config_style"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "style"

    invoke-virtual {p0, v1, v5, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v5, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 53
    :cond_0
    invoke-static {p1}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->customerStyle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v5, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    :cond_1
    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move p2, v1

    .line 61
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init: uiid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " package"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",styleId = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OverrideUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->theme:Landroid/content/res/Resources$Theme;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Lcom/hzbhd/config/base/ScreenLogic;->isScreenOreitaionChanged(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 63
    :cond_3
    invoke-virtual {p0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    sput-object p0, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->theme:Landroid/content/res/Resources$Theme;

    const/4 v0, 0x1

    .line 64
    invoke-virtual {p0, p2, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 66
    :cond_4
    invoke-virtual {p1, p2}, Landroid/content/Context;->setTheme(I)V

    return-void
.end method

.method public static isProject(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 361
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "N01-KC1"

    .line 365
    invoke-virtual {v1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method public static isScreen1280x720(Landroid/content/Context;)Z
    .locals 2

    .line 369
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 370
    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 371
    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v1, 0x500

    if-ne v0, v1, :cond_0

    const/16 v0, 0x2d0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static loadBg(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    .line 70
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "com.hzbhd.misc"

    if-eqz v0, :cond_0

    .line 72
    :try_start_0
    invoke-static {p0}, Lcom/hzbhd/midwareproxy/utils/ResourcesUtil;->getResourcesUtil(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/utils/ResourcesUtil;

    move-result-object v0

    .line 74
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 72
    invoke-virtual {v0, v1, p1}, Lcom/hzbhd/midwareproxy/utils/ResourcesUtil;->getDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 76
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "bg is empty,load default _____________ : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "loadbg"

    invoke-static {p2, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-static {p0}, Lcom/hzbhd/midwareproxy/utils/ResourcesUtil;->getResourcesUtil(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/utils/ResourcesUtil;

    move-result-object p0

    invoke-virtual {p0, v1, p3}, Lcom/hzbhd/midwareproxy/utils/ResourcesUtil;->getDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 82
    :cond_0
    invoke-static {p0}, Lcom/hzbhd/midwareproxy/utils/ResourcesUtil;->getResourcesUtil(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/utils/ResourcesUtil;

    move-result-object p0

    invoke-virtual {p0, v1, p3}, Lcom/hzbhd/midwareproxy/utils/ResourcesUtil;->getDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static resetBg(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resetBg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OverrideUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-static {p0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getUIConfig(Landroid/content/Context;)Lcom/hzbhd/config/base/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/config/base/Config;->getCommon()Lcom/hzbhd/config/base/Config$Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/config/base/Config$Common;->isNoSetBg()Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getBg(Landroid/app/Activity;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public static setUiId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 178
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "save ui id:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "fzy"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p0

    sget-object v0, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->SELECT_UI:Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->changeUiIdToPassWord(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->setSharedInt(Ljava/lang/String;I)V

    .line 180
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->changeUiIdToPassWord(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "persist.service.hzbhd.uiid"

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
