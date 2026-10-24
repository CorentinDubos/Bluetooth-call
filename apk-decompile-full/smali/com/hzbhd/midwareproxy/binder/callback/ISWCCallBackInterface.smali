.class public interface abstract Lcom/hzbhd/midwareproxy/binder/callback/ISWCCallBackInterface;
.super Ljava/lang/Object;
.source "ISWCCallBackInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/binder/callback/ISWCCallBackInterface$Stub;,
        Lcom/hzbhd/midwareproxy/binder/callback/ISWCCallBackInterface$Default;
    }
.end annotation


# virtual methods
.method public abstract notifySWCSample(ZI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifySwcLongKeySettings([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifySwcSettings([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
