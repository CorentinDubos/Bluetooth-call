.class Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage$1;
.super Ljava/lang/Object;
.source "BluetoothAvrcpCtPlayerManage.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;)V
    .locals 0

    .line 687
    iput-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage$1;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 689
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage$1;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;

    invoke-static {p2}, Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->access$002(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage;)Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage;

    const-string p1, "Proxy object connected"

    .line 690
    invoke-static {p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->access$100(Ljava/lang/String;)V

    .line 692
    :try_start_0
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage$1;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;

    invoke-static {p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->access$000(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;)Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage;

    move-result-object p1

    new-instance p2, Landroid/os/Binder;

    invoke-direct {p2}, Landroid/os/Binder;-><init>()V

    invoke-interface {p1, p2}, Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage;->regClientBinder(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "BluetoothAvrcpCtPlayerManage"

    const-string v0, ""

    .line 693
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "Proxy object disconnected"

    .line 696
    invoke-static {p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->access$100(Ljava/lang/String;)V

    .line 697
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage$1;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->access$002(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage;)Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage;

    return-void
.end method
