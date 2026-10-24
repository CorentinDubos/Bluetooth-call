.class public interface abstract Lcom/hzbhd/midwareproxy/binder/service/IParkInterface;
.super Ljava/lang/Object;
.source "IParkInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/binder/service/IParkInterface$Stub;,
        Lcom/hzbhd/midwareproxy/binder/service/IParkInterface$Default;
    }
.end annotation


# virtual methods
.method public abstract registerCallBack(Lcom/hzbhd/midwareproxy/binder/callback/IParkCallBackInterface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendPanoramicParkKey(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendPanoramicParkOn(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendPanoramicParkPos(III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendPanoramicParkWH(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unRegisterCallBack()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
