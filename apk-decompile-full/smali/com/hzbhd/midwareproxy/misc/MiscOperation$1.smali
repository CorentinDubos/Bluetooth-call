.class Lcom/hzbhd/midwareproxy/misc/MiscOperation$1;
.super Landroid/os/Handler;
.source "MiscOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/misc/MiscOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/midwareproxy/misc/MiscOperation;


# direct methods
.method constructor <init>(Lcom/hzbhd/midwareproxy/misc/MiscOperation;Landroid/os/Looper;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/misc/MiscOperation$1;->this$0:Lcom/hzbhd/midwareproxy/misc/MiscOperation;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/misc/MiscOperation$1;->this$0:Lcom/hzbhd/midwareproxy/misc/MiscOperation;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/misc/MiscOperation;->access$400(Lcom/hzbhd/midwareproxy/misc/MiscOperation;)Lcom/hzbhd/midwareproxy/misc/MiscOperation$McuUpdateListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 97
    invoke-static {}, Lcom/hzbhd/midwareproxy/misc/MiscOperation;->access$500()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mMcuUpdateListener is null"

    invoke-static {p1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 100
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/misc/MiscOperation$1;->this$0:Lcom/hzbhd/midwareproxy/misc/MiscOperation;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/misc/MiscOperation;->access$400(Lcom/hzbhd/midwareproxy/misc/MiscOperation;)Lcom/hzbhd/midwareproxy/misc/MiscOperation$McuUpdateListener;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, p1}, Lcom/hzbhd/midwareproxy/misc/MiscOperation$McuUpdateListener;->onBatteryState(II)V

    goto :goto_0

    .line 106
    :cond_2
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/misc/MiscOperation$1;->this$0:Lcom/hzbhd/midwareproxy/misc/MiscOperation;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/misc/MiscOperation;->access$600(Lcom/hzbhd/midwareproxy/misc/MiscOperation;)Lcom/hzbhd/midwareproxy/misc/MiscOperation$ErrorListener;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/misc/MiscOperation$ErrorListener;->onErrorReports(I)V

    goto :goto_0

    .line 102
    :cond_3
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/misc/MiscOperation$1;->this$0:Lcom/hzbhd/midwareproxy/misc/MiscOperation;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/misc/MiscOperation;->access$400(Lcom/hzbhd/midwareproxy/misc/MiscOperation;)Lcom/hzbhd/midwareproxy/misc/MiscOperation$McuUpdateListener;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, p1}, Lcom/hzbhd/midwareproxy/misc/MiscOperation$McuUpdateListener;->onMcuUpdate(II)V

    :goto_0
    return-void
.end method
