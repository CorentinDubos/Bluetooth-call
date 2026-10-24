.class Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch$1;
.super Ljava/lang/Object;
.source "QzOringinalScreenTouchDispatch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->startThread(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;

.field final synthetic val$event:Landroid/view/MotionEvent;


# direct methods
.method constructor <init>(Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;Landroid/view/MotionEvent;)V
    .locals 0

    .line 567
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch$1;->this$0:Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;

    iput-object p2, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch$1;->val$event:Landroid/view/MotionEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 570
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch$1;->this$0:Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;

    iget-object v0, v0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->inst:Landroid/app/Instrumentation;

    if-nez v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch$1;->this$0:Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;

    new-instance v1, Landroid/app/Instrumentation;

    invoke-direct {v1}, Landroid/app/Instrumentation;-><init>()V

    iput-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->inst:Landroid/app/Instrumentation;

    .line 574
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch$1;->this$0:Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;

    iget-object v0, v0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->inst:Landroid/app/Instrumentation;

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch$1;->val$event:Landroid/view/MotionEvent;

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "\tQZ_LOG"

    const-string/jumbo v1, "sendPointerSync ERRO"

    .line 576
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
