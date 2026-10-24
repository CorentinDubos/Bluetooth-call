.class Lcom/autochips/bluetooth/hf/BluetoothHfService$actionTimeoutThread;
.super Ljava/lang/Thread;
.source "BluetoothHfService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/hf/BluetoothHfService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "actionTimeoutThread"
.end annotation


# instance fields
.field public BT_Addr:Ljava/lang/String;

.field public state:Ljava/lang/String;

.field private stoped:Z

.field final synthetic this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;


# direct methods
.method private constructor <init>(Lcom/autochips/bluetooth/hf/BluetoothHfService;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$actionTimeoutThread;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    .line 185
    iput-boolean p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$actionTimeoutThread;->stoped:Z

    return-void
.end method

.method private actionTimeout(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 197
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$actionTimeoutThread;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    iget-object v0, v0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->stateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "BluetoothHfService"

    if-nez v0, :cond_1

    .line 198
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->access$000()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 199
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ERROR: stateMap not contain "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    move v2, v0

    .line 203
    :goto_0
    iget-object v3, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$actionTimeoutThread;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    iget-object v3, v3, Lcom/autochips/bluetooth/hf/BluetoothHfService;->stateMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$actionTimeoutThread;->stoped:Z

    if-nez v3, :cond_4

    const v3, 0xea60

    if-lt v2, v3, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const-wide/16 v3, 0x64

    .line 210
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 212
    :catch_0
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->access$000()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "Waiting for action was interrupted."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x64

    goto :goto_0

    :cond_4
    :goto_2
    if-eqz v0, :cond_7

    .line 218
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->access$000()Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "Waiting action time-out. Force return."

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const-string p1, "connected"

    .line 219
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_3

    :cond_6
    const-string p1, "disconnect"

    .line 223
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_7
    :goto_3
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$actionTimeoutThread;->BT_Addr:Ljava/lang/String;

    iget-object v1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$actionTimeoutThread;->state:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/autochips/bluetooth/hf/BluetoothHfService$actionTimeoutThread;->actionTimeout(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public shutdown()V
    .locals 1

    const/4 v0, 0x1

    .line 192
    iput-boolean v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$actionTimeoutThread;->stoped:Z

    return-void
.end method
