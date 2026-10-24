.class Lcom/hzbhd/midwareproxy/utils/FocusLoopManager$1;
.super Ljava/lang/Object;
.source "FocusLoopManager.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/midwareproxy/utils/FocusLoopManager;->setAllChangeListener(ZLcom/hzbhd/midwareproxy/utils/ItfcFocusLoop;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/midwareproxy/utils/FocusLoopManager;

.field final synthetic val$callback:Lcom/hzbhd/midwareproxy/utils/ItfcFocusLoop;


# direct methods
.method constructor <init>(Lcom/hzbhd/midwareproxy/utils/FocusLoopManager;Lcom/hzbhd/midwareproxy/utils/ItfcFocusLoop;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/utils/FocusLoopManager$1;->this$0:Lcom/hzbhd/midwareproxy/utils/FocusLoopManager;

    iput-object p2, p0, Lcom/hzbhd/midwareproxy/utils/FocusLoopManager$1;->val$callback:Lcom/hzbhd/midwareproxy/utils/ItfcFocusLoop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 57
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 58
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/utils/FocusLoopManager$1;->val$callback:Lcom/hzbhd/midwareproxy/utils/ItfcFocusLoop;

    invoke-interface {p1}, Lcom/hzbhd/midwareproxy/utils/ItfcFocusLoop;->keyActionFunc()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
