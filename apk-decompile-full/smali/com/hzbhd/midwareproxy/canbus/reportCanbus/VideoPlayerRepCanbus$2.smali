.class Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus$2;
.super Ljava/lang/Thread;
.source "VideoPlayerRepCanbus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus;->reportToCanBus(BLandroid/content/Context;BBIBBBLjava/lang/String;BBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IBZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus;

.field final synthetic val$bestuneData:[B

.field final synthetic val$bestuneHead:[B


# direct methods
.method constructor <init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus;[B[B)V
    .locals 0

    .line 938
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus$2;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus;

    iput-object p2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus$2;->val$bestuneHead:[B

    iput-object p3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus$2;->val$bestuneData:[B

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 941
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    const-wide/16 v0, 0x190

    .line 943
    :try_start_0
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus$2;->sleep(J)V

    .line 944
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus$2;->val$bestuneHead:[B

    iget-object v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus$2;->val$bestuneData:[B

    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 946
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
