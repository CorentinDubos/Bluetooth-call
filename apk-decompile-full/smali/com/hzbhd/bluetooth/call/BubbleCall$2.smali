.class Lcom/hzbhd/bluetooth/call/BubbleCall$2;
.super Ljava/lang/Object;
.source "BubbleCall.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/bluetooth/call/BubbleCall;->initPA6(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;

.field final synthetic val$_a6_htp_input:Landroid/widget/ImageView;

.field final synthetic val$inputDialPadViews:Lcom/hzbhd/bluetooth/ui/_a6/DialBubblePadViews;


# direct methods
.method constructor <init>(Lcom/hzbhd/bluetooth/call/BubbleCall;Lcom/hzbhd/bluetooth/ui/_a6/DialBubblePadViews;Landroid/widget/ImageView;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$2;->this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;

    iput-object p2, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$2;->val$inputDialPadViews:Lcom/hzbhd/bluetooth/ui/_a6/DialBubblePadViews;

    iput-object p3, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$2;->val$_a6_htp_input:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 215
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$2;->val$inputDialPadViews:Lcom/hzbhd/bluetooth/ui/_a6/DialBubblePadViews;

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/ui/_a6/DialBubblePadViews;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 216
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$2;->val$inputDialPadViews:Lcom/hzbhd/bluetooth/ui/_a6/DialBubblePadViews;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/hzbhd/bluetooth/ui/_a6/DialBubblePadViews;->setVisibility(I)V

    .line 217
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$2;->val$_a6_htp_input:Landroid/widget/ImageView;

    const v0, 0x7f080acd

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 219
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$2;->val$inputDialPadViews:Lcom/hzbhd/bluetooth/ui/_a6/DialBubblePadViews;

    invoke-virtual {p1, v0}, Lcom/hzbhd/bluetooth/ui/_a6/DialBubblePadViews;->setVisibility(I)V

    .line 220
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$2;->val$_a6_htp_input:Landroid/widget/ImageView;

    const v0, 0x7f080ace

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method
