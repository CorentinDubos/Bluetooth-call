.class Lcom/hzbhd/common/ui/PopupMenuButton$1;
.super Ljava/lang/Object;
.source "PopupMenuButton.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/common/ui/PopupMenuButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/common/ui/PopupMenuButton;


# direct methods
.method constructor <init>(Lcom/hzbhd/common/ui/PopupMenuButton;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/hzbhd/common/ui/PopupMenuButton$1;->this$0:Lcom/hzbhd/common/ui/PopupMenuButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/hzbhd/common/ui/PopupMenuButton$1;->this$0:Lcom/hzbhd/common/ui/PopupMenuButton;

    invoke-static {v0}, Lcom/hzbhd/common/ui/PopupMenuButton;->access$000(Lcom/hzbhd/common/ui/PopupMenuButton;)Landroid/widget/PopupWindow$OnDismissListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/hzbhd/common/ui/PopupMenuButton$1;->this$0:Lcom/hzbhd/common/ui/PopupMenuButton;

    invoke-static {v0}, Lcom/hzbhd/common/ui/PopupMenuButton;->access$000(Lcom/hzbhd/common/ui/PopupMenuButton;)Landroid/widget/PopupWindow$OnDismissListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/common/ui/PopupMenuButton$1;->this$0:Lcom/hzbhd/common/ui/PopupMenuButton;

    invoke-static {v0}, Lcom/hzbhd/common/ui/PopupMenuButton;->access$100(Lcom/hzbhd/common/ui/PopupMenuButton;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 258
    iget-object v0, p0, Lcom/hzbhd/common/ui/PopupMenuButton$1;->this$0:Lcom/hzbhd/common/ui/PopupMenuButton;

    invoke-virtual {v0}, Lcom/hzbhd/common/ui/PopupMenuButton;->stopTimeout()V

    return-void
.end method
