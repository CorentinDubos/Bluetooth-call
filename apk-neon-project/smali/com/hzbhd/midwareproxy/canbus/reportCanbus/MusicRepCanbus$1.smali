.class Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$1;
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

.field final synthetic val$isReportFromPlay:Z

.field final synthetic val$songAlbum:Ljava/lang/String;

.field final synthetic val$songArtist:Ljava/lang/String;

.field final synthetic val$songTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 468
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$1;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;

    iput-object p2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$1;->val$songTitle:Ljava/lang/String;

    iput-object p3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$1;->val$songAlbum:Ljava/lang/String;

    iput-object p4, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$1;->val$songArtist:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$1;->val$isReportFromPlay:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "UTF-8"

    .line 471
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    const/4 v1, 0x2

    new-array v2, v1, [B

    .line 473
    fill-array-data v2, :array_0

    .line 477
    :try_start_0
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$1;->val$songTitle:Ljava/lang/String;

    iget-object v4, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$1;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;

    invoke-static {v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->access$000(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$1;->val$songAlbum:Ljava/lang/String;

    iget-object v4, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$1;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;

    invoke-static {v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->access$100(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$1;->val$songArtist:Ljava/lang/String;

    iget-object v4, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$1;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;

    invoke-static {v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->access$200(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$1;->val$isReportFromPlay:Z

    if-eqz v3, :cond_1

    .line 478
    :cond_0
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$1;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;

    iget-object v4, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$1;->val$songTitle:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->access$002(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;Ljava/lang/String;)Ljava/lang/String;

    .line 479
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$1;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;

    iget-object v4, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$1;->val$songAlbum:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->access$102(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;Ljava/lang/String;)Ljava/lang/String;

    .line 480
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$1;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;

    iget-object v4, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$1;->val$songArtist:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->access$202(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;Ljava/lang/String;)Ljava/lang/String;

    const-wide/16 v3, 0x64

    .line 482
    invoke-static {v3, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$1;->sleep(J)V

    .line 484
    invoke-static {v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->addBytes([BB)[B

    move-result-object v1

    .line 485
    iget-object v5, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$1;->val$songTitle:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->exceptBOMHead([B)[B

    move-result-object v5

    .line 486
    invoke-static {v1, v5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v1

    .line 487
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    .line 489
    invoke-static {v3, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$1;->sleep(J)V

    const/4 v1, 0x3

    .line 491
    invoke-static {v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->addBytes([BB)[B

    move-result-object v1

    .line 492
    iget-object v5, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$1;->val$songAlbum:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->exceptBOMHead([B)[B

    move-result-object v5

    .line 493
    invoke-static {v1, v5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v1

    .line 494
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    .line 496
    invoke-static {v3, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$1;->sleep(J)V

    const/4 v1, 0x4

    .line 498
    invoke-static {v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->addBytes([BB)[B

    move-result-object v1

    .line 499
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$1;->val$songArtist:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->exceptBOMHead([B)[B

    move-result-object v0

    .line 500
    invoke-static {v1, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v0

    .line 501
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 504
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void

    :array_0
    .array-data 1
        0x16t
        -0x35t
    .end array-data
.end method
