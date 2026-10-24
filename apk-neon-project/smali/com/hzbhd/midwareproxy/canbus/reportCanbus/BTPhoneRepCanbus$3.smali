.class Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$3;
.super Ljava/util/TimerTask;
.source "BTPhoneRepCanbus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->sndVwMqbPhoneInfo([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$cmdHeads:[B

.field final synthetic val$phoneNum:[B


# direct methods
.method constructor <init>([B[B)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$3;->val$cmdHeads:[B

    iput-object p2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$3;->val$phoneNum:[B

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 250
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$3;->val$cmdHeads:[B

    iget-object v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$3;->val$phoneNum:[B

    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 252
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 254
    :goto_0
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$3;->cancel()Z

    const/4 v0, 0x0

    .line 255
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->access$202(Ljava/util/TimerTask;)Ljava/util/TimerTask;

    .line 256
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->access$302(Ljava/util/Timer;)Ljava/util/Timer;

    return-void
.end method
