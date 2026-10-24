.class Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$2;
.super Landroid/bluetooth/IBluetoothAvrcpCt$Stub;
.source "BluetoothAvrcpCtService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;)V
    .locals 0

    .line 376
    iput-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$2;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothAvrcpCt$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    .line 402
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$2;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->access$000(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;Ljava/lang/String;)V

    .line 403
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    .line 404
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$2;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAvrcpCtBinder:  connect(), addr = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->access$000(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;Ljava/lang/String;)V

    .line 405
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$2;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->connectTarget(Ljava/lang/String;)Z

    return-void
.end method

.method public disconnect()V
    .locals 2

    .line 410
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$2;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    const-string v1, "mAvrcpCtBinder: disconnect()"

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->access$000(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$2;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->disconnectTarget()V

    return-void
.end method

.method public getConnectedDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 3

    .line 394
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$2;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAvrcpCtBinder:  getConnectedDevice(), mAvrcpCtState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mAvrcpCtState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->access$000(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;Ljava/lang/String;)V

    .line 395
    sget v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mAvrcpCtState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 396
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$2;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    iget-object v0, v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->remoteAvrcpTgDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getState()I
    .locals 3

    .line 388
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$2;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAvrcpCtBinder:  getState(), mAvrcpCtState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mAvrcpCtState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->access$000(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;Ljava/lang/String;)V

    .line 389
    sget v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mAvrcpCtState:I

    return v0
.end method

.method public getTarget()Landroid/bluetooth/BluetoothDevice;
    .locals 3

    .line 380
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$2;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAvrcpCtBinder:  getTarget(), mAvrcpCtState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mAvrcpCtState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->access$000(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;Ljava/lang/String;)V

    .line 381
    sget v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mAvrcpCtState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 382
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$2;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    iget-object v0, v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->remoteAvrcpTgDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    .line 416
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$2;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    const-string v1, "mAvrcpCtBinder:  isConnected()"

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->access$000(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;Ljava/lang/String;)V

    .line 417
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$2;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    iget-object v0, v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->remoteAvrcpTgDevice:Landroid/bluetooth/BluetoothDevice;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
