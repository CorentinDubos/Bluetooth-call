.class Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$ListOnChildClickListener;
.super Ljava/lang/Object;
.source "ExpandPhoneContactFragment.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListOnChildClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;


# direct methods
.method constructor <init>(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;)V
    .locals 0

    .line 1409
    iput-object p1, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$ListOnChildClickListener;->this$0:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 0

    .line 1414
    invoke-static {}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string p3, "----ExpandPhoneContactFragment.onChildClick()"

    invoke-static {p1, p3}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f040014

    .line 1415
    invoke-static {p1}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result p1

    iget-object p3, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$ListOnChildClickListener;->this$0:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    invoke-virtual {p3}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f0a0017

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    const/4 p4, 0x0

    const p5, 0x7f0901e3

    if-ne p1, p3, :cond_2

    .line 1416
    invoke-virtual {p2, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 1417
    iget-object p2, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$ListOnChildClickListener;->this$0:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    invoke-static {p2}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->access$1300(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;)Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$OnNameAndPhoneResultListener;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 1418
    iget-object p2, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$ListOnChildClickListener;->this$0:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    invoke-static {p2}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->access$1300(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;)Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$OnNameAndPhoneResultListener;

    move-result-object p2

    iget-object p3, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$ListOnChildClickListener;->this$0:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    invoke-static {p3}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->access$1400(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$OnNameAndPhoneResultListener;->result(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1420
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 1421
    iget-object p2, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$ListOnChildClickListener;->this$0:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->access$1502(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 1422
    iget-object p1, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$ListOnChildClickListener;->this$0:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->access$1600(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;)J

    move-result-wide p2

    iget-object p5, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$ListOnChildClickListener;->this$0:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    invoke-static {p5}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->access$1500(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;)Ljava/lang/String;

    move-result-object p5

    iget-object p6, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$ListOnChildClickListener;->this$0:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    invoke-static {p6}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->access$1400(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p1, p2, p3, p5, p6}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->doDialAction(JLjava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return p4

    .line 1427
    :cond_2
    invoke-virtual {p2, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1429
    invoke-static {}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->access$100()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "----ExpandPhoneContactFragment.onChildClick() number="

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1430
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 1431
    iget-object p2, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$ListOnChildClickListener;->this$0:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->access$1502(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 1432
    iget-object p1, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$ListOnChildClickListener;->this$0:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->access$1600(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;)J

    move-result-wide p2

    iget-object p5, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$ListOnChildClickListener;->this$0:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    invoke-static {p5}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->access$1500(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;)Ljava/lang/String;

    move-result-object p5

    iget-object p6, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$ListOnChildClickListener;->this$0:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    invoke-static {p6}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->access$1400(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p1, p2, p3, p5, p6}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->doDialAction(JLjava/lang/String;Ljava/lang/String;)V

    :cond_3
    return p4
.end method
