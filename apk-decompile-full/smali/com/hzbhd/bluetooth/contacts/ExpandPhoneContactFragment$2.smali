.class Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$2;
.super Ljava/lang/Object;
.source "ExpandPhoneContactFragment.java"

# interfaces
.implements Landroid/widget/SearchView$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;


# direct methods
.method constructor <init>(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$2;->this$0:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()Z
    .locals 3

    .line 278
    iget-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$2;->this$0:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->access$600(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;)Landroid/widget/SearchView;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$2;->this$0:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    .line 279
    invoke-static {v0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->access$600(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;)Landroid/widget/SearchView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$2;->this$0:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->access$600(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;)Landroid/widget/SearchView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 282
    :cond_0
    invoke-static {}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v2, "-------onClose()--------"

    invoke-static {v0, v2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method
