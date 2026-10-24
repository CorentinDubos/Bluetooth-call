.class public interface abstract Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService;
.super Ljava/lang/Object;
.source "IRemoteDrService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService$Stub;,
        Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService$Default;
    }
.end annotation


# virtual methods
.method public abstract addRemoteDrListener(Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerDrLocation(ILcom/hzbhd/midwareproxy/misc/aidl/INMEACallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerOnDrResponseListener(Lcom/hzbhd/midwareproxy/misc/aidl/IOnDrResponseListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeRemoteDrListener(Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setDrProperty(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterDrLocation(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterOnDrResponseListener(Lcom/hzbhd/midwareproxy/misc/aidl/IOnDrResponseListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
