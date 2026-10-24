.class Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$6;
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

    .line 568
    iput-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$6;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-direct {p0}, Lcom/autochips/bluetooth/hf/HfAtCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponseCode([Ljava/lang/Object;)V
    .locals 4

    .line 574
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$000()Z

    move-result v0

    const-string v1, "BluetoothHfAtHandler"

    if-eqz v0, :cond_0

    const-string v0, "[ATCMD] +BRSF "

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    :cond_0
    array-length v0, p1

    const/4 v2, 0x1

    if-lt v0, v2, :cond_3

    const/4 v0, 0x0

    .line 578
    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$1102(I)I

    .line 579
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$000()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mRemoteBrsf = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$1100()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    :cond_1
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$1100()I

    move-result p1

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_2

    .line 581
    iget-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$6;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-static {p1, v2}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$1202(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;Z)Z

    goto :goto_0

    .line 583
    :cond_2
    iget-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$6;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$1202(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;Z)Z

    goto :goto_0

    .line 586
    :cond_3
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$000()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "HF AG didn\'t sent BRSF assuming 0"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void
.end method
