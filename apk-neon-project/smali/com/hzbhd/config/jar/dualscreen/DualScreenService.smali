.class public Lcom/hzbhd/config/jar/dualscreen/DualScreenService;
.super Lcom/hzbhd/midwareproxy/dualscreen/IDualScreenInterface$Stub;
.source "DualScreenService.java"


# static fields
.field public static final CAR_NAVI_INTENT_URI:Ljava/lang/String; = "car_navi_intent"

.field private static final CHECK_DISPLAY:I = 0x3

.field private static final DEBUG:Z = true

.field private static final HIDE_PRESENTATION:I = 0x2

.field private static final KEY_IS_NEED_SHOW_IN_PRESENTATION:Ljava/lang/String; = "isNeedShowInPresentation"

.field private static final MSH_THREAD_CHECK_NAVI:I = 0x4

.field private static final SHOW_PRESENTATION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DualScreenService"

.field private static dualScreenService:Lcom/hzbhd/config/jar/dualscreen/DualScreenService;

.field private static mContext:Landroid/content/Context;


# instance fields
.field private activityView:Lcom/hzbhd/config/jar/dualscreen/ActivityView;

.field private dualScreenActivity:Lcom/hzbhd/config/jar/dualscreen/DualScreenActivity;

.field private dualScreenPresentation:Lcom/hzbhd/config/jar/dualscreen/DualScreenPresentation;

.field private dualScreenWindow:Lcom/hzbhd/config/jar/dualscreen/DualScreenWindow;

.field private isNeedShowInPresentationWhenActivityFinish:Z

.field private isPresentationShowing:Z

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mMainHandler:Landroid/os/Handler;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mThreadHandler:Landroid/os/Handler;

