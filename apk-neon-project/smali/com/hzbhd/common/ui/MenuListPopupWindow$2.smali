.class Lcom/hzbhd/common/ui/MenuListPopupWindow$2;
.super Ljava/lang/Object;
.source "MenuListPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/common/ui/MenuListPopupWindow;->show(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/common/ui/MenuListPopupWindow;


# direct methods
.method constructor <init>(Lcom/hzbhd/common/ui/MenuListPopupWindow;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/hzbhd/common/ui/MenuListPopupWindow$2;->this$0:Lcom/hzbhd/common/ui/MenuListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 121
    iget-object p1, p0, Lcom/hzbhd/common/ui/MenuListPopupWindow$2;->this$0:Lcom/hzbhd/common/ui/MenuListPopupWindow;

    invoke-static {p1}, Lcom/hzbhd/common/ui/MenuListPopupWindow;->access$000(Lcom/hzbhd/common/ui/MenuListPopupWindow;)Lcom/hzbhd/common/ui/PopupMenuButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/PopupMenuButton;->resetTimeout()V

    const/4 p1, 0x0

    return p1
.end method
