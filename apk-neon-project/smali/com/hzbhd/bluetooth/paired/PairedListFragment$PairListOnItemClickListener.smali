.class Lcom/hzbhd/bluetooth/paired/PairedListFragment$PairListOnItemClickListener;
.super Ljava/lang/Object;
.source "PairedListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/bluetooth/paired/PairedListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PairListOnItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/bluetooth/paired/PairedListFragment;


# direct methods
.method constructor <init>(Lcom/hzbhd/bluetooth/paired/PairedListFragment;)V
    .locals 0

    .line 676
    iput-object p1, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment$PairListOnItemClickListener;->this$0:Lcom/hzbhd/bluetooth/paired/PairedListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 681
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "-------Pair List onItemClick() position="

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "PairedListFragment__sswang"

    invoke-static {p4, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f0901f2

    .line 682
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f040051

    .line 684
    invoke-static {p2}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResBool(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 685
    iget-object p1, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment$PairListOnItemClickListener;->this$0:Lcom/hzbhd/bluetooth/paired/PairedListFragment;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->access$100(Lcom/hzbhd/bluetooth/paired/PairedListFragment;)Lcom/hzbhd/bluetooth/paired/PairListAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->setSelectIndex(I)V

    goto :goto_0

    :cond_0
    const p2, 0x7f040015

    .line 686
    invoke-static {p2}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResStr(I)Ljava/lang/String;

    move-result-object p2

    const-string p4, "H1"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 687
    iget-object p1, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment$PairListOnItemClickListener;->this$0:Lcom/hzbhd/bluetooth/paired/PairedListFragment;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->access$100(Lcom/hzbhd/bluetooth/paired/PairedListFragment;)Lcom/hzbhd/bluetooth/paired/PairListAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->setSelectIndex(I)V

    goto :goto_0

    .line 690
    :cond_1
    iget-object p2, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment$PairListOnItemClickListener;->this$0:Lcom/hzbhd/bluetooth/paired/PairedListFragment;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p2, p1}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->doAction(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
