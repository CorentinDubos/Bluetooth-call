.class Lcom/hzbhd/config/jar/dualscreen/DualScreenService$4;
.super Ljava/lang/Object;
.source "DualScreenService.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->addDisplayChangeListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/config/jar/dualscreen/DualScreenService;


# direct methods
.method constructor <init>(Lcom/hzbhd/config/jar/dualscreen/DualScreenService;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService$4;->this$0:Lcom/hzbhd/config/jar/dualscreen/DualScreenService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 0

    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 1

    .line 179
    iget-object p1, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService$4;->this$0:Lcom/hzbhd/config/jar/dualscreen/DualScreenService;

    invoke-static {p1}, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->access$700(Lcom/hzbhd/config/jar/dualscreen/DualScreenService;)Lcom/hzbhd/config/jar/dualscreen/DualScreenPresentation;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 180
    iget-object p1, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService$4;->this$0:Lcom/hzbhd/config/jar/dualscreen/DualScreenService;

    invoke-static {p1}, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->access$700(Lcom/hzbhd/config/jar/dualscreen/DualScreenService;)Lcom/hzbhd/config/jar/dualscreen/DualScreenPresentation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/config/jar/dualscreen/DualScreenPresentation;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getType()I

    move-result p1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 181
    iget-object p1, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService$4;->this$0:Lcom/hzbhd/config/jar/dualscreen/DualScreenService;

    invoke-static {p1}, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->access$700(Lcom/hzbhd/config/jar/dualscreen/DualScreenService;)Lcom/hzbhd/config/jar/dualscreen/DualScreenPresentation;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 182
    iget-object p1, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService$4;->this$0:Lcom/hzbhd/config/jar/dualscreen/DualScreenService;

    invoke-static {p1}, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->access$700(Lcom/hzbhd/config/jar/dualscreen/DualScreenService;)Lcom/hzbhd/config/jar/dualscreen/DualScreenPresentation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/config/jar/dualscreen/DualScreenPresentation;->hide()V

    .line 183
    iget-object p1, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService$4;->this$0:Lcom/hzbhd/config/jar/dualscreen/DualScreenService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->access$702(Lcom/hzbhd/config/jar/dualscreen/DualScreenService;Lcom/hzbhd/config/jar/dualscreen/DualScreenPresentation;)Lcom/hzbhd/config/jar/dualscreen/DualScreenPresentation;

    :cond_0
    return-void
.end method
