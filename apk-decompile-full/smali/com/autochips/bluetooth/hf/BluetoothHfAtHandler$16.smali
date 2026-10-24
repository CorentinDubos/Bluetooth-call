.class Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$16;
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

    .line 821
    iput-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$16;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-direct {p0}, Lcom/autochips/bluetooth/hf/HfAtCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponseCode([Ljava/lang/Object;)V
    .locals 3

    .line 824
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "[ATCMD] +CLIP  args ="

    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$100(Ljava/lang/String;)V

    .line 825
    :cond_0
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_5

    .line 828
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$16;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$2500(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 835
    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 836
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ATCMD] +CLIP  phone number is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "format is"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$100(Ljava/lang/String;)V

    .line 840
    :cond_1
    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$2602(Ljava/lang/String;)Ljava/lang/String;

    .line 841
    iget-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$16;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-static {p1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$2700(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)Landroid/content/Intent;

    move-result-object p1

    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$2600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.autochips.bluetooth.hf.BluetoothHfAtHandler.extra.EXTRA_NEW_PHONE_NUMBER"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 842
    iget-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$16;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-static {p1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$400(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$16;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$2700(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 843
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$000()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "[ATCMD] +CLIP  update "

    invoke-static {p1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$100(Ljava/lang/String;)V

    :cond_2
    return-void

    .line 832
    :cond_3
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$000()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "invalid CLIP phone number"

    invoke-static {p1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$100(Ljava/lang/String;)V

    :cond_4
    return-void

    .line 846
    :cond_5
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$000()Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "invalid CLIP data"

    invoke-static {p1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$100(Ljava/lang/String;)V

    :cond_6
    return-void
.end method
