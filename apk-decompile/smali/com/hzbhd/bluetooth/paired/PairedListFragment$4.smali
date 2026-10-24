.class Lcom/hzbhd/bluetooth/paired/PairedListFragment$4;
.super Ljava/lang/Object;
.source "PairedListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/bluetooth/paired/PairedListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/bluetooth/paired/PairedListFragment;


# direct methods
.method constructor <init>(Lcom/hzbhd/bluetooth/paired/PairedListFragment;)V
    .locals 0

    .line 735
    iput-object p1, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment$4;->this$0:Lcom/hzbhd/bluetooth/paired/PairedListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 738
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/16 v0, 0xbb8

    const-string v1, "PairedListFragment__sswang"

    const/4 v2, -0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 741
    :pswitch_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onClick: disconnect "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment$4;->this$0:Lcom/hzbhd/bluetooth/paired/PairedListFragment;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->access$100(Lcom/hzbhd/bluetooth/paired/PairedListFragment;)Lcom/hzbhd/bluetooth/paired/PairListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->getSelectIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    iget-object p1, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment$4;->this$0:Lcom/hzbhd/bluetooth/paired/PairedListFragment;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->access$100(Lcom/hzbhd/bluetooth/paired/PairedListFragment;)Lcom/hzbhd/bluetooth/paired/PairListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->getCount()I

    move-result p1

    if-lez p1, :cond_2

    .line 743
    iget-object p1, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment$4;->this$0:Lcom/hzbhd/bluetooth/paired/PairedListFragment;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->access$100(Lcom/hzbhd/bluetooth/paired/PairedListFragment;)Lcom/hzbhd/bluetooth/paired/PairListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->getSelectIndex()I

    move-result p1

    if-eq p1, v2, :cond_2

    const-string p1, "PairedListFragment"

    const-string v0, "onClick: disconnect"

    .line 744
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object p1

    iget-object v0, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment$4;->this$0:Lcom/hzbhd/bluetooth/paired/PairedListFragment;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->access$100(Lcom/hzbhd/bluetooth/paired/PairedListFragment;)Lcom/hzbhd/bluetooth/paired/PairListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->getItemSelectAddress_n54()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->reqDisconnectAll(Ljava/lang/String;)I

    .line 746
    iget-object p1, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment$4;->this$0:Lcom/hzbhd/bluetooth/paired/PairedListFragment;

    invoke-static {p1, v2}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->access$200(Lcom/hzbhd/bluetooth/paired/PairedListFragment;I)V

    .line 747
    iget-object p1, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment$4;->this$0:Lcom/hzbhd/bluetooth/paired/PairedListFragment;

    invoke-static {p1, v2}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->access$300(Lcom/hzbhd/bluetooth/paired/PairedListFragment;I)V

    goto/16 :goto_0

    .line 765
    :pswitch_2
    iget-object p1, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment$4;->this$0:Lcom/hzbhd/bluetooth/paired/PairedListFragment;

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->getTopActivity()Lcom/hzbhd/bluetooth/MainActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/MainActivity;->isHfpConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 766
    iget-object p1, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment$4;->this$0:Lcom/hzbhd/bluetooth/paired/PairedListFragment;

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->getTopActivity()Lcom/hzbhd/bluetooth/MainActivity;

    move-result-object p1

    const v1, 0x7f0d0169

    invoke-virtual {p1, v1, v0}, Lcom/hzbhd/bluetooth/MainActivity;->showPopupInfoDialog(II)V

    goto/16 :goto_0

    .line 768
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment$4;->this$0:Lcom/hzbhd/bluetooth/paired/PairedListFragment;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->access$100(Lcom/hzbhd/bluetooth/paired/PairedListFragment;)Lcom/hzbhd/bluetooth/paired/PairListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->getCount()I

    move-result p1

    if-lez p1, :cond_2

    .line 769
    iget-object p1, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment$4;->this$0:Lcom/hzbhd/bluetooth/paired/PairedListFragment;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->access$100(Lcom/hzbhd/bluetooth/paired/PairedListFragment;)Lcom/hzbhd/bluetooth/paired/PairListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->getSelectIndex()I

    move-result p1

    if-eq p1, v2, :cond_2

    .line 770
    iget-object p1, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment$4;->this$0:Lcom/hzbhd/bluetooth/paired/PairedListFragment;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->access$100(Lcom/hzbhd/bluetooth/paired/PairedListFragment;)Lcom/hzbhd/bluetooth/paired/PairListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->getDeleteIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->doAction(Landroid/content/Intent;)V

    goto :goto_0

    .line 752
    :pswitch_3
    iget-object p1, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment$4;->this$0:Lcom/hzbhd/bluetooth/paired/PairedListFragment;

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->getTopActivity()Lcom/hzbhd/bluetooth/MainActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/MainActivity;->isHfpConnected()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 753
    iget-object p1, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment$4;->this$0:Lcom/hzbhd/bluetooth/paired/PairedListFragment;

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->getTopActivity()Lcom/hzbhd/bluetooth/MainActivity;

    move-result-object p1

    const v1, 0x7f0d015b

    invoke-virtual {p1, v1, v0}, Lcom/hzbhd/bluetooth/MainActivity;->showPopupInfoDialog(II)V

    goto :goto_0

    .line 755
    :cond_1
    iget-object p1, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment$4;->this$0:Lcom/hzbhd/bluetooth/paired/PairedListFragment;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->access$400(Lcom/hzbhd/bluetooth/paired/PairedListFragment;)V

    .line 756
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onClick: connect "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment$4;->this$0:Lcom/hzbhd/bluetooth/paired/PairedListFragment;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->access$100(Lcom/hzbhd/bluetooth/paired/PairedListFragment;)Lcom/hzbhd/bluetooth/paired/PairListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->getSelectIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    iget-object p1, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment$4;->this$0:Lcom/hzbhd/bluetooth/paired/PairedListFragment;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->access$100(Lcom/hzbhd/bluetooth/paired/PairedListFragment;)Lcom/hzbhd/bluetooth/paired/PairListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->getCount()I

    move-result p1

    if-lez p1, :cond_2

    .line 758
    iget-object p1, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment$4;->this$0:Lcom/hzbhd/bluetooth/paired/PairedListFragment;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->access$100(Lcom/hzbhd/bluetooth/paired/PairedListFragment;)Lcom/hzbhd/bluetooth/paired/PairListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->getSelectIndex()I

    move-result p1

    if-eq p1, v2, :cond_2

    .line 759
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object p1

    iget-object v0, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment$4;->this$0:Lcom/hzbhd/bluetooth/paired/PairedListFragment;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->access$100(Lcom/hzbhd/bluetooth/paired/PairedListFragment;)Lcom/hzbhd/bluetooth/paired/PairListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->getItemSelectAddress_n54()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->reqBluetoothConnectAll(Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0901e7
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
