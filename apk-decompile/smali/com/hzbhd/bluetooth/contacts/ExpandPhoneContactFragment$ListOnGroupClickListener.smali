.class Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$ListOnGroupClickListener;
.super Ljava/lang/Object;
.source "ExpandPhoneContactFragment.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListOnGroupClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;


# direct methods
.method constructor <init>(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;)V
    .locals 0

    .line 1441
    iput-object p1, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$ListOnGroupClickListener;->this$0:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 0

    const p1, 0x7f0901d9

    .line 1446
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1448
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    if-eqz p1, :cond_0

    .line 1450
    iget-object p2, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$ListOnGroupClickListener;->this$0:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    sget-object p3, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->EXTRA_ID:Ljava/lang/String;

    const-wide/16 p4, -0x1

    invoke-virtual {p1, p3, p4, p5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p3

    invoke-static {p2, p3, p4}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->access$1602(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;J)J

    .line 1451
    iget-object p2, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$ListOnGroupClickListener;->this$0:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    sget-object p3, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->EXTRA_NAME:Ljava/lang/String;

    invoke-virtual {p1, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->access$1402(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 1452
    invoke-static {}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "----onGroupClick() selectContactId="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$ListOnGroupClickListener;->this$0:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    invoke-static {p3}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->access$1600(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;)J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " ; selectContactName="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$ListOnGroupClickListener;->this$0:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    invoke-static {p3}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->access$1400(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1455
    :cond_0
    invoke-static {}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string p2, "----ExpandPhoneContactFragment.onGroupClick()"

    invoke-static {p1, p2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
