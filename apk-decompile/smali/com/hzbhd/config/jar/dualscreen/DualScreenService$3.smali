.class Lcom/hzbhd/config/jar/dualscreen/DualScreenService$3;
.super Landroid/os/Handler;
.source "DualScreenService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/config/jar/dualscreen/DualScreenService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/config/jar/dualscreen/DualScreenService;


# direct methods
.method constructor <init>(Lcom/hzbhd/config/jar/dualscreen/DualScreenService;Landroid/os/Looper;)V
    .locals 2

    .line 92
    iput-object p1, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService$3;->this$0:Lcom/hzbhd/config/jar/dualscreen/DualScreenService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x4

    const-wide/16 v0, 0x3e8

    .line 94
    invoke-virtual {p0, p1, v0, v1}, Lcom/hzbhd/config/jar/dualscreen/DualScreenService$3;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 99
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 102
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->access$300()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService$3;->this$0:Lcom/hzbhd/config/jar/dualscreen/DualScreenService;

    invoke-static {p1}, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->access$400(Lcom/hzbhd/config/jar/dualscreen/DualScreenService;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 103
    invoke-static {}, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->access$300()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService$3;->this$0:Lcom/hzbhd/config/jar/dualscreen/DualScreenService;

    invoke-static {v1}, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->access$400(Lcom/hzbhd/config/jar/dualscreen/DualScreenService;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->access$500(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 104
    iget-object p1, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService$3;->this$0:Lcom/hzbhd/config/jar/dualscreen/DualScreenService;

    invoke-virtual {p1}, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->hideAll()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 108
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 110
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService$3;->this$0:Lcom/hzbhd/config/jar/dualscreen/DualScreenService;

    invoke-static {p1}, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->access$600(Lcom/hzbhd/config/jar/dualscreen/DualScreenService;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_1
    return-void
.end method
