.class public Lcom/hzbhd/midwareproxy/utils/AppManager;
.super Ljava/lang/Object;
.source "AppManager.java"


# static fields
.field private static mIntance:Lcom/hzbhd/midwareproxy/utils/AppManager;


# instance fields
.field private MAX_RECENT_TASKS:I

.field private TAG:Ljava/lang/String;

.field public mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lcom/hzbhd/midwareproxy/utils/AppManager;

    invoke-direct {v0}, Lcom/hzbhd/midwareproxy/utils/AppManager;-><init>()V

    sput-object v0, Lcom/hzbhd/midwareproxy/utils/AppManager;->mIntance:Lcom/hzbhd/midwareproxy/utils/AppManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AppManager"

    .line 37
    iput-object v0, p0, Lcom/hzbhd/midwareproxy/utils/AppManager;->TAG:Ljava/lang/String;

    const/16 v0, 0x3e8

    .line 39
    iput v0, p0, Lcom/hzbhd/midwareproxy/utils/AppManager;->MAX_RECENT_TASKS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AppManager"

    .line 37
    iput-object v0, p0, Lcom/hzbhd/midwareproxy/utils/AppManager;->TAG:Ljava/lang/String;

    const/16 v0, 0x3e8

    .line 39
    iput v0, p0, Lcom/hzbhd/midwareproxy/utils/AppManager;->MAX_RECENT_TASKS:I

    .line 44
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/utils/AppManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/hzbhd/midwareproxy/utils/AppManager;
    .locals 2

    const-class v0, Lcom/hzbhd/midwareproxy/utils/AppManager;

    monitor-enter v0

    .line 48
    :try_start_0
    sget-object v1, Lcom/hzbhd/midwareproxy/utils/AppManager;->mIntance:Lcom/hzbhd/midwareproxy/utils/AppManager;
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
.method public clearRecentListByUnused()V
    .locals 9

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 117
    :try_start_0
    sget v4, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->sBuildVersionSDK:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v5, 0x1c

    const-string v6, "getTasks"

    const/4 v7, 0x1

    if-ne v4, v5, :cond_0

    .line 119
    :try_start_1
    const-class v4, Landroid/app/ActivityManagerNative;

    new-array v5, v7, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v5, v3

    invoke-virtual {v4, v6, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    .line 120
    iget v6, p0, Lcom/hzbhd/midwareproxy/utils/AppManager;->MAX_RECENT_TASKS:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    :goto_0
    move-object v2, v4

    goto :goto_1

    .line 125
    :cond_0
    const-class v4, Landroid/app/ActivityManagerNative;

    new-array v5, v1, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v5, v3

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v5, v7

    invoke-virtual {v4, v6, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    .line 126
    iget v6, p0, Lcom/hzbhd/midwareproxy/utils/AppManager;->MAX_RECENT_TASKS:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 132
    :catch_0
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 133
    iget v5, v4, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v5, p0, Lcom/hzbhd/midwareproxy/utils/AppManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v4, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 137
    :cond_1
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/utils/AppManager;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 138
    iget v4, p0, Lcom/hzbhd/midwareproxy/utils/AppManager;->MAX_RECENT_TASKS:I

    invoke-virtual {v2, v4, v1}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v1

    .line 139
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_4

    .line 140
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 142
    iget v4, v2, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    iget v4, v2, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 143
    :cond_2
    iget v2, v2, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-virtual {p0, v2}, Lcom/hzbhd/midwareproxy/utils/AppManager;->removeTask(I)V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method public clearRecentTaskByPackageName(Ljava/lang/String;)V
    .locals 8

    .line 77
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/utils/AppManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 82
    :try_start_0
    sget v1, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->sBuildVersionSDK:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x1c

    const-string v3, "getTasks"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v1, v2, :cond_2

    :try_start_1
    sget v1, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->sBuildVersionSDK:I

    const/16 v2, 0x1d

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 91
    :cond_1
    const-class v1, Landroid/app/IActivityManager;

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v5

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    .line 92
    iget v3, p0, Lcom/hzbhd/midwareproxy/utils/AppManager;->MAX_RECENT_TASKS:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    goto :goto_1

    .line 85
    :cond_2
    :goto_0
    const-class v1, Landroid/app/IActivityManager;

    new-array v2, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v2, v5

    invoke-virtual {v1, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    .line 86
    iget v3, p0, Lcom/hzbhd/midwareproxy/utils/AppManager;->MAX_RECENT_TASKS:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    move-object v0, v1

    .line 99
    :catch_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 100
    iget-object v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 101
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-virtual {p0, v1}, Lcom/hzbhd/midwareproxy/utils/AppManager;->removeTask(I)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method public defaultApp(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 3

    .line 223
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/utils/AppManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app show:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 226
    invoke-virtual {p1, p2, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 228
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public disableApp(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 3

    .line 194
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/utils/AppManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app unShow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 197
    invoke-virtual {p1, p2, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 199
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public enableApp(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 3

    .line 204
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/utils/AppManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app show:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 207
    invoke-virtual {p1, p2, v0, v0}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 209
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public isApkInDebug(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    .line 238
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 239
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public isApkInDebug(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 250
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 253
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 254
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    move v0, v1

    :catch_0
    :cond_0
    return v0
.end method

.method public killApp(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 3

    .line 213
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 215
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/utils/AppManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app unShow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 216
    invoke-virtual {p1, p2, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 218
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public killPackageName(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "activity"

    .line 152
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    .line 153
    invoke-virtual {p1, p2}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 155
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    const-string/jumbo v1, "su"

    invoke-virtual {p1, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "am force-stop "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " \n"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 157
    invoke-virtual {p1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 158
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 159
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 167
    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 169
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 161
    :try_start_2
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const-string p2, "AppManager"

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p1, 0x0

    if-eqz v0, :cond_1

    .line 167
    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception p2

    .line 169
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_1
    return p1

    :goto_2
    if-eqz v0, :cond_2

    .line 167
    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception p2

    .line 169
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 172
    :cond_2
    :goto_3
    throw p1
.end method

.method public killPackageName2(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    const-string v0, "activity"

    .line 177
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.app.ActivityManager"

    .line 181
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "forceStopPackage"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p2, v2, v0

    .line 182
    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception p1

    .line 185
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public removeTask(I)V
    .locals 7

    .line 56
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/utils/AppManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeTask: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/utils/AppManager;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    :try_start_0
    const-string v1, "android.app.ActivityManager"

    .line 59
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "removeTask"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 60
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 61
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v3, [Ljava/lang/Object;

    .line 62
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 68
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/utils/AppManager;->TAG:Ljava/lang/String;

    const-string v1, "General Exception occurred"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 65
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/utils/AppManager;->TAG:Ljava/lang/String;

    const-string v1, "No Such Class Found Exception"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
