.class Lcom/autochips/bluetooth/hf/BluetoothHfUtility$2;
.super Ljava/util/TimerTask;
.source "BluetoothHfUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->scheduleGetCallList(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/hf/BluetoothHfUtility;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/hf/BluetoothHfUtility;)V
    .locals 0

    .line 341
    iput-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility$2;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfUtility;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 344
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->access$000()Z

    move-result v0

    const-string v1, "BluetoothHfUtility"

    if-eqz v0, :cond_0

    const-string v0, "TimerTask run: mTimerQueryCallingNumber"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility$2;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfUtility;

    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->access$400(Lcom/autochips/bluetooth/hf/BluetoothHfUtility;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 347
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility$2;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfUtility;

    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->access$500(Lcom/autochips/bluetooth/hf/BluetoothHfUtility;)Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility$2;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfUtility;

    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->access$500(Lcom/autochips/bluetooth/hf/BluetoothHfUtility;)Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->Bluetooth_Hf_QueryCalllist()V

    goto :goto_0

    :cond_1
    const-string v0, "---------hfAdapter is null------------"

    .line 348
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :goto_0
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility$2;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfUtility;

    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->access$400(Lcom/autochips/bluetooth/hf/BluetoothHfUtility;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 351
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility$2;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfUtility;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->access$402(Lcom/autochips/bluetooth/hf/BluetoothHfUtility;Ljava/util/Timer;)Ljava/util/Timer;

    return-void
.end method
