.class public interface abstract Lcom/hzbhd/midwareproxy/iPod/aidl/AuthenticationListener;
.super Ljava/lang/Object;
.source "AuthenticationListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/iPod/aidl/AuthenticationListener$Stub;,
        Lcom/hzbhd/midwareproxy/iPod/aidl/AuthenticationListener$Default;
    }
.end annotation


# virtual methods
.method public abstract autenthicationResult(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
