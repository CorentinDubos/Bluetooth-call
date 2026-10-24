.class Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService$3;
.super Landroid/bluetooth/IBluetoothA2dpSink$Stub;
.source "BluetoothA2dpSinkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService$3;->this$0:Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothA2dpSink$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    .line 274
    iget-object v0, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService$3;->this$0:Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectSource("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->access$000(Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 276
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    .line 277
    iget-object v0, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService$3;->this$0:Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;

    invoke-static {v0, p1}, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->access$000(Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService$3;->this$0:Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->connectSource(Ljava/lang/String;)Z

    goto :goto_0

    .line 280
    :cond_0
    iget-object p1, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService$3;->this$0:Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;

    const-string v0, "a2dpsinkservice, connect device == null"

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->access$000(Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    .line 286
    iget-object v0, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService$3;->this$0:Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->access$000(Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 288
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    .line 289
    iget-object v0, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService$3;->this$0:Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;

    invoke-static {v0, p1}, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->access$000(Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService$3;->this$0:Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->disconnectSource(Ljava/lang/String;)V

    goto :goto_0

    .line 292
    :cond_0
    iget-object p1, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService$3;->this$0:Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;

    const-string v0, "a2dpsinkservice, disconnect device == null"

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->access$000(Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getA2dpSource()Landroid/bluetooth/BluetoothDevice;
    .locals 3

    .line 230
    sget v0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->mA2dpSinkState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    sget v0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->mA2dpSinkState:I

    const/16 v2, 0xf

    if-eq v0, v2, :cond_1

    sget v0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->mA2dpSinkState:I

    const/16 v2, 0x13

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService$3;->this$0:Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;

    const-string v2, "mA2dpSinkState != BluetoothProfileManager.STATE_CONNECTED"

    invoke-static {v0, v2}, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->access$000(Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;Ljava/lang/String;)V

    return-object v1

    .line 233
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService$3;->this$0:Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;

    invoke-static {v0}, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->access$300(Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 234
    iget-object v0, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService$3;->this$0:Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;

    const-string v1, "mA2dpSourceDevice != null"

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->access$000(Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService$3;->this$0:Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;

    invoke-static {v0}, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->access$300(Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0

    .line 237
    :cond_2
    iget-object v0, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService$3;->this$0:Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;

    const-string v2, "mA2dpSource = null"

    invoke-static {v0, v2}, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->access$000(Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;Ljava/lang/String;)V

    return-object v1
.end method

.method public getConnectedDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 3

    .line 255
    sget v0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->mA2dpSinkState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    sget v0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->mA2dpSinkState:I

    const/16 v2, 0xf

    if-eq v0, v2, :cond_1

    sget v0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->mA2dpSinkState:I

    const/16 v2, 0x13

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService$3;->this$0:Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;

    const-string v2, "mA2dpSinkState != BluetoothProfileManager.STATE_CONNECTED"

    invoke-static {v0, v2}, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->access$000(Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;Ljava/lang/String;)V

    return-object v1

    .line 258
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService$3;->this$0:Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;

    invoke-static {v0}, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->access$300(Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 259
    iget-object v0, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService$3;->this$0:Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;

    const-string v1, "mA2dpSourceDevice != null"

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->access$000(Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService$3;->this$0:Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;

    invoke-static {v0}, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->access$300(Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0

    .line 262
    :cond_2
    iget-object v0, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService$3;->this$0:Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;

    const-string v2, "mA2dpSource = null"

    invoke-static {v0, v2}, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->access$000(Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;Ljava/lang/String;)V

    return-object v1
.end method

.method public getState()I
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService$3;->this$0:Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;

    const-string v1, "getState()"

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->access$000(Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;Ljava/lang/String;)V

    .line 250
    sget v0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->mA2dpSinkState:I

    return v0
.end method

.method public isConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService$3;->this$0:Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;

    invoke-static {v0}, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->access$300(Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
