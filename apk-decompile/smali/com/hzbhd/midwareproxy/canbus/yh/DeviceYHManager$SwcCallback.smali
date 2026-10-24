.class final Lcom/hzbhd/midwareproxy/canbus/yh/DeviceYHManager$SwcCallback;
.super Lcom/hzbhd/midwareproxy/binder/callback/IDeviceYHCallback$Stub;
.source "DeviceYHManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/canbus/yh/DeviceYHManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SwcCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/canbus/yh/DeviceYHManager$SwcCallback$PowerChangeHandler;
    }
.end annotation


# instance fields
.field private mSwcHandler:Landroid/os/Handler;

.field private mToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hzbhd/midwareproxy/canbus/yh/DeviceYHManager$OnDeviceYHChangeListener;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/binder/callback/IDeviceYHCallback$Stub;-><init>()V

    .line 47
    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/yh/DeviceYHManager$SwcCallback$PowerChangeHandler;

    invoke-direct {v0, p1}, Lcom/hzbhd/midwareproxy/canbus/yh/DeviceYHManager$SwcCallback$PowerChangeHandler;-><init>(Lcom/hzbhd/midwareproxy/canbus/yh/DeviceYHManager$OnDeviceYHChangeListener;)V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/yh/DeviceYHManager$SwcCallback;->mSwcHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public notify([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/yh/DeviceYHManager$SwcCallback;->mSwcHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
