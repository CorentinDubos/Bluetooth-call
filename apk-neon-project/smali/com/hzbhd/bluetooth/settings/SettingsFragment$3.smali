.class Lcom/hzbhd/bluetooth/settings/SettingsFragment$3;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/bluetooth/settings/SettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/bluetooth/settings/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/hzbhd/bluetooth/settings/SettingsFragment;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment$3;->this$0:Lcom/hzbhd/bluetooth/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 181
    iget-object p1, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment$3;->this$0:Lcom/hzbhd/bluetooth/settings/SettingsFragment;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->access$000(Lcom/hzbhd/bluetooth/settings/SettingsFragment;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    .line 182
    iget-object p1, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment$3;->this$0:Lcom/hzbhd/bluetooth/settings/SettingsFragment;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->access$000(Lcom/hzbhd/bluetooth/settings/SettingsFragment;)Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment$3;->this$0:Lcom/hzbhd/bluetooth/settings/SettingsFragment;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->access$000(Lcom/hzbhd/bluetooth/settings/SettingsFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment$3;->this$0:Lcom/hzbhd/bluetooth/settings/SettingsFragment;

    invoke-static {v2}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->access$000(Lcom/hzbhd/bluetooth/settings/SettingsFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
