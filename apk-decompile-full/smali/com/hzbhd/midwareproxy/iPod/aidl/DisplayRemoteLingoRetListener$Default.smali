.class public Lcom/hzbhd/midwareproxy/iPod/aidl/DisplayRemoteLingoRetListener$Default;
.super Ljava/lang/Object;
.source "DisplayRemoteLingoRetListener.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/iPod/aidl/DisplayRemoteLingoRetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/iPod/aidl/DisplayRemoteLingoRetListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public remoteEventNotification(Lcom/hzbhd/midwareproxy/iPod/RemoteEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
