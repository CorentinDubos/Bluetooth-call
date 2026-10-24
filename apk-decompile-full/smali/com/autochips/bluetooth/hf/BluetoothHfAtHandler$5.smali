.class Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$5;
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

    .line 549
    iput-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$5;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-direct {p0}, Lcom/autochips/bluetooth/hf/HfAtCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponseCode([Ljava/lang/Object;)V
    .locals 4

    .line 552
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$000()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ATCMD]+CIEV args ="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    aget-object v3, p1, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$5;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-static {v3}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$900(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$100(Ljava/lang/String;)V

    .line 553
    :cond_0
    array-length v0, p1

    if-le v0, v1, :cond_2

    aget-object v0, p1, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_2

    .line 555
    aget-object v0, p1, v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 556
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    .line 557
    aget-object v1, p1, v2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$5;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-static {v3}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$900(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)I

    move-result v3

    if-ne v1, v3, :cond_1

    .line 558
    iget-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$5;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    sget v1, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mCall:I

    invoke-static {p1, v1, v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$600(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;II)V

    goto :goto_0

    .line 559
    :cond_1
    aget-object p1, p1, v2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$5;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-static {v1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$1000(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)I

    move-result v1

    if-ne p1, v1, :cond_2

    .line 560
    iget-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$5;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    sget v1, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mCallsetup:I

    invoke-static {p1, v0, v1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$600(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;II)V

    :cond_2
    :goto_0
    return-void
.end method
