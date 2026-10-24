.class Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil$1;
.super Landroid/os/HandlerThread;
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
.method constructor <init>(Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil;Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil$1;->this$0:Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil;

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil$1;->start()V

    return-void
.end method
