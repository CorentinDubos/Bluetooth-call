.class public interface abstract Lcom/hzbhd/midwareproxy/binder/service/IBlackoutManager;
.super Ljava/lang/Object;
.source "IBlackoutManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/binder/service/IBlackoutManager$Stub;,
        Lcom/hzbhd/midwareproxy/binder/service/IBlackoutManager$Default;
    }
.end annotation


# virtual methods
.method public abstract cancelBlackout()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerCallBack(Lcom/hzbhd/midwareproxy/binder/callback/IBlackoutCallBackInterface;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setBlackoutMode()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unRegisterCallBack(Lcom/hzbhd/midwareproxy/binder/callback/IBlackoutCallBackInterface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
