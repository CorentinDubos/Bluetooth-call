.class Lcom/autochips/bluetooth/hf/BluetoothHfService$HfClientDeathHandler;
.super Ljava/lang/Object;
.source "BluetoothHfService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/hf/BluetoothHfService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HfClientDeathHandler"
.end annotation


# instance fields
.field private mCb:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/hf/BluetoothHfService;Landroid/os/IBinder;)V
    .locals 0

    .line 931
    iput-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$HfClientDeathHandler;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 932
    iput-object p2, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$HfClientDeathHandler;->mCb:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 936
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BluetoothHfService"

    const-string v1, "HfClientDeathHandler:binderDied"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$HfClientDeathHandler;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->access$1900(Lcom/autochips/bluetooth/hf/BluetoothHfService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 939
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$HfClientDeathHandler;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->requestCBMSCOEnable(Z)V

    .line 943
    :cond_1
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->IsHfRingTonePlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 944
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->HfStopRingTone()Z

    .line 946
    :cond_2
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$HfClientDeathHandler;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->access$700(Lcom/autochips/bluetooth/hf/BluetoothHfService;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$HfClientDeathHandler;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->access$2000(Lcom/autochips/bluetooth/hf/BluetoothHfService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 947
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$HfClientDeathHandler;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->access$2000(Lcom/autochips/bluetooth/hf/BluetoothHfService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->access$600(Lcom/autochips/bluetooth/hf/BluetoothHfService;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 1

    .line 952
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$HfClientDeathHandler;->mCb:Landroid/os/IBinder;

    return-object v0
.end method
