.class public interface abstract Lcom/hzbhd/midwareproxy/binder/service/IDeviceYHInterface;
.super Ljava/lang/Object;
.source "IDeviceYHInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/binder/service/IDeviceYHInterface$Stub;,
        Lcom/hzbhd/midwareproxy/binder/service/IDeviceYHInterface$Default;
    }
.end annotation


# virtual methods
.method public abstract sendMsg([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
