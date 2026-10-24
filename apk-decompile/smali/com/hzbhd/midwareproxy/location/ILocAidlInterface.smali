.class public interface abstract Lcom/hzbhd/midwareproxy/location/ILocAidlInterface;
.super Ljava/lang/Object;
.source "ILocAidlInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/location/ILocAidlInterface$Stub;,
        Lcom/hzbhd/midwareproxy/location/ILocAidlInterface$Default;
    }
.end annotation


# virtual methods
.method public abstract addCallBack(Lcom/hzbhd/midwareproxy/location/LocationCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getSpeed(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeCallBack(Lcom/hzbhd/midwareproxy/location/LocationCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
