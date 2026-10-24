.class public interface abstract Lnfore/android/bt/servicemanager/IPanCallback;
.super Ljava/lang/Object;
.source "IPanCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnfore/android/bt/servicemanager/IPanCallback$Stub;,
        Lnfore/android/bt/servicemanager/IPanCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onPanStateChanged(Ljava/lang/String;III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
