.class public interface abstract Lcom/hzbhd/midwareproxy/binder/callback/IAuxVideoCallBackInterface;
.super Ljava/lang/Object;
.source "IAuxVideoCallBackInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/binder/callback/IAuxVideoCallBackInterface$Stub;,
        Lcom/hzbhd/midwareproxy/binder/callback/IAuxVideoCallBackInterface$Default;
    }
.end annotation


# virtual methods
.method public abstract onParkingStateChanged(I)V
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
