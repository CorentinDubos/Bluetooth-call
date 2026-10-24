.class Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$5;
.super Ljava/lang/Thread;
.source "RadioRepCanbus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->reportCanbusInfo(ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

.field final synthetic val$bestuneHead:[B

.field final synthetic val$bestuneInfo:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;Ljava/lang/String;[B)V
    .locals 0

    .line 1171
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$5;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    iput-object p2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$5;->val$bestuneInfo:Ljava/lang/String;

    iput-object p3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$5;->val$bestuneHead:[B

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1174
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    const-wide/16 v0, 0x190

    .line 1176
    :try_start_0
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$5;->sleep(J)V

    .line 1177
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$5;->val$bestuneInfo:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->phoneNum2UnicodeLittleExtra([B)[B

    move-result-object v0

    .line 1178
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$5;->val$bestuneHead:[B

    invoke-static {v1, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v0

    .line 1179
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1181
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
