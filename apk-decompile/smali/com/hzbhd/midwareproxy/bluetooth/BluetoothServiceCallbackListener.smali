.class public interface abstract Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceCallbackListener;
.super Ljava/lang/Object;
.source "BluetoothServiceCallbackListener.java"


# virtual methods
.method public abstract onA2dpStateChangedService(Ljava/lang/String;II)V
.end method

.method public abstract onAdapterStateChanged(I)V
.end method

.method public abstract onDeviceFound(Ljava/lang/String;Ljava/lang/String;BZ)V
.end method

.method public abstract onDevicePairFailed(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onDevicePaired(Ljava/lang/String;Ljava/lang/String;IB)V
.end method

.method public abstract onDeviceUnpaired(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onDeviceUuidsGot(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract onHfpStateChangedService(Ljava/lang/String;II)V
.end method

.method public abstract onSecureSimplePairingRequest(ILjava/lang/String;)V
.end method

.method public abstract onServiceDied()V
.end method

.method public abstract onServiceReady(I)V
.end method

.method public abstract retBluetoothFoundDevices(I[Ljava/lang/String;[Ljava/lang/String;[I[B)V
.end method

.method public abstract retBluetoothPairedDevices(I[Ljava/lang/String;[Ljava/lang/String;[I[B)V
.end method

.method public abstract retBluetoothPairedDevicesExtend(I[Ljava/lang/String;[Ljava/lang/String;[I[B[Z[Z)V
.end method
