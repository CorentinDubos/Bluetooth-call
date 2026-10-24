.class public interface abstract Lcom/hzbhd/midwareproxy/binder/service/IAuxVideoInterface;
.super Ljava/lang/Object;
.source "IAuxVideoInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/binder/service/IAuxVideoInterface$Stub;,
        Lcom/hzbhd/midwareproxy/binder/service/IAuxVideoInterface$Default;
    }
.end annotation


# virtual methods
.method public abstract getParingState()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getVideoFotmat(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getVideoState(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerParkingCallback(Lcom/hzbhd/midwareproxy/binder/callback/IAuxVideoCallBackInterface;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterParkingCallback(Lcom/hzbhd/midwareproxy/binder/callback/IAuxVideoCallBackInterface;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
