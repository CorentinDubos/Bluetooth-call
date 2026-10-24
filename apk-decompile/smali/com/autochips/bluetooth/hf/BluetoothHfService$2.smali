.class Lcom/autochips/bluetooth/hf/BluetoothHfService$2;
.super Landroid/bluetooth/IBluetoothHf$Stub;
.source "BluetoothHfService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/hf/BluetoothHfService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/hf/BluetoothHfService;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$2;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothHf$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 297
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$2;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    invoke-static {v0, p1}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->access$402(Lcom/autochips/bluetooth/hf/BluetoothHfService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 298
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    .line 299
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothHfServer Connect"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothHfService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$2;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    invoke-static {v0, p1}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->access$500(Lcom/autochips/bluetooth/hf/BluetoothHfService;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 306
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BluetoothHfService"

    const-string v1, "BluetoothHfServer Disconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    .line 308
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$2;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    invoke-static {v0, p1}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->access$600(Lcom/autochips/bluetooth/hf/BluetoothHfService;Ljava/lang/String;)V

    .line 309
    iget-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$2;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->access$402(Lcom/autochips/bluetooth/hf/BluetoothHfService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    const/4 p1, 0x1

    return p1
.end method

.method public getCurrentDevices()[Landroid/bluetooth/BluetoothDevice;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 345
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->access$000()Z

    move-result v0

    const-string v1, "BluetoothHfService"

    if-eqz v0, :cond_0

    const-string v0, "getCurrentDevices"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 348
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 351
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 352
    iget-object v4, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$2;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    iget-object v4, v4, Lcom/autochips/bluetooth/hf/BluetoothHfService;->stateMap:Ljava/util/Map;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 353
    iget-object v4, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$2;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    iget-object v4, v4, Lcom/autochips/bluetooth/hf/BluetoothHfService;->stateMap:Ljava/util/Map;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "connected"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 355
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 361
    :cond_2
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->access$000()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentDevices:deviceList.size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_3
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 324
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$2;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    iget-object v0, v0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->stateMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    return v1

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$2;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    iget-object v0, v0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->stateMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 327
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$2;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    iget-object v0, v0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->stateMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "connecting"

    .line 329
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "authorize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "connected"

    .line 332
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const-string v0, "disconnect"

    .line 334
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    const-string v0, "disconnecting"

    .line 336
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x4

    return p1

    :cond_4
    :goto_0
    const/4 p1, 0x3

    return p1

    :cond_5
    return v1
.end method

.method public isConnected()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 314
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$2;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->access$700(Lcom/autochips/bluetooth/hf/BluetoothHfService;)Z

    move-result v0

    return v0
.end method

.method public sendURC(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 318
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BluetoothHfService"

    const-string v1, "BluetoothHfServer sendURC"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$2;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->sendHfURC(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
