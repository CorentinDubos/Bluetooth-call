.class Lcom/hzbhd/common/ui/paged/PagedView$4;
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


# direct methods
.method constructor <init>(Lcom/hzbhd/common/ui/paged/PagedView;)V
    .locals 0

    .line 2114
    iput-object p1, p0, Lcom/hzbhd/common/ui/paged/PagedView$4;->this$0:Lcom/hzbhd/common/ui/paged/PagedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 2117
    iget-object v0, p0, Lcom/hzbhd/common/ui/paged/PagedView$4;->this$0:Lcom/hzbhd/common/ui/paged/PagedView;

    invoke-virtual {v0}, Lcom/hzbhd/common/ui/paged/PagedView;->onEndReordering()V

    return-void
.end method
