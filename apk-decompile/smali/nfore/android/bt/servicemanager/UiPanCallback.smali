.class public interface abstract Lnfore/android/bt/servicemanager/UiPanCallback;
.super Ljava/lang/Object;
.source "UiPanCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnfore/android/bt/servicemanager/UiPanCallback$Stub;,
        Lnfore/android/bt/servicemanager/UiPanCallback$Default;
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
