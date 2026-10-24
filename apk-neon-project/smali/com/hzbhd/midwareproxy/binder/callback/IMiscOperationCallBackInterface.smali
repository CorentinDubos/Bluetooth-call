.class public interface abstract Lcom/hzbhd/midwareproxy/binder/callback/IMiscOperationCallBackInterface;
.super Ljava/lang/Object;
.source "IMiscOperationCallBackInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/binder/callback/IMiscOperationCallBackInterface$Stub;,
        Lcom/hzbhd/midwareproxy/binder/callback/IMiscOperationCallBackInterface$Default;
    }
.end annotation


# virtual methods
.method public abstract batteryThreadStateReports(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract errorReports(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract progressReports(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
