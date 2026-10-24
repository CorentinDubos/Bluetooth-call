.class public interface abstract Lcom/hzbhd/midwareproxy/binder/callback/ISettingCallBackInterface;
.super Ljava/lang/Object;
.source "ISettingCallBackInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/binder/callback/ISettingCallBackInterface$Stub;,
        Lcom/hzbhd/midwareproxy/binder/callback/ISettingCallBackInterface$Default;
    }
.end annotation


# virtual methods
.method public abstract notifyBlackOut(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifyEQBalanceUI()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifyEQSettingUI()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifyEQTypeUI()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
