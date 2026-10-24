.class Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$8;
.super Lcom/autochips/bluetooth/dundt/ISMSSyncManager$Stub;
.source "SmsSyncManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)V
    .locals 0

    .line 530
    iput-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$8;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-direct {p0}, Lcom/autochips/bluetooth/dundt/ISMSSyncManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public GetRecCnt(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 603
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$8;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {v0, p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$3500(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;I)I

    move-result p1

    return p1
.end method

.method public GetRecord(IIILjava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Lcom/autochips/bluetooth/dundt/SMSRecord;",
            ">;)Z"
        }
    .end annotation

    .line 607
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$8;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$3600(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;IIILjava/util/List;)Z

    move-result p1

    return p1
.end method

.method public GetSyncState()I
    .locals 1

    .line 599
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$8;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$1800(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)I

    move-result v0

    return v0
.end method

.method public SetRemoteDevInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public SetRemoteDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 583
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$8;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$3000(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;

    move-result-object v0

    if-nez v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$8;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->getInstance()Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$3002(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;)Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;

    .line 585
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$8;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$3000(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->initializeHfAtPhonebookParser()V

    .line 586
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$8;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$3000(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;

    move-result-object v0

    iget-object v1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$8;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {v1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$3200(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->setSmsHandler(Landroid/os/Handler;)V

    .line 588
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$8;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {v0, p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$3302(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 589
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$8;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$3300(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$3402(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;Ljava/lang/String;)Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method

.method public StartDownload(IZ)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 533
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$8;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$1802(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;I)I

    const/4 v0, 0x4

    const/4 v2, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 536
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$8;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p1, v1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$402(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;I)I

    .line 537
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$8;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$2700(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)Lcom/autochips/bluetooth/util/BTDBAdapter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/autochips/bluetooth/util/BTDBAdapter;->deleteOneSms(I)V

    .line 538
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$8;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p1, v2}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$2802(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;I)I

    .line 539
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$8;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p1, v2}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$702(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;I)I

    .line 540
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$8;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p1, v2}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$2002(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;I)I

    .line 541
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$8;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p1, v1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$902(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;I)I

    .line 542
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$8;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$900(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$1102(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;I)I

    .line 543
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$8;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p1, v2}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$1902(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;Z)Z

    .line 544
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$8;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p1, v2}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$1402(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;Z)Z

    .line 545
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$8;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p1, v1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$2202(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;Z)Z

    .line 546
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$8;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p1, v1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$202(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;I)I

    .line 547
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$8;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p1, v1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$802(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;I)I

    .line 548
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$8;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, p2}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$2902(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 549
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$8;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$3000(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;

    move-result-object p1

    iget-object p2, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$8;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p2}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$2200(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->setSyncObject(Z)V

    .line 550
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$8;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p1, v2}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$1500(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;I)V

    .line 551
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$8;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$400(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$3100(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;I)V

    goto/16 :goto_0

    :cond_0
    if-nez p1, :cond_2

    if-ne p2, v1, :cond_2

    .line 554
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$8;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p1, v2}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$1402(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;Z)Z

    .line 555
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$8;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$1900(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 556
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$8;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    const-string p2, "re-sync to startload"

    invoke-static {p1, p2}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$1300(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;Ljava/lang/String;)V

    .line 557
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$8;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p1, v2}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$1902(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;Z)Z

    .line 558
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$8;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p1, v2}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$702(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;I)I

    .line 559
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$8;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p1, v2}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$2002(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;I)I

    .line 560
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$8;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p1, v2}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$2802(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;I)I

    .line 561
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$8;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p1, v1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$902(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;I)I

    .line 562
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$8;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$900(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$1102(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;I)I

    .line 563
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$8;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$2700(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)Lcom/autochips/bluetooth/util/BTDBAdapter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/autochips/bluetooth/util/BTDBAdapter;->deleteOneSms(I)V

    .line 564
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$8;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$400(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$600(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;I)V

    goto :goto_0

    .line 566
    :cond_1
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$8;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$1100(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$902(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;I)I

    .line 567
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$8;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$400(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$600(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;I)V

    goto :goto_0

    :cond_2
    if-ne p1, v1, :cond_4

    if-ne p2, v1, :cond_4

    .line 571
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$8;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$1900(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 572
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$8;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p1, v2}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$1402(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;Z)Z

    .line 573
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$8;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$1100(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$902(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;I)I

    .line 574
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$8;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$400(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$600(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;I)V

    goto :goto_0

    .line 576
    :cond_3
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$8;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    const-string p2, "No need to sync,download finish"

    invoke-static {p1, p2}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$1300(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return v1
.end method

.method public StopDownload()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 611
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$8;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$1800(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$8;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$1402(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;Z)Z

    .line 613
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$8;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$1802(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;I)I

    .line 614
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$8;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    const/16 v2, 0x387

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$2100(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;ILjava/lang/Object;)V

    :cond_0
    return v1
.end method
