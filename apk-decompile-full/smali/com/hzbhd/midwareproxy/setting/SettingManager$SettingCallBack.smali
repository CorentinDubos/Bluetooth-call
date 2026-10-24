.class final Lcom/hzbhd/midwareproxy/setting/SettingManager$SettingCallBack;
.super Lcom/hzbhd/midwareproxy/binder/callback/ISettingCallBackInterface$Stub;
.source "SettingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/setting/SettingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SettingCallBack"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/setting/SettingManager$SettingCallBack$SettingsChangeHandler;
    }
.end annotation


# instance fields
.field private mSettingsHandler:Landroid/os/Handler;

.field private token:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hzbhd/midwareproxy/setting/SettingManager$OnSettingsChangeListener;)V
    .locals 1

    .line 1947
    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/binder/callback/ISettingCallBackInterface$Stub;-><init>()V

    .line 1949
    :try_start_0
    new-instance v0, Lcom/hzbhd/midwareproxy/setting/SettingManager$SettingCallBack$SettingsChangeHandler;

    invoke-direct {v0, p1}, Lcom/hzbhd/midwareproxy/setting/SettingManager$SettingCallBack$SettingsChangeHandler;-><init>(Lcom/hzbhd/midwareproxy/setting/SettingManager$OnSettingsChangeListener;)V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/setting/SettingManager$SettingCallBack;->mSettingsHandler:Landroid/os/Handler;

    .line 1950
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->access$400()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1951
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->access$400()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->registerCallBack(Lcom/hzbhd/midwareproxy/binder/callback/ISettingCallBackInterface;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/setting/SettingManager$SettingCallBack;->token:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1953
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/hzbhd/midwareproxy/setting/SettingManager$SettingCallBack;)Ljava/lang/String;
    .locals 0

    .line 1942
    iget-object p0, p0, Lcom/hzbhd/midwareproxy/setting/SettingManager$SettingCallBack;->token:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/hzbhd/midwareproxy/setting/SettingManager$SettingCallBack;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1942
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/setting/SettingManager$SettingCallBack;->token:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public notifyBlackOut(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1970
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/setting/SettingManager$SettingCallBack;->mSettingsHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1971
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyEQBalanceUI()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1966
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/setting/SettingManager$SettingCallBack;->mSettingsHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyEQSettingUI()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1962
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/setting/SettingManager$SettingCallBack;->mSettingsHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyEQTypeUI()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1958
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/setting/SettingManager$SettingCallBack;->mSettingsHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
