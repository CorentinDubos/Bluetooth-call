.class final Lcom/hzbhd/midwareproxy/setting/SettingManager$SwcCallback;
.super Lcom/hzbhd/midwareproxy/binder/callback/ISWCCallBackInterface$Stub;
.source "SettingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/setting/SettingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SwcCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/setting/SettingManager$SwcCallback$SwcChangeHandler;
    }
.end annotation


# instance fields
.field private mSwcHandler:Landroid/os/Handler;

.field private mToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hzbhd/midwareproxy/setting/SettingManager$OnSwcChangeListener;)V
    .locals 1

    .line 2005
    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/binder/callback/ISWCCallBackInterface$Stub;-><init>()V

    .line 2006
    new-instance v0, Lcom/hzbhd/midwareproxy/setting/SettingManager$SwcCallback$SwcChangeHandler;

    invoke-direct {v0, p1}, Lcom/hzbhd/midwareproxy/setting/SettingManager$SwcCallback$SwcChangeHandler;-><init>(Lcom/hzbhd/midwareproxy/setting/SettingManager$OnSwcChangeListener;)V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/setting/SettingManager$SwcCallback;->mSwcHandler:Landroid/os/Handler;

    .line 2008
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->access$400()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2009
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->access$400()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->registerSWCCallBack(Lcom/hzbhd/midwareproxy/binder/callback/ISWCCallBackInterface;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/setting/SettingManager$SwcCallback;->mToken:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2011
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic access$100(Lcom/hzbhd/midwareproxy/setting/SettingManager$SwcCallback;)V
    .locals 0

    .line 2001
    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/setting/SettingManager$SwcCallback;->unRegisterSwcCallback()V

    return-void
.end method

.method static synthetic access$302(Lcom/hzbhd/midwareproxy/setting/SettingManager$SwcCallback;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2001
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/setting/SettingManager$SwcCallback;->mToken:Ljava/lang/String;

    return-object p1
.end method

.method private unRegisterSwcCallback()V
    .locals 2

    .line 2017
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->access$400()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hzbhd/midwareproxy/setting/SettingManager$SwcCallback;->mToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2018
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->access$400()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/setting/SettingManager$SwcCallback;->mToken:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->unRegisterSWCCallBack(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2020
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public notifySWCSample(ZI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2038
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/setting/SettingManager$SwcCallback;->mSwcHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 2039
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifySwcLongKeySettings([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2032
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/setting/SettingManager$SwcCallback;->mSwcHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2033
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifySwcSettings([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2026
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/setting/SettingManager$SwcCallback;->mSwcHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2027
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
