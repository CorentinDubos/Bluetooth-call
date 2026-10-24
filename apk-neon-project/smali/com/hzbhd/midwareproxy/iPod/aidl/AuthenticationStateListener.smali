.class public interface abstract Lcom/hzbhd/midwareproxy/iPod/aidl/AuthenticationStateListener;
.super Ljava/lang/Object;
.source "AuthenticationStateListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/iPod/aidl/AuthenticationStateListener$Stub;,
        Lcom/hzbhd/midwareproxy/iPod/aidl/AuthenticationStateListener$Default;
    }
.end annotation


# virtual methods
.method public abstract authenticationState(IB)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
