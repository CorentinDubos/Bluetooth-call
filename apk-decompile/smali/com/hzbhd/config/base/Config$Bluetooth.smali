.class public Lcom/hzbhd/config/base/Config$Bluetooth;
.super Ljava/lang/Object;
.source "Config.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/config/base/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Bluetooth"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0016\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0014\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\u0008\u0010\r\u001a\u00020\u000cH\u0016R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/hzbhd/config/base/Config$Bluetooth;",
        "",
        "()V",
        "bluetoothManager",
        "Lcom/hzbhd/config/lib/bluetooth/BluetoothManager;",
        "getBluetoothManager",
        "()Lcom/hzbhd/config/lib/bluetooth/BluetoothManager;",
        "setBluetoothManager",
        "(Lcom/hzbhd/config/lib/bluetooth/BluetoothManager;)V",
        "context",
        "Landroid/content/Context;",
        "isAndroidBluetooth",
        "",
        "isCallsBindAddress",
        "Config_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private bluetoothManager:Lcom/hzbhd/config/lib/bluetooth/BluetoothManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 689
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBluetoothManager()Lcom/hzbhd/config/lib/bluetooth/BluetoothManager;
    .locals 1

    .line 693
    iget-object v0, p0, Lcom/hzbhd/config/base/Config$Bluetooth;->bluetoothManager:Lcom/hzbhd/config/lib/bluetooth/BluetoothManager;

    return-object v0
.end method

.method public getBluetoothManager(Landroid/content/Context;)Lcom/hzbhd/config/lib/bluetooth/BluetoothManager;
    .locals 0

    .line 709
    invoke-virtual {p0}, Lcom/hzbhd/config/base/Config$Bluetooth;->getBluetoothManager()Lcom/hzbhd/config/lib/bluetooth/BluetoothManager;

    move-result-object p1

    if-nez p1, :cond_0

    .line 710
    new-instance p1, Lcom/hzbhd/config/lib/bluetooth/BluetoothManager;

    invoke-direct {p1}, Lcom/hzbhd/config/lib/bluetooth/BluetoothManager;-><init>()V

    invoke-virtual {p0, p1}, Lcom/hzbhd/config/base/Config$Bluetooth;->setBluetoothManager(Lcom/hzbhd/config/lib/bluetooth/BluetoothManager;)V

    .line 712
    :cond_0
    invoke-virtual {p0}, Lcom/hzbhd/config/base/Config$Bluetooth;->getBluetoothManager()Lcom/hzbhd/config/lib/bluetooth/BluetoothManager;

    move-result-object p1

    return-object p1
.end method

.method public isAndroidBluetooth()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isCallsBindAddress()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setBluetoothManager(Lcom/hzbhd/config/lib/bluetooth/BluetoothManager;)V
    .locals 0

    .line 693
    iput-object p1, p0, Lcom/hzbhd/config/base/Config$Bluetooth;->bluetoothManager:Lcom/hzbhd/config/lib/bluetooth/BluetoothManager;

    return-void
.end method
