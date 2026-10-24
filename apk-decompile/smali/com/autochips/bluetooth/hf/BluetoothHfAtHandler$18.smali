.class Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$18;
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

    .line 871
    iput-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$18;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-direct {p0}, Lcom/autochips/bluetooth/hf/HfAtCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponseCode([Ljava/lang/Object;)V
    .locals 2

    .line 874
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "[ATCMD] +VGS "

    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$100(Ljava/lang/String;)V

    .line 876
    :cond_0
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    aget-object v1, p1, v0

    instance-of v1, v1, Ljava/lang/Integer;

    if-nez v1, :cond_1

    goto :goto_0

    .line 879
    :cond_1
    iget-object v1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$18;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v1, p1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$3002(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;I)I

    .line 880
    iget-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$18;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-static {p1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$3100(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$18;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$3000(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)I

    move-result v0

    const-string v1, "com.autochips.bluetooth.hf.BluetoothHfAtHandler.extra.EXTRA_NEW_AG_VOLUME"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 881
    iget-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$18;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-static {p1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$400(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$18;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$3100(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method
