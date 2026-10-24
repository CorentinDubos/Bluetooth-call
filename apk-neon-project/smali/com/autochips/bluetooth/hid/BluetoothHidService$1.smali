.class Lcom/autochips/bluetooth/hid/BluetoothHidService$1;
.super Ljava/lang/Thread;
.source "BluetoothHidService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/hid/BluetoothHidService;->startHidListenerThread()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/hid/BluetoothHidService;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/hid/BluetoothHidService;Ljava/lang/String;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/autochips/bluetooth/hid/BluetoothHidService$1;->this$0:Lcom/autochips/bluetooth/hid/BluetoothHidService;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 110
    invoke-static {}, Lcom/autochips/bluetooth/hid/BluetoothHidService;->access$000()Z

    move-result v0

    const-string v1, "BluetoothHidService"

    if-eqz v0, :cond_0

    const-string v0, "Hid Listener Thread  starting"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidService$1;->this$0:Lcom/autochips/bluetooth/hid/BluetoothHidService;

    invoke-static {v0}, Lcom/autochips/bluetooth/hid/BluetoothHidService;->access$100(Lcom/autochips/bluetooth/hid/BluetoothHidService;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 112
    iget-object v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidService$1;->this$0:Lcom/autochips/bluetooth/hid/BluetoothHidService;

    invoke-static {v0}, Lcom/autochips/bluetooth/hid/BluetoothHidService;->access$200(Lcom/autochips/bluetooth/hid/BluetoothHidService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    invoke-static {}, Lcom/autochips/bluetooth/hid/BluetoothHidService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Hidd Indication interrupted , exiting"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidService$1;->this$0:Lcom/autochips/bluetooth/hid/BluetoothHidService;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/autochips/bluetooth/hid/BluetoothHidService;->access$102(Lcom/autochips/bluetooth/hid/BluetoothHidService;Z)Z

    goto :goto_0

    .line 117
    :cond_2
    invoke-static {}, Lcom/autochips/bluetooth/hid/BluetoothHidService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Hid Thread finished"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method
