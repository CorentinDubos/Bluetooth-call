.class Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$TimerHandler;
.super Landroid/os/Handler;
.source "HandlerUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils;


# direct methods
.method public constructor <init>(Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils;Landroid/os/Looper;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$TimerHandler;->this$0:Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils;

    .line 108
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 114
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$TimerHandler;->this$0:Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils;

    iget-object p1, p1, Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils;->mTimerCallback:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$TimerCallback;

    if-eqz v0, :cond_0

    .line 115
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$TimerCallback;->onTimercallBack()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    const-wide/16 v0, 0x3e8

    .line 118
    invoke-virtual {p0, p1, v0, v1}, Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$TimerHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public start()V
    .locals 3

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 121
    invoke-virtual {p0, v0, v1, v2}, Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$TimerHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
