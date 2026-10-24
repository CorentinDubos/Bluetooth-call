.class Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$AvpClientDeathHandler;
.super Ljava/lang/Object;
.source "BluetoothAvrcpCtService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AvpClientDeathHandler"
.end annotation


# instance fields
.field private mCb:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;Landroid/os/IBinder;)V
    .locals 0

    .line 1230
    iput-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$AvpClientDeathHandler;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1231
    iput-object p2, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$AvpClientDeathHandler;->mCb:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 1235
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$AvpClientDeathHandler;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    const-string v1, "AvpClientDeathHandler:binderDied"

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->access$000(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;Ljava/lang/String;)V

    .line 1238
    sget v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mAudioState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_0

    .line 1239
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$AvpClientDeathHandler;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    invoke-static {v0, v1, v2}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->access$300(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;II)I

    .line 1243
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.action.ACTION_BTMUSIC_ACTION_MANAGE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.COMMAND_BTMUSIC_ACTION_SET"

    .line 1244
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1245
    iget-object v1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$AvpClientDeathHandler;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    invoke-virtual {v1, v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1248
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$AvpClientDeathHandler;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    invoke-static {v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->access$800(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;)Landroid/bluetooth/IBluetoothAvrcpCt$Stub;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1250
    :try_start_0
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$AvpClientDeathHandler;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    invoke-static {v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->access$800(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;)Landroid/bluetooth/IBluetoothAvrcpCt$Stub;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/IBluetoothAvrcpCt$Stub;->disconnect()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR:exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothAvrcpCtService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 1

    .line 1259
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$AvpClientDeathHandler;->mCb:Landroid/os/IBinder;

    return-object v0
.end method
