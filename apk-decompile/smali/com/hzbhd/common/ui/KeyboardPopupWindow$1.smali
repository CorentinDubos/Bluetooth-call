.class Lcom/hzbhd/common/ui/KeyboardPopupWindow$1;
.super Ljava/lang/Object;
.source "KeyboardPopupWindow.java"

# interfaces
.implements Lcom/hzbhd/common/ui/Keyboard$OnGotoKeyboardClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/common/ui/KeyboardPopupWindow;-><init>(Landroid/content/Context;Lcom/hzbhd/common/ui/Keyboard$KeyboardMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/common/ui/KeyboardPopupWindow;


# direct methods
.method constructor <init>(Lcom/hzbhd/common/ui/KeyboardPopupWindow;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow$1;->this$0:Lcom/hzbhd/common/ui/KeyboardPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow$1;->this$0:Lcom/hzbhd/common/ui/KeyboardPopupWindow;

    invoke-static {v0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->access$000(Lcom/hzbhd/common/ui/KeyboardPopupWindow;)Lcom/hzbhd/common/ui/PopupMenuButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow$1;->this$0:Lcom/hzbhd/common/ui/KeyboardPopupWindow;

    invoke-static {v0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->access$000(Lcom/hzbhd/common/ui/KeyboardPopupWindow;)Lcom/hzbhd/common/ui/PopupMenuButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/common/ui/PopupMenuButton;->resetTimeout()V

    .line 94
    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow$1;->this$0:Lcom/hzbhd/common/ui/KeyboardPopupWindow;

    invoke-static {v0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->access$100(Lcom/hzbhd/common/ui/KeyboardPopupWindow;)Lcom/hzbhd/common/ui/Keyboard$OnGotoKeyboardClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow$1;->this$0:Lcom/hzbhd/common/ui/KeyboardPopupWindow;

    invoke-static {v0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->access$100(Lcom/hzbhd/common/ui/KeyboardPopupWindow;)Lcom/hzbhd/common/ui/Keyboard$OnGotoKeyboardClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/hzbhd/common/ui/Keyboard$OnGotoKeyboardClickListener;->onCancel()V

    :cond_0
    return-void
.end method

.method public onDel()V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow$1;->this$0:Lcom/hzbhd/common/ui/KeyboardPopupWindow;

    invoke-static {v0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->access$000(Lcom/hzbhd/common/ui/KeyboardPopupWindow;)Lcom/hzbhd/common/ui/PopupMenuButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow$1;->this$0:Lcom/hzbhd/common/ui/KeyboardPopupWindow;

    invoke-static {v0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->access$000(Lcom/hzbhd/common/ui/KeyboardPopupWindow;)Lcom/hzbhd/common/ui/PopupMenuButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/common/ui/PopupMenuButton;->resetTimeout()V

    .line 74
    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow$1;->this$0:Lcom/hzbhd/common/ui/KeyboardPopupWindow;

    invoke-static {v0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->access$100(Lcom/hzbhd/common/ui/KeyboardPopupWindow;)Lcom/hzbhd/common/ui/Keyboard$OnGotoKeyboardClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow$1;->this$0:Lcom/hzbhd/common/ui/KeyboardPopupWindow;

    invoke-static {v0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->access$100(Lcom/hzbhd/common/ui/KeyboardPopupWindow;)Lcom/hzbhd/common/ui/Keyboard$OnGotoKeyboardClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/hzbhd/common/ui/Keyboard$OnGotoKeyboardClickListener;->onDel()V

    :cond_0
    return-void
.end method

.method public onNumberClick(I)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow$1;->this$0:Lcom/hzbhd/common/ui/KeyboardPopupWindow;

    invoke-static {v0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->access$000(Lcom/hzbhd/common/ui/KeyboardPopupWindow;)Lcom/hzbhd/common/ui/PopupMenuButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow$1;->this$0:Lcom/hzbhd/common/ui/KeyboardPopupWindow;

    invoke-static {v0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->access$000(Lcom/hzbhd/common/ui/KeyboardPopupWindow;)Lcom/hzbhd/common/ui/PopupMenuButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/common/ui/PopupMenuButton;->resetTimeout()V

    .line 64
    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow$1;->this$0:Lcom/hzbhd/common/ui/KeyboardPopupWindow;

    invoke-static {v0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->access$100(Lcom/hzbhd/common/ui/KeyboardPopupWindow;)Lcom/hzbhd/common/ui/Keyboard$OnGotoKeyboardClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow$1;->this$0:Lcom/hzbhd/common/ui/KeyboardPopupWindow;

    invoke-static {v0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->access$100(Lcom/hzbhd/common/ui/KeyboardPopupWindow;)Lcom/hzbhd/common/ui/Keyboard$OnGotoKeyboardClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/hzbhd/common/ui/Keyboard$OnGotoKeyboardClickListener;->onNumberClick(I)V

    :cond_0
    return-void
.end method

.method public onOk()V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow$1;->this$0:Lcom/hzbhd/common/ui/KeyboardPopupWindow;

    invoke-static {v0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->access$000(Lcom/hzbhd/common/ui/KeyboardPopupWindow;)Lcom/hzbhd/common/ui/PopupMenuButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow$1;->this$0:Lcom/hzbhd/common/ui/KeyboardPopupWindow;

    invoke-static {v0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->access$000(Lcom/hzbhd/common/ui/KeyboardPopupWindow;)Lcom/hzbhd/common/ui/PopupMenuButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/common/ui/PopupMenuButton;->resetTimeout()V

    .line 84
    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow$1;->this$0:Lcom/hzbhd/common/ui/KeyboardPopupWindow;

    invoke-static {v0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->access$100(Lcom/hzbhd/common/ui/KeyboardPopupWindow;)Lcom/hzbhd/common/ui/Keyboard$OnGotoKeyboardClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow$1;->this$0:Lcom/hzbhd/common/ui/KeyboardPopupWindow;

    invoke-static {v0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->access$100(Lcom/hzbhd/common/ui/KeyboardPopupWindow;)Lcom/hzbhd/common/ui/Keyboard$OnGotoKeyboardClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/hzbhd/common/ui/Keyboard$OnGotoKeyboardClickListener;->onOk()V

    :cond_0
    return-void
.end method
