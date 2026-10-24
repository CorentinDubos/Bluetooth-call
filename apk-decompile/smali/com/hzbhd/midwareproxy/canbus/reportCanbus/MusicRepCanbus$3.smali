.class Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$3;
.super Ljava/lang/Thread;
.source "MusicRepCanbus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->reportCanbusInfo(BLandroid/content/Context;BBIBBBBBBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JBIZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;

.field final synthetic val$bestuneStr:Ljava/lang/String;

.field final synthetic val$bestune_text_head:[B


# direct methods
.method constructor <init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;Ljava/lang/String;[B)V
    .locals 0

    .line 1104
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$3;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;

    iput-object p2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$3;->val$bestuneStr:Ljava/lang/String;

    iput-object p3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$3;->val$bestune_text_head:[B

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1107
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    const-wide/16 v0, 0x32

    .line 1109
    :try_start_0
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$3;->sleep(J)V

    .line 1110
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$3;->val$bestuneStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->phoneNum2UnicodeLittleExtra([B)[B

    move-result-object v0

    .line 1111
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$3;->val$bestune_text_head:[B

    invoke-static {v1, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v0

    .line 1112
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1114
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
