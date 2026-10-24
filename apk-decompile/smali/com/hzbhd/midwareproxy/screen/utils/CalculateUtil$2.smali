.class Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil$2;
.super Landroid/os/Handler;
.source "CalculateUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil;


# direct methods
.method constructor <init>(Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil;Landroid/os/Looper;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil$2;->this$0:Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const-string v0, "CalculateUtil"

    .line 69
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: onStartCalculate start:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil$CALCULATE_MSG;->value(I)Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil$CALCULATE_MSG;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil$CalculateCallback;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil$CALCULATE_MSG;->value(I)Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil$CALCULATE_MSG;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil$CalculateCallback;->onStartCalculate(Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil$CALCULATE_MSG;)V

    const-string v1, "handleMessage: onStartCalculate end"

    .line 71
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 73
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 75
    :goto_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil$2;->this$0:Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil;->access$000(Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil$2;->this$0:Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil;->access$000(Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil;)Landroid/os/Handler;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
