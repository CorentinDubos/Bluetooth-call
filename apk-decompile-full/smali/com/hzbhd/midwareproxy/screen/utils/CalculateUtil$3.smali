.class Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil$3;
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

    .line 79
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil$3;->this$0:Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const-string v0, "CalculateUtil"

    .line 83
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: onCalculated start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil$CALCULATE_MSG;->value(I)Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil$CALCULATE_MSG;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil$CalculateCallback;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil$CALCULATE_MSG;->value(I)Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil$CALCULATE_MSG;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil$CalculateCallback;->onCalculated(Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil$CALCULATE_MSG;)V

    const-string p1, "handleMessage: onCalculated end"

    .line 85
    invoke-static {v0, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 87
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
