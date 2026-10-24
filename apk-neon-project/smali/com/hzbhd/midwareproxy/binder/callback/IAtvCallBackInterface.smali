.class public interface abstract Lcom/hzbhd/midwareproxy/binder/callback/IAtvCallBackInterface;
.super Ljava/lang/Object;
.source "IAtvCallBackInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/binder/callback/IAtvCallBackInterface$Stub;,
        Lcom/hzbhd/midwareproxy/binder/callback/IAtvCallBackInterface$Default;
    }
.end annotation


# virtual methods
.method public abstract reportChannelFrequncy(F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract reportChannelList(F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract reportChannelStatus(IIII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract reportParkingState(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract reportVideoStatus(III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
