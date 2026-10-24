.class Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$PbapSocketListener;
.super Ljava/lang/Thread;
.source "BluetoothPbapClientService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PbapSocketListener"
.end annotation


# instance fields
.field public mStopListen:Z

.field final synthetic this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;


# direct methods
.method private constructor <init>(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$PbapSocketListener;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$1;)V
    .locals 0

    .line 189
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$PbapSocketListener;-><init>(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$PbapSocketListener;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    const-string v1, "Start listening"

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$000(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;Ljava/lang/String;)V

    .line 194
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$PbapSocketListener;->mStopListen:Z

    if-nez v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$PbapSocketListener;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$100(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$PbapSocketListener;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    const-string v1, "listen failed"

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$200(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 197
    iput-boolean v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$PbapSocketListener;->mStopListen:Z

    goto :goto_0

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$PbapSocketListener;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    const-string v1, "SocketListener stopped."

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$000(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;Ljava/lang/String;)V

    return-void
.end method
