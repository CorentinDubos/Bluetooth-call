.class Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$10;
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

    .line 664
    iput-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$10;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-direct {p0}, Lcom/autochips/bluetooth/hf/HfAtCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponseCode([Ljava/lang/Object;)V
    .locals 4

    .line 667
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ATCMD] +CIND  args ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$100(Ljava/lang/String;)V

    .line 669
    :cond_0
    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_e

    const/4 v0, 0x0

    aget-object v0, p1, v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_e

    .line 670
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ATCMD] +CINDreadhandle CallCIEVIndex= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$10;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-static {v2}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$1000(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "CallsetupCIEVIndex = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$10;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-static {v2}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$900(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$100(Ljava/lang/String;)V

    .line 671
    :cond_1
    array-length v0, p1

    iget-object v2, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$10;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-static {v2}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$1000(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)I

    move-result v2

    if-lt v0, v2, :cond_3

    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$10;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$1000(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)I

    move-result v0

    if-lez v0, :cond_3

    .line 672
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$10;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$1000(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)I

    move-result v0

    sub-int/2addr v0, v1

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 673
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$000()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ATCMD] +CIND call = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$100(Ljava/lang/String;)V

    .line 674
    :cond_2
    iget-object v2, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$10;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    sget v3, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mCallsetup:I

    invoke-static {v2, v0, v3}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$600(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;II)V

    .line 677
    :cond_3
    array-length v0, p1

    iget-object v2, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$10;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-static {v2}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$900(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)I

    move-result v2

    if-lt v0, v2, :cond_5

    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$10;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$900(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)I

    move-result v0

    if-lez v0, :cond_5

    .line 678
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$10;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$900(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)I

    move-result v0

    sub-int/2addr v0, v1

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 679
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$000()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ATCMD] +CIND callsetup = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$100(Ljava/lang/String;)V

    .line 680
    :cond_4
    iget-object v2, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$10;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    sget v3, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mCall:I

    invoke-static {v2, v3, v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$600(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;II)V

    .line 683
    :cond_5
    array-length v0, p1

    iget-object v2, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$10;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-static {v2}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$1300(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)I

    move-result v2

    const/16 v3, 0xff

    if-lt v0, v2, :cond_6

    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$10;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$1300(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)I

    move-result v0

    if-lez v0, :cond_6

    .line 684
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$10;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$1300(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)I

    move-result v2

    sub-int/2addr v2, v1

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v2}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$1402(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;I)I

    .line 685
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$000()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ATCMD] +CIND Signal = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$10;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-static {v2}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$1400(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$100(Ljava/lang/String;)V

    goto :goto_0

    .line 689
    :cond_6
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$10;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-static {v0, v3}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$1402(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;I)I

    .line 692
    :cond_7
    :goto_0
    array-length v0, p1

    iget-object v2, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$10;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-static {v2}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$1500(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)I

    move-result v2

    if-lt v0, v2, :cond_8

    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$10;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$1500(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)I

    move-result v0

    if-lez v0, :cond_8

    .line 693
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$10;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$1500(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)I

    move-result v2

    sub-int/2addr v2, v1

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v2}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$1602(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;I)I

    .line 694
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$000()Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ATCMD] +CIND Battchg = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$10;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-static {v2}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$1600(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$100(Ljava/lang/String;)V

    goto :goto_1

    .line 698
    :cond_8
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$10;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-static {v0, v3}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$1602(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;I)I

    .line 701
    :cond_9
    :goto_1
    array-length v0, p1

    iget-object v2, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$10;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-static {v2}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$1700(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)I

    move-result v2

    if-lt v0, v2, :cond_a

    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$10;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$1700(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)I

    move-result v0

    if-lez v0, :cond_a

    .line 702
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$10;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$1700(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)I

    move-result v2

    sub-int/2addr v2, v1

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v2}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$1802(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;I)I

    .line 703
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$000()Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ATCMD] +CIND Service = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$10;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-static {v2}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$1800(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$100(Ljava/lang/String;)V

    goto :goto_2

    .line 707
    :cond_a
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$10;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-static {v0, v3}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$1802(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;I)I

    .line 710
    :cond_b
    :goto_2
    array-length v0, p1

    iget-object v2, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$10;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-static {v2}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$1900(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)I

    move-result v2

    if-lt v0, v2, :cond_c

    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$10;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$1900(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)I

    move-result v0

    if-lez v0, :cond_c

    .line 711
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$10;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$1900(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)I

    move-result v2

    sub-int/2addr v2, v1

    aget-object p1, p1, v2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$2002(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;I)I

    .line 712
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$000()Z

    move-result p1

    if-eqz p1, :cond_d

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[ATCMD] +CIND Roam = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$10;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$2000(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$100(Ljava/lang/String;)V

    goto :goto_3

    .line 716
    :cond_c
    iget-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$10;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-static {p1, v3}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$2002(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;I)I

    .line 720
    :cond_d
    :goto_3
    iget-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$10;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-static {p1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$2100(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$10;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$1400(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)I

    move-result v0

    const-string v1, "com.autochips.bluetooth.hf.BluetoothHfAtHandler.extra.EXTRA_NEW_SIGNAL"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 721
    iget-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$10;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-static {p1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$2100(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$10;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$1600(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)I

    move-result v0

    const-string v1, "com.autochips.bluetooth.hf.BluetoothHfAtHandler.extra.EXTRA_NEW_BATTCHG"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 722
    iget-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$10;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-static {p1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$2100(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$10;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$1800(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)I

    move-result v0

    const-string v1, "com.autochips.bluetooth.hf.BluetoothHfAtHandler.extra.EXTRA_NEW_SERVICE"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 723
    iget-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$10;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-static {p1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$2100(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$10;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$2000(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)I

    move-result v0

    const-string v1, "com.autochips.bluetooth.hf.BluetoothHfAtHandler.extra.EXTRA_NEW_ROAM"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 724
    iget-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$10;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-static {p1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$400(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$10;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$2100(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_4

    .line 727
    :cond_e
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$10;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-static {v0, p1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$2200(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;[Ljava/lang/Object;)V

    :goto_4
    return-void
.end method
