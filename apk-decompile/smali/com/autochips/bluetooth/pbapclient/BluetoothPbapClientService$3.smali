.class Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$3;
.super Landroid/bluetooth/IBluetoothPbapClient$Stub;
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

    .line 460
    iput-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$3;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothPbapClient$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    .line 482
    iget-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$3;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

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

    .line 483
    iget-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$3;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    iput-object p1, v0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 484
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    .line 485
    iget-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$3;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$300(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;I)V

    .line 486
    iget-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$3;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->connectPB(Ljava/lang/String;)Z

    return-void
.end method

.method public disconnect()V
    .locals 2

    .line 491
    iget-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$3;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    const-string v1, "disconnect"

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$000(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;Ljava/lang/String;)V

    .line 492
    iget-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$3;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->disconnectPB()V

    return-void
.end method

.method public getConnectedDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 2

    .line 475
    iget-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$3;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    invoke-static {v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$1800(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 476
    iget-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$3;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    iget-object v0, v0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getServer()Landroid/bluetooth/BluetoothDevice;
    .locals 2

    .line 463
    iget-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$3;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    invoke-static {v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$1800(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 464
    iget-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$3;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    iget-object v0, v0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$3;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    invoke-static {v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$1800(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;)I

    move-result v0

    return v0
.end method

.method public isConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 497
    iget-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$3;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    iget-object v0, v0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
