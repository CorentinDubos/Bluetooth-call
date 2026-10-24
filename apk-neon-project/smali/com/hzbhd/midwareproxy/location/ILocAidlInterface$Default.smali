.class public Lcom/hzbhd/midwareproxy/location/ILocAidlInterface$Default;
.super Ljava/lang/Object;
.source "ILocAidlInterface.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/location/ILocAidlInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/location/ILocAidlInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addCallBack(Lcom/hzbhd/midwareproxy/location/LocationCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSpeed(I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public removeCallBack(Lcom/hzbhd/midwareproxy/location/LocationCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
