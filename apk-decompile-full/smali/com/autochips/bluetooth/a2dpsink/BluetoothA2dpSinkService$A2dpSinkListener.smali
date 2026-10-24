.class Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService$A2dpSinkListener;
.super Ljava/lang/Thread;
.source "BluetoothA2dpSinkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "A2dpSinkListener"
.end annotation


# instance fields
.field public mStopListen:Z

.field final synthetic this$0:Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;


# direct methods
.method private constructor <init>(Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService$A2dpSinkListener;->this$0:Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService$A2dpSinkListener;->this$0:Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;

    const-string v1, "Start listening"

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->access$000(Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;Ljava/lang/String;)V

    .line 105
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService$A2dpSinkListener;->mStopListen:Z

    if-nez v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService$A2dpSinkListener;->this$0:Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->access$100(Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService$A2dpSinkListener;->this$0:Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;

    const-string v1, "listen failed"

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->access$200(Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 108
    iput-boolean v0, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService$A2dpSinkListener;->mStopListen:Z

    goto :goto_0

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService$A2dpSinkListener;->this$0:Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;

    const-string v1, "SocketListener stopped."

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->access$000(Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;Ljava/lang/String;)V

    return-void
.end method
