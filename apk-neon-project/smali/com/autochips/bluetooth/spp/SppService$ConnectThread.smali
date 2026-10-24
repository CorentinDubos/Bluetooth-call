.class Lcom/autochips/bluetooth/spp/SppService$ConnectThread;
.super Ljava/lang/Thread;
.source "SppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/spp/SppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectThread"
.end annotation


# instance fields
.field private mSocketType:Ljava/lang/String;

.field private final mmDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mmSocket:Landroid/bluetooth/BluetoothSocket;

.field final synthetic this$0:Lcom/autochips/bluetooth/spp/SppService;


# direct methods
.method public constructor <init>(Lcom/autochips/bluetooth/spp/SppService;Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/autochips/bluetooth/spp/SppService$ConnectThread;->this$0:Lcom/autochips/bluetooth/spp/SppService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 261
    iput-object p2, p0, Lcom/autochips/bluetooth/spp/SppService$ConnectThread;->mmDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz p3, :cond_0

    const-string p1, "Secure"

    goto :goto_0

    :cond_0
    const-string p1, "Insecure"

    .line 263
    :goto_0
    iput-object p1, p0, Lcom/autochips/bluetooth/spp/SppService$ConnectThread;->mSocketType:Ljava/lang/String;

    if-eqz p3, :cond_1

    .line 269
    :try_start_0
    sget-object p1, Lcom/autochips/bluetooth/spp/SppService;->SPP_UUID:Ljava/util/UUID;

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object p1

    goto :goto_1

    .line 272
    :cond_1
    sget-object p1, Lcom/autochips/bluetooth/spp/SppService;->SPP_UUID:Ljava/util/UUID;

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothDevice;->createInsecureRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 276
    invoke-static {}, Lcom/autochips/bluetooth/spp/SppService;->access$000()Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Socket Type: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/autochips/bluetooth/spp/SppService$ConnectThread;->mSocketType:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "create() failed"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "SppService"

    invoke-static {p3, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    const/4 p1, 0x0

    .line 278
    :goto_1
    iput-object p1, p0, Lcom/autochips/bluetooth/spp/SppService$ConnectThread;->mmSocket:Landroid/bluetooth/BluetoothSocket;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .line 320
    :try_start_0
    iget-object v0, p0, Lcom/autochips/bluetooth/spp/SppService$ConnectThread;->mmSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 322
    invoke-static {}, Lcom/autochips/bluetooth/spp/SppService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close() of connect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/autochips/bluetooth/spp/SppService$ConnectThread;->mSocketType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " socket failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SppService"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public run()V
    .locals 5

    .line 282
    invoke-static {}, Lcom/autochips/bluetooth/spp/SppService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SppService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BEGIN mConnectThread SocketType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/autochips/bluetooth/spp/SppService$ConnectThread;->mSocketType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConnectThread"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/autochips/bluetooth/spp/SppService$ConnectThread;->mSocketType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/spp/SppService$ConnectThread;->setName(Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/autochips/bluetooth/spp/SppService$ConnectThread;->this$0:Lcom/autochips/bluetooth/spp/SppService;

    invoke-static {v0}, Lcom/autochips/bluetooth/spp/SppService;->access$100(Lcom/autochips/bluetooth/spp/SppService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    const/4 v0, 0x0

    .line 292
    :try_start_0
    iget-object v1, p0, Lcom/autochips/bluetooth/spp/SppService$ConnectThread;->mmSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    iget-object v1, p0, Lcom/autochips/bluetooth/spp/SppService$ConnectThread;->this$0:Lcom/autochips/bluetooth/spp/SppService;

    monitor-enter v1

    .line 311
    :try_start_1
    iget-object v2, p0, Lcom/autochips/bluetooth/spp/SppService$ConnectThread;->this$0:Lcom/autochips/bluetooth/spp/SppService;

    invoke-static {v2, v0}, Lcom/autochips/bluetooth/spp/SppService;->access$302(Lcom/autochips/bluetooth/spp/SppService;Lcom/autochips/bluetooth/spp/SppService$ConnectThread;)Lcom/autochips/bluetooth/spp/SppService$ConnectThread;

    .line 312
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 315
    iget-object v0, p0, Lcom/autochips/bluetooth/spp/SppService$ConnectThread;->this$0:Lcom/autochips/bluetooth/spp/SppService;

    iget-object v1, p0, Lcom/autochips/bluetooth/spp/SppService$ConnectThread;->mmSocket:Landroid/bluetooth/BluetoothSocket;

    iget-object v2, p0, Lcom/autochips/bluetooth/spp/SppService$ConnectThread;->mmDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v3, p0, Lcom/autochips/bluetooth/spp/SppService$ConnectThread;->mSocketType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/autochips/bluetooth/spp/SppService;->connected(Landroid/bluetooth/BluetoothSocket;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    .line 312
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 296
    :catch_0
    :try_start_3
    iget-object v1, p0, Lcom/autochips/bluetooth/spp/SppService$ConnectThread;->mmSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 298
    invoke-static {}, Lcom/autochips/bluetooth/spp/SppService;->access$000()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "SppService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unable to close() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/autochips/bluetooth/spp/SppService$ConnectThread;->mSocketType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " socket during connection failure"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 301
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/autochips/bluetooth/spp/SppService$ConnectThread;->this$0:Lcom/autochips/bluetooth/spp/SppService;

    invoke-static {v1}, Lcom/autochips/bluetooth/spp/SppService;->access$200(Lcom/autochips/bluetooth/spp/SppService;)V

    .line 303
    iget-object v1, p0, Lcom/autochips/bluetooth/spp/SppService$ConnectThread;->this$0:Lcom/autochips/bluetooth/spp/SppService;

    monitor-enter v1

    .line 304
    :try_start_4
    iget-object v2, p0, Lcom/autochips/bluetooth/spp/SppService$ConnectThread;->this$0:Lcom/autochips/bluetooth/spp/SppService;

    invoke-static {v2, v0}, Lcom/autochips/bluetooth/spp/SppService;->access$302(Lcom/autochips/bluetooth/spp/SppService;Lcom/autochips/bluetooth/spp/SppService$ConnectThread;)Lcom/autochips/bluetooth/spp/SppService$ConnectThread;

    .line 305
    monitor-exit v1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method
