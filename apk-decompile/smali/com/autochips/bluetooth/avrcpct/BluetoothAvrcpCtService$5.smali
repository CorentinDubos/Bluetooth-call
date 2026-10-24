.class Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$5;
.super Ljava/util/TimerTask;
.source "BluetoothAvrcpCtService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->scheduleTask(I)V
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

    .line 1274
    iput-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$5;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1277
    sget v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mPlaybackStatus:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    sget v0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->mA2dpSinkState:I

    const/16 v3, 0x13

    if-eq v0, v3, :cond_0

    sget v0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->mA2dpSinkState:I

    if-ne v0, v1, :cond_2

    :cond_0
    sget v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mAvrcpCtState:I

    if-ne v0, v1, :cond_2

    .line 1282
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$5;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    iget-object v0, v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->remoteAvrcpTgAddr:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$5;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    iget-object v1, v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->remoteAvrcpTgAddr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->play(Ljava/lang/String;)Z

    .line 1283
    :cond_1
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$5;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    invoke-static {v0, v2}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->access$900(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;I)V

    .line 1284
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$5;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    invoke-static {v0, v2}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->access$1002(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;I)I

    .line 1287
    :cond_2
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$5;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    const/16 v1, 0x1f4

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->access$1012(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;I)I

    .line 1289
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$5;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    invoke-static {v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->access$1000(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;)I

    move-result v0

    const/16 v1, 0xbb8

    if-le v0, v1, :cond_3

    .line 1290
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$5;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    invoke-static {v0, v2}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->access$900(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;I)V

    .line 1291
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$5;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    invoke-static {v0, v2}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->access$1002(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;I)I

    :cond_3
    return-void
.end method
