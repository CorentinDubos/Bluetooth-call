.class Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$5;
.super Ljava/lang/Thread;
.source "MusicRepCanbus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->simplePSACleanID3Info(BBBB)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;

.field final synthetic val$albumCmd:B

.field final synthetic val$artistCmd:B

.field final synthetic val$id3Head:B

.field final synthetic val$titleCmd:B


# direct methods
.method constructor <init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;BBBB)V
    .locals 0

    .line 1284
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$5;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;

    iput-byte p2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$5;->val$id3Head:B

    iput-byte p3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$5;->val$titleCmd:B

    iput-byte p4, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$5;->val$albumCmd:B

    iput-byte p5, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$5;->val$artistCmd:B

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1287
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    const-wide/16 v0, 0x3e8

    .line 1289
    :try_start_0
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$5;->sleep(J)V

    const/4 v0, 0x3

    new-array v1, v0, [B

    const/16 v2, 0x16

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    .line 1290
    iget-byte v4, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$5;->val$id3Head:B

    const/4 v5, 0x1

    aput-byte v4, v1, v5

    iget-byte v4, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$5;->val$titleCmd:B

    const/4 v6, 0x2

    aput-byte v4, v1, v6

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    const-wide/16 v7, 0x64

    .line 1291
    invoke-static {v7, v8}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$5;->sleep(J)V

    new-array v1, v0, [B

    aput-byte v2, v1, v3

    .line 1292
    iget-byte v4, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$5;->val$id3Head:B

    aput-byte v4, v1, v5

    iget-byte v4, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$5;->val$albumCmd:B

    aput-byte v4, v1, v6

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    .line 1293
    invoke-static {v7, v8}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$5;->sleep(J)V

    new-array v0, v0, [B

    aput-byte v2, v0, v3

    .line 1294
    iget-byte v1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$5;->val$id3Head:B

    aput-byte v1, v0, v5

    iget-byte v1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$5;->val$artistCmd:B

    aput-byte v1, v0, v6

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    const-string v0, "lll"

    const-string/jumbo v1, "run: 1"

    .line 1295
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1297
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void
.end method
