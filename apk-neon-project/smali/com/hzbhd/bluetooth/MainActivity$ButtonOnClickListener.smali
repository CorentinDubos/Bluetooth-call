.class Lcom/hzbhd/bluetooth/MainActivity$ButtonOnClickListener;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/bluetooth/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ButtonOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/bluetooth/MainActivity;


# direct methods
.method constructor <init>(Lcom/hzbhd/bluetooth/MainActivity;)V
    .locals 0

    .line 687
    iput-object p1, p0, Lcom/hzbhd/bluetooth/MainActivity$ButtonOnClickListener;->this$0:Lcom/hzbhd/bluetooth/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string v0, "extra_type_addr"

    .line 691
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 694
    :pswitch_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    const-string v1, "com.android.driver.bluetooth.common.pair"

    .line 695
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 696
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->reqBluetoothUnpair(Ljava/lang/String;)Z

    .line 698
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 699
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->reqDisconnectAll(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 703
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/hzbhd/bluetooth/MainActivity$ButtonOnClickListener;->this$0:Lcom/hzbhd/bluetooth/MainActivity;

    iget-object p1, p1, Lcom/hzbhd/bluetooth/MainActivity;->mPairedListFragment:Lcom/hzbhd/bluetooth/paired/PairedListFragment;

    if-eqz p1, :cond_1

    .line 704
    iget-object p1, p0, Lcom/hzbhd/bluetooth/MainActivity$ButtonOnClickListener;->this$0:Lcom/hzbhd/bluetooth/MainActivity;

    iget-object p1, p1, Lcom/hzbhd/bluetooth/MainActivity;->mPairedListFragment:Lcom/hzbhd/bluetooth/paired/PairedListFragment;

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->cancleDelete()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 707
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 711
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 713
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/hzbhd/bluetooth/MainActivity$ButtonOnClickListener;->this$0:Lcom/hzbhd/bluetooth/MainActivity;

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/MainActivity;->dismissConfirmDialog()V

    goto :goto_1

    .line 717
    :pswitch_1
    iget-object p1, p0, Lcom/hzbhd/bluetooth/MainActivity$ButtonOnClickListener;->this$0:Lcom/hzbhd/bluetooth/MainActivity;

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/MainActivity;->dismissConfirmDialog()V

    .line 719
    :try_start_3
    iget-object p1, p0, Lcom/hzbhd/bluetooth/MainActivity$ButtonOnClickListener;->this$0:Lcom/hzbhd/bluetooth/MainActivity;

    iget-object p1, p1, Lcom/hzbhd/bluetooth/MainActivity;->mPairedListFragment:Lcom/hzbhd/bluetooth/paired/PairedListFragment;

    if-eqz p1, :cond_2

    .line 720
    iget-object p1, p0, Lcom/hzbhd/bluetooth/MainActivity$ButtonOnClickListener;->this$0:Lcom/hzbhd/bluetooth/MainActivity;

    iget-object p1, p1, Lcom/hzbhd/bluetooth/MainActivity;->mPairedListFragment:Lcom/hzbhd/bluetooth/paired/PairedListFragment;

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->cancleDelete()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    .line 723
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f090106
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
