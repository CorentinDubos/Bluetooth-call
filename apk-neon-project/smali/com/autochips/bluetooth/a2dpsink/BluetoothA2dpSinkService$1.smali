.class Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService$1;
.super Landroid/content/BroadcastReceiver;
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

    .line 115
    iput-object p1, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService$1;->this$0:Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 118
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.action.ACTION_BTMUSIC_ACTION_MANAGE"

    .line 121
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    const-string v0, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.COMMAND_BTMUSIC_ACTION_SET"

    .line 122
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "ERROR:exception:"

    const-string v1, "BluetoothA2dpSinkService"

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 138
    :cond_0
    iget-object p1, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService$1;->this$0:Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;

    invoke-static {p1}, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->access$400(Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;)Landroid/bluetooth/IBluetoothA2dpSink$Stub;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string p1, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.BTMUSIC_DEVICE"

    .line 139
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 141
    :try_start_0
    iget-object p2, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService$1;->this$0:Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;

    invoke-static {p2}, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->access$400(Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;)Landroid/bluetooth/IBluetoothA2dpSink$Stub;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/bluetooth/IBluetoothA2dpSink$Stub;->connect(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 144
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 126
    :cond_1
    iget-object p1, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService$1;->this$0:Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;

    invoke-static {p1}, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->access$300(Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService$1;->this$0:Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;

    invoke-static {p1}, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->access$400(Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;)Landroid/bluetooth/IBluetoothA2dpSink$Stub;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 128
    :try_start_1
    iget-object p1, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService$1;->this$0:Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;

    invoke-static {p1}, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->access$400(Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;)Landroid/bluetooth/IBluetoothA2dpSink$Stub;

    move-result-object p1

    iget-object p2, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService$1;->this$0:Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;

    invoke-static {p2}, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->access$300(Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/bluetooth/IBluetoothA2dpSink$Stub;->disconnect(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 131
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method
