.class Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$MyHandler;
.super Landroid/os/Handler;
.source "HandlerUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils;


# direct methods
.method public constructor <init>(Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils;Landroid/os/Looper;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$MyHandler;->this$0:Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils;

    .line 35
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callback "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "handleMessage 11"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$MyHandler;->this$0:Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils;

    iget-object v0, v0, Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils;->mIFreshUICallback:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 42
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$MyHandler;->this$0:Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils;

    iget-object v0, v0, Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils;->mIFreshUICallback:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$IFreshUICallback;

    .line 43
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$MyHandler;->this$0:Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils;

    iget-object v3, v3, Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils;->maps:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 44
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "handleMessage 22"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-interface {v2, v3}, Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$IFreshUICallback;->callback(I)V

    goto :goto_0

    :cond_1
    return-void
.end method
