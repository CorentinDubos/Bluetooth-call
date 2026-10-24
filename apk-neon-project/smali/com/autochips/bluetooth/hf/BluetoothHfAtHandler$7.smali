.class Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$7;
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

    .line 595
    iput-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$7;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-direct {p0}, Lcom/autochips/bluetooth/hf/HfAtCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponseCode([Ljava/lang/Object;)V
    .locals 4

    .line 601
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$000()Z

    move-result v0

    const-string v1, "BluetoothHfAtHandler"

    if-eqz v0, :cond_0

    const-string v0, "[ATCMD] +BSIR "

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :cond_0
    array-length v0, p1

    const/4 v2, 0x1

    if-lt v0, v2, :cond_3

    const/4 v0, 0x0

    aget-object v3, p1, v0

    instance-of v3, v3, Ljava/lang/Integer;

    if-eqz v3, :cond_3

    .line 605
    aget-object v3, p1, v0

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_1

    .line 606
    iget-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$7;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-static {p1, v2}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$1202(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;Z)Z

    goto :goto_0

    .line 607
    :cond_1
    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_2

    .line 608
    iget-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$7;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$1202(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;Z)Z

    .line 610
    :cond_2
    :goto_0
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$000()Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mInbandRingtoneOn = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$1100()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 612
    :cond_3
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$000()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "HF  +BSIR value is not valid"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-void
.end method
