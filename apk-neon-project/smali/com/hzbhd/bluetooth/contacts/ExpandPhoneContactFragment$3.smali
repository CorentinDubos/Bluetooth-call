.class Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$3;
.super Ljava/lang/Object;
.source "ExpandPhoneContactFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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

    .line 338
    iput-object p1, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$3;->this$0:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 342
    iget-object p1, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$3;->this$0:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->access$600(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;)Landroid/widget/SearchView;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->access$900(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;Landroid/view/View;)V

    .line 343
    iget-object p1, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$3;->this$0:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->access$600(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;)Landroid/widget/SearchView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/SearchView;->clearFocus()V

    const/4 p1, 0x0

    return p1
.end method
