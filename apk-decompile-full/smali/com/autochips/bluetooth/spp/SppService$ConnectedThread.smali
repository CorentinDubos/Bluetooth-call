.class Lcom/autochips/bluetooth/spp/SppService$ConnectedThread;
.super Ljava/lang/Thread;
.source "SppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/spp/SppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectedThread"
.end annotation


# instance fields
.field volatile bCloseSocket:Z

.field private final mmInStream:Ljava/io/InputStream;

.field private final mmOutStream:Ljava/io/OutputStream;

.field private final mmSocket:Landroid/bluetooth/BluetoothSocket;

.field final synthetic this$0:Lcom/autochips/bluetooth/spp/SppService;


# direct methods
.method public constructor <init>(Lcom/autochips/bluetooth/spp/SppService;Landroid/bluetooth/BluetoothSocket;Ljava/lang/String;)V
    .locals 3

    .line 337
    iput-object p1, p0, Lcom/autochips/bluetooth/spp/SppService$ConnectedThread;->this$0:Lcom/autochips/bluetooth/spp/SppService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    .line 335
    iput-boolean p1, p0, Lcom/autochips/bluetooth/spp/SppService$ConnectedThread;->bCloseSocket:Z

    .line 338
    invoke-static {}, Lcom/autochips/bluetooth/spp/SppService;->access$000()Z

    move-result v0

    const-string v1, "SppService"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create ConnectedThread: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_0
    iput-object p2, p0, Lcom/autochips/bluetooth/spp/SppService$ConnectedThread;->mmSocket:Landroid/bluetooth/BluetoothSocket;

    .line 342
    iput-boolean p1, p0, Lcom/autochips/bluetooth/spp/SppService$ConnectedThread;->bCloseSocket:Z

    const/4 p1, 0x0

    .line 346
    :try_start_0
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object p3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 347
    :try_start_1
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    move-object p3, p1

    .line 349
    :goto_0
    invoke-static {}, Lcom/autochips/bluetooth/spp/SppService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "temp sockets not created"

    invoke-static {v1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 352
    :cond_1
    :goto_1
    iput-object p3, p0, Lcom/autochips/bluetooth/spp/SppService$ConnectedThread;->mmInStream:Ljava/io/InputStream;

    .line 353
    iput-object p1, p0, Lcom/autochips/bluetooth/spp/SppService$ConnectedThread;->mmOutStream:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    const/4 v0, 0x1

    .line 456
    :try_start_0
    iput-boolean v0, p0, Lcom/autochips/bluetooth/spp/SppService$ConnectedThread;->bCloseSocket:Z

    .line 457
    iget-object v0, p0, Lcom/autochips/bluetooth/spp/SppService$ConnectedThread;->mmSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 460
    invoke-static {}, Lcom/autochips/bluetooth/spp/SppService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SppService"

    const-string v2, "close() of connect socket failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public run()V
    .locals 10

    .line 357
    invoke-static {}, Lcom/autochips/bluetooth/spp/SppService;->access$000()Z

    move-result v0

    const-string v1, "SppService"

    if-eqz v0, :cond_0

    const-string v0, "BEGIN mConnectedThread"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    const/16 v2, 0x400

    new-array v2, v2, [B

    const-string v3, "OK\r\n"

    const-string v4, "ERROR\r\n"

    const-string v5, "CMS ERROR"

    .line 370
    :cond_1
    :goto_0
    iget-boolean v6, p0, Lcom/autochips/bluetooth/spp/SppService$ConnectedThread;->bCloseSocket:Z

    if-eqz v6, :cond_2

    return-void

    .line 376
    :cond_2
    :try_start_0
    iget-object v6, p0, Lcom/autochips/bluetooth/spp/SppService$ConnectedThread;->mmInStream:Ljava/io/InputStream;

    invoke-virtual {v6, v2}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .line 377
    invoke-static {}, Lcom/autochips/bluetooth/spp/SppService;->access$000()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "read:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v2, v8, v6}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_3
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v2, v8, v6}, Ljava/lang/String;-><init>([BII)V

    .line 379
    iget-object v6, p0, Lcom/autochips/bluetooth/spp/SppService$ConnectedThread;->this$0:Lcom/autochips/bluetooth/spp/SppService;

    invoke-static {v6}, Lcom/autochips/bluetooth/spp/SppService;->access$400(Lcom/autochips/bluetooth/spp/SppService;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 381
    iget-object v0, p0, Lcom/autochips/bluetooth/spp/SppService$ConnectedThread;->this$0:Lcom/autochips/bluetooth/spp/SppService;

    invoke-static {v0, v8}, Lcom/autochips/bluetooth/spp/SppService;->access$402(Lcom/autochips/bluetooth/spp/SppService;Z)Z

    move-object v0, v7

    goto :goto_1

    .line 383
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 396
    :goto_1
    iget-object v6, p0, Lcom/autochips/bluetooth/spp/SppService$ConnectedThread;->this$0:Lcom/autochips/bluetooth/spp/SppService;

    invoke-static {v6}, Lcom/autochips/bluetooth/spp/SppService;->access$500(Lcom/autochips/bluetooth/spp/SppService;)Z

    move-result v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v8, 0x2711

    const-string v9, "AT_Respond"

    if-nez v6, :cond_7

    .line 397
    :try_start_1
    invoke-virtual {v7, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_5

    invoke-virtual {v7, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_5

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_5

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_5

    invoke-virtual {v7, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_5

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_1

    .line 402
    :cond_5
    iget-object v6, p0, Lcom/autochips/bluetooth/spp/SppService$ConnectedThread;->this$0:Lcom/autochips/bluetooth/spp/SppService;

    invoke-static {v6}, Lcom/autochips/bluetooth/spp/SppService;->access$600(Lcom/autochips/bluetooth/spp/SppService;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 403
    iget-object v6, p0, Lcom/autochips/bluetooth/spp/SppService$ConnectedThread;->this$0:Lcom/autochips/bluetooth/spp/SppService;

    invoke-static {v6}, Lcom/autochips/bluetooth/spp/SppService;->access$700(Lcom/autochips/bluetooth/spp/SppService;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 404
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 405
    invoke-virtual {v7, v9, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    invoke-virtual {v6, v7}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 407
    iget-object v7, p0, Lcom/autochips/bluetooth/spp/SppService$ConnectedThread;->this$0:Lcom/autochips/bluetooth/spp/SppService;

    invoke-static {v7}, Lcom/autochips/bluetooth/spp/SppService;->access$700(Lcom/autochips/bluetooth/spp/SppService;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 409
    :cond_6
    iget-object v6, p0, Lcom/autochips/bluetooth/spp/SppService$ConnectedThread;->this$0:Lcom/autochips/bluetooth/spp/SppService;

    invoke-static {v6}, Lcom/autochips/bluetooth/spp/SppService;->access$800(Lcom/autochips/bluetooth/spp/SppService;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x2713

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 410
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 411
    invoke-virtual {v7, v9, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    invoke-virtual {v6, v7}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 413
    iget-object v7, p0, Lcom/autochips/bluetooth/spp/SppService$ConnectedThread;->this$0:Lcom/autochips/bluetooth/spp/SppService;

    invoke-static {v7}, Lcom/autochips/bluetooth/spp/SppService;->access$800(Lcom/autochips/bluetooth/spp/SppService;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 417
    :cond_7
    iget-object v6, p0, Lcom/autochips/bluetooth/spp/SppService$ConnectedThread;->this$0:Lcom/autochips/bluetooth/spp/SppService;

    invoke-static {v6}, Lcom/autochips/bluetooth/spp/SppService;->access$800(Lcom/autochips/bluetooth/spp/SppService;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 418
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 419
    invoke-virtual {v8, v9, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    invoke-virtual {v6, v8}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 421
    iget-object v7, p0, Lcom/autochips/bluetooth/spp/SppService$ConnectedThread;->this$0:Lcom/autochips/bluetooth/spp/SppService;

    invoke-static {v7}, Lcom/autochips/bluetooth/spp/SppService;->access$700(Lcom/autochips/bluetooth/spp/SppService;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 425
    iget-boolean v2, p0, Lcom/autochips/bluetooth/spp/SppService$ConnectedThread;->bCloseSocket:Z

    if-eqz v2, :cond_8

    .line 426
    invoke-static {}, Lcom/autochips/bluetooth/spp/SppService;->access$000()Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "[SPP]disconnected success"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 428
    :cond_8
    invoke-static {}, Lcom/autochips/bluetooth/spp/SppService;->access$000()Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "[SPP]disconnected by phone"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 429
    :cond_9
    iget-object v0, p0, Lcom/autochips/bluetooth/spp/SppService$ConnectedThread;->this$0:Lcom/autochips/bluetooth/spp/SppService;

    invoke-static {v0}, Lcom/autochips/bluetooth/spp/SppService;->access$900(Lcom/autochips/bluetooth/spp/SppService;)V

    :cond_a
    :goto_2
    return-void
.end method

.method public write([B)V
    .locals 4

    const-string v0, "SppService"

    .line 443
    :try_start_0
    iget-object v1, p0, Lcom/autochips/bluetooth/spp/SppService$ConnectedThread;->this$0:Lcom/autochips/bluetooth/spp/SppService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/autochips/bluetooth/spp/SppService;->access$402(Lcom/autochips/bluetooth/spp/SppService;Z)Z

    .line 444
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    .line 445
    invoke-static {}, Lcom/autochips/bluetooth/spp/SppService;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "send AT Command:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_0
    iget-object v1, p0, Lcom/autochips/bluetooth/spp/SppService$ConnectedThread;->mmOutStream:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 449
    invoke-static {}, Lcom/autochips/bluetooth/spp/SppService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Exception during write"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 450
    :cond_1
    iget-object p1, p0, Lcom/autochips/bluetooth/spp/SppService$ConnectedThread;->this$0:Lcom/autochips/bluetooth/spp/SppService;

    invoke-static {p1}, Lcom/autochips/bluetooth/spp/SppService;->access$900(Lcom/autochips/bluetooth/spp/SppService;)V

    :goto_0
    return-void
.end method
