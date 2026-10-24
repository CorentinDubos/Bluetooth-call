.class Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$4;
.super Landroid/bluetooth/IBluetoothPbapCall$Stub;
.source "BluetoothPbapClientService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;)V
    .locals 0

    .line 505
    iput-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$4;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothPbapCall$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 518
    iget-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$4;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$000(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;Ljava/lang/String;)V

    .line 519
    iget-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$4;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    iput-object p1, v0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 520
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    .line 521
    iget-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$4;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->connectPB(Ljava/lang/String;)Z

    return-void
.end method

.method public disconnect()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 525
    iget-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$4;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    const-string v1, "disconnect"

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$000(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;Ljava/lang/String;)V

    .line 526
    iget-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$4;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->disconnectPB()V

    return-void
.end method

.method public pbapAbortReq()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 596
    iget-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$4;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->abortReq()Z

    move-result v0

    return v0
.end method

.method public pbapGetState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 591
    iget-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$4;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    invoke-static {v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$1800(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;)I

    move-result v0

    return v0
.end method

.method public pbapIsConnected()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 530
    iget-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$4;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    invoke-static {v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$1800(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public pbapPullPhonebook(Ljava/lang/String;II)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 584
    iget-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$4;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    iget-object v0, v0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mClientPath:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;

    iget-object v1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$4;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    invoke-static {v1}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$2200(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;->getAbsolutePath(I)Ljava/lang/String;

    move-result-object v4

    .line 586
    iget-object v2, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$4;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    int-to-short v8, p2

    int-to-short v9, p3

    const-wide/32 v5, 0x10000084

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v9}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->pullPhonebook(Ljava/lang/String;Ljava/lang/String;JCSS)Z

    move-result p1

    return p1
.end method

.method public pbapPullVcardEntry(Ljava/lang/String;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 562
    iget-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$4;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    invoke-static {v0, p1}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$1002(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;Ljava/lang/String;)Ljava/lang/String;

    .line 563
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$4;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    invoke-static {p1, p2}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$802(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;I)I

    .line 564
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$4;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "pbapPullVcardEntry index = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$4;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    invoke-static {v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$800(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$000(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;Ljava/lang/String;)V

    .line 570
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$4;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    invoke-static {p1}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$700(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 571
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$4;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    invoke-static {p1}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$900(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$4;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    invoke-static {v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$800(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;)I

    move-result v0

    sub-int/2addr v0, p2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    .line 572
    iget-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$4;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    invoke-static {v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$1000(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;)Ljava/lang/String;

    move-result-object v1

    const-wide/32 v3, 0x10000084

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->pullVcardEntry(Ljava/lang/String;Ljava/lang/String;JC)Z

    move-result p1

    goto :goto_0

    .line 574
    :cond_0
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$4;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    invoke-static {p1, p2}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$702(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;Z)Z

    .line 575
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$4;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    const/4 p2, 0x0

    iget-object v0, p1, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mClientPath:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;

    iget-object v1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$4;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    iget-object v1, v1, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mClientPath:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;

    invoke-virtual {v1}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;->getCurIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;->getIndexPath(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->setPath(ILjava/lang/String;)Z

    move-result p1

    .line 577
    iget-object p2, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$4;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    iget-object p2, p2, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mClientPath:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;

    invoke-virtual {p2}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;->increaseIndex()V

    :goto_0
    return p1
.end method

.method public pbapPullVcardListing()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 542
    iget-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$4;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    invoke-static {v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$2000(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;)Ljava/lang/String;

    move-result-object v2

    .line 544
    :try_start_0
    iget-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$4;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    iget-object v1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$4;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    invoke-static {v1}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$2100(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 545
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 549
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 547
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 551
    :goto_0
    iget-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$4;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    iget-object v0, v0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mClientPath:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;->getFolderName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-nez v3, :cond_0

    const/4 v0, 0x0

    return v0

    .line 557
    :cond_0
    iget-object v1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$4;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->pullVcardListing(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;CSS)Z

    move-result v0

    return v0
.end method

.method public pbapSetPath(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 538
    iget-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$4;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->setDownloadPath(I)V

    return-void
.end method

.method public registerCallback(Landroid/bluetooth/IPBCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 509
    iget-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$4;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    invoke-static {v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$1900(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    :cond_0
    return-void
.end method

.method public unregisterCallback(Landroid/bluetooth/IPBCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 514
    iget-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$4;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    invoke-static {v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$1900(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    :cond_0
    return-void
.end method
