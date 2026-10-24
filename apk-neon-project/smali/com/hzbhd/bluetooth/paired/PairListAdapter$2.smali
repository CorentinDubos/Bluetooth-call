.class Lcom/hzbhd/bluetooth/paired/PairListAdapter$2;
.super Ljava/lang/Object;
.source "PairListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/bluetooth/paired/PairListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/bluetooth/paired/PairListAdapter;


# direct methods
.method constructor <init>(Lcom/hzbhd/bluetooth/paired/PairListAdapter;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/hzbhd/bluetooth/paired/PairListAdapter$2;->this$0:Lcom/hzbhd/bluetooth/paired/PairListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/hzbhd/bluetooth/paired/PairListAdapter$2;->this$0:Lcom/hzbhd/bluetooth/paired/PairListAdapter;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->access$000(Lcom/hzbhd/bluetooth/paired/PairListAdapter;)Lcom/hzbhd/bluetooth/paired/PairListAdapter$PairListAdapterListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/hzbhd/bluetooth/paired/PairListAdapter$2;->this$0:Lcom/hzbhd/bluetooth/paired/PairListAdapter;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->access$000(Lcom/hzbhd/bluetooth/paired/PairListAdapter;)Lcom/hzbhd/bluetooth/paired/PairListAdapter$PairListAdapterListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    invoke-interface {v0, p1}, Lcom/hzbhd/bluetooth/paired/PairListAdapter$PairListAdapterListener;->doAction(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
