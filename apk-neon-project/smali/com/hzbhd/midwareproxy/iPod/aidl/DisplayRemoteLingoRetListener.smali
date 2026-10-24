.class public interface abstract Lcom/hzbhd/midwareproxy/iPod/aidl/DisplayRemoteLingoRetListener;
.super Ljava/lang/Object;
.source "DisplayRemoteLingoRetListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/iPod/aidl/DisplayRemoteLingoRetListener$Stub;,
        Lcom/hzbhd/midwareproxy/iPod/aidl/DisplayRemoteLingoRetListener$Default;
    }
.end annotation


# virtual methods
.method public abstract remoteEventNotification(Lcom/hzbhd/midwareproxy/iPod/RemoteEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
