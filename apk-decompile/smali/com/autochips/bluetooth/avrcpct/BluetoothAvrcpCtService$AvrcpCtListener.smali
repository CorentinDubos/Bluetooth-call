.class Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$AvrcpCtListener;
.super Ljava/lang/Thread;
.source "BluetoothAvrcpCtService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AvrcpCtListener"
.end annotation


# instance fields
.field public mStopListen:Z

.field final synthetic this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;


# direct methods
.method private constructor <init>(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$AvrcpCtListener;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$1;)V
    .locals 0

    .line 325
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$AvrcpCtListener;-><init>(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 329
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$AvrcpCtListener;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    const-string v1, "Start listening"

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->access$000(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;Ljava/lang/String;)V

    .line 330
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$AvrcpCtListener;->mStopListen:Z

    if-nez v0, :cond_1

    .line 331
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$AvrcpCtListener;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->access$100(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$AvrcpCtListener;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    const-string v1, "listen failed"

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->access$200(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 333
    iput-boolean v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$AvrcpCtListener;->mStopListen:Z

    goto :goto_0

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$AvrcpCtListener;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    const-string v1, "SocketListener stopped."

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->access$000(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;Ljava/lang/String;)V

    return-void
.end method
