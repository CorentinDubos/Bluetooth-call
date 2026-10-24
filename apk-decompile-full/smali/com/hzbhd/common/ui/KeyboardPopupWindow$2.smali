.class Lcom/hzbhd/common/ui/KeyboardPopupWindow$2;
.super Ljava/lang/Object;
.source "KeyboardPopupWindow.java"

# interfaces
.implements Lcom/hzbhd/common/ui/Keyboard$OnGotoKeyboardLongClickListener;


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

    .line 101
    iput-object p1, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow$2;->this$0:Lcom/hzbhd/common/ui/KeyboardPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelLongClick()Z
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow$2;->this$0:Lcom/hzbhd/common/ui/KeyboardPopupWindow;

    invoke-static {v0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->access$000(Lcom/hzbhd/common/ui/KeyboardPopupWindow;)Lcom/hzbhd/common/ui/PopupMenuButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow$2;->this$0:Lcom/hzbhd/common/ui/KeyboardPopupWindow;

    invoke-static {v0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->access$000(Lcom/hzbhd/common/ui/KeyboardPopupWindow;)Lcom/hzbhd/common/ui/PopupMenuButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/common/ui/PopupMenuButton;->resetTimeout()V

    .line 140
    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow$2;->this$0:Lcom/hzbhd/common/ui/KeyboardPopupWindow;

    invoke-static {v0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->access$200(Lcom/hzbhd/common/ui/KeyboardPopupWindow;)Lcom/hzbhd/common/ui/Keyboard$OnGotoKeyboardLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow$2;->this$0:Lcom/hzbhd/common/ui/KeyboardPopupWindow;

    invoke-static {v0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->access$200(Lcom/hzbhd/common/ui/KeyboardPopupWindow;)Lcom/hzbhd/common/ui/Keyboard$OnGotoKeyboardLongClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/hzbhd/common/ui/Keyboard$OnGotoKeyboardLongClickListener;->onCancelLongClick()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onDelLongClick()Z
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow$2;->this$0:Lcom/hzbhd/common/ui/KeyboardPopupWindow;

    invoke-static {v0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->access$000(Lcom/hzbhd/common/ui/KeyboardPopupWindow;)Lcom/hzbhd/common/ui/PopupMenuButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow$2;->this$0:Lcom/hzbhd/common/ui/KeyboardPopupWindow;

    invoke-static {v0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->access$000(Lcom/hzbhd/common/ui/KeyboardPopupWindow;)Lcom/hzbhd/common/ui/PopupMenuButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/common/ui/PopupMenuButton;->resetTimeout()V

    .line 118
    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow$2;->this$0:Lcom/hzbhd/common/ui/KeyboardPopupWindow;

    invoke-static {v0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->access$200(Lcom/hzbhd/common/ui/KeyboardPopupWindow;)Lcom/hzbhd/common/ui/Keyboard$OnGotoKeyboardLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow$2;->this$0:Lcom/hzbhd/common/ui/KeyboardPopupWindow;

    invoke-static {v0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->access$200(Lcom/hzbhd/common/ui/KeyboardPopupWindow;)Lcom/hzbhd/common/ui/Keyboard$OnGotoKeyboardLongClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/hzbhd/common/ui/Keyboard$OnGotoKeyboardLongClickListener;->onDelLongClick()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onNumberLongClick(I)Z
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow$2;->this$0:Lcom/hzbhd/common/ui/KeyboardPopupWindow;

    invoke-static {v0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->access$000(Lcom/hzbhd/common/ui/KeyboardPopupWindow;)Lcom/hzbhd/common/ui/PopupMenuButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow$2;->this$0:Lcom/hzbhd/common/ui/KeyboardPopupWindow;

    invoke-static {v0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->access$000(Lcom/hzbhd/common/ui/KeyboardPopupWindow;)Lcom/hzbhd/common/ui/PopupMenuButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/common/ui/PopupMenuButton;->resetTimeout()V

    .line 107
    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow$2;->this$0:Lcom/hzbhd/common/ui/KeyboardPopupWindow;

    invoke-static {v0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->access$200(Lcom/hzbhd/common/ui/KeyboardPopupWindow;)Lcom/hzbhd/common/ui/Keyboard$OnGotoKeyboardLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow$2;->this$0:Lcom/hzbhd/common/ui/KeyboardPopupWindow;

    invoke-static {v0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->access$200(Lcom/hzbhd/common/ui/KeyboardPopupWindow;)Lcom/hzbhd/common/ui/Keyboard$OnGotoKeyboardLongClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/hzbhd/common/ui/Keyboard$OnGotoKeyboardLongClickListener;->onNumberLongClick(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onOkLongClick()Z
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow$2;->this$0:Lcom/hzbhd/common/ui/KeyboardPopupWindow;

    invoke-static {v0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->access$000(Lcom/hzbhd/common/ui/KeyboardPopupWindow;)Lcom/hzbhd/common/ui/PopupMenuButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow$2;->this$0:Lcom/hzbhd/common/ui/KeyboardPopupWindow;

    invoke-static {v0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->access$000(Lcom/hzbhd/common/ui/KeyboardPopupWindow;)Lcom/hzbhd/common/ui/PopupMenuButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/common/ui/PopupMenuButton;->resetTimeout()V

    .line 129
    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow$2;->this$0:Lcom/hzbhd/common/ui/KeyboardPopupWindow;

    invoke-static {v0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->access$200(Lcom/hzbhd/common/ui/KeyboardPopupWindow;)Lcom/hzbhd/common/ui/Keyboard$OnGotoKeyboardLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow$2;->this$0:Lcom/hzbhd/common/ui/KeyboardPopupWindow;

    invoke-static {v0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->access$200(Lcom/hzbhd/common/ui/KeyboardPopupWindow;)Lcom/hzbhd/common/ui/Keyboard$OnGotoKeyboardLongClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/hzbhd/common/ui/Keyboard$OnGotoKeyboardLongClickListener;->onOkLongClick()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
