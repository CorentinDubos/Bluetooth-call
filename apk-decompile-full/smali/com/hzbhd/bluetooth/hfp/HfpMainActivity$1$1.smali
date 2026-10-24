.class Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$1$1;
.super Ljava/lang/Object;
.source "HfpMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$1;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$1;


# direct methods
.method constructor <init>(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$1;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$1$1;->this$1:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 267
    iget-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$1$1;->this$1:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$1;

    iget-object v0, v0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$1;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->access$000(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothLocalAdapterName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$1$1;->this$1:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$1;

    iget-object v0, v0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$1;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    iget-object v0, v0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mPairedListFragment:Lcom/hzbhd/bluetooth/paired/PairedListFragment;

    invoke-virtual {v0}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->setDevicesText()V

    return-void
.end method
