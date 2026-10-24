.class Lcom/hzbhd/common/ui/_b1/TimeAppWidgetProvider$TimeBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TimeAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/common/ui/_b1/TimeAppWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeBroadcastReceiver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/hzbhd/common/ui/_b1/TimeAppWidgetProvider;


# direct methods
.method public constructor <init>(Lcom/hzbhd/common/ui/_b1/TimeAppWidgetProvider;Landroid/content/Context;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/hzbhd/common/ui/_b1/TimeAppWidgetProvider$TimeBroadcastReceiver;->this$0:Lcom/hzbhd/common/ui/_b1/TimeAppWidgetProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 252
    iput-object p2, p0, Lcom/hzbhd/common/ui/_b1/TimeAppWidgetProvider$TimeBroadcastReceiver;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 270
    iget-object p1, p0, Lcom/hzbhd/common/ui/_b1/TimeAppWidgetProvider$TimeBroadcastReceiver;->this$0:Lcom/hzbhd/common/ui/_b1/TimeAppWidgetProvider;

    invoke-static {p1}, Lcom/hzbhd/common/ui/_b1/TimeAppWidgetProvider;->access$000(Lcom/hzbhd/common/ui/_b1/TimeAppWidgetProvider;)V

    return-void
.end method

.method public registerReceiver()V
    .locals 2

    .line 256
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_TICK"

    .line 257
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    .line 258
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    .line 259
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 260
    iget-object v1, p0, Lcom/hzbhd/common/ui/_b1/TimeAppWidgetProvider$TimeBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public unregisterReceiver()V
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/hzbhd/common/ui/_b1/TimeAppWidgetProvider$TimeBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
