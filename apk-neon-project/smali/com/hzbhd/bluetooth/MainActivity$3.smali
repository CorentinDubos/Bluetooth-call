.class Lcom/hzbhd/bluetooth/MainActivity$3;
.super Lcom/hzbhd/bluetooth/BaseBluetoothServiceCallbackListener;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/bluetooth/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/bluetooth/MainActivity;


# direct methods
.method constructor <init>(Lcom/hzbhd/bluetooth/MainActivity;)V
    .locals 0

    .line 432
    iput-object p1, p0, Lcom/hzbhd/bluetooth/MainActivity$3;->this$0:Lcom/hzbhd/bluetooth/MainActivity;

    invoke-direct {p0}, Lcom/hzbhd/bluetooth/BaseBluetoothServiceCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onA2dpStateChangedService(Ljava/lang/String;II)V
    .locals 1

    .line 525
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onA2dpStateChangedService address : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BtMainActivity"

    invoke-static {p2, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x8c

    if-lt p3, p1, :cond_0

    .line 527
    iget-object p1, p0, Lcom/hzbhd/bluetooth/MainActivity$3;->this$0:Lcom/hzbhd/bluetooth/MainActivity;

    instance-of p2, p1, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;

    if-eqz p2, :cond_0

    .line 528
    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/MainActivity;->dismissProgressDialog()V

    :cond_0
    return-void
.end method

.method public onAdapterStateChanged(I)V
    .locals 2

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAdapterStateChanged() newState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BtMainActivity"

    invoke-static {v1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x140

    if-ne p1, v0, :cond_0

    const-string p1, "--------start scan devices-----------"

    .line 437
    invoke-static {v1, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    iget-object p1, p0, Lcom/hzbhd/bluetooth/MainActivity$3;->this$0:Lcom/hzbhd/bluetooth/MainActivity;

    iget-object p1, p1, Lcom/hzbhd/bluetooth/MainActivity;->mPairedListFragment:Lcom/hzbhd/bluetooth/paired/PairedListFragment;

    if-eqz p1, :cond_3

    .line 439
    iget-object p1, p0, Lcom/hzbhd/bluetooth/MainActivity$3;->this$0:Lcom/hzbhd/bluetooth/MainActivity;

    iget-object p1, p1, Lcom/hzbhd/bluetooth/MainActivity;->mPairedListFragment:Lcom/hzbhd/bluetooth/paired/PairedListFragment;

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->startScan()V

    goto :goto_1

    :cond_0
    const/16 v0, 0x141

    if-eq p1, v0, :cond_2

    const/16 v0, 0x12f

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x12c

    if-ne p1, v0, :cond_3

    .line 447
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "----onAdapterStateChanged()----currentFragmentIndex="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/hzbhd/bluetooth/MainActivity$3;->this$0:Lcom/hzbhd/bluetooth/MainActivity;

    iget v0, v0, Lcom/hzbhd/bluetooth/MainActivity;->currentFragmentIndex:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    iget-object p1, p0, Lcom/hzbhd/bluetooth/MainActivity$3;->this$0:Lcom/hzbhd/bluetooth/MainActivity;

    iget p1, p1, Lcom/hzbhd/bluetooth/MainActivity;->currentFragmentIndex:I

    if-eqz p1, :cond_3

    .line 449
    iget-object p1, p0, Lcom/hzbhd/bluetooth/MainActivity$3;->this$0:Lcom/hzbhd/bluetooth/MainActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/hzbhd/bluetooth/MainActivity;->showFragment(ZI)V

    goto :goto_1

    :cond_2
    :goto_0
    const-string p1, "--------stop scan devices-----------"

    .line 442
    invoke-static {v1, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    iget-object p1, p0, Lcom/hzbhd/bluetooth/MainActivity$3;->this$0:Lcom/hzbhd/bluetooth/MainActivity;

    iget-object p1, p1, Lcom/hzbhd/bluetooth/MainActivity;->mPairedListFragment:Lcom/hzbhd/bluetooth/paired/PairedListFragment;

    if-eqz p1, :cond_3

    .line 444
    iget-object p1, p0, Lcom/hzbhd/bluetooth/MainActivity$3;->this$0:Lcom/hzbhd/bluetooth/MainActivity;

    iget-object p1, p1, Lcom/hzbhd/bluetooth/MainActivity;->mPairedListFragment:Lcom/hzbhd/bluetooth/paired/PairedListFragment;

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->stopScan()V

    :cond_3
    :goto_1
    return-void
.end method

.method public onDeviceFound(Ljava/lang/String;Ljava/lang/String;BZ)V
    .locals 1

    .line 473
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onDeviceFound() address : "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ; name="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ; category="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "BtMainActivity"

    invoke-static {v0, p4}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    iget-object p4, p0, Lcom/hzbhd/bluetooth/MainActivity$3;->this$0:Lcom/hzbhd/bluetooth/MainActivity;

    iget-object p4, p4, Lcom/hzbhd/bluetooth/MainActivity;->mPairedListFragment:Lcom/hzbhd/bluetooth/paired/PairedListFragment;

    if-eqz p4, :cond_0

    .line 475
    iget-object p4, p0, Lcom/hzbhd/bluetooth/MainActivity$3;->this$0:Lcom/hzbhd/bluetooth/MainActivity;

    iget-object p4, p4, Lcom/hzbhd/bluetooth/MainActivity;->mPairedListFragment:Lcom/hzbhd/bluetooth/paired/PairedListFragment;

    invoke-virtual {p4, p1, p2, p3}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->addFoundDevice(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onDevicePairFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDevicePairFailed() address : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ; name="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BtMainActivity"

    invoke-static {p2, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    iget-object p1, p0, Lcom/hzbhd/bluetooth/MainActivity$3;->this$0:Lcom/hzbhd/bluetooth/MainActivity;

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/MainActivity;->dismissProgressDialog()V

    return-void
.end method

.method public onDevicePaired(Ljava/lang/String;Ljava/lang/String;IB)V
    .locals 0

    .line 481
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onDevicePaired() address : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ; name="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BtMainActivity"

    invoke-static {p2, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->reqBluetoothPairedDevicesExtend()Z

    .line 483
    iget-object p1, p0, Lcom/hzbhd/bluetooth/MainActivity$3;->this$0:Lcom/hzbhd/bluetooth/MainActivity;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/MainActivity;->access$000(Lcom/hzbhd/bluetooth/MainActivity;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 484
    iget-object p1, p0, Lcom/hzbhd/bluetooth/MainActivity$3;->this$0:Lcom/hzbhd/bluetooth/MainActivity;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/MainActivity;->access$000(Lcom/hzbhd/bluetooth/MainActivity;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 p3, 0x190

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onDeviceUnpaired(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDeviceUnpaired() address : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ; name="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BtMainActivity"

    invoke-static {p2, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->reqBluetoothPairedDevicesExtend()Z

    .line 490
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->reqBluetoothFoundDevices()Z

    return-void
.end method

.method public onDeviceUuidsGot(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 516
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onDeviceUuidsGot address : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ,isHfpConnected = "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/hzbhd/bluetooth/MainActivity$3;->this$0:Lcom/hzbhd/bluetooth/MainActivity;

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/MainActivity;->isHfpConnected()Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BtMainActivity"

    invoke-static {p2, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    iget-object p1, p0, Lcom/hzbhd/bluetooth/MainActivity$3;->this$0:Lcom/hzbhd/bluetooth/MainActivity;

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/MainActivity;->isHfpConnected()Z

    move-result p1

    if-nez p1, :cond_0

    .line 518
    iget-object p1, p0, Lcom/hzbhd/bluetooth/MainActivity$3;->this$0:Lcom/hzbhd/bluetooth/MainActivity;

    const p2, 0x7f0d015c

    const/16 p3, 0x1f40

    invoke-virtual {p1, p2, p3}, Lcom/hzbhd/bluetooth/MainActivity;->showProgressDialog(II)V

    :cond_0
    return-void
.end method

.method public onHfpStateChangedService(Ljava/lang/String;II)V
    .locals 1

    .line 536
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onHfpStateChangedService address : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BtMainActivity"

    invoke-static {p2, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x8c

    if-lt p3, p1, :cond_0

    .line 538
    iget-object p1, p0, Lcom/hzbhd/bluetooth/MainActivity$3;->this$0:Lcom/hzbhd/bluetooth/MainActivity;

    instance-of p2, p1, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    if-eqz p2, :cond_0

    .line 539
    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/MainActivity;->dismissProgressDialog()V

    :cond_0
    return-void
.end method

.method public onSecureSimplePairingRequest(ILjava/lang/String;)V
    .locals 2

    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSecureSimplePairingRequest sspMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ; passkey="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BtMainActivity"

    invoke-static {p2, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onServiceDied()V
    .locals 2

    const-string v0, "BtMainActivity"

    const-string v1, "onServiceDied() close activity!"

    .line 499
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    iget-object v0, p0, Lcom/hzbhd/bluetooth/MainActivity$3;->this$0:Lcom/hzbhd/bluetooth/MainActivity;

    invoke-virtual {v0}, Lcom/hzbhd/bluetooth/MainActivity;->closeActivity()V

    return-void
.end method

.method public retBluetoothFoundDevices(I[Ljava/lang/String;[Ljava/lang/String;[I[B)V
    .locals 0

    .line 505
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "retBluetoothFoundDevices elements : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BtMainActivity"

    invoke-static {p2, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public retBluetoothPairedDevices(I[Ljava/lang/String;[Ljava/lang/String;[I[B)V
    .locals 9

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "retBluetoothPairedDevices() elements : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BtMainActivity"

    invoke-static {v1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    iget-object v0, p0, Lcom/hzbhd/bluetooth/MainActivity$3;->this$0:Lcom/hzbhd/bluetooth/MainActivity;

    iget-object v0, v0, Lcom/hzbhd/bluetooth/MainActivity;->mPairedListFragment:Lcom/hzbhd/bluetooth/paired/PairedListFragment;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/hzbhd/bluetooth/MainActivity$3;->this$0:Lcom/hzbhd/bluetooth/MainActivity;

    iget-object v1, v0, Lcom/hzbhd/bluetooth/MainActivity;->mPairedListFragment:Lcom/hzbhd/bluetooth/paired/PairedListFragment;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v8}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->addPairedDevicesExtend(I[Ljava/lang/String;[Ljava/lang/String;[I[B[Z[Z)V

    :cond_0
    return-void
.end method

.method public retBluetoothPairedDevicesExtend(I[Ljava/lang/String;[Ljava/lang/String;[I[B[Z[Z)V
    .locals 11

    move-object v0, p0

    .line 465
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "retBluetoothPairedDevicesExtend() elements : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "BtMainActivity"

    invoke-static {v3, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    iget-object v1, v0, Lcom/hzbhd/bluetooth/MainActivity$3;->this$0:Lcom/hzbhd/bluetooth/MainActivity;

    iget-object v1, v1, Lcom/hzbhd/bluetooth/MainActivity;->mPairedListFragment:Lcom/hzbhd/bluetooth/paired/PairedListFragment;

    if-eqz v1, :cond_0

    .line 467
    iget-object v1, v0, Lcom/hzbhd/bluetooth/MainActivity$3;->this$0:Lcom/hzbhd/bluetooth/MainActivity;

    iget-object v3, v1, Lcom/hzbhd/bluetooth/MainActivity;->mPairedListFragment:Lcom/hzbhd/bluetooth/paired/PairedListFragment;

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-virtual/range {v3 .. v10}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->addPairedDevicesExtend(I[Ljava/lang/String;[Ljava/lang/String;[I[B[Z[Z)V

    :cond_0
    return-void
.end method
