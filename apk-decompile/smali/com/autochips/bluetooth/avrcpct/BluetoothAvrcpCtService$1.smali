.class Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$1;
.super Landroid/content/BroadcastReceiver;
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

    .line 340
    iput-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$1;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 346
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 348
    :cond_0
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$1;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    const-string v0, "mReceiver, intent = null"

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->access$200(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 351
    :goto_0
    sget v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mAvrcpCtState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    const-string v0, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.action.ACTION_BTMUSIC_INTERACTIVE"

    .line 352
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    const-string v0, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.EXTRA_BTMUSIC_INTERACTIVE"

    .line 353
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0x44

    if-eq p1, p2, :cond_2

    const/16 p2, 0x46

    if-eq p1, p2, :cond_1

    goto :goto_1

    .line 361
    :cond_1
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$1;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    iget-object p1, p1, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->remoteAvrcpTgAddr:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 362
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$1;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    iget-object p2, p1, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->remoteAvrcpTgAddr:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->pause(Ljava/lang/String;)Z

    goto :goto_1

    .line 356
    :cond_2
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$1;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    iget-object p1, p1, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->remoteAvrcpTgAddr:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 357
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$1;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    iget-object p2, p1, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->remoteAvrcpTgAddr:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->play(Ljava/lang/String;)Z

    :cond_3
    :goto_1
    return-void
.end method
