.class Lcom/hzbhd/common/ui/KeyboardPopupWindow$3;
.super Ljava/lang/Object;
.source "KeyboardPopupWindow.java"

# interfaces
.implements Lcom/hzbhd/common/ui/Keyboard$OnPhoneKeyboardClickListener;


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

    .line 148
    iput-object p1, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow$3;->this$0:Lcom/hzbhd/common/ui/KeyboardPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDel()V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow$3;->this$0:Lcom/hzbhd/common/ui/KeyboardPopupWindow;

    invoke-static {v0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->access$000(Lcom/hzbhd/common/ui/KeyboardPopupWindow;)Lcom/hzbhd/common/ui/PopupMenuButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow$3;->this$0:Lcom/hzbhd/common/ui/KeyboardPopupWindow;

    invoke-static {v0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->access$000(Lcom/hzbhd/common/ui/KeyboardPopupWindow;)Lcom/hzbhd/common/ui/PopupMenuButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/common/ui/PopupMenuButton;->resetTimeout()V

    .line 164
    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow$3;->this$0:Lcom/hzbhd/common/ui/KeyboardPopupWindow;

    invoke-static {v0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->access$300(Lcom/hzbhd/common/ui/KeyboardPopupWindow;)Lcom/hzbhd/common/ui/Keyboard$OnPhoneKeyboardClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow$3;->this$0:Lcom/hzbhd/common/ui/KeyboardPopupWindow;

    invoke-static {v0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->access$300(Lcom/hzbhd/common/ui/KeyboardPopupWindow;)Lcom/hzbhd/common/ui/Keyboard$OnPhoneKeyboardClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/hzbhd/common/ui/Keyboard$OnPhoneKeyboardClickListener;->onDel()V

    :cond_0
    return-void
.end method

.method public onNumberClick(I)V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow$3;->this$0:Lcom/hzbhd/common/ui/KeyboardPopupWindow;

    invoke-static {v0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->access$000(Lcom/hzbhd/common/ui/KeyboardPopupWindow;)Lcom/hzbhd/common/ui/PopupMenuButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow$3;->this$0:Lcom/hzbhd/common/ui/KeyboardPopupWindow;

    invoke-static {v0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->access$000(Lcom/hzbhd/common/ui/KeyboardPopupWindow;)Lcom/hzbhd/common/ui/PopupMenuButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/common/ui/PopupMenuButton;->resetTimeout()V

    .line 154
    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow$3;->this$0:Lcom/hzbhd/common/ui/KeyboardPopupWindow;

    invoke-static {v0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->access$300(Lcom/hzbhd/common/ui/KeyboardPopupWindow;)Lcom/hzbhd/common/ui/Keyboard$OnPhoneKeyboardClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow$3;->this$0:Lcom/hzbhd/common/ui/KeyboardPopupWindow;

    invoke-static {v0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->access$300(Lcom/hzbhd/common/ui/KeyboardPopupWindow;)Lcom/hzbhd/common/ui/Keyboard$OnPhoneKeyboardClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/hzbhd/common/ui/Keyboard$OnPhoneKeyboardClickListener;->onNumberClick(I)V

    :cond_0
    return-void
.end method

.method public onStarClick()V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow$3;->this$0:Lcom/hzbhd/common/ui/KeyboardPopupWindow;

    invoke-static {v0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->access$000(Lcom/hzbhd/common/ui/KeyboardPopupWindow;)Lcom/hzbhd/common/ui/PopupMenuButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow$3;->this$0:Lcom/hzbhd/common/ui/KeyboardPopupWindow;

    invoke-static {v0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->access$000(Lcom/hzbhd/common/ui/KeyboardPopupWindow;)Lcom/hzbhd/common/ui/PopupMenuButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/common/ui/PopupMenuButton;->resetTimeout()V

    .line 184
    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow$3;->this$0:Lcom/hzbhd/common/ui/KeyboardPopupWindow;

    invoke-static {v0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->access$300(Lcom/hzbhd/common/ui/KeyboardPopupWindow;)Lcom/hzbhd/common/ui/Keyboard$OnPhoneKeyboardClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow$3;->this$0:Lcom/hzbhd/common/ui/KeyboardPopupWindow;

    invoke-static {v0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->access$300(Lcom/hzbhd/common/ui/KeyboardPopupWindow;)Lcom/hzbhd/common/ui/Keyboard$OnPhoneKeyboardClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/hzbhd/common/ui/Keyboard$OnPhoneKeyboardClickListener;->onStarClick()V

    :cond_0
    return-void
.end method

.method public onWellClick()V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow$3;->this$0:Lcom/hzbhd/common/ui/KeyboardPopupWindow;

    invoke-static {v0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->access$000(Lcom/hzbhd/common/ui/KeyboardPopupWindow;)Lcom/hzbhd/common/ui/PopupMenuButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow$3;->this$0:Lcom/hzbhd/common/ui/KeyboardPopupWindow;

    invoke-static {v0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->access$000(Lcom/hzbhd/common/ui/KeyboardPopupWindow;)Lcom/hzbhd/common/ui/PopupMenuButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/common/ui/PopupMenuButton;->resetTimeout()V

    .line 174
    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow$3;->this$0:Lcom/hzbhd/common/ui/KeyboardPopupWindow;

    invoke-static {v0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->access$300(Lcom/hzbhd/common/ui/KeyboardPopupWindow;)Lcom/hzbhd/common/ui/Keyboard$OnPhoneKeyboardClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow$3;->this$0:Lcom/hzbhd/common/ui/KeyboardPopupWindow;

    invoke-static {v0}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->access$300(Lcom/hzbhd/common/ui/KeyboardPopupWindow;)Lcom/hzbhd/common/ui/Keyboard$OnPhoneKeyboardClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/hzbhd/common/ui/Keyboard$OnPhoneKeyboardClickListener;->onWellClick()V

    :cond_0
    return-void
.end method
