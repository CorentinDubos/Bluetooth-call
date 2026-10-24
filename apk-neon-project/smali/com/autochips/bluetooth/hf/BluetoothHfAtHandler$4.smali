.class Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$4;
.super Lcom/autochips/bluetooth/hf/HfAtCommandHandler;
.source "BluetoothHfAtHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->initializeHfAtParser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)V
    .locals 0

    .line 532
    iput-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$4;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-direct {p0}, Lcom/autochips/bluetooth/hf/HfAtCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponseCode()V
    .locals 3

    .line 535
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "[ATCMD] RING "

    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$100(Ljava/lang/String;)V

    .line 536
    :cond_0
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$500()Lcom/autochips/bluetooth/hf/BluetoothHfService;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$500()Lcom/autochips/bluetooth/hf/BluetoothHfService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->getConnectType()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 538
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->HSAtCmdAcceptIncommingCall()V

    .line 539
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$4;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$600(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;II)V

    goto :goto_0

    .line 540
    :cond_1
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$4;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$700(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 541
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$4;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$800(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 542
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$4;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$702(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;Z)Z

    :cond_2
    :goto_0
    return-void
.end method
