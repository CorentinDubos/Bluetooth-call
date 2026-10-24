.class Lcom/hzbhd/bluetooth/settings/SettingsFragment$9;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/bluetooth/settings/SettingsFragment;
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

    .line 608
    iput-object p1, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment$9;->this$0:Lcom/hzbhd/bluetooth/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 611
    iget-object v0, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment$9;->this$0:Lcom/hzbhd/bluetooth/settings/SettingsFragment;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->access$500(Lcom/hzbhd/bluetooth/settings/SettingsFragment;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 612
    iget-object v0, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment$9;->this$0:Lcom/hzbhd/bluetooth/settings/SettingsFragment;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->access$000(Lcom/hzbhd/bluetooth/settings/SettingsFragment;)Landroid/widget/EditText;

    move-result-object v0

    .line 613
    iget-object v1, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment$9;->this$0:Lcom/hzbhd/bluetooth/settings/SettingsFragment;

    invoke-static {v1}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->access$000(Lcom/hzbhd/bluetooth/settings/SettingsFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 615
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment$9;->this$0:Lcom/hzbhd/bluetooth/settings/SettingsFragment;

    .line 614
    invoke-static {v2}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->access$000(Lcom/hzbhd/bluetooth/settings/SettingsFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 612
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
