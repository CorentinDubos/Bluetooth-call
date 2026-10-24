.class Lcom/hzbhd/midwareproxy/screen/utils/DebugView$1;
.super Ljava/lang/Object;
.source "DebugView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/midwareproxy/screen/utils/DebugView;->updateDatas()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/midwareproxy/screen/utils/DebugView;


# direct methods
.method constructor <init>(Lcom/hzbhd/midwareproxy/screen/utils/DebugView;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/screen/utils/DebugView$1;->this$0:Lcom/hzbhd/midwareproxy/screen/utils/DebugView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/utils/DebugView$1;->this$0:Lcom/hzbhd/midwareproxy/screen/utils/DebugView;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/screen/utils/DebugView;->access$300(Lcom/hzbhd/midwareproxy/screen/utils/DebugView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/screen/utils/DebugView$1;->this$0:Lcom/hzbhd/midwareproxy/screen/utils/DebugView;

    iget-object v1, v1, Lcom/hzbhd/midwareproxy/screen/utils/DebugView;->radiodebg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
