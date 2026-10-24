.class Lcom/hzbhd/bluetooth/settings/SettingsFragment$2;
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

    .line 159
    iput-object p1, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment$2;->this$0:Lcom/hzbhd/bluetooth/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 162
    iget-object p1, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment$2;->this$0:Lcom/hzbhd/bluetooth/settings/SettingsFragment;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->access$000(Lcom/hzbhd/bluetooth/settings/SettingsFragment;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 163
    iget-object p1, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment$2;->this$0:Lcom/hzbhd/bluetooth/settings/SettingsFragment;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->access$000(Lcom/hzbhd/bluetooth/settings/SettingsFragment;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 165
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object p1

    iget-object v0, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment$2;->this$0:Lcom/hzbhd/bluetooth/settings/SettingsFragment;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->access$000(Lcom/hzbhd/bluetooth/settings/SettingsFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->setPinCode(Ljava/lang/String;)V

    .line 166
    iget-object p1, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment$2;->this$0:Lcom/hzbhd/bluetooth/settings/SettingsFragment;

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->getTopActivity()Lcom/hzbhd/bluetooth/MainActivity;

    move-result-object p1

    const v0, 0x7f0d01fd

    const/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1}, Lcom/hzbhd/bluetooth/MainActivity;->showPopupInfoDialog(II)V

    .line 167
    iget-object p1, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment$2;->this$0:Lcom/hzbhd/bluetooth/settings/SettingsFragment;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->access$100(Lcom/hzbhd/bluetooth/settings/SettingsFragment;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/hzbhd/bluetooth/settings/SettingsFragment$2$1;

    invoke-direct {v0, p0}, Lcom/hzbhd/bluetooth/settings/SettingsFragment$2$1;-><init>(Lcom/hzbhd/bluetooth/settings/SettingsFragment$2;)V

    const-wide/16 v1, 0xfa0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 175
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment$2;->this$0:Lcom/hzbhd/bluetooth/settings/SettingsFragment;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->access$100(Lcom/hzbhd/bluetooth/settings/SettingsFragment;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment$2;->this$0:Lcom/hzbhd/bluetooth/settings/SettingsFragment;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->access$100(Lcom/hzbhd/bluetooth/settings/SettingsFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x258

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
