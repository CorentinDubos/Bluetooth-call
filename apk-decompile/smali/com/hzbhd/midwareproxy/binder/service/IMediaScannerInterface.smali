.class public interface abstract Lcom/hzbhd/midwareproxy/binder/service/IMediaScannerInterface;
.super Ljava/lang/Object;
.source "IMediaScannerInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/binder/service/IMediaScannerInterface$Stub;,
        Lcom/hzbhd/midwareproxy/binder/service/IMediaScannerInterface$Default;
    }
.end annotation


# virtual methods
.method public abstract getScanningState(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerCallBack(Lcom/hzbhd/midwareproxy/binder/callback/IMediaScannerCallBackInterface;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startSanFile(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
