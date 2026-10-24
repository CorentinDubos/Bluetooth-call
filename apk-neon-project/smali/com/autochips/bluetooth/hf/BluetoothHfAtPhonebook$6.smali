.class Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook$6;
.super Lcom/autochips/bluetooth/hf/HfAtCommandHandler;
.source "BluetoothHfAtPhonebook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->initializeHfAtPhonebookParser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook$6;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;

    invoke-direct {p0}, Lcom/autochips/bluetooth/hf/HfAtCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponseCode([Ljava/lang/Object;)V
    .locals 2

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+MMGL:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->access$000([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 190
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[HF_SMS_CMD]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->access$200(Ljava/lang/String;)V

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook$6;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;

    invoke-static {v0, p1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->access$600(Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;Ljava/lang/String;)V

    return-void
.end method
