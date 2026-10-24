.class public interface abstract Lcom/hzbhd/midwareproxy/binder/callback/IDiscBackCameraChangeInterface;
.super Ljava/lang/Object;
.source "IDiscBackCameraChangeInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/binder/callback/IDiscBackCameraChangeInterface$Stub;,
        Lcom/hzbhd/midwareproxy/binder/callback/IDiscBackCameraChangeInterface$Default;
    }
.end annotation


# virtual methods
.method public abstract backcamerarequestVideoExit()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract backcamerarequestVideoFResume()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
