.class public interface abstract Lcom/hzbhd/midwareproxy/binder/callback/IParkCallBackInterface;
.super Ljava/lang/Object;
.source "IParkCallBackInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/binder/callback/IParkCallBackInterface$Stub;,
        Lcom/hzbhd/midwareproxy/binder/callback/IParkCallBackInterface$Default;
    }
.end annotation


# virtual methods
.method public abstract onParkOrbitAngleChange(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
