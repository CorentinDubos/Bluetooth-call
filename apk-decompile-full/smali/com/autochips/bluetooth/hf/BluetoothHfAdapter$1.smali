.class Lcom/autochips/bluetooth/hf/BluetoothHfAdapter$1;
.super Ljava/lang/Object;
.source "BluetoothHfAdapter.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter$1;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 113
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->access$000()Z

    move-result p1

    const-string v0, "BluetoothHfAdapter"

    if-eqz p1, :cond_0

    const-string p1, "HfServerNotify Connected "

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_0
    iget-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter$1;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;

    invoke-static {p2}, Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->access$102(Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify;)Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify;

    .line 116
    :try_start_0
    iget-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter$1;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;

    invoke-static {p1}, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->access$100(Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;)Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify;

    move-result-object p1

    new-instance p2, Landroid/os/Binder;

    invoke-direct {p2}, Landroid/os/Binder;-><init>()V

    invoke-interface {p1, p2}, Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify;->regClientBinder(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, ""

    .line 117
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 122
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->access$000()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "BluetoothHfAdapter"

    const-string v0, "HfServerNotify Disconnected "

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_0
    iget-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter$1;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->access$102(Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify;)Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify;

    return-void
.end method
