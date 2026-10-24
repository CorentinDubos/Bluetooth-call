.class Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$2;
.super Ljava/util/TimerTask;
.source "BTPhoneRepCanbus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->sndVwMqbPhoneStatus(ZZZB)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$status:B


# direct methods
.method constructor <init>(B)V
    .locals 0

    .line 224
    iput-byte p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$2;->val$status:B

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 227
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [B

    const/16 v2, 0x16

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    const/4 v2, 0x1

    const/16 v4, -0x3b

    aput-byte v4, v1, v2

    const/4 v2, 0x2

    aput-byte v3, v1, v2

    const/4 v2, 0x3

    iget-byte v3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$2;->val$status:B

    aput-byte v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 229
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 231
    :goto_0
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$2;->cancel()Z

    const/4 v0, 0x0

    .line 232
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->access$002(Ljava/util/TimerTask;)Ljava/util/TimerTask;

    .line 233
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->access$102(Ljava/util/Timer;)Ljava/util/Timer;

    return-void
.end method
