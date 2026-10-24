.class public interface abstract Lcom/hzbhd/midwareproxy/misc/aidl/IOnDrResponseListener;
.super Ljava/lang/Object;
.source "IOnDrResponseListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/misc/aidl/IOnDrResponseListener$Stub;,
        Lcom/hzbhd/midwareproxy/misc/aidl/IOnDrResponseListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onDrResponse([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
