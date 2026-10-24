.class public interface abstract Lcom/hzbhd/midwareproxy/binder/callback/IAutoTestCallBackInterface;
.super Ljava/lang/Object;
.source "IAutoTestCallBackInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/binder/callback/IAutoTestCallBackInterface$Stub;,
        Lcom/hzbhd/midwareproxy/binder/callback/IAutoTestCallBackInterface$Default;
    }
.end annotation


# virtual methods
.method public abstract notifyAutoTest(I[I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
