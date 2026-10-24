.class public interface abstract Lcom/autochips/bluetooth/LocalBluetoothManager$Callback;
.super Ljava/lang/Object;
.source "LocalBluetoothManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/LocalBluetoothManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onDeviceAdded(Lcom/autochips/bluetooth/CachedBluetoothDevice;)V
.end method

.method public abstract onDeviceDeleted(Lcom/autochips/bluetooth/CachedBluetoothDevice;)V
.end method

.method public abstract onScanningStateChanged(Z)V
.end method
