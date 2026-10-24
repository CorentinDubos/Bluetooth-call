.class Lcom/hzbhd/common/ui/KeyboardPopupWindow$4;
.super Ljava/lang/Object;
.source "KeyboardPopupWindow.java"

# interfaces
.implements Lcom/hzbhd/common/ui/Keyboard$OnPhoneKeyboardLongClickListener;


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

    .line 191
    iput-object p1, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow$4;->this$0:Lcom/hzbhd/common/ui/KeyboardPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDelLongClick()Z
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow$4;->this$0:Lcom/hzbhd/common/ui/KeyboardPopupWindow;

    invoke-static {v0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->access$000(Lcom/hzbhd/common/ui/KeyboardPopupWindow;)Lcom/hzbhd/common/ui/PopupMenuButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow$4;->this$0:Lcom/hzbhd/common/ui/KeyboardPopupWindow;

    invoke-static {v0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->access$000(Lcom/hzbhd/common/ui/KeyboardPopupWindow;)Lcom/hzbhd/common/ui/PopupMenuButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/common/ui/PopupMenuButton;->resetTimeout()V

    .line 208
    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow$4;->this$0:Lcom/hzbhd/common/ui/KeyboardPopupWindow;

    invoke-static {v0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->access$400(Lcom/hzbhd/common/ui/KeyboardPopupWindow;)Lcom/hzbhd/common/ui/Keyboard$OnPhoneKeyboardLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow$4;->this$0:Lcom/hzbhd/common/ui/KeyboardPopupWindow;

    invoke-static {v0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->access$400(Lcom/hzbhd/common/ui/KeyboardPopupWindow;)Lcom/hzbhd/common/ui/Keyboard$OnPhoneKeyboardLongClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/hzbhd/common/ui/Keyboard$OnPhoneKeyboardLongClickListener;->onDelLongClick()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onNumberLongClick(I)Z
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow$4;->this$0:Lcom/hzbhd/common/ui/KeyboardPopupWindow;

    invoke-static {v0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->access$000(Lcom/hzbhd/common/ui/KeyboardPopupWindow;)Lcom/hzbhd/common/ui/PopupMenuButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow$4;->this$0:Lcom/hzbhd/common/ui/KeyboardPopupWindow;

    invoke-static {v0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->access$000(Lcom/hzbhd/common/ui/KeyboardPopupWindow;)Lcom/hzbhd/common/ui/PopupMenuButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/common/ui/PopupMenuButton;->resetTimeout()V

    .line 197
    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow$4;->this$0:Lcom/hzbhd/common/ui/KeyboardPopupWindow;

    invoke-static {v0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->access$400(Lcom/hzbhd/common/ui/KeyboardPopupWindow;)Lcom/hzbhd/common/ui/Keyboard$OnPhoneKeyboardLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow$4;->this$0:Lcom/hzbhd/common/ui/KeyboardPopupWindow;

    invoke-static {v0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->access$400(Lcom/hzbhd/common/ui/KeyboardPopupWindow;)Lcom/hzbhd/common/ui/Keyboard$OnPhoneKeyboardLongClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/hzbhd/common/ui/Keyboard$OnPhoneKeyboardLongClickListener;->onNumberLongClick(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onStarLongClick()Z
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow$4;->this$0:Lcom/hzbhd/common/ui/KeyboardPopupWindow;

    invoke-static {v0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->access$000(Lcom/hzbhd/common/ui/KeyboardPopupWindow;)Lcom/hzbhd/common/ui/PopupMenuButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow$4;->this$0:Lcom/hzbhd/common/ui/KeyboardPopupWindow;

    invoke-static {v0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->access$000(Lcom/hzbhd/common/ui/KeyboardPopupWindow;)Lcom/hzbhd/common/ui/PopupMenuButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/common/ui/PopupMenuButton;->resetTimeout()V

    .line 230
    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow$4;->this$0:Lcom/hzbhd/common/ui/KeyboardPopupWindow;

    invoke-static {v0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->access$400(Lcom/hzbhd/common/ui/KeyboardPopupWindow;)Lcom/hzbhd/common/ui/Keyboard$OnPhoneKeyboardLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow$4;->this$0:Lcom/hzbhd/common/ui/KeyboardPopupWindow;

    invoke-static {v0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->access$400(Lcom/hzbhd/common/ui/KeyboardPopupWindow;)Lcom/hzbhd/common/ui/Keyboard$OnPhoneKeyboardLongClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/hzbhd/common/ui/Keyboard$OnPhoneKeyboardLongClickListener;->onStarLongClick()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onWellLongClick()Z
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow$4;->this$0:Lcom/hzbhd/common/ui/KeyboardPopupWindow;

    invoke-static {v0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->access$000(Lcom/hzbhd/common/ui/KeyboardPopupWindow;)Lcom/hzbhd/common/ui/PopupMenuButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow$4;->this$0:Lcom/hzbhd/common/ui/KeyboardPopupWindow;

    invoke-static {v0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->access$000(Lcom/hzbhd/common/ui/KeyboardPopupWindow;)Lcom/hzbhd/common/ui/PopupMenuButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/common/ui/PopupMenuButton;->resetTimeout()V

    .line 219
    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow$4;->this$0:Lcom/hzbhd/common/ui/KeyboardPopupWindow;

    invoke-static {v0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->access$400(Lcom/hzbhd/common/ui/KeyboardPopupWindow;)Lcom/hzbhd/common/ui/Keyboard$OnPhoneKeyboardLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow$4;->this$0:Lcom/hzbhd/common/ui/KeyboardPopupWindow;

    invoke-static {v0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->access$400(Lcom/hzbhd/common/ui/KeyboardPopupWindow;)Lcom/hzbhd/common/ui/Keyboard$OnPhoneKeyboardLongClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/hzbhd/common/ui/Keyboard$OnPhoneKeyboardLongClickListener;->onWellLongClick()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
