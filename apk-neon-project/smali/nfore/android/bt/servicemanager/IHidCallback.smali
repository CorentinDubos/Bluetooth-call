.class public interface abstract Lnfore/android/bt/servicemanager/IHidCallback;
.super Ljava/lang/Object;
.source "IHidCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnfore/android/bt/servicemanager/IHidCallback$Stub;,
        Lnfore/android/bt/servicemanager/IHidCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onHidStateChanged(Ljava/lang/String;III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
