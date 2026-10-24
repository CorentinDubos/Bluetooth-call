.class final Lcom/hzbhd/midwareproxy/canbus/yh/DeviceYHManager$SwcCallback$PowerChangeHandler;
.super Landroid/os/Handler;
.source "DeviceYHManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/canbus/yh/DeviceYHManager$SwcCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PowerChangeHandler"
.end annotation


# instance fields
.field private mListener:Lcom/hzbhd/midwareproxy/canbus/yh/DeviceYHManager$OnDeviceYHChangeListener;


# direct methods
.method constructor <init>(Lcom/hzbhd/midwareproxy/canbus/yh/DeviceYHManager$OnDeviceYHChangeListener;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/yh/DeviceYHManager$SwcCallback$PowerChangeHandler;->mListener:Lcom/hzbhd/midwareproxy/canbus/yh/DeviceYHManager$OnDeviceYHChangeListener;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 70
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SettingManager"

    const-string v1, "handleMessage-->NOTIFYSWCSETTINGS"

    .line 72
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [B

    .line 74
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/yh/DeviceYHManager$SwcCallback$PowerChangeHandler;->mListener:Lcom/hzbhd/midwareproxy/canbus/yh/DeviceYHManager$OnDeviceYHChangeListener;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/canbus/yh/DeviceYHManager$OnDeviceYHChangeListener;->onDataChange([B)V

    :goto_0
    return-void
.end method
