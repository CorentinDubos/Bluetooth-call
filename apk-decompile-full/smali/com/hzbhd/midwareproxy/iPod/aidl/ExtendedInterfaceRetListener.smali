.class public interface abstract Lcom/hzbhd/midwareproxy/iPod/aidl/ExtendedInterfaceRetListener;
.super Ljava/lang/Object;
.source "ExtendedInterfaceRetListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/iPod/aidl/ExtendedInterfaceRetListener$Stub;,
        Lcom/hzbhd/midwareproxy/iPod/aidl/ExtendedInterfaceRetListener$Default;
    }
.end annotation


# virtual methods
.method public abstract playStatusChangeNotification(Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract retDBTrackInfo(BILcom/hzbhd/midwareproxy/iPod/TrackInformation;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract retPBTrackInfo(BILcom/hzbhd/midwareproxy/iPod/TrackInformation;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract retUIDTrackInfo(B[BLcom/hzbhd/midwareproxy/iPod/TrackInformation;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract returnCategorizedDatabaseRecord(BILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
