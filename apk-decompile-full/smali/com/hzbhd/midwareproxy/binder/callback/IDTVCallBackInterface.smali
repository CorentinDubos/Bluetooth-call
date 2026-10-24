.class public interface abstract Lcom/hzbhd/midwareproxy/binder/callback/IDTVCallBackInterface;
.super Ljava/lang/Object;
.source "IDTVCallBackInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/binder/callback/IDTVCallBackInterface$Stub;,
        Lcom/hzbhd/midwareproxy/binder/callback/IDTVCallBackInterface$Default;
    }
.end annotation


# virtual methods
.method public abstract reportParkingState(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
