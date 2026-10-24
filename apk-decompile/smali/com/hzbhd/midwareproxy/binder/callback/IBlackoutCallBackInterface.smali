.class public interface abstract Lcom/hzbhd/midwareproxy/binder/callback/IBlackoutCallBackInterface;
.super Ljava/lang/Object;
.source "IBlackoutCallBackInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/binder/callback/IBlackoutCallBackInterface$Stub;,
        Lcom/hzbhd/midwareproxy/binder/callback/IBlackoutCallBackInterface$Default;
    }
.end annotation


# virtual methods
.method public abstract notifyBlackoutFinish()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
