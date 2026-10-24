.class Lcom/autochips/bluetooth/hf/BluetoothHfService$1;
.super Ljava/lang/Thread;
.source "BluetoothHfService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/hf/BluetoothHfService;->startHfListenerThread()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/hf/BluetoothHfService;Ljava/lang/String;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$1;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 150
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->access$000()Z

    move-result v0

    const-string v1, "BluetoothHfService"

    if-eqz v0, :cond_0

    const-string v0, "Hf Listener Thread  starting"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$1;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->access$100(Lcom/autochips/bluetooth/hf/BluetoothHfService;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 152
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$1;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->access$200(Lcom/autochips/bluetooth/hf/BluetoothHfService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "HandsfreeSink Indication interrupted , exiting"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$1;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->access$102(Lcom/autochips/bluetooth/hf/BluetoothHfService;Z)Z

    .line 155
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$1;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 156
    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 157
    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "system total memory is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v2, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    const/16 v5, 0xa

    shr-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "k"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "system available memory is "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v2, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    shr-long v4, v6, v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->IsHfRingTonePlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 163
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->HfStopRingTone()Z

    .line 164
    :cond_2
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$1;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->access$300(Lcom/autochips/bluetooth/hf/BluetoothHfService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$1;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->access$300(Lcom/autochips/bluetooth/hf/BluetoothHfService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->reset()V

    goto/16 :goto_0

    .line 167
    :cond_3
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Hf Connect Thread finished"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method
