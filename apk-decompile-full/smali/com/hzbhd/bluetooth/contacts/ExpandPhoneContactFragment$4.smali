.class Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$4;
.super Ljava/lang/Object;
.source "ExpandPhoneContactFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->initNP2(Landroid/view/View;)V
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

    .line 456
    iput-object p1, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$4;->this$0:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 459
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09018d

    if-eq p1, v0, :cond_1

    const v0, 0x7f090198

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 467
    :cond_0
    invoke-static {}, Lcom/hzbhd/bluetooth/Bluetooth;->getMainActivity()Lcom/hzbhd/bluetooth/MainActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/MainActivity;->isHfpConnected()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 468
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object p1

    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1, v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->reqPbapDownloadAllVcards(Ljava/lang/String;IIZ)Z

    .line 469
    invoke-static {}, Lcom/hzbhd/bluetooth/Bluetooth;->getMainActivity()Lcom/hzbhd/bluetooth/MainActivity;

    move-result-object p1

    const v0, 0x7f0d0248

    const/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1}, Lcom/hzbhd/bluetooth/MainActivity;->showPopupInfoDialog(II)V

    goto :goto_0

    .line 461
    :cond_1
    iget-object p1, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$4;->this$0:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->access$300(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;)Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->getPhoneNumber()Ljava/lang/String;

    move-result-object p1

    .line 462
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 463
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->reqHfpDialCall(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    :goto_0
    return-void
.end method
