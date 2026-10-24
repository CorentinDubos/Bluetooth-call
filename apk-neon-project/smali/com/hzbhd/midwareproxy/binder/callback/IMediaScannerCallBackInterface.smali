.class public interface abstract Lcom/hzbhd/midwareproxy/binder/callback/IMediaScannerCallBackInterface;
.super Ljava/lang/Object;
.source "IMediaScannerCallBackInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/binder/callback/IMediaScannerCallBackInterface$Stub;,
        Lcom/hzbhd/midwareproxy/binder/callback/IMediaScannerCallBackInterface$Default;
    }
.end annotation


# virtual methods
.method public abstract fileSaveUpdateImage(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract fileSaveUpdateMusic(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract fileSaveUpdateVideo(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
