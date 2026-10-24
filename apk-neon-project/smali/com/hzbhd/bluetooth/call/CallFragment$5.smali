.class Lcom/hzbhd/bluetooth/call/CallFragment$5;
.super Ljava/lang/Object;
.source "CallFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/bluetooth/call/CallFragment;->initPA6(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/bluetooth/call/CallFragment;

.field final synthetic val$inputDialPadViews:Lcom/hzbhd/bluetooth/ui/_a6/DialPadViews;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/hzbhd/bluetooth/call/CallFragment;Lcom/hzbhd/bluetooth/ui/_a6/DialPadViews;Landroid/view/View;)V
    .locals 0

    .line 1027
    iput-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment$5;->this$0:Lcom/hzbhd/bluetooth/call/CallFragment;

    iput-object p2, p0, Lcom/hzbhd/bluetooth/call/CallFragment$5;->val$inputDialPadViews:Lcom/hzbhd/bluetooth/ui/_a6/DialPadViews;

    iput-object p3, p0, Lcom/hzbhd/bluetooth/call/CallFragment$5;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1030
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment$5;->val$inputDialPadViews:Lcom/hzbhd/bluetooth/ui/_a6/DialPadViews;

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/ui/_a6/DialPadViews;->getVisibility()I

    move-result p1

    const v0, 0x7f090118

    const v1, 0x7f090182

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne p1, v3, :cond_0

    .line 1031
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment$5;->val$inputDialPadViews:Lcom/hzbhd/bluetooth/ui/_a6/DialPadViews;

    invoke-virtual {p1, v2}, Lcom/hzbhd/bluetooth/ui/_a6/DialPadViews;->setVisibility(I)V

    .line 1032
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment$5;->val$view:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1033
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment$5;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1035
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment$5;->val$view:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1036
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment$5;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1037
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment$5;->val$inputDialPadViews:Lcom/hzbhd/bluetooth/ui/_a6/DialPadViews;

    invoke-virtual {p1, v3}, Lcom/hzbhd/bluetooth/ui/_a6/DialPadViews;->setVisibility(I)V

    :goto_0
    return-void
.end method
