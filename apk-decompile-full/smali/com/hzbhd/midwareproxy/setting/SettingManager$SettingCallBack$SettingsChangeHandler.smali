.class final Lcom/hzbhd/midwareproxy/setting/SettingManager$SettingCallBack$SettingsChangeHandler;
.super Landroid/os/Handler;
.source "SettingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/setting/SettingManager$SettingCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SettingsChangeHandler"
.end annotation


# instance fields
.field private mListener:Lcom/hzbhd/midwareproxy/setting/SettingManager$OnSettingsChangeListener;


# direct methods
.method public constructor <init>(Lcom/hzbhd/midwareproxy/setting/SettingManager$OnSettingsChangeListener;)V
    .locals 0

    .line 1977
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1978
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/setting/SettingManager$SettingCallBack$SettingsChangeHandler;->mListener:Lcom/hzbhd/midwareproxy/setting/SettingManager$OnSettingsChangeListener;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1982
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1993
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1994
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/setting/SettingManager$SettingCallBack$SettingsChangeHandler;->mListener:Lcom/hzbhd/midwareproxy/setting/SettingManager$OnSettingsChangeListener;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/setting/SettingManager$OnSettingsChangeListener;->onBlackOutChange(I)V

    goto :goto_0

    .line 1990
    :cond_1
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/setting/SettingManager$SettingCallBack$SettingsChangeHandler;->mListener:Lcom/hzbhd/midwareproxy/setting/SettingManager$OnSettingsChangeListener;

    invoke-interface {p1}, Lcom/hzbhd/midwareproxy/setting/SettingManager$OnSettingsChangeListener;->onEQBalanceChange()V

    goto :goto_0

    .line 1987
    :cond_2
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/setting/SettingManager$SettingCallBack$SettingsChangeHandler;->mListener:Lcom/hzbhd/midwareproxy/setting/SettingManager$OnSettingsChangeListener;

    invoke-interface {p1}, Lcom/hzbhd/midwareproxy/setting/SettingManager$OnSettingsChangeListener;->onSettingsChange()V

    goto :goto_0

    .line 1984
    :cond_3
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/setting/SettingManager$SettingCallBack$SettingsChangeHandler;->mListener:Lcom/hzbhd/midwareproxy/setting/SettingManager$OnSettingsChangeListener;

    invoke-interface {p1}, Lcom/hzbhd/midwareproxy/setting/SettingManager$OnSettingsChangeListener;->onEQTypeChange()V

    :goto_0
    return-void
.end method
