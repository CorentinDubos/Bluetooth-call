.class Lcom/autochips/bluetooth/pbapclient/BluetoothAuthenticating$2;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothAuthenticating.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/pbapclient/BluetoothAuthenticating;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothAuthenticating;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/pbapclient/BluetoothAuthenticating;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothAuthenticating$2;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothAuthenticating;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "BluetoothAuthenticating"

    const-string p2, "onReceive()"

    .line 110
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothAuthenticating$2;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothAuthenticating;

    const/4 p2, 0x3

    invoke-static {p1, p2}, Lcom/autochips/bluetooth/pbapclient/BluetoothAuthenticating;->access$000(Lcom/autochips/bluetooth/pbapclient/BluetoothAuthenticating;I)V

    .line 112
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothAuthenticating$2;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothAuthenticating;

    invoke-virtual {p1}, Lcom/autochips/bluetooth/pbapclient/BluetoothAuthenticating;->finish()V

    return-void
.end method
