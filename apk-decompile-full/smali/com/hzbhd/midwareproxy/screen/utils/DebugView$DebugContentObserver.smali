.class Lcom/hzbhd/midwareproxy/screen/utils/DebugView$DebugContentObserver;
.super Landroid/database/ContentObserver;
.source "DebugView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/screen/utils/DebugView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DebugContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/midwareproxy/screen/utils/DebugView;


# direct methods
.method public constructor <init>(Lcom/hzbhd/midwareproxy/screen/utils/DebugView;)V
    .locals 1

    .line 69
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/screen/utils/DebugView$DebugContentObserver;->this$0:Lcom/hzbhd/midwareproxy/screen/utils/DebugView;

    .line 70
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .line 75
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    :try_start_0
    const-string p1, "radio_debug"

    .line 78
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/utils/DebugView$DebugContentObserver;->this$0:Lcom/hzbhd/midwareproxy/screen/utils/DebugView;

    iget-object v0, v0, Lcom/hzbhd/midwareproxy/screen/utils/DebugView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const-string v0, "mww"

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DebugContentObserver radio_debugInt= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 81
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/screen/utils/DebugView$DebugContentObserver;->this$0:Lcom/hzbhd/midwareproxy/screen/utils/DebugView;

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/screen/utils/DebugView;->access$200(Lcom/hzbhd/midwareproxy/screen/utils/DebugView;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/utils/DebugView$DebugContentObserver;->this$0:Lcom/hzbhd/midwareproxy/screen/utils/DebugView;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/screen/utils/DebugView;->access$000(Lcom/hzbhd/midwareproxy/screen/utils/DebugView;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/screen/utils/DebugView$DebugContentObserver;->this$0:Lcom/hzbhd/midwareproxy/screen/utils/DebugView;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/screen/utils/DebugView;->access$100(Lcom/hzbhd/midwareproxy/screen/utils/DebugView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 84
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/screen/utils/DebugView$DebugContentObserver;->this$0:Lcom/hzbhd/midwareproxy/screen/utils/DebugView;

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/screen/utils/DebugView;->access$200(Lcom/hzbhd/midwareproxy/screen/utils/DebugView;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/utils/DebugView$DebugContentObserver;->this$0:Lcom/hzbhd/midwareproxy/screen/utils/DebugView;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/screen/utils/DebugView;->access$000(Lcom/hzbhd/midwareproxy/screen/utils/DebugView;)Landroid/view/View;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method
