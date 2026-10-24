.class public Lcom/hzbhd/midwareproxy/binder/callback/IBlackoutCallBackInterface$Default;
.super Ljava/lang/Object;
.source "IBlackoutCallBackInterface.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/binder/callback/IBlackoutCallBackInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/binder/callback/IBlackoutCallBackInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public notifyBlackoutFinish()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method
