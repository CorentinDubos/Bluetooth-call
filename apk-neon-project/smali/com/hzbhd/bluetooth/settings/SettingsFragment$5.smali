.class Lcom/hzbhd/bluetooth/settings/SettingsFragment$5;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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

    .line 239
    iput-object p1, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment$5;->this$0:Lcom/hzbhd/bluetooth/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 p3, 0x0

    const/4 v0, 0x6

    if-ne p2, v0, :cond_1

    .line 246
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "input_method"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    .line 248
    invoke-virtual {p1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p2, p1, p3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 250
    iget-object p1, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment$5;->this$0:Lcom/hzbhd/bluetooth/settings/SettingsFragment;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->access$000(Lcom/hzbhd/bluetooth/settings/SettingsFragment;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 251
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object p1

    iget-object p2, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment$5;->this$0:Lcom/hzbhd/bluetooth/settings/SettingsFragment;

    invoke-static {p2}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->access$000(Lcom/hzbhd/bluetooth/settings/SettingsFragment;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->setPinCode(Ljava/lang/String;)V

    .line 252
    iget-object p1, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment$5;->this$0:Lcom/hzbhd/bluetooth/settings/SettingsFragment;

    iget-object p1, p1, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->tv_pin:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment$5;->this$0:Lcom/hzbhd/bluetooth/settings/SettingsFragment;

    iget-object p1, p1, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->tv_pin:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment$5;->this$0:Lcom/hzbhd/bluetooth/settings/SettingsFragment;

    invoke-static {p2}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->access$000(Lcom/hzbhd/bluetooth/settings/SettingsFragment;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment$5;->this$0:Lcom/hzbhd/bluetooth/settings/SettingsFragment;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->access$100(Lcom/hzbhd/bluetooth/settings/SettingsFragment;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment$5;->this$0:Lcom/hzbhd/bluetooth/settings/SettingsFragment;

    invoke-static {p2}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->access$100(Lcom/hzbhd/bluetooth/settings/SettingsFragment;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p2

    const-wide/16 v0, 0x258

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 p1, 0x1

    return p1

    :cond_1
    return p3
.end method
