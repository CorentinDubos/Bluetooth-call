.class public interface abstract Lcom/hzbhd/midwareproxy/misc/aidl/IAVOffService;
.super Ljava/lang/Object;
.source "IAVOffService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/misc/aidl/IAVOffService$Stub;,
        Lcom/hzbhd/midwareproxy/misc/aidl/IAVOffService$Default;
    }
.end annotation


# virtual methods
.method public abstract notifyChange()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
