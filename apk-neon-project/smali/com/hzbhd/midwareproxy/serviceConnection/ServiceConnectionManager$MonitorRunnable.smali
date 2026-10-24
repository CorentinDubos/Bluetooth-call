.class Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnectionManager$MonitorRunnable;
.super Ljava/lang/Object;
.source "ServiceConnectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MonitorRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnectionManager;


# direct methods
.method private constructor <init>(Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnectionManager;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnectionManager$MonitorRunnable;->this$0:Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnectionManager;Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnectionManager$1;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnectionManager$MonitorRunnable;-><init>(Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnectionManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 89
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnectionManager$MonitorRunnable;->this$0:Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnectionManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnectionManager;->access$100(Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnectionManager;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    const-wide/16 v1, 0xbb8

    if-eqz v0, :cond_0

    .line 90
    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/utils/ThreadUtils;->sleep(J)V

    goto :goto_0

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnectionManager$MonitorRunnable;->this$0:Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnectionManager;->connectService()Z

    .line 94
    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/utils/ThreadUtils;->sleep(J)V

    .line 95
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnectionManager$MonitorRunnable;->this$0:Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnectionManager;->checkService()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 97
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
