.class Lcom/hzbhd/common/ui/TopBar$1;
.super Landroid/content/BroadcastReceiver;
.source "TopBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/common/ui/TopBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/common/ui/TopBar;


# direct methods
.method constructor <init>(Lcom/hzbhd/common/ui/TopBar;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/hzbhd/common/ui/TopBar$1;->this$0:Lcom/hzbhd/common/ui/TopBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 111
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    :try_start_0
    const-string p1, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    const/4 v0, 0x0

    .line 113
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 114
    iget-object p2, p0, Lcom/hzbhd/common/ui/TopBar$1;->this$0:Lcom/hzbhd/common/ui/TopBar;

    invoke-virtual {p2, p1}, Lcom/hzbhd/common/ui/TopBar;->handleStateChanged(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 116
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    :try_start_1
    const-string p1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v0, -0x80000000

    .line 120
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 121
    iget-object p2, p0, Lcom/hzbhd/common/ui/TopBar$1;->this$0:Lcom/hzbhd/common/ui/TopBar;

    invoke-virtual {p2, p1}, Lcom/hzbhd/common/ui/TopBar;->handleStateChanged(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 123
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
