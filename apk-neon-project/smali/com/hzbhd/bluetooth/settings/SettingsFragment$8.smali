.class Lcom/hzbhd/bluetooth/settings/SettingsFragment$8;
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

    .line 556
    iput-object p1, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment$8;->this$0:Lcom/hzbhd/bluetooth/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 560
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_0

    goto :goto_2

    .line 578
    :sswitch_0
    iget-object p1, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment$8;->this$0:Lcom/hzbhd/bluetooth/settings/SettingsFragment;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->access$400(Lcom/hzbhd/bluetooth/settings/SettingsFragment;)Lcom/hzbhd/bluetooth/MainActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/MainActivity;->isHfpConnected()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 579
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object p1

    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v1, v1, v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->reqPbapDownloadAllVcards(Ljava/lang/String;IIZ)Z

    .line 580
    iget-object p1, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment$8;->this$0:Lcom/hzbhd/bluetooth/settings/SettingsFragment;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->access$400(Lcom/hzbhd/bluetooth/settings/SettingsFragment;)Lcom/hzbhd/bluetooth/MainActivity;

    move-result-object p1

    const v1, 0x7f0d0248

    const/16 v2, 0x7d0

    invoke-virtual {p1, v1, v2}, Lcom/hzbhd/bluetooth/MainActivity;->showPopupInfoDialog(II)V

    .line 581
    iget-object p1, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment$8;->this$0:Lcom/hzbhd/bluetooth/settings/SettingsFragment;

    invoke-virtual {p1, v0}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->updateSettingItems(Z)V

    goto :goto_2

    .line 562
    :sswitch_1
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->isBluetoothAutoReconnectEnable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 563
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->setBluetoothAutoReconnect(Z)V

    goto :goto_0

    .line 565
    :cond_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->setBluetoothAutoReconnect(Z)V

    .line 567
    :goto_0
    iget-object p1, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment$8;->this$0:Lcom/hzbhd/bluetooth/settings/SettingsFragment;

    invoke-virtual {p1, v1}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->updateSettingItems(Z)V

    goto :goto_2

    .line 570
    :sswitch_2
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->isHfpAutoAnswer()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 571
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->setHfpAutoAnswer(Z)V

    goto :goto_1

    .line 573
    :cond_1
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->setHfpAutoAnswer(Z)V

    .line 575
    :goto_1
    iget-object p1, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment$8;->this$0:Lcom/hzbhd/bluetooth/settings/SettingsFragment;

    invoke-virtual {p1, v1}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->updateSettingItems(Z)V

    :cond_2
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090040 -> :sswitch_2
        0x7f090041 -> :sswitch_1
        0x7f090217 -> :sswitch_0
    .end sparse-switch
.end method
