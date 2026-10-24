.class Lcom/autochips/inputsource/InputSourceClient$EventHandler;
.super Landroid/os/Handler;
.source "InputSourceClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/inputsource/InputSourceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private InputSourceClient:Lcom/autochips/inputsource/InputSourceClient;

.field final synthetic this$0:Lcom/autochips/inputsource/InputSourceClient;


# direct methods
.method public constructor <init>(Lcom/autochips/inputsource/InputSourceClient;Lcom/autochips/inputsource/InputSourceClient;Landroid/os/Looper;)V
    .locals 0

    .line 647
    iput-object p1, p0, Lcom/autochips/inputsource/InputSourceClient$EventHandler;->this$0:Lcom/autochips/inputsource/InputSourceClient;

    .line 648
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 649
    iput-object p2, p0, Lcom/autochips/inputsource/InputSourceClient$EventHandler;->InputSourceClient:Lcom/autochips/inputsource/InputSourceClient;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InputSourceClient.java handleMessage msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";param1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";param2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputSourceClient"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    return-void

    .line 667
    :cond_0
    iget-object v0, p0, Lcom/autochips/inputsource/InputSourceClient$EventHandler;->this$0:Lcom/autochips/inputsource/InputSourceClient;

    invoke-static {v0}, Lcom/autochips/inputsource/InputSourceClient;->access$300(Lcom/autochips/inputsource/InputSourceClient;)Lcom/autochips/inputsource/InputSourceClient$OnCbmCmdListener;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "InputSourceClient.java handleMessage msg: onCmd"

    .line 668
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    iget-object v0, p0, Lcom/autochips/inputsource/InputSourceClient$EventHandler;->this$0:Lcom/autochips/inputsource/InputSourceClient;

    invoke-static {v0}, Lcom/autochips/inputsource/InputSourceClient;->access$300(Lcom/autochips/inputsource/InputSourceClient;)Lcom/autochips/inputsource/InputSourceClient$OnCbmCmdListener;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v2, p1}, Lcom/autochips/inputsource/InputSourceClient$OnCbmCmdListener;->onCmd(II)V

    goto :goto_0

    :cond_1
    const-string p1, "InputSourceClient.java handleMessage mOnCbmCmdListener not set so do not notify"

    .line 671
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string p1, "InputSourceClient.java handleMessage mOnCbmCmdListener onCmd end"

    .line 674
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 658
    :cond_2
    iget-object v0, p0, Lcom/autochips/inputsource/InputSourceClient$EventHandler;->this$0:Lcom/autochips/inputsource/InputSourceClient;

    invoke-static {v0}, Lcom/autochips/inputsource/InputSourceClient;->access$200(Lcom/autochips/inputsource/InputSourceClient;)Lcom/autochips/inputsource/InputSourceClient$OnSignalListener;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "InputSourceClient.java handleMessage msg: onSignal"

    .line 659
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    iget-object v0, p0, Lcom/autochips/inputsource/InputSourceClient$EventHandler;->this$0:Lcom/autochips/inputsource/InputSourceClient;

    invoke-static {v0}, Lcom/autochips/inputsource/InputSourceClient;->access$200(Lcom/autochips/inputsource/InputSourceClient;)Lcom/autochips/inputsource/InputSourceClient$OnSignalListener;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2, p1}, Lcom/autochips/inputsource/InputSourceClient$OnSignalListener;->onSignal(III)V

    goto :goto_1

    :cond_3
    const-string p1, "InputSourceClient.java handleMessage mOnSignalListener not set so do not notify"

    .line 662
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
