.class Lcom/autochips/bluetooth/CachedBluetoothDevice$waitUuidThread;
.super Ljava/lang/Thread;
.source "CachedBluetoothDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/CachedBluetoothDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "waitUuidThread"
.end annotation


# instance fields
.field cnt:I

.field final synthetic this$0:Lcom/autochips/bluetooth/CachedBluetoothDevice;


# direct methods
.method private constructor <init>(Lcom/autochips/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    .line 421
    iput-object p1, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice$waitUuidThread;->this$0:Lcom/autochips/bluetooth/CachedBluetoothDevice;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    .line 422
    iput p1, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice$waitUuidThread;->cnt:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/autochips/bluetooth/CachedBluetoothDevice;Lcom/autochips/bluetooth/CachedBluetoothDevice$1;)V
    .locals 0

    .line 421
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/CachedBluetoothDevice$waitUuidThread;-><init>(Lcom/autochips/bluetooth/CachedBluetoothDevice;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "CachedBluetoothDevice"

    .line 428
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice$waitUuidThread;->this$0:Lcom/autochips/bluetooth/CachedBluetoothDevice;

    invoke-static {v1}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->access$100(Lcom/autochips/bluetooth/CachedBluetoothDevice;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    iget v1, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice$waitUuidThread;->cnt:I

    const/16 v3, 0xa

    if-lt v1, v3, :cond_1

    goto :goto_2

    .line 434
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->access$200()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "No profiles. Maybe we will connect later"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-wide/16 v3, 0x1f4

    .line 435
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 437
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 440
    :goto_1
    iget v1, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice$waitUuidThread;->cnt:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice$waitUuidThread;->cnt:I

    .line 441
    invoke-static {}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->access$200()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Count is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice$waitUuidThread;->cnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 444
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice$waitUuidThread;->this$0:Lcom/autochips/bluetooth/CachedBluetoothDevice;

    invoke-static {v0, v2}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->access$302(Lcom/autochips/bluetooth/CachedBluetoothDevice;Z)Z

    .line 445
    iget-object v0, p0, Lcom/autochips/bluetooth/CachedBluetoothDevice$waitUuidThread;->this$0:Lcom/autochips/bluetooth/CachedBluetoothDevice;

    invoke-static {v0}, Lcom/autochips/bluetooth/CachedBluetoothDevice;->access$400(Lcom/autochips/bluetooth/CachedBluetoothDevice;)V

    return-void
.end method
