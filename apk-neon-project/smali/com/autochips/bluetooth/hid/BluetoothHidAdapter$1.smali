.class Lcom/autochips/bluetooth/hid/BluetoothHidAdapter$1;
.super Ljava/lang/Object;
.source "BluetoothHidAdapter.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter$1;->this$0:Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 89
    invoke-static {}, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->access$000()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "BluetoothHidAdapter"

    const-string v0, "BluetoothHidDeviceUtility Connected "

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_0
    iget-object p1, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter$1;->this$0:Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;

    invoke-static {p2}, Lcom/autochips/bluetooth/hid/IBluetoothHidDeviceUtility$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autochips/bluetooth/hid/IBluetoothHidDeviceUtility;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->access$102(Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;Lcom/autochips/bluetooth/hid/IBluetoothHidDeviceUtility;)Lcom/autochips/bluetooth/hid/IBluetoothHidDeviceUtility;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 94
    invoke-static {}, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->access$000()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "BluetoothHidAdapter"

    const-string v0, "BluetoothHidDeviceUtility Disconnected "

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_0
    iget-object p1, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter$1;->this$0:Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->access$102(Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;Lcom/autochips/bluetooth/hid/IBluetoothHidDeviceUtility;)Lcom/autochips/bluetooth/hid/IBluetoothHidDeviceUtility;

    return-void
.end method
