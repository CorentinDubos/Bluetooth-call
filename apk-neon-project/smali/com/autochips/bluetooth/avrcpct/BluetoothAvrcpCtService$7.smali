.class Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$7;
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

    .line 1319
    iput-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$7;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1322
    sget v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mPlaybackStatus:I

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    sget v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mPlaybackStatus:I

    if-eq v0, v1, :cond_0

    sget v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mAudioState:I

    if-nez v0, :cond_0

    sget v0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->mA2dpSinkState:I

    const/16 v2, 0xf

    if-ne v0, v2, :cond_0

    .line 1325
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$7;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    const/4 v2, 0x1

    invoke-static {v0, v2, v2}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->access$300(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;II)I

    .line 1328
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$7;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->access$900(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;I)V

    return-void
.end method
