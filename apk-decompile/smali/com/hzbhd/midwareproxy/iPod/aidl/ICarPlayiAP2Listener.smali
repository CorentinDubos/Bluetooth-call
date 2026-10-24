.class public interface abstract Lcom/hzbhd/midwareproxy/iPod/aidl/ICarPlayiAP2Listener;
.super Ljava/lang/Object;
.source "ICarPlayiAP2Listener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/iPod/aidl/ICarPlayiAP2Listener$Stub;,
        Lcom/hzbhd/midwareproxy/iPod/aidl/ICarPlayiAP2Listener$Default;
    }
.end annotation


# virtual methods
.method public abstract onEvent(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
