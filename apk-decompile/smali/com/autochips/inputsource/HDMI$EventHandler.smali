.class Lcom/autochips/inputsource/HDMI$EventHandler;
.super Landroid/os/Handler;
.source "HDMI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/inputsource/HDMI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private HDMI:Lcom/autochips/inputsource/HDMI;

.field final synthetic this$0:Lcom/autochips/inputsource/HDMI;


# direct methods
.method public constructor <init>(Lcom/autochips/inputsource/HDMI;Lcom/autochips/inputsource/HDMI;Landroid/os/Looper;)V
    .locals 0

    .line 712
    iput-object p1, p0, Lcom/autochips/inputsource/HDMI$EventHandler;->this$0:Lcom/autochips/inputsource/HDMI;

    .line 713
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 714
    iput-object p2, p0, Lcom/autochips/inputsource/HDMI$EventHandler;->HDMI:Lcom/autochips/inputsource/HDMI;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 718
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

    const-string v1, "HDMI.JAVA"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x3e9

    if-eq v0, v2, :cond_0

    const/16 v2, 0x3ea

    if-eq v0, v2, :cond_0

    return-void

    .line 722
    :cond_0
    iget-object v0, p0, Lcom/autochips/inputsource/HDMI$EventHandler;->this$0:Lcom/autochips/inputsource/HDMI;

    invoke-static {v0}, Lcom/autochips/inputsource/HDMI;->access$600(Lcom/autochips/inputsource/HDMI;)Lcom/autochips/inputsource/HDMI$OnMHLPhoneSignalListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 723
    iget-object v0, p0, Lcom/autochips/inputsource/HDMI$EventHandler;->this$0:Lcom/autochips/inputsource/HDMI;

    invoke-static {v0}, Lcom/autochips/inputsource/HDMI;->access$600(Lcom/autochips/inputsource/HDMI;)Lcom/autochips/inputsource/HDMI$OnMHLPhoneSignalListener;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2, p1}, Lcom/autochips/inputsource/HDMI$OnMHLPhoneSignalListener;->onMHLPhoneSignal(III)V

    goto :goto_0

    :cond_1
    const-string p1, "HDMI.java handleMessage mOnSignalListener not set so do not notify"

    .line 725
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
