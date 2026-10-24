.class public interface abstract Lcom/hzbhd/midwareproxy/misc/aidl/IVolumeService;
.super Ljava/lang/Object;
.source "IVolumeService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/misc/aidl/IVolumeService$Stub;,
        Lcom/hzbhd/midwareproxy/misc/aidl/IVolumeService$Default;
    }
.end annotation


# virtual methods
.method public abstract notifyNaviVolumeChange(III)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifyVolumeChange(ZZII)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
