.class Lcom/hzbhd/bluetooth/dialpad/DialpadFragment$4;
.super Ljava/lang/Object;
.source "DialpadFragment.java"

# interfaces
.implements Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->initPC6(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;

.field final synthetic val$phoneTv:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;Landroid/widget/TextView;)V
    .locals 0

    .line 608
    iput-object p1, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment$4;->this$0:Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;

    iput-object p2, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment$4;->val$phoneTv:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCall()V
    .locals 2

    .line 611
    invoke-static {}, Lcom/hzbhd/midwareproxy/utils/DebugUtilsForBTCall;->getInstance()Lcom/hzbhd/midwareproxy/utils/DebugUtilsForBTCall;

    iget-object v0, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment$4;->this$0:Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;

    invoke-virtual {v0}, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment$4;->this$0:Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;

    invoke-static {v1}, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->access$000(Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/DebugUtilsForBTCall;->handleDebugStr(Landroid/content/Context;Ljava/lang/String;)V

    .line 612
    iget-object v0, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment$4;->this$0:Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;

    invoke-virtual {v0}, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->handlerDialBtnEvent()V

    return-void
.end method

.method public onClean()V
    .locals 2

    .line 622
    iget-object v0, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment$4;->val$phoneTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment$4;->selfDelete(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 623
    iget-object v1, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment$4;->val$phoneTv:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 624
    iget-object v1, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment$4;->this$0:Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;

    invoke-static {v1, v0}, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->access$002(Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 625
    iget-object v1, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment$4;->this$0:Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;

    invoke-static {v1, v0}, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->access$102(Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public onHangup()V
    .locals 1

    .line 617
    iget-object v0, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment$4;->this$0:Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;

    invoke-virtual {v0}, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->handlerHandupEvent()V

    return-void
.end method

.method public onLongClean()V
    .locals 2

    .line 631
    iget-object v0, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment$4;->val$phoneTv:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 632
    iget-object v0, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment$4;->this$0:Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;

    invoke-static {v0, v1}, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->access$002(Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 633
    iget-object v0, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment$4;->this$0:Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;

    invoke-static {v0, v1}, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->access$102(Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public onNumberCallBack(Ljava/lang/String;)V
    .locals 3

    .line 648
    iget-object v0, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment$4;->val$phoneTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 649
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    .line 650
    :cond_0
    iget-object v1, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment$4;->val$phoneTv:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 651
    iget-object v0, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment$4;->this$0:Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;

    invoke-virtual {v0, p1}, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->keyEventHandler(Ljava/lang/String;)V

    return-void
.end method

.method public selfDelete(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 640
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v0, -0x1

    if-ltz v1, :cond_0

    const/4 v1, 0x0

    .line 642
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method
