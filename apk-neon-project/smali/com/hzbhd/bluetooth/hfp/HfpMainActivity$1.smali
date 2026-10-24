.class Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$1;
.super Ljava/lang/Object;
.source "HfpMainActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->initNP2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;


# direct methods
.method constructor <init>(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$1;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 p3, 0x0

    const/4 v0, 0x6

    if-ne p2, v0, :cond_1

    .line 258
    iget-object p2, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$1;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    const v0, 0x7f09025e

    invoke-virtual {p2, v0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 259
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "input_method"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    .line 260
    invoke-virtual {p1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p2, p1, p3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 261
    iget-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$1;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->access$000(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 262
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object p1

    iget-object p2, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$1;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-static {p2}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->access$000(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->setBluetoothLocalAdapterName(Ljava/lang/String;)Z

    .line 264
    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$1$1;

    invoke-direct {p2, p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$1$1;-><init>(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$1;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x1

    return p1

    :cond_1
    return p3
.end method
