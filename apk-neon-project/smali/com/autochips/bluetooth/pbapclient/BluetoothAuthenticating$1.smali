.class Lcom/autochips/bluetooth/pbapclient/BluetoothAuthenticating$1;
.super Landroid/os/Handler;
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

    .line 95
    iput-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothAuthenticating$1;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothAuthenticating;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 97
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x65

    if-eq p1, v0, :cond_0

    const-string p1, "BluetoothAuthenticating"

    const-string v0, "Unsupported indication"

    .line 102
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 99
    :cond_0
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothAuthenticating$1;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothAuthenticating;

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothAuthenticating;->access$000(Lcom/autochips/bluetooth/pbapclient/BluetoothAuthenticating;I)V

    :goto_0
    return-void
.end method
