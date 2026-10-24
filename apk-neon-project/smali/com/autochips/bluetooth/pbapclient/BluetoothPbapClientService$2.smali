.class Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$2;
.super Landroid/os/Handler;
.source "BluetoothPbapClientService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$2;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 241
    iget-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$2;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MSG] handleMessage("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$000(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;Ljava/lang/String;)V

    .line 242
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e9

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_b

    const/16 v1, 0x2711

    if-eq v0, v1, :cond_9

    const/4 v1, 0x2

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 388
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$2;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    const-string v0, "Unsupported indication"

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$200(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 377
    :pswitch_0
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$2;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    const-string v0, "[PBAP] need PBAP_AUTH_CHALL_IND"

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$000(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;Ljava/lang/String;)V

    .line 378
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$2;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    invoke-static {p1, v3}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$1600(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;I)V

    goto/16 :goto_1

    .line 368
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    .line 370
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$2;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    const-string v0, "PBAP Abort OK"

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$000(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 372
    :cond_0
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$2;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    const-string v0, "PBAP Abort fail"

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$000(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 355
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$PulldataResult;

    .line 356
    iget p1, p1, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$PulldataResult;->cnf_code:I

    if-nez p1, :cond_1

    .line 358
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$2;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    const-string v0, "PBAP pull phonebook OK"

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$000(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;Ljava/lang/String;)V

    .line 359
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$2;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    invoke-static {p1, v3}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$1500(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;Z)V

    goto/16 :goto_1

    .line 362
    :cond_1
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$2;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    const-string v0, "PBAP pull phonebook fail"

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$200(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;Ljava/lang/String;)V

    .line 363
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$2;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    invoke-static {p1, v2}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$1500(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;Z)V

    goto/16 :goto_1

    .line 342
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_2

    .line 345
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$2;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    const-string v0, "PBAP pull vcardentry OK"

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$000(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;Ljava/lang/String;)V

    .line 346
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$2;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    invoke-static {p1, v3}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$1400(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;Z)V

    goto/16 :goto_1

    .line 349
    :cond_2
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$2;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    const-string v0, "PBAP pull vcardentry fail"

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$200(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;Ljava/lang/String;)V

    .line 350
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$2;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    invoke-static {p1, v2}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$1400(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;Z)V

    goto/16 :goto_1

    .line 320
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$PulldataResult;

    .line 321
    iget v0, p1, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$PulldataResult;->cnf_code:I

    if-nez v0, :cond_3

    .line 323
    iget-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$2;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    iget-short v1, p1, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$PulldataResult;->phonebookSize:S

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$1202(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;I)I

    .line 327
    iget-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$2;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PBAP pull vcard listing OK.size = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short p1, p1, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$PulldataResult;->phonebookSize:S

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$000(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;Ljava/lang/String;)V

    .line 328
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$2;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    invoke-static {p1}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$1200(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;)I

    move-result v0

    iget-object v1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$2;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    invoke-static {v1}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$1200(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;)I

    move-result v1

    invoke-static {p1, v0, v2, v1, v3}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$1300(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;IIIZ)V

    goto/16 :goto_1

    .line 336
    :cond_3
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$2;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    const-string v0, "pull vcard listing fail"

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$200(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;Ljava/lang/String;)V

    .line 337
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$2;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    invoke-static {p1, v2, v2, v2, v2}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$1300(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;IIIZ)V

    goto/16 :goto_1

    .line 294
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_6

    .line 296
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$2;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    iget-object p1, p1, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mClientPath:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;

    invoke-virtual {p1}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;->getCurIndex()I

    move-result p1

    iget-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$2;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    iget-object v0, v0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mClientPath:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;

    iget-object v1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$2;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    invoke-static {v1}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$700(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;->getPathLevel(Z)I

    move-result v0

    if-ge p1, v0, :cond_4

    .line 297
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$2;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    iget-object v0, p1, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mClientPath:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;

    iget-object v1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$2;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    iget-object v1, v1, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mClientPath:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;

    invoke-virtual {v1}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;->getCurIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;->getIndexPath(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->setPath(ILjava/lang/String;)Z

    .line 299
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$2;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    iget-object p1, p1, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mClientPath:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;

    invoke-virtual {p1}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;->increaseIndex()V

    goto/16 :goto_1

    .line 300
    :cond_4
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$2;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    iget-object p1, p1, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mClientPath:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;

    invoke-virtual {p1}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;->getCurIndex()I

    move-result p1

    iget-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$2;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    iget-object v0, v0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mClientPath:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;

    iget-object v1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$2;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    invoke-static {v1}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$700(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientPath;->getPathLevel(Z)I

    move-result v0

    if-ne p1, v0, :cond_d

    .line 302
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$2;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    const-string v0, "PBAP set path OK"

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$000(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;Ljava/lang/String;)V

    .line 303
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$2;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    invoke-static {p1}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$700(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 305
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$2;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "first index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$2;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    invoke-static {v1}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$800(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$000(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;Ljava/lang/String;)V

    .line 306
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$2;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    invoke-static {p1}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$900(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$2;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    invoke-static {v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$800(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;)I

    move-result v0

    sub-int/2addr v0, v3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    .line 307
    iget-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$2;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    invoke-static {v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$1000(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;)Ljava/lang/String;

    move-result-object v1

    const-wide/32 v3, 0x10000084

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->pullVcardEntry(Ljava/lang/String;Ljava/lang/String;JC)Z

    goto/16 :goto_1

    .line 309
    :cond_5
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$2;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    invoke-static {p1, v3}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$1100(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;Z)V

    goto/16 :goto_1

    .line 314
    :cond_6
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$2;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    const-string v0, "PBAP set path fail"

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$200(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;Ljava/lang/String;)V

    .line 315
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$2;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    invoke-static {p1, v2}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$1100(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;Z)V

    goto/16 :goto_1

    .line 286
    :pswitch_6
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$2;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    const-string v0, "pbap client disconnect indication"

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$000(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;Ljava/lang/String;)V

    .line 287
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$2;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    invoke-static {p1, v2}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$500(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;Z)V

    .line 289
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$2;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    invoke-static {p1}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$600(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;)V

    .line 290
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$2;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    invoke-static {p1, v1}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$300(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;I)V

    goto/16 :goto_1

    .line 271
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_7

    .line 273
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$2;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    invoke-static {p1, v3}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$500(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;Z)V

    .line 274
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$2;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    const-string v0, "pbap client disconnect succuss"

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$000(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;Ljava/lang/String;)V

    .line 275
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$2;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    invoke-static {p1, v1}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$300(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;I)V

    goto :goto_0

    .line 277
    :cond_7
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$2;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    invoke-static {p1, v3}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$500(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;Z)V

    .line 278
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$2;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    const-string v0, "pbap client disconnect failed"

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$000(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;Ljava/lang/String;)V

    .line 282
    :goto_0
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$2;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    invoke-static {p1}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$600(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;)V

    goto/16 :goto_1

    .line 257
    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_8

    .line 259
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$2;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    invoke-static {p1, v3}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$400(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;Z)V

    .line 260
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$2;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    const-string v0, "pbap client connect success"

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$000(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;Ljava/lang/String;)V

    .line 261
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$2;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    invoke-static {p1, v3}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$300(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;I)V

    goto :goto_1

    .line 263
    :cond_8
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$2;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    invoke-static {p1, v2}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$400(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;Z)V

    .line 264
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$2;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    const-string v0, "pbap client connect failed"

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$000(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;Ljava/lang/String;)V

    .line 266
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$2;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    invoke-static {p1, v1}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$300(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;I)V

    goto :goto_1

    .line 244
    :cond_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_a

    .line 246
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$2;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    const/16 v0, 0xb

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$300(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;I)V

    .line 247
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$2;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    const-string v0, "pbap enable() OK"

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$000(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;Ljava/lang/String;)V

    goto :goto_1

    .line 249
    :cond_a
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$2;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    const-string v0, "[ERR] Pbap Client enable failed"

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$200(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;Ljava/lang/String;)V

    .line 250
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$2;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    iput-object v2, p1, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 251
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$2;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    invoke-virtual {p1}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->stopSelf()V

    .line 252
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$2;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    const/16 v0, 0xe

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$300(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;I)V

    goto :goto_1

    .line 382
    :cond_b
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$2;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    invoke-static {p1}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$1700(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;)I

    move-result p1

    const/16 v0, 0xc

    invoke-static {v0, v3}, Lcom/autochips/bluetooth/util/NotificationFactory;->getProfileNotificationId(II)I

    move-result v0

    if-ne p1, v0, :cond_c

    .line 383
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$2;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    invoke-virtual {p1, v3, v2, v2}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->authChallRsp(ZLjava/lang/String;Ljava/lang/String;)Z

    .line 385
    :cond_c
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$2;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    invoke-static {p1}, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;->access$600(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;)V

    :cond_d
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2713
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
