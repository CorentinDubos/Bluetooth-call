.class final Lcom/hzbhd/midwareproxy/setting/SettingManager$AutoTestCallback;
.super Lcom/hzbhd/midwareproxy/binder/callback/IAutoTestCallBackInterface$Stub;
.source "SettingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/setting/SettingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AutoTestCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/setting/SettingManager$AutoTestCallback$AutoTestChangeHandler;
    }
.end annotation


# instance fields
.field private mAutoTestHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/hzbhd/midwareproxy/setting/SettingManager$OnAutoTestChangeListener;)V
    .locals 1

    .line 2077
    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/binder/callback/IAutoTestCallBackInterface$Stub;-><init>()V

    .line 2078
    new-instance v0, Lcom/hzbhd/midwareproxy/setting/SettingManager$AutoTestCallback$AutoTestChangeHandler;

    invoke-direct {v0, p1}, Lcom/hzbhd/midwareproxy/setting/SettingManager$AutoTestCallback$AutoTestChangeHandler;-><init>(Lcom/hzbhd/midwareproxy/setting/SettingManager$OnAutoTestChangeListener;)V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/setting/SettingManager$AutoTestCallback;->mAutoTestHandler:Landroid/os/Handler;

    .line 2080
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->access$400()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2081
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->access$400()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->registerAutoTestCallBack(Lcom/hzbhd/midwareproxy/binder/callback/IAutoTestCallBackInterface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2083
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic access$200(Lcom/hzbhd/midwareproxy/setting/SettingManager$AutoTestCallback;)V
    .locals 0

    .line 2074
    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/setting/SettingManager$AutoTestCallback;->unRegisterSwcCallback()V

    return-void
.end method

.method private unRegisterSwcCallback()V
    .locals 1

    .line 2089
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->access$400()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2090
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->access$400()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->unRegisterAutoTestCallBack(Lcom/hzbhd/midwareproxy/binder/callback/IAutoTestCallBackInterface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2092
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public notifyAutoTest(I[I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2098
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/setting/SettingManager$AutoTestCallback;->mAutoTestHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    const/4 v2, -0x1

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
