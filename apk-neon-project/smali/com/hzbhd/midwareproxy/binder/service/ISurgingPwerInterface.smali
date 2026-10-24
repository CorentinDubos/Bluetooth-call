.class public interface abstract Lcom/hzbhd/midwareproxy/binder/service/ISurgingPwerInterface;
.super Ljava/lang/Object;
.source "ISurgingPwerInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/binder/service/ISurgingPwerInterface$Stub;,
        Lcom/hzbhd/midwareproxy/binder/service/ISurgingPwerInterface$Default;
    }
.end annotation


# virtual methods
.method public abstract registerCallBack(Lcom/hzbhd/midwareproxy/binder/callback/ISurgingPowerCallback;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendMsg([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unRegisterCallBack(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
