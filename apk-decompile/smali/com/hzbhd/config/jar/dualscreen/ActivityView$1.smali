.class Lcom/hzbhd/config/jar/dualscreen/ActivityView$1;
.super Landroid/hardware/display/VirtualDisplay$Callback;
.source "ActivityView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/config/jar/dualscreen/ActivityView;->getVirtualDisplay()Landroid/hardware/display/VirtualDisplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/config/jar/dualscreen/ActivityView;


# direct methods
.method constructor <init>(Lcom/hzbhd/config/jar/dualscreen/ActivityView;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/hzbhd/config/jar/dualscreen/ActivityView$1;->this$0:Lcom/hzbhd/config/jar/dualscreen/ActivityView;

    invoke-direct {p0}, Landroid/hardware/display/VirtualDisplay$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPaused()V
    .locals 2

    .line 128
    invoke-super {p0}, Landroid/hardware/display/VirtualDisplay$Callback;->onPaused()V

    const-string v0, "ActivityView"

    const-string v1, "VirtualDisplay onPaused"

    .line 129
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResumed()V
    .locals 2

    .line 134
    invoke-super {p0}, Landroid/hardware/display/VirtualDisplay$Callback;->onResumed()V

    const-string v0, "ActivityView"

    const-string v1, "VirtualDisplay onResumed"

    .line 135
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStopped()V
    .locals 2

    .line 140
    invoke-super {p0}, Landroid/hardware/display/VirtualDisplay$Callback;->onStopped()V

    const-string v0, "ActivityView"

    const-string v1, "VirtualDisplay onStopped"

    .line 141
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
