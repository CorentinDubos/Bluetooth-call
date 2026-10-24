.class public interface abstract Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrListener;
.super Ljava/lang/Object;
.source "IRemoteDrListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrListener$Stub;,
        Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onRemoteDrResponse([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
