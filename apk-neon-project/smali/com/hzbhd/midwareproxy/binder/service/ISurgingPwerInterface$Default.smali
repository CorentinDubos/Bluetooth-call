.class public Lcom/hzbhd/midwareproxy/binder/service/ISurgingPwerInterface$Default;
.super Ljava/lang/Object;
.source "ISurgingPwerInterface.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/binder/service/ISurgingPwerInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/binder/service/ISurgingPwerInterface;
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
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public registerCallBack(Lcom/hzbhd/midwareproxy/binder/callback/ISurgingPowerCallback;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public sendMsg([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public unRegisterCallBack(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
