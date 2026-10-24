.class Lcom/autochips/bluetooth/hid/BluetoothHidAdapter$2;
.super Ljava/lang/Thread;
.source "BluetoothHidAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->startHIDSendThread(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;Ljava/lang/String;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter$2;->this$0:Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 283
    invoke-static {}, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->access$000()Z

    move-result v0

    const-string v1, "BluetoothHidAdapter"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HID send Thread  starting. latency is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter$2;->this$0:Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;

    invoke-static {v2}, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->access$200(Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter$2;->this$0:Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->access$302(Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;Z)Z

    .line 285
    iget-object v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter$2;->this$0:Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;

    invoke-static {v0, v2}, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->access$402(Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;Z)Z

    .line 286
    iget-object v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter$2;->this$0:Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;

    invoke-static {v0, v2}, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->access$502(Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;Z)Z

    .line 287
    iget-object v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter$2;->this$0:Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->access$602(Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;J)J

    .line 288
    :catch_0
    :goto_0
    iget-object v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter$2;->this$0:Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;

    invoke-static {v0}, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->access$700(Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 290
    :try_start_0
    iget-object v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter$2;->this$0:Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;

    invoke-static {v0}, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->access$300(Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;)Z

    move-result v0

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eqz v0, :cond_3

    .line 291
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-object v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter$2;->this$0:Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;

    invoke-static {v0}, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->access$600(Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 292
    iget-object v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter$2;->this$0:Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;

    iget-object v8, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter$2;->this$0:Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;

    invoke-static {v8}, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->access$800(Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;)I

    move-result v8

    iget-object v9, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter$2;->this$0:Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;

    invoke-static {v9}, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->access$900(Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;)I

    move-result v9

    invoke-static {v0, v6, v7, v8, v9}, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->access$1000(Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;JII)D

    move-result-wide v6

    .line 293
    iget-object v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter$2;->this$0:Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;

    invoke-static {v0}, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->access$800(Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;)I

    move-result v0

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter$2;->this$0:Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;

    invoke-static {v0}, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->access$800(Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;)I

    move-result v0

    int-to-double v10, v0

    div-double/2addr v10, v6

    add-double/2addr v10, v8

    :goto_1
    double-to-int v0, v10

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter$2;->this$0:Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;

    invoke-static {v0}, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->access$800(Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;)I

    move-result v0

    int-to-double v10, v0

    div-double/2addr v10, v6

    sub-double/2addr v10, v8

    goto :goto_1

    .line 295
    :goto_2
    iget-object v10, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter$2;->this$0:Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;

    invoke-static {v10}, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->access$900(Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;)I

    move-result v10

    if-ltz v10, :cond_2

    iget-object v10, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter$2;->this$0:Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;

    invoke-static {v10}, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->access$900(Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;)I

    move-result v10

    int-to-double v10, v10

    div-double/2addr v10, v6

    add-double/2addr v10, v8

    :goto_3
    double-to-int v6, v10

    goto :goto_4

    :cond_2
    iget-object v10, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter$2;->this$0:Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;

    invoke-static {v10}, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->access$900(Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;)I

    move-result v10

    int-to-double v10, v10

    div-double/2addr v10, v6

    sub-double/2addr v10, v8

    goto :goto_3

    :goto_4
    const/4 v7, 0x6

    new-array v8, v7, [B

    aput-byte v4, v8, v2

    .line 300
    iget-object v9, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter$2;->this$0:Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;

    invoke-static {v9}, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->access$1100(Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;)B

    move-result v9

    aput-byte v9, v8, v4

    int-to-byte v9, v0

    aput-byte v9, v8, v5

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    aput-byte v0, v8, v3

    const/4 v0, 0x4

    int-to-byte v9, v6

    aput-byte v9, v8, v0

    const/4 v0, 0x5

    shr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    aput-byte v6, v8, v0

    .line 305
    iget-object v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter$2;->this$0:Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;

    invoke-static {v0}, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->access$100(Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;)Lcom/autochips/bluetooth/hid/IBluetoothHidDeviceUtility;

    move-result-object v0

    invoke-interface {v0, v8, v7}, Lcom/autochips/bluetooth/hid/IBluetoothHidDeviceUtility;->sendIntData([BI)Z

    .line 306
    iget-object v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter$2;->this$0:Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;

    invoke-static {v0, v2}, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->access$302(Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;Z)Z

    .line 307
    iget-object v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter$2;->this$0:Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v0, v6, v7}, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->access$602(Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;J)J

    .line 309
    :cond_3
    iget-object v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter$2;->this$0:Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;

    invoke-static {v0}, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->access$500(Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-array v0, v5, [B

    aput-byte v5, v0, v2

    .line 313
    iget-object v6, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter$2;->this$0:Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;

    invoke-static {v6}, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->access$1200(Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;)B

    move-result v6

    aput-byte v6, v0, v4

    .line 314
    iget-object v6, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter$2;->this$0:Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;

    invoke-static {v6}, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->access$100(Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;)Lcom/autochips/bluetooth/hid/IBluetoothHidDeviceUtility;

    move-result-object v6

    invoke-interface {v6, v0, v5}, Lcom/autochips/bluetooth/hid/IBluetoothHidDeviceUtility;->sendIntData([BI)Z

    aput-byte v2, v0, v4

    .line 316
    iget-object v6, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter$2;->this$0:Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;

    invoke-static {v6}, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->access$100(Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;)Lcom/autochips/bluetooth/hid/IBluetoothHidDeviceUtility;

    move-result-object v6

    invoke-interface {v6, v0, v5}, Lcom/autochips/bluetooth/hid/IBluetoothHidDeviceUtility;->sendIntData([BI)Z

    .line 317
    iget-object v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter$2;->this$0:Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;

    invoke-static {v0, v2}, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->access$302(Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;Z)Z

    .line 319
    :cond_4
    iget-object v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter$2;->this$0:Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;

    invoke-static {v0}, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->access$400(Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-array v0, v3, [B

    aput-byte v3, v0, v2

    .line 323
    iget-object v6, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter$2;->this$0:Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;

    invoke-static {v6}, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->access$1300(Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;)I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v0, v4

    .line 324
    iget-object v6, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter$2;->this$0:Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;

    invoke-static {v6}, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->access$1300(Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;)I

    move-result v6

    shr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 325
    iget-object v6, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter$2;->this$0:Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;

    invoke-static {v6}, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->access$100(Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;)Lcom/autochips/bluetooth/hid/IBluetoothHidDeviceUtility;

    move-result-object v6

    invoke-interface {v6, v0, v3}, Lcom/autochips/bluetooth/hid/IBluetoothHidDeviceUtility;->sendIntData([BI)Z

    aput-byte v2, v0, v4

    aput-byte v2, v0, v5

    .line 328
    iget-object v4, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter$2;->this$0:Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;

    invoke-static {v4}, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->access$100(Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;)Lcom/autochips/bluetooth/hid/IBluetoothHidDeviceUtility;

    move-result-object v4

    invoke-interface {v4, v0, v3}, Lcom/autochips/bluetooth/hid/IBluetoothHidDeviceUtility;->sendIntData([BI)Z

    .line 329
    iget-object v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter$2;->this$0:Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;

    invoke-static {v0, v2}, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->access$402(Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;Z)Z

    .line 331
    :cond_5
    iget-object v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter$2;->this$0:Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;

    invoke-static {v0}, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->access$200(Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;)I

    move-result v0

    int-to-long v3, v0

    invoke-static {v3, v4}, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter$2;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 335
    throw v0

    .line 338
    :cond_6
    invoke-static {}, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->access$000()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "HID send Thread finished"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method
