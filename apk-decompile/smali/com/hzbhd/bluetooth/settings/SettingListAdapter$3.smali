.class Lcom/hzbhd/bluetooth/settings/SettingListAdapter$3;
.super Ljava/lang/Object;
.source "SettingListAdapter.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/bluetooth/settings/SettingListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/bluetooth/settings/SettingListAdapter;

.field final synthetic val$edit:Landroid/widget/EditText;

.field final synthetic val$label:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/hzbhd/bluetooth/settings/SettingListAdapter;Landroid/widget/EditText;Landroid/widget/TextView;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/hzbhd/bluetooth/settings/SettingListAdapter$3;->this$0:Lcom/hzbhd/bluetooth/settings/SettingListAdapter;

    iput-object p2, p0, Lcom/hzbhd/bluetooth/settings/SettingListAdapter$3;->val$edit:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/hzbhd/bluetooth/settings/SettingListAdapter$3;->val$label:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x6

    if-eq p2, v1, :cond_1

    .line 145
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    const/16 p3, 0x42

    if-ne p2, p3, :cond_0

    goto :goto_0

    :cond_0
    return v0

    .line 146
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/hzbhd/bluetooth/settings/SettingListAdapter$3;->this$0:Lcom/hzbhd/bluetooth/settings/SettingListAdapter;

    invoke-static {p2, v0}, Lcom/hzbhd/bluetooth/settings/SettingListAdapter;->access$102(Lcom/hzbhd/bluetooth/settings/SettingListAdapter;Z)Z

    .line 148
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "input_method"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    .line 150
    invoke-virtual {p1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 152
    iget-object p1, p0, Lcom/hzbhd/bluetooth/settings/SettingListAdapter$3;->val$edit:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 153
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object p1

    iget-object p2, p0, Lcom/hzbhd/bluetooth/settings/SettingListAdapter$3;->val$edit:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->setBluetoothLocalAdapterName(Ljava/lang/String;)Z

    .line 154
    iget-object p1, p0, Lcom/hzbhd/bluetooth/settings/SettingListAdapter$3;->val$label:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/hzbhd/bluetooth/settings/SettingListAdapter$3;->val$edit:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object p1, p0, Lcom/hzbhd/bluetooth/settings/SettingListAdapter$3;->val$edit:Landroid/widget/EditText;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 159
    :cond_2
    :try_start_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/hzbhd/bluetooth/settings/SettingListAdapter$3$1;

    invoke-direct {p2, p0}, Lcom/hzbhd/bluetooth/settings/SettingListAdapter$3$1;-><init>(Lcom/hzbhd/bluetooth/settings/SettingListAdapter$3;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 163
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    const/4 p1, 0x1

    return p1
.end method
