.class Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter$2;
.super Ljava/lang/Object;
.source "ContactsTreeCursorAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

    .line 110
    iput-object p1, p0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter$2;->this$0:Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 7

    .line 114
    iget-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter$2;->this$0:Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->access$000(Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;)Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter$PhoneNumberListAdapterListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    if-eqz p1, :cond_0

    .line 117
    iget-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter$2;->this$0:Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->access$000(Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;)Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter$PhoneNumberListAdapterListener;

    move-result-object v1

    sget-object v0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->EXTRA_ID:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    sget-object v0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->EXTRA_NUMBER:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->EXTRA_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->EXTRA_STARRED:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {p1, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-interface/range {v1 .. v6}, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter$PhoneNumberListAdapterListener;->doLongAction(JLjava/lang/String;Ljava/lang/String;I)V

    :cond_0
    const-string/jumbo p1, "sw-ap006"

    const-string v0, "---------------contacts on long click------------"

    .line 120
    invoke-static {p1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
