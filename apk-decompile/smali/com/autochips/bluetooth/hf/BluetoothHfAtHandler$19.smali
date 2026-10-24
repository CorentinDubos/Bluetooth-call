.class Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$19;
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

    .line 886
    iput-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$19;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-direct {p0}, Lcom/autochips/bluetooth/hf/HfAtCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponseCode([Ljava/lang/Object;)V
    .locals 2

    .line 889
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ATCMD] +CLCC  length = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$100(Ljava/lang/String;)V

    .line 890
    :cond_0
    array-length v0, p1

    const/4 v1, 0x7

    if-ge v0, v1, :cond_2

    .line 891
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$000()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "[ATCMD] +CLCC  invalid  "

    invoke-static {p1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$100(Ljava/lang/String;)V

    :cond_1
    return-void

    .line 894
    :cond_2
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$19;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$3202(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;I)I

    const/4 v0, 0x1

    .line 895
    aget-object v1, p1, v0

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 896
    iget-object v1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$19;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$3302(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;I)I

    :cond_3
    const/4 v0, 0x2

    .line 897
    aget-object v1, p1, v0

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 898
    iget-object v1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$19;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$3402(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;I)I

    :cond_4
    const/4 v0, 0x3

    .line 899
    aget-object v1, p1, v0

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_5

    .line 900
    iget-object v1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$19;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$3502(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;I)I

    :cond_5
    const/4 v0, 0x4

    .line 901
    aget-object v1, p1, v0

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_6

    .line 902
    iget-object v1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$19;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$3602(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;I)I

    .line 904
    :cond_6
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$19;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    const/4 v1, 0x5

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$2500(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$3702(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x6

    .line 905
    aget-object v1, p1, v0

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_7

    .line 906
    iget-object v1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$19;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v1, p1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$3802(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;I)I

    .line 908
    :cond_7
    iget-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$19;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-static {p1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$2700(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$19;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$3700(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.autochips.bluetooth.hf.BluetoothHfAtHandler.extra.EXTRA_NEW_PHONE_NUMBER"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 909
    iget-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$19;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-static {p1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$400(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$19;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$2700(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 910
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$000()Z

    move-result p1

    if-eqz p1, :cond_8

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[ATCMD] CLCC update "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$19;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$3200(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$19;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$3300(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$19;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$3400(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$19;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$3700(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$19;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$3800(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$100(Ljava/lang/String;)V

    :cond_8
    return-void
.end method
