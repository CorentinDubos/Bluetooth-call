.class public interface abstract Lcom/hzbhd/midwareproxy/iPod/aidl/GeneralLingoRetListener;
.super Ljava/lang/Object;
.source "GeneralLingoRetListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/iPod/aidl/GeneralLingoRetListener$Stub;,
        Lcom/hzbhd/midwareproxy/iPod/aidl/GeneralLingoRetListener$Default;
    }
.end annotation


# virtual methods
.method public abstract ack(BI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract retSupportedEventNotification(BLcom/hzbhd/midwareproxy/iPod/EventNotification;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
