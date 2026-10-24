.class public interface abstract Lcom/hzbhd/midwareproxy/binder/callback/IRadioCallBackInterface;
.super Ljava/lang/Object;
.source "IRadioCallBackInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/binder/callback/IRadioCallBackInterface$Stub;,
        Lcom/hzbhd/midwareproxy/binder/callback/IRadioCallBackInterface$Default;
    }
.end annotation


# virtual methods
.method public abstract seachUpdate(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract seekUpdate(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
