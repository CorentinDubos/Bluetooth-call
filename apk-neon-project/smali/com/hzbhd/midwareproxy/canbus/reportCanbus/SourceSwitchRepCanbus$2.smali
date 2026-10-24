.class Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus$2;
.super Ljava/util/TimerTask;
.source "SourceSwitchRepCanbus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus;->sndNoSrcMediaPerSecNew()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus;


# direct methods
.method constructor <init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus$2;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 76
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus$2;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus;->access$000(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/SourceSwitchRepCanbus;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 78
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method
