.class Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$6;
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

    .line 1299
    iput-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$6;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1302
    sget v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mPlaybackStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    sget v0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->mA2dpSinkState:I

    const/16 v2, 0x13

    if-eq v0, v2, :cond_3

    sget v0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->mA2dpSinkState:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1307
    :cond_0
    sget v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mPlaybackStatus:I

    if-eq v0, v1, :cond_1

    sget v0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->mA2dpSinkState:I

    const/16 v2, 0xf

    if-ne v0, v2, :cond_4

    .line 1310
    :cond_1
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$6;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    iget-object v0, v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->remoteAvrcpTgAddr:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$6;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    iget-object v2, v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->remoteAvrcpTgAddr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->pause(Ljava/lang/String;)Z

    .line 1311
    :cond_2
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$6;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->access$900(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;I)V

    goto :goto_1

    .line 1306
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$6;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->access$900(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;I)V

    :cond_4
    :goto_1
    return-void
.end method
