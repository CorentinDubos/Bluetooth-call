.class Lcom/hzbhd/misc/opengl/DataController$1;
.super Landroid/database/ContentObserver;
.source "DataController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/misc/opengl/DataController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/misc/opengl/DataController;


# direct methods
.method constructor <init>(Lcom/hzbhd/misc/opengl/DataController;Landroid/os/Handler;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lcom/hzbhd/misc/opengl/DataController$1;->this$0:Lcom/hzbhd/misc/opengl/DataController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 323
    sget-object p1, Lcom/hzbhd/misc/opengl/DataController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isStopRender  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hzbhd/misc/opengl/DataController$1;->this$0:Lcom/hzbhd/misc/opengl/DataController;

    invoke-virtual {v1}, Lcom/hzbhd/misc/opengl/DataController;->ismDataUpdate()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object p1, p0, Lcom/hzbhd/misc/opengl/DataController$1;->this$0:Lcom/hzbhd/misc/opengl/DataController;

    invoke-virtual {p1}, Lcom/hzbhd/misc/opengl/DataController;->onChangeForHandler()V

    .line 325
    iget-object p1, p0, Lcom/hzbhd/misc/opengl/DataController$1;->this$0:Lcom/hzbhd/misc/opengl/DataController;

    iget-boolean p1, p1, Lcom/hzbhd/misc/opengl/DataController;->mGpioLevel:Z

    if-eqz p1, :cond_0

    .line 326
    iget-object p1, p0, Lcom/hzbhd/misc/opengl/DataController$1;->this$0:Lcom/hzbhd/misc/opengl/DataController;

    invoke-static {p1}, Lcom/hzbhd/misc/opengl/DataController;->access$300(Lcom/hzbhd/misc/opengl/DataController;)Lcom/hzbhd/misc/opengl/DataController$IBackCameraCallback;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/hzbhd/misc/opengl/DataController$1;->this$0:Lcom/hzbhd/misc/opengl/DataController;

    invoke-static {p1}, Lcom/hzbhd/misc/opengl/DataController;->access$300(Lcom/hzbhd/misc/opengl/DataController;)Lcom/hzbhd/misc/opengl/DataController$IBackCameraCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/hzbhd/misc/opengl/DataController$IBackCameraCallback;->backCameraOn()V

    goto :goto_0

    .line 328
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/misc/opengl/DataController$1;->this$0:Lcom/hzbhd/misc/opengl/DataController;

    invoke-static {p1}, Lcom/hzbhd/misc/opengl/DataController;->access$300(Lcom/hzbhd/misc/opengl/DataController;)Lcom/hzbhd/misc/opengl/DataController$IBackCameraCallback;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/hzbhd/misc/opengl/DataController$1;->this$0:Lcom/hzbhd/misc/opengl/DataController;

    invoke-static {p1}, Lcom/hzbhd/misc/opengl/DataController;->access$300(Lcom/hzbhd/misc/opengl/DataController;)Lcom/hzbhd/misc/opengl/DataController$IBackCameraCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/hzbhd/misc/opengl/DataController$IBackCameraCallback;->backCameraOff()V

    .line 331
    :cond_1
    :goto_0
    sget-object p1, Lcom/hzbhd/misc/opengl/DataController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "11 isStopRender  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hzbhd/misc/opengl/DataController$1;->this$0:Lcom/hzbhd/misc/opengl/DataController;

    invoke-virtual {v1}, Lcom/hzbhd/misc/opengl/DataController;->ismDataUpdate()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
