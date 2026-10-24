.class Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter$1;
.super Ljava/lang/Object;
.source "ContactsTreeCursorAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;


# direct methods
.method constructor <init>(Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter$1;->this$0:Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 99
    iget-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter$1;->this$0:Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->access$000(Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;)Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter$PhoneNumberListAdapterListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    if-eqz p1, :cond_0

    .line 102
    iget-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter$1;->this$0:Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->access$000(Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;)Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter$PhoneNumberListAdapterListener;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->EXTRA_ID:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    sget-object v3, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->EXTRA_NUMBER:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->EXTRA_NAME:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter$PhoneNumberListAdapterListener;->doDialAction(JLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string/jumbo p1, "sw-ap006"

    const-string v0, "---------------contacts on click------------"

    .line 105
    invoke-static {p1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
