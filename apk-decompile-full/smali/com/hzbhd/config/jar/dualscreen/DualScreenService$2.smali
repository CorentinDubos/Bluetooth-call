.class Lcom/hzbhd/config/jar/dualscreen/DualScreenService$2;
.super Landroid/os/HandlerThread;
.source "DualScreenService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/config/jar/dualscreen/DualScreenService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/config/jar/dualscreen/DualScreenService;


# direct methods
.method constructor <init>(Lcom/hzbhd/config/jar/dualscreen/DualScreenService;Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenService$2;->this$0:Lcom/hzbhd/config/jar/dualscreen/DualScreenService;

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/hzbhd/config/jar/dualscreen/DualScreenService$2;->start()V

    return-void
.end method