.field private naviPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 158
    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/dualscreen/IDualScreenInterface$Stub;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->isPresentationShowing:Z

    .line 61
    new-instance v1, Lcom/hzbhd/config/jar/dualscreen/DualScreenService$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/hzbhd/config/jar/dualscreen/DualScreenService$1;-><init>(Lcom/hzbhd/config/jar/dualscreen/DualScreenService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->mMainHandler:Landroid/os/Handler;

    .line 86
    new-instance v1, Lcom/hzbhd/config/jar/dualscreen/DualScreenService$2;

    const-class v2, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/hzbhd/config/jar/dualscreen/DualScreenService$2;-><init>(Lcom/hzbhd/config/jar/dualscreen/DualScreenService;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 92
    new-instance v1, Lcom/hzbhd/config/jar/dualscreen/DualScreenService$3;

    iget-object v2, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/hzbhd/config/jar/dualscreen/DualScreenService$3;-><init>(Lcom/hzbhd/config/jar/dualscreen/DualScreenService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->mThreadHandler:Landroid/os/Handler;

    .line 159
    invoke-direct {p0}, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->resetNaviPackage()V

    .line 160
    invoke-direct {p0}, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->addNaviPackageChangeListener()V

    .line 161
    invoke-direct {p0}, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->addDisplayChangeListener()V

    .line 162
    sget-object v1, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->mContext:Landroid/content/Context;

    const-string v2, "MyPresentation"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "isNeedShowInPresentation"

    .line 163
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->isNeedShowInPresentationWhenActivityFinish:Z

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init MyPresentation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->isNeedShowInPresentationWhenActivityFinish:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DualScreenService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-direct {p0}, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->getActivityView()Lcom/hzbhd/config/jar/dualscreen/ActivityView;

    .line 166
    iget-object v0, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 167
    iget-object v0, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method static synthetic access$000(Lcom/hzbhd/config/jar/dualscreen/DualScreenService;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->isPresentationShowing:Z

    return p0
.end method

.method static synthetic access$100(Lcom/hzbhd/config/jar/dualscreen/DualScreenService;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->showPresentaionInMainThread()V

    return-void
.end method

.method static synthetic access$200(Lcom/hzbhd/config/jar/dualscreen/DualScreenService;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->hidePresentaionInMain()V

    return-void
.end method

.method static synthetic access$300()Landroid/content/Context;
    .locals 1

    .line 24
    sget-object v0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/hzbhd/config/jar/dualscreen/DualScreenService;)Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->naviPackage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 24
    invoke-static {p0, p1}, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->isAppaLive(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/hzbhd/config/jar/dualscreen/DualScreenService;)Landroid/os/Handler;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->mThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$700(Lcom/hzbhd/config/jar/dualscreen/DualScreenService;)Lcom/hzbhd/config/jar/dualscreen/DualScreenPresentation;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->dualScreenPresentation:Lcom/hzbhd/config/jar/dualscreen/DualScreenPresentation;

    return-object p0
.end method

.method static synthetic access$702(Lcom/hzbhd/config/jar/dualscreen/DualScreenService;Lcom/hzbhd/config/jar/dualscreen/DualScreenPresentation;)Lcom/hzbhd/config/jar/dualscreen/DualScreenPresentation;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->dualScreenPresentation:Lcom/hzbhd/config/jar/dualscreen/DualScreenPresentation;

    return-object p1
.end method

.method static synthetic access$800(Lcom/hzbhd/config/jar/dualscreen/DualScreenService;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->resetNaviPackage()V

    return-void
.end method

.method private addDisplayChangeListener()V
    .locals 3

    .line 171
    sget-object v0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    new-instance v1, Lcom/hzbhd/config/jar/dualscreen/DualScreenService$4;

    invoke-direct {v1, p0}, Lcom/hzbhd/config/jar/dualscreen/DualScreenService$4;-><init>(Lcom/hzbhd/config/jar/dualscreen/DualScreenService;)V

    iget-object v2, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    return-void
.end method

.method private addNaviPackageChangeListener()V
    .locals 4

    .line 197
    sget-object v0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "car_navi_intent"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/hzbhd/config/jar/dualscreen/DualScreenService$5;

    iget-object v3, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->mMainHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/hzbhd/config/jar/dualscreen/DualScreenService$5;-><init>(Lcom/hzbhd/config/jar/dualscreen/DualScreenService;Landroid/os/Handler;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public static addServiceToServiceManager(Landroid/content/Context;)V
    .locals 1

    .line 53
    sput-object p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->mContext:Landroid/content/Context;

    .line 54
    invoke-static {}, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->getInstance()Lcom/hzbhd/config/jar/dualscreen/DualScreenService;

    move-result-object p0

    const-string/jumbo v0, "service dual screen"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method private createPresentation()Lcom/hzbhd/config/jar/dualscreen/DualScreenPresentation;
    .locals 4

    .line 220
    sget-object v0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v0

    const/4 v1, 0x1

    .line 221
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 222
    aget-object v2, v0, v1

    invoke-virtual {v2}, Landroid/view/Display;->getType()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    const-string v2, "DualScreenService"

    const-string v3, "createPresentation"

    .line 223
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    new-instance v2, Lcom/hzbhd/config/jar/dualscreen/DualScreenPresentation;

    sget-object v3, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->mContext:Landroid/content/Context;

    aget-object v0, v0, v1

    invoke-direct {v2, v3, v0}, Lcom/hzbhd/config/jar/dualscreen/DualScreenPresentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getActivityView()Lcom/hzbhd/config/jar/dualscreen/ActivityView;
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->activityView:Lcom/hzbhd/config/jar/dualscreen/ActivityView;

    if-nez v0, :cond_0

    .line 243
    new-instance v0, Lcom/hzbhd/config/jar/dualscreen/ActivityView;

    sget-object v1, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/hzbhd/config/jar/dualscreen/ActivityView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->activityView:Lcom/hzbhd/config/jar/dualscreen/ActivityView;

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->activityView:Lcom/hzbhd/config/jar/dualscreen/ActivityView;

    return-object v0
.end method

.method private getDualScreenPresentation()Lcom/hzbhd/config/jar/dualscreen/DualScreenPresentation;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->dualScreenPresentation:Lcom/hzbhd/config/jar/dualscreen/DualScreenPresentation;

    if-nez v0, :cond_0

    .line 236
    invoke-direct {p0}, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->createPresentation()Lcom/hzbhd/config/jar/dualscreen/DualScreenPresentation;

    move-result-object v0

    iput-object v0, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->dualScreenPresentation:Lcom/hzbhd/config/jar/dualscreen/DualScreenPresentation;

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->dualScreenPresentation:Lcom/hzbhd/config/jar/dualscreen/DualScreenPresentation;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/hzbhd/config/jar/dualscreen/DualScreenService;
    .locals 2

    const-class v0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;

    monitor-enter v0

    .line 46
    :try_start_0
    sget-object v1, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->dualScreenService:Lcom/hzbhd/config/jar/dualscreen/DualScreenService;

    if-nez v1, :cond_0

    .line 47
    new-instance v1, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;

    invoke-direct {v1}, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;-><init>()V

    sput-object v1, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->dualScreenService:Lcom/hzbhd/config/jar/dualscreen/DualScreenService;

    .line 49
    :cond_0
    sget-object v1, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->dualScreenService:Lcom/hzbhd/config/jar/dualscreen/DualScreenService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private hidePresentaionInMain()V
    .locals 2

    .line 130
    iget-boolean v0, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->isPresentationShowing:Z

    if-eqz v0, :cond_0

    .line 131
    invoke-direct {p0}, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->getDualScreenPresentation()Lcom/hzbhd/config/jar/dualscreen/DualScreenPresentation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 132
    iput-boolean v0, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->isPresentationShowing:Z

    .line 133
    invoke-direct {p0}, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->getDualScreenPresentation()Lcom/hzbhd/config/jar/dualscreen/DualScreenPresentation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/config/jar/dualscreen/DualScreenPresentation;->getBaseRootActivityView()Lcom/hzbhd/config/jar/dualscreen/BaseRootActivityView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hzbhd/config/jar/dualscreen/BaseRootActivityView;->setChild(Landroid/view/View;)V

    .line 134
    invoke-direct {p0}, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->getDualScreenPresentation()Lcom/hzbhd/config/jar/dualscreen/DualScreenPresentation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/config/jar/dualscreen/DualScreenPresentation;->hide()V

    :cond_0
    return-void
.end method

.method private static isAppaLive(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "activity"

    .line 141
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const/16 v0, 0x64

    .line 142
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p0

    .line 145
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 146
    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 147
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private resetNaviPackage()V
    .locals 2

    .line 207
    :try_start_0
    sget-object v0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "car_navi_intent"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 209
    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 210
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 211
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->naviPackage:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 215
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private showPresentaionInMainThread()V
    .locals 2

    .line 117
    iget-boolean v0, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->isPresentationShowing:Z

    if-nez v0, :cond_1

    .line 118
    invoke-direct {p0}, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->getDualScreenPresentation()Lcom/hzbhd/config/jar/dualscreen/DualScreenPresentation;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->naviPackage:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->isAppaLive(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 119
    iput-boolean v0, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->isPresentationShowing:Z

    .line 120
    iget-object v0, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->dualScreenActivity:Lcom/hzbhd/config/jar/dualscreen/DualScreenActivity;

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0}, Lcom/hzbhd/config/jar/dualscreen/DualScreenActivity;->getBaseRootActivityView()Lcom/hzbhd/config/jar/dualscreen/BaseRootActivityView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hzbhd/config/jar/dualscreen/BaseRootActivityView;->setChild(Landroid/view/View;)V

    .line 123
    :cond_0
    invoke-direct {p0}, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->getDualScreenPresentation()Lcom/hzbhd/config/jar/dualscreen/DualScreenPresentation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/config/jar/dualscreen/DualScreenPresentation;->getBaseRootActivityView()Lcom/hzbhd/config/jar/dualscreen/BaseRootActivityView;

    move-result-object v0

    invoke-direct {p0}, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->getActivityView()Lcom/hzbhd/config/jar/dualscreen/ActivityView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hzbhd/config/jar/dualscreen/BaseRootActivityView;->setChild(Landroid/view/View;)V

    .line 124
    invoke-direct {p0}, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->getDualScreenPresentation()Lcom/hzbhd/config/jar/dualscreen/DualScreenPresentation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/config/jar/dualscreen/DualScreenPresentation;->show()V

    :cond_1
    return-void
.end method


# virtual methods
.method public checkIsNaviActivity(Ljava/lang/String;)Z
    .locals 2

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkIsNaviActivity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->naviPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DualScreenService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->naviPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public checkNavi()V
    .locals 2

    .line 373
    iget-object v0, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->mThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 374
    iget-object v0, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->mThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public getNaviDisplayId()I
    .locals 4

    const/4 v0, 0x0

    .line 277
    :try_start_0
    invoke-direct {p0}, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->getActivityView()Lcom/hzbhd/config/jar/dualscreen/ActivityView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/config/jar/dualscreen/ActivityView;->getDisplayId()I

    move-result v0

    const-string v1, "DualScreenService"

    .line 278
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNaviDisplayId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 280
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return v0
.end method

.method public hideAll()V
    .locals 2

    .line 379
    iget-object v0, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->dualScreenActivity:Lcom/hzbhd/config/jar/dualscreen/DualScreenActivity;

    if-eqz v0, :cond_0

    .line 380
    invoke-virtual {v0}, Lcom/hzbhd/config/jar/dualscreen/DualScreenActivity;->finish()V

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 383
    iget-object v0, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 384
    iget-object v0, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public hideInBack()V
    .locals 3

    const-string v0, "DualScreenService"

    const-string v1, "hideInBack: "

    .line 328
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 329
    iput-boolean v0, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->isNeedShowInPresentationWhenActivityFinish:Z

    .line 330
    iget-object v1, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "isNeedShowInPresentation"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 331
    iget-object v0, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 332
    iget-object v0, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 333
    iget-object v0, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public hideInMain()V
    .locals 2

    const-string v0, "DualScreenService"

    const-string v1, "hideInMain: "

    .line 312
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v0, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->dualScreenActivity:Lcom/hzbhd/config/jar/dualscreen/DualScreenActivity;

    if-eqz v0, :cond_0

    .line 314
    invoke-virtual {v0}, Lcom/hzbhd/config/jar/dualscreen/DualScreenActivity;->finish()V

    :cond_0
    return-void
.end method

.method public setDualScreenActivity(Lcom/hzbhd/config/jar/dualscreen/DualScreenActivity;)V
    .locals 2

    if-nez p1, :cond_1

    .line 250
    iget-object v0, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->dualScreenActivity:Lcom/hzbhd/config/jar/dualscreen/DualScreenActivity;

    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {v0}, Lcom/hzbhd/config/jar/dualscreen/DualScreenActivity;->getBaseRootActivityView()Lcom/hzbhd/config/jar/dualscreen/BaseRootActivityView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hzbhd/config/jar/dualscreen/BaseRootActivityView;->setChild(Landroid/view/View;)V

    .line 253
    :cond_0
    iget-boolean v0, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->isNeedShowInPresentationWhenActivityFinish:Z

    if-eqz v0, :cond_2

    .line 254
    invoke-virtual {p0}, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->showInBack()V

    goto :goto_0

    .line 257
    :cond_1
    invoke-direct {p0}, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->hidePresentaionInMain()V

    .line 258
    invoke-virtual {p1}, Lcom/hzbhd/config/jar/dualscreen/DualScreenActivity;->getBaseRootActivityView()Lcom/hzbhd/config/jar/dualscreen/BaseRootActivityView;

    move-result-object v0

    invoke-direct {p0}, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->getActivityView()Lcom/hzbhd/config/jar/dualscreen/ActivityView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hzbhd/config/jar/dualscreen/BaseRootActivityView;->setChild(Landroid/view/View;)V

    .line 260
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->dualScreenActivity:Lcom/hzbhd/config/jar/dualscreen/DualScreenActivity;

    return-void
.end method

.method public setIsNeedShowBack(Z)V
    .locals 4

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setIsNeedShowBack: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DualScreenService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-boolean v0, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->isNeedShowInPresentationWhenActivityFinish:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->isNeedShowInPresentationWhenActivityFinish:Z

    .line 364
    iget-object v0, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-boolean v2, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->isNeedShowInPresentationWhenActivityFinish:Z

    const-string v3, "isNeedShowInPresentation"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    if-nez p1, :cond_0

    .line 366
    iget-object p1, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 367
    iget-object p1, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->mMainHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 368
    iget-object p1, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public showInBack()V
    .locals 3

    const-string v0, "DualScreenService"

    const-string/jumbo v1, "showInBack: "

    .line 302
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 303
    iput-boolean v0, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->isNeedShowInPresentationWhenActivityFinish:Z

    .line 304
    iget-object v1, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "isNeedShowInPresentation"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 305
    iget-object v1, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 306
    iget-object v1, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->mMainHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 307
    iget-object v1, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public showInMain()V
    .locals 3

    const-string v0, "DualScreenService"

    const-string/jumbo v1, "showInMain: "

    .line 289
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 291
    sget-object v1, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->mContext:Landroid/content/Context;

    const-class v2, Lcom/hzbhd/config/jar/dualscreen/DualScreenActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 292
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 293
    sget-object v1, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public showOrHideInBack()V
    .locals 4

    const-string v0, "DualScreenService"

    const-string/jumbo v1, "showOrHideInBack: "

    .line 348
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-boolean v0, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->isNeedShowInPresentationWhenActivityFinish:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->isNeedShowInPresentationWhenActivityFinish:Z

    .line 350
    iget-object v0, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-boolean v2, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->isNeedShowInPresentationWhenActivityFinish:Z

    const-string v3, "isNeedShowInPresentation"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 351
    iget-object v0, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 352
    iget-object v0, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->mMainHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 353
    iget-boolean v0, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->isNeedShowInPresentationWhenActivityFinish:Z

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method public showOrHideInMain()V
    .locals 2

    const-string v0, "DualScreenService"

    const-string/jumbo v1, "showOrHideInMain: "

    .line 338
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v0, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->dualScreenActivity:Lcom/hzbhd/config/jar/dualscreen/DualScreenActivity;

    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {p0}, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->hideInMain()V

    goto :goto_0

    .line 342
    :cond_0
    invoke-virtual {p0}, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->showInMain()V

    :goto_0
    return-void
.end method
