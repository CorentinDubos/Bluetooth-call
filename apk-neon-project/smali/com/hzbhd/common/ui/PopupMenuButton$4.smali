.class Lcom/hzbhd/common/ui/PopupMenuButton$4;
.super Landroid/os/Handler;
.source "PopupMenuButton.java"


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

    .line 645
    iput-object p1, p0, Lcom/hzbhd/common/ui/PopupMenuButton$4;->this$0:Lcom/hzbhd/common/ui/PopupMenuButton;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 648
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_0

    .line 650
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/common/ui/PopupMenuButton$4;->this$0:Lcom/hzbhd/common/ui/PopupMenuButton;

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/PopupMenuButton;->dismiss()V

    :goto_0
    return-void
.end method
