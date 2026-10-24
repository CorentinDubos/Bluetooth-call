.class Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothPbapClientService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$1;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 218
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$1;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$000(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;Ljava/lang/String;)V

    .line 219
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.android.bluetooth.pbap.authenticate.return"

    .line 221
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x5

    const-string v0, "com.autochips.bluetooth.extra.authenticate_result"

    .line 222
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    int-to-long v0, p1

    .line 223
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$1;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PBAP_AUTHENTICATE_RETURN_ACTION : result == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$000(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;Ljava/lang/String;)V

    const-wide/16 v2, 0x1

    cmp-long p1, v0, v2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 225
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    const-string v1, "com.autochips.bluetooth.extra.autheticate_code"

    .line 226
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p1, :cond_0

    goto :goto_0

    .line 227
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    .line 229
    :goto_0
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$1;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p2, v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->authChallRsp(ZLjava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 232
    :cond_1
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$1;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, v0, v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->authChallRsp(ZLjava/lang/String;Ljava/lang/String;)Z

    :cond_2
    :goto_1
    return-void
.end method
