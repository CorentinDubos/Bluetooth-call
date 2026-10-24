.class Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$6;
.super Ljava/lang/Thread;
.source "MusicRepCanbus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->reportID3InfoSimple([BBBBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;

.field final synthetic val$album:Ljava/lang/String;

.field final synthetic val$albumCmd:B

.field final synthetic val$artist:Ljava/lang/String;

.field final synthetic val$artistCmd:B

.field final synthetic val$charsetName:Ljava/lang/String;

.field final synthetic val$haed:[B

.field final synthetic val$isClean:Z

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$titleCmd:B


# direct methods
.method constructor <init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[BBLjava/lang/String;BB)V
    .locals 0

    .line 1313
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;

    iput-boolean p2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$6;->val$isClean:Z

    iput-object p3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$6;->val$title:Ljava/lang/String;

    iput-object p4, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$6;->val$album:Ljava/lang/String;

    iput-object p5, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$6;->val$artist:Ljava/lang/String;

    iput-object p6, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$6;->val$haed:[B

    iput-byte p7, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$6;->val$titleCmd:B

    iput-object p8, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$6;->val$charsetName:Ljava/lang/String;

    iput-byte p9, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$6;->val$albumCmd:B

    iput-byte p10, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$6;->val$artistCmd:B

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1316
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 1318
    :try_start_0
    iget-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$6;->val$isClean:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$6;->sleep(J)V

    .line 1320
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$6;->val$title:Ljava/lang/String;

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->access$000(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$6;->val$album:Ljava/lang/String;

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->access$100(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$6;->val$artist:Ljava/lang/String;

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->access$200(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1321
    :cond_1
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$6;->val$title:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->access$002(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;Ljava/lang/String;)Ljava/lang/String;

    .line 1322
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$6;->val$album:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->access$102(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;Ljava/lang/String;)Ljava/lang/String;

    .line 1323
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$6;->val$artist:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->access$202(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;Ljava/lang/String;)Ljava/lang/String;

    const-wide/16 v0, 0x64

    .line 1325
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$6;->sleep(J)V

    .line 1326
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;

    iget-object v3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$6;->val$haed:[B

    iget-byte v4, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$6;->val$titleCmd:B

    iget-object v5, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$6;->val$title:Ljava/lang/String;

    iget-object v6, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$6;->val$charsetName:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5, v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->access$300(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;[BBLjava/lang/String;Ljava/lang/String;)V

    .line 1328
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$6;->sleep(J)V

    .line 1329
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;

    iget-object v3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$6;->val$haed:[B

    iget-byte v4, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$6;->val$albumCmd:B

    iget-object v5, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$6;->val$album:Ljava/lang/String;

    iget-object v6, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$6;->val$charsetName:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5, v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->access$300(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;[BBLjava/lang/String;Ljava/lang/String;)V

    .line 1331
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$6;->sleep(J)V

    .line 1332
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$6;->val$haed:[B

    iget-byte v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$6;->val$artistCmd:B

    iget-object v3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$6;->val$artist:Ljava/lang/String;

    iget-object v4, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$6;->val$charsetName:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->access$300(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;[BBLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1335
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method
