.class Lcom/hzbhd/common/ui/KeyboardPopupWindow$5;
.super Ljava/lang/Object;
.source "KeyboardPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/common/ui/KeyboardPopupWindow;
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

    .line 341
    iput-object p1, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow$5;->this$0:Lcom/hzbhd/common/ui/KeyboardPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 344
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 345
    iget-object p1, p0, Lcom/hzbhd/common/ui/KeyboardPopupWindow$5;->this$0:Lcom/hzbhd/common/ui/KeyboardPopupWindow;

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/KeyboardPopupWindow;->dismiss()V

    :cond_0
    return p2
.end method
