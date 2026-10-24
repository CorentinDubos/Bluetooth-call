.class public abstract Lcom/hzbhd/midwareproxy/sourceswitch/HzbhdAppWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "HzbhdAppWidgetProvider.java"


# instance fields
.field private HzbhdFlag:Ljava/lang/String;

.field private TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 27
    const-class v0, Lcom/hzbhd/midwareproxy/sourceswitch/HzbhdAppWidgetProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/sourceswitch/HzbhdAppWidgetProvider;->TAG:Ljava/lang/String;

    const-string v0, "HzbhdFlag"

    .line 28
    iput-object v0, p0, Lcom/hzbhd/midwareproxy/sourceswitch/HzbhdAppWidgetProvider;->HzbhdFlag:Ljava/lang/String;

    return-void
.end method

.method private createHzbhdSourceSwitchRequestFrontPendingIntent(Landroid/content/Context;)V
    .locals 2

    const-string v0, "front_seat"

    const-string/jumbo v1, "request"

    .line 46
    invoke-virtual {p0, p1, v0, v1}, Lcom/hzbhd/midwareproxy/sourceswitch/HzbhdAppWidgetProvider;->createHzbhdSourceSwitchRequestPendingIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public abstract addDataToIntent()Landroid/os/Bundle;
.end method

.method public createHzbhdSourceSwitchReleaseFrontPendingIntent(Landroid/content/Context;)V
    .locals 2

    const-string v0, "front_seat"

    const-string v1, "release"

    .line 50
    invoke-virtual {p0, p1, v0, v1}, Lcom/hzbhd/midwareproxy/sourceswitch/HzbhdAppWidgetProvider;->createHzbhdSourceSwitchRequestPendingIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public createHzbhdSourceSwitchRequestPendingIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 57
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/sourceswitch/HzbhdAppWidgetProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HzbhdAppWidgetProvider,createHzbhdSourceSwitchRequestPendingIntent,seatType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " operationType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 61
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/sourceswitch/HzbhdAppWidgetProvider;->getSourceActionName()Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/sourceswitch/HzbhdAppWidgetProvider;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 63
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/sourceswitch/HzbhdAppWidgetProvider;->getClassName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "ActionName"

    .line 64
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "SeatType"

    .line 65
    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "OperationType"

    .line 66
    invoke-virtual {v0, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "PackageName"

    .line 68
    invoke-virtual {v0, p3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "ClassName"

    .line 69
    invoke-virtual {v0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "APP_REQUEST_START_ACTION"

    .line 71
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/sourceswitch/HzbhdAppWidgetProvider;->addDataToIntent()Landroid/os/Bundle;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 75
    invoke-virtual {v0, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 77
    :cond_0
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/sourceswitch/HzbhdAppWidgetProvider;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HzbhdAppWidgetProvider,createHzbhdSourceSwitchRequestPendingIntent,san="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/sourceswitch/HzbhdAppWidgetProvider;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HzbhdAppWidgetProvider,createHzbhdSourceSwitchRequestPendingIntent,pn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/sourceswitch/HzbhdAppWidgetProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HzbhdAppWidgetProvider,createHzbhdSourceSwitchRequestPendingIntent,cn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/sourceswitch/HzbhdAppWidgetProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/sourceswitch/HzbhdAppWidgetProvider;->TAG:Ljava/lang/String;

    const-string v0, "audioChannelRequest start"

    invoke-static {p1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object p1

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/utils/SourceSwitchTools;->mapAction2SourceID(Ljava/lang/String;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v0

    invoke-static {p2}, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->valueOf(Ljava/lang/String;)Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    move-result-object p2

    invoke-virtual {p1, v0, p2, p3}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->audioChannelRequest(Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;Landroid/os/Bundle;)Z

    .line 87
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/sourceswitch/HzbhdAppWidgetProvider;->TAG:Ljava/lang/String;

    const-string p2, "audioChannelRequest end"

    invoke-static {p1, p2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public createHzbhdSourceSwitchRequestRearPendingIntent(Landroid/content/Context;)V
    .locals 2

    const-string v0, "back_seat"

    const-string/jumbo v1, "request"

    .line 54
    invoke-virtual {p0, p1, v0, v1}, Lcom/hzbhd/midwareproxy/sourceswitch/HzbhdAppWidgetProvider;->createHzbhdSourceSwitchRequestPendingIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getClassName(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 99
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/sourceswitch/HzbhdAppWidgetProvider;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 101
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/sourceswitch/HzbhdAppWidgetProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getComponentName,getSourceActionName()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/sourceswitch/HzbhdAppWidgetProvider;->getSourceActionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 108
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/sourceswitch/HzbhdAppWidgetProvider;->getSourceActionName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000

    .line 109
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 110
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 111
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 112
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    .line 113
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getLaunchPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3

    .line 122
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 123
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "android.intent.category.ALTERNATIVE"

    .line 124
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/sourceswitch/HzbhdAppWidgetProvider;->HzbhdFlag:Ljava/lang/String;

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 126
    invoke-static {p1, v1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public getPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 92
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/sourceswitch/HzbhdAppWidgetProvider;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 94
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract getSourceActionName()Ljava/lang/String;
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 32
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/sourceswitch/HzbhdAppWidgetProvider;->HzbhdFlag:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 34
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/sourceswitch/HzbhdAppWidgetProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HzbhdAppWidgetProvider,action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " HzbhdFlagStr="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    const-string/jumbo v0, "true"

    .line 35
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-direct {p0, p1}, Lcom/hzbhd/midwareproxy/sourceswitch/HzbhdAppWidgetProvider;->createHzbhdSourceSwitchRequestFrontPendingIntent(Landroid/content/Context;)V

    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/hzbhd/midwareproxy/sourceswitch/HzbhdAppWidgetProvider;->onReceiveHzbhd(Landroid/content/Context;Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public abstract onReceiveHzbhd(Landroid/content/Context;Landroid/content/Intent;)V
.end method
