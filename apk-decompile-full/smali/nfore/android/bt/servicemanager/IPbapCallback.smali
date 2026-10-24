.class public interface abstract Lnfore/android/bt/servicemanager/IPbapCallback;
.super Ljava/lang/Object;
.source "IPbapCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnfore/android/bt/servicemanager/IPbapCallback$Stub;,
        Lnfore/android/bt/servicemanager/IPbapCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onPbapDownloadNotify(Ljava/lang/String;III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onPbapStateChanged(Ljava/lang/String;Ljava/lang/String;IIII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract retPbapCleanDatabaseCompleted(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract retPbapDatabaseAvailable(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract retPbapDeleteDatabaseByAddressCompleted(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract retPbapQueryName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
