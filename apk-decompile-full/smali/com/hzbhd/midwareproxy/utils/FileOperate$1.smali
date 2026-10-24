.class Lcom/hzbhd/midwareproxy/utils/FileOperate$1;
.super Ljava/lang/Object;
.source "FileOperate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/midwareproxy/utils/FileOperate;->loadfile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/midwareproxy/utils/FileOperate;

.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$fileName:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hzbhd/midwareproxy/utils/FileOperate;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 341
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/utils/FileOperate$1;->this$0:Lcom/hzbhd/midwareproxy/utils/FileOperate;

    iput-object p2, p0, Lcom/hzbhd/midwareproxy/utils/FileOperate$1;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/hzbhd/midwareproxy/utils/FileOperate$1;->val$ctx:Landroid/content/Context;

    iput-object p4, p0, Lcom/hzbhd/midwareproxy/utils/FileOperate$1;->val$fileName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 344
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/utils/FileOperate$1;->val$url:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 345
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/16 v1, 0x1770

    .line 346
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string v1, "GET"

    .line 347
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 348
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 349
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 351
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/utils/FileOperate$1;->val$ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/hzbhd/midwareproxy/utils/FileOperate$1;->val$fileName:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 353
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 357
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_0

    const/4 v4, 0x0

    .line 358
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 360
    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 361
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 363
    invoke-static {}, Lcom/hzbhd/midwareproxy/utils/FileOperate;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "could not download and save IMAGE file"

    invoke-static {v1, v2, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
