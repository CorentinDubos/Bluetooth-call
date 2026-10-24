.class Lcom/hzbhd/config/jar/dualscreen/DualScreenService$1;
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
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService$1;->this$0:Lcom/hzbhd/config/jar/dualscreen/DualScreenService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 64
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const-string v1, "DualScreenService"

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "HIDE_PRESENTATION: =  isPresentationShowing:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService$1;->this$0:Lcom/hzbhd/config/jar/dualscreen/DualScreenService;

    invoke-static {v0}, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->access$000(Lcom/hzbhd/config/jar/dualscreen/DualScreenService;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object p1, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService$1;->this$0:Lcom/hzbhd/config/jar/dualscreen/DualScreenService;

    invoke-static {p1}, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->access$200(Lcom/hzbhd/config/jar/dualscreen/DualScreenService;)V

    goto :goto_0

    .line 66
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SHOW_PRESENTATION: =  isPresentationShowing:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService$1;->this$0:Lcom/hzbhd/config/jar/dualscreen/DualScreenService;

    invoke-static {v0}, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->access$000(Lcom/hzbhd/config/jar/dualscreen/DualScreenService;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object p1, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService$1;->this$0:Lcom/hzbhd/config/jar/dualscreen/DualScreenService;

    invoke-static {p1}, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->access$100(Lcom/hzbhd/config/jar/dualscreen/DualScreenService;)V

    :goto_0
    return-void
.end method
