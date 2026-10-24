.class Lcom/hzbhd/midwareproxy/utils/BackCameraUtils$1;
.super Landroid/database/ContentObserver;
.source "BackCameraUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/utils/BackCameraUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/midwareproxy/utils/BackCameraUtils;


# direct methods
.method constructor <init>(Lcom/hzbhd/midwareproxy/utils/BackCameraUtils;Landroid/os/Handler;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/utils/BackCameraUtils$1;->this$0:Lcom/hzbhd/midwareproxy/utils/BackCameraUtils;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 31
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/utils/BackCameraUtils$1;->this$0:Lcom/hzbhd/midwareproxy/utils/BackCameraUtils;

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/utils/BackCameraUtils;->access$000(Lcom/hzbhd/midwareproxy/utils/BackCameraUtils;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "gpioLevel"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 32
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isStopRender  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TAG"

    invoke-static {v0, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_1

    .line 34
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/utils/BackCameraUtils$1;->this$0:Lcom/hzbhd/midwareproxy/utils/BackCameraUtils;

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/utils/BackCameraUtils;->access$100(Lcom/hzbhd/midwareproxy/utils/BackCameraUtils;)Lcom/hzbhd/midwareproxy/utils/BackCameraUtils$IBackCameraCallback;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/hzbhd/midwareproxy/utils/BackCameraUtils$1;->this$0:Lcom/hzbhd/midwareproxy/utils/BackCameraUtils;

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/utils/BackCameraUtils;->access$100(Lcom/hzbhd/midwareproxy/utils/BackCameraUtils;)Lcom/hzbhd/midwareproxy/utils/BackCameraUtils$IBackCameraCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/hzbhd/midwareproxy/utils/BackCameraUtils$IBackCameraCallback;->backCameraOn()V

    goto :goto_1

    .line 36
    :cond_1
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/utils/BackCameraUtils$1;->this$0:Lcom/hzbhd/midwareproxy/utils/BackCameraUtils;

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/utils/BackCameraUtils;->access$100(Lcom/hzbhd/midwareproxy/utils/BackCameraUtils;)Lcom/hzbhd/midwareproxy/utils/BackCameraUtils$IBackCameraCallback;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/hzbhd/midwareproxy/utils/BackCameraUtils$1;->this$0:Lcom/hzbhd/midwareproxy/utils/BackCameraUtils;

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/utils/BackCameraUtils;->access$100(Lcom/hzbhd/midwareproxy/utils/BackCameraUtils;)Lcom/hzbhd/midwareproxy/utils/BackCameraUtils$IBackCameraCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/hzbhd/midwareproxy/utils/BackCameraUtils$IBackCameraCallback;->backCameraOff()V

    :cond_2
    :goto_1
    return-void
.end method
