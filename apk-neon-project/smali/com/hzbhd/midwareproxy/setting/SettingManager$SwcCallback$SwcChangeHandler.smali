.class final Lcom/hzbhd/midwareproxy/setting/SettingManager$SwcCallback$SwcChangeHandler;
.super Landroid/os/Handler;
.source "SettingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/setting/SettingManager$SwcCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SwcChangeHandler"
.end annotation


# instance fields
.field private mListener:Lcom/hzbhd/midwareproxy/setting/SettingManager$OnSwcChangeListener;


# direct methods
.method constructor <init>(Lcom/hzbhd/midwareproxy/setting/SettingManager$OnSwcChangeListener;)V
    .locals 0

    .line 2045
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2046
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/setting/SettingManager$SwcCallback$SwcChangeHandler;->mListener:Lcom/hzbhd/midwareproxy/setting/SettingManager$OnSwcChangeListener;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 2051
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "SettingManager"

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "handleMessage-->NOTIFYSWCLONGKEYSETTINGS"

    .line 2064
    invoke-static {v1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2065
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [B

    .line 2066
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/setting/SettingManager$SwcCallback$SwcChangeHandler;->mListener:Lcom/hzbhd/midwareproxy/setting/SettingManager$OnSwcChangeListener;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/setting/SettingManager$OnSwcChangeListener;->onSwcSettingsLongKeyChange([B)V

    goto :goto_1

    .line 2058
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 2059
    iget p1, p1, Landroid/os/Message;->arg2:I

    const-string v3, "handleMessage-->NOTIFYSWCSAMPLE"

    .line 2060
    invoke-static {v1, v3}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2061
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/setting/SettingManager$SwcCallback$SwcChangeHandler;->mListener:Lcom/hzbhd/midwareproxy/setting/SettingManager$OnSwcChangeListener;

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1, v2, p1}, Lcom/hzbhd/midwareproxy/setting/SettingManager$OnSwcChangeListener;->onSWCSampleChange(ZI)V

    goto :goto_1

    :cond_3
    const-string v0, "handleMessage-->NOTIFYSWCSETTINGS"

    .line 2053
    invoke-static {v1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2054
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [B

    .line 2055
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/setting/SettingManager$SwcCallback$SwcChangeHandler;->mListener:Lcom/hzbhd/midwareproxy/setting/SettingManager$OnSwcChangeListener;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/setting/SettingManager$OnSwcChangeListener;->onSwcSettingsChange([B)V

    :goto_1
    return-void
.end method
