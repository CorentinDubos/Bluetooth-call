.class public interface abstract Lcom/hzbhd/midwareproxy/misc/aidl/INMEACallback;
.super Ljava/lang/Object;
.source "INMEACallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/misc/aidl/INMEACallback$Stub;,
        Lcom/hzbhd/midwareproxy/misc/aidl/INMEACallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onNMEAChange(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onPASCDChange(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
