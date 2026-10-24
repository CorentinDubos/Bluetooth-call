.class public interface abstract Lcom/hzbhd/midwareproxy/binder/callback/IAudioCallBackInterface;
.super Ljava/lang/Object;
.source "IAudioCallBackInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/binder/callback/IAudioCallBackInterface$Stub;,
        Lcom/hzbhd/midwareproxy/binder/callback/IAudioCallBackInterface$Default;
    }
.end annotation


# virtual methods
.method public abstract ampVolumeUpdate(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract muteChanged(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
