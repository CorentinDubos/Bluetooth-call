.class Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$2;
.super Landroid/bluetooth/IBluetoothDunDt$Stub;
.source "BluetoothDunDtService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$2;->this$0:Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothDunDt$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    .line 309
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$2;->this$0:Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->access$000(Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$2;->this$0:Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;

    iput-object p1, v0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 311
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    .line 312
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$2;->this$0:Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->access$200(Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;I)V

    .line 313
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$2;->this$0:Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->connectDunDevice(Ljava/lang/String;)Z

    return-void
.end method

.method public disconnect()V
    .locals 2

    .line 319
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$2;->this$0:Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;

    const-string v1, "disconnect"

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->access$000(Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$2;->this$0:Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->access$200(Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;I)V

    .line 321
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$2;->this$0:Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->disconnectDunDevice()V

    return-void
.end method

.method public getConnectedDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 2

    .line 296
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$2;->this$0:Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;

    invoke-static {v0}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->access$800(Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 297
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$2;->this$0:Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;

    iget-object v0, v0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getServer()Landroid/bluetooth/BluetoothDevice;
    .locals 2

    .line 284
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$2;->this$0:Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;

    invoke-static {v0}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->access$800(Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 285
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$2;->this$0:Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;

    iget-object v0, v0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$2;->this$0:Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;

    invoke-static {v0}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->access$800(Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;)I

    move-result v0

    return v0
.end method

.method public isConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$2;->this$0:Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;

    iget-object v0, v0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public registerCallback(Landroid/bluetooth/IDunCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 274
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$2;->this$0:Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;

    invoke-static {v0}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->access$700(Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    :cond_0
    return-void
.end method

.method public unregisterCallback(Landroid/bluetooth/IDunCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 279
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$2;->this$0:Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;

    invoke-static {v0}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->access$700(Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    :cond_0
    return-void
.end method

.method public write([B)V
    .locals 2

    .line 302
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$2;->this$0:Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    iput-object v1, v0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->mAtCmd:Ljava/lang/String;

    .line 303
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$2;->this$0:Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Send At command is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$2;->this$0:Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;

    iget-object v1, v1, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->mAtCmd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->access$000(Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;Ljava/lang/String;)V

    .line 304
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$2;->this$0:Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;

    iget-object v0, p1, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->mAtCmd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->sentAtCmd(Ljava/lang/String;)V

    return-void
.end method
