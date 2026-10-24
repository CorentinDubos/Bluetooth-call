.class final Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerManager$SwcCallback;
.super Lcom/hzbhd/midwareproxy/binder/callback/ISurgingPowerCallback$Stub;
.source "SmartPowerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SwcCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerManager$SwcCallback$PowerChangeHandler;
    }
.end annotation


# instance fields
.field private mSwcHandler:Landroid/os/Handler;

.field private mToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerManager$OnSmartPowerChangeListener;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/binder/callback/ISurgingPowerCallback$Stub;-><init>()V

    .line 56
    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerManager$SwcCallback$PowerChangeHandler;

    invoke-direct {v0, p1}, Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerManager$SwcCallback$PowerChangeHandler;-><init>(Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerManager$OnSmartPowerChangeListener;)V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerManager$SwcCallback;->mSwcHandler:Landroid/os/Handler;

    .line 58
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerManager;->access$000()Lcom/hzbhd/midwareproxy/binder/service/ISurgingPwerInterface;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 59
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerManager;->access$000()Lcom/hzbhd/midwareproxy/binder/service/ISurgingPwerInterface;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/hzbhd/midwareproxy/binder/service/ISurgingPwerInterface;->registerCallBack(Lcom/hzbhd/midwareproxy/binder/callback/ISurgingPowerCallback;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerManager$SwcCallback;->mToken:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 61
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic access$102(Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerManager$SwcCallback;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerManager$SwcCallback;->mToken:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public notifySurgingPower([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerManager$SwcCallback;->mSwcHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
