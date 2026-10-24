.class public interface abstract Lcom/hzbhd/midwareproxy/binder/callback/IDeviceYHCallback;
.super Ljava/lang/Object;
.source "IDeviceYHCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/binder/callback/IDeviceYHCallback$Stub;,
        Lcom/hzbhd/midwareproxy/binder/callback/IDeviceYHCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract notify([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
