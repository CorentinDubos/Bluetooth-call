.class Lcom/hzbhd/common/ui/paged/CellChild$1;
.super Ljava/lang/Object;
.source "CellChild.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/common/ui/paged/CellChild;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/common/ui/paged/CellChild;


# direct methods
.method constructor <init>(Lcom/hzbhd/common/ui/paged/CellChild;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/hzbhd/common/ui/paged/CellChild$1;->this$0:Lcom/hzbhd/common/ui/paged/CellChild;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/hzbhd/common/ui/paged/CellChild$1;->this$0:Lcom/hzbhd/common/ui/paged/CellChild;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/hzbhd/common/ui/paged/CellChild;->access$002(Lcom/hzbhd/common/ui/paged/CellChild;Z)Z

    .line 99
    iget-object v0, p0, Lcom/hzbhd/common/ui/paged/CellChild$1;->this$0:Lcom/hzbhd/common/ui/paged/CellChild;

    invoke-virtual {v0}, Lcom/hzbhd/common/ui/paged/CellChild;->onLongClick()V

    return-void
.end method
