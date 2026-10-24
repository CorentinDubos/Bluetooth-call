.class Lcom/hzbhd/common/ui/paged/PagedView$5;
.super Ljava/lang/Object;
.source "PagedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/common/ui/paged/PagedView;->endReordering()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/common/ui/paged/PagedView;

.field final synthetic val$onCompleteRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/hzbhd/common/ui/paged/PagedView;Ljava/lang/Runnable;)V
    .locals 0

    .line 2121
    iput-object p1, p0, Lcom/hzbhd/common/ui/paged/PagedView$5;->this$0:Lcom/hzbhd/common/ui/paged/PagedView;

    iput-object p2, p0, Lcom/hzbhd/common/ui/paged/PagedView$5;->val$onCompleteRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 2123
    iget-object v0, p0, Lcom/hzbhd/common/ui/paged/PagedView$5;->val$onCompleteRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2124
    iget-object v0, p0, Lcom/hzbhd/common/ui/paged/PagedView$5;->this$0:Lcom/hzbhd/common/ui/paged/PagedView;

    invoke-virtual {v0}, Lcom/hzbhd/common/ui/paged/PagedView;->enableFreeScroll()V

    return-void
.end method
