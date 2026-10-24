.class public interface abstract Laidl/ICanbusAirChangeCallback;
.super Ljava/lang/Object;
.source "ICanbusAirChangeCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laidl/ICanbusAirChangeCallback$Stub;,
        Laidl/ICanbusAirChangeCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onBlowModeChange(ZZZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onBtnStatusChange(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onLeftTemperatureChange(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onRightTemperatureChange(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onWindSpeedChange(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
