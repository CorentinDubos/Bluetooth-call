.class Lcom/hzbhd/bluetooth/paired/PairedListFragment$ChangeConnectionTask;
.super Landroid/os/AsyncTask;
.source "PairedListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/bluetooth/paired/PairedListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChangeConnectionTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/bluetooth/paired/PairedListFragment;


# direct methods
.method constructor <init>(Lcom/hzbhd/bluetooth/paired/PairedListFragment;)V
    .locals 0

    .line 696
    iput-object p1, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment$ChangeConnectionTask;->this$0:Lcom/hzbhd/bluetooth/paired/PairedListFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 696
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/paired/PairedListFragment$ChangeConnectionTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    :try_start_0
    const-string v0, "PairedListFragment"

    .line 701
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----ChangeConnectionTask() profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-object v3, p1, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ; address="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    aget-object v4, p1, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "HFP"

    .line 703
    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 704
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->reqHfpDisconnect(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    const-string v0, "A2DP"

    .line 705
    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 706
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getA2dpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->reqA2dpDisconnect(Ljava/lang/String;)Z

    goto :goto_0

    .line 708
    :cond_1
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->reqBluetoothDisconnectAll()I

    :goto_0
    const-wide/16 v0, 0x1388

    .line 711
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 713
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    aget-object p1, p1, v3

    invoke-virtual {v0, p1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->reqBluetoothConnectAll(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 716
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 723
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .line 728
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 730
    iget-object v0, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment$ChangeConnectionTask;->this$0:Lcom/hzbhd/bluetooth/paired/PairedListFragment;

    invoke-virtual {v0}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->getTopActivity()Lcom/hzbhd/bluetooth/MainActivity;

    move-result-object v0

    const v1, 0x7f0d015c

    const/16 v2, 0x1f40

    invoke-virtual {v0, v1, v2}, Lcom/hzbhd/bluetooth/MainActivity;->showProgressDialog(II)V

    return-void
.end method
