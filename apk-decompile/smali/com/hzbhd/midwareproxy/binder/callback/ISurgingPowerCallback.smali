.class public interface abstract Lcom/hzbhd/midwareproxy/binder/callback/ISurgingPowerCallback;
.super Ljava/lang/Object;
.source "ISurgingPowerCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/binder/callback/ISurgingPowerCallback$Stub;,
        Lcom/hzbhd/midwareproxy/binder/callback/ISurgingPowerCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract notifySurgingPower([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
