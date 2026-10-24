.class Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$7;
.super Landroid/os/Handler;
.source "SmsSyncManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$7;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 303
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$7;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MSG] handleMessage ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$1300(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;Ljava/lang/String;)V

    .line 304
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2712

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v0, v1, :cond_f

    const/16 v1, 0x2713

    const-string v7, "AT_Respond"

    if-eq v0, v1, :cond_d

    const/16 v1, 0x2af9

    const-string v8, "before ParseRespond"

    if-eq v0, v1, :cond_a

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    .line 372
    :pswitch_0
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$7;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pause download,index is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$7;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {v1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$900(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$1300(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;Ljava/lang/String;)V

    .line 373
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$7;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$400(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$500(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;I)V

    goto/16 :goto_4

    .line 447
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 448
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$7;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DUN] DUN receive respond: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$1300(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;Ljava/lang/String;)V

    .line 450
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$7;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$000(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)V

    .line 452
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$7;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$2000(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)I

    move-result v0

    if-lez v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$7;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$400(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$1000(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;I)V

    .line 454
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$7;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$900(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)I

    move-result v1

    sub-int/2addr v1, v6

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$1102(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;I)I

    goto :goto_0

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$7;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$900(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$1102(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;I)I

    .line 458
    :goto_0
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$7;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {v0, v8}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$1300(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;Ljava/lang/String;)V

    .line 459
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$7;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$2400(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)Lcom/autochips/bluetooth/util/PbSyncATParser;

    move-result-object v0

    iget-object v1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$7;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {v1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$1100(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/util/PbSyncATParser;->setCurIndex(I)V

    .line 460
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$7;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$2400(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)Lcom/autochips/bluetooth/util/PbSyncATParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/util/PbSyncATParser;->setRespondString(Ljava/lang/String;)V

    .line 461
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$7;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$2500(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)V

    goto/16 :goto_4

    .line 327
    :pswitch_2
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$7;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$400(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)I

    move-result v0

    if-ne v0, v4, :cond_1

    const-wide/16 v0, 0x1f4

    .line 329
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 332
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 336
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$7;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$1400(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)Z

    move-result v0

    const-string v1, "SmsSyncManagerService"

    if-eqz v0, :cond_2

    .line 337
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$7;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p1, v5}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$1802(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;I)I

    .line 338
    invoke-static {}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$100()Z

    move-result p1

    if-eqz p1, :cond_15

    const-string p1, "pause or download finish,no-need to switch with another profile"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 342
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 344
    invoke-static {}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$100()Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "disconnect profile "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$7;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$400(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " error"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_3
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$7;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$300(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 348
    invoke-static {}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$100()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "Echo not response,try again"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_4
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$7;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p1, v5}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$302(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;Z)Z

    .line 350
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$7;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$400(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$600(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;I)V

    goto/16 :goto_4

    .line 355
    :cond_5
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$7;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$408(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)I

    .line 356
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$7;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$400(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)I

    move-result p1

    if-le p1, v3, :cond_6

    .line 358
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$7;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p1, v6}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$1902(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;Z)Z

    .line 359
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$7;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p1, v5}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$1802(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;I)I

    .line 360
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.autochips.bluetooth.dundt.SmsSyncManagerService.action.not_support_download_sms"

    .line 361
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 362
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$7;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_4

    .line 364
    :cond_6
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$7;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p1, v6}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$902(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;I)I

    .line 365
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$7;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p1, v5}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$702(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;I)I

    .line 366
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$7;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p1, v5}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$2002(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;I)I

    .line 367
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$7;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$400(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$600(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;I)V

    goto/16 :goto_4

    .line 307
    :pswitch_3
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$7;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$1400(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 308
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$7;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$400(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$1000(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;I)V

    goto/16 :goto_4

    .line 312
    :cond_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 314
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$7;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$400(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)I

    move-result p1

    if-eq p1, v6, :cond_8

    .line 315
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$7;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p1, v2}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$1500(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;I)V

    .line 316
    :cond_8
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$7;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$400(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)I

    move-result v0

    invoke-static {p1, v0, v5}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$1600(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;IZ)V

    goto/16 :goto_4

    .line 319
    :cond_9
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$7;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connect "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$7;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {v1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$400(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " failed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$1700(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;Ljava/lang/String;)V

    .line 320
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$7;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$400(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$500(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;I)V

    goto/16 :goto_4

    .line 423
    :cond_a
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 424
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$7;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HFP] HFP receive respond:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$1300(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;Ljava/lang/String;)V

    .line 426
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$7;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$000(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)V

    .line 429
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$7;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$400(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)I

    move-result v0

    if-eq v0, v6, :cond_b

    goto/16 :goto_4

    .line 433
    :cond_b
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$7;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$2000(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)I

    move-result v0

    if-lez v0, :cond_c

    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$7;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$2600(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 434
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$7;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$400(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$1000(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;I)V

    .line 435
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$7;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$900(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)I

    move-result v1

    sub-int/2addr v1, v6

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$1102(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;I)I

    goto :goto_2

    .line 437
    :cond_c
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$7;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$900(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$1102(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;I)I

    .line 439
    :goto_2
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$7;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {v0, v8}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$1300(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;Ljava/lang/String;)V

    .line 440
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$7;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$2400(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)Lcom/autochips/bluetooth/util/PbSyncATParser;

    move-result-object v0

    iget-object v1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$7;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {v1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$1100(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/util/PbSyncATParser;->setCurIndex(I)V

    .line 441
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$7;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$2400(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)Lcom/autochips/bluetooth/util/PbSyncATParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/util/PbSyncATParser;->setRespondString(Ljava/lang/String;)V

    .line 442
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$7;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$2500(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)V

    goto/16 :goto_4

    .line 404
    :cond_d
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 405
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$7;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SPP] SPP recieve respond:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$1300(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$7;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$000(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)V

    .line 409
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$7;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$2000(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)I

    move-result v0

    if-lez v0, :cond_e

    .line 410
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$7;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$400(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$1000(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;I)V

    .line 411
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$7;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$900(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)I

    move-result v1

    sub-int/2addr v1, v6

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$1102(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;I)I

    goto :goto_3

    .line 413
    :cond_e
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$7;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$900(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$1102(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;I)I

    .line 416
    :goto_3
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$7;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$2400(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)Lcom/autochips/bluetooth/util/PbSyncATParser;

    move-result-object v0

    iget-object v1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$7;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {v1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$1100(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)I

    move-result v1

    sub-int/2addr v1, v6

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/util/PbSyncATParser;->setCurIndex(I)V

    .line 417
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$7;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$2400(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)Lcom/autochips/bluetooth/util/PbSyncATParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/util/PbSyncATParser;->setRespondString(Ljava/lang/String;)V

    .line 418
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$7;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$2500(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)V

    goto/16 :goto_4

    .line 377
    :cond_f
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$7;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MESSAGE_STATE_CHANGE: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$1300(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;Ljava/lang/String;)V

    .line 378
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_14

    if-eq p1, v6, :cond_13

    const/16 v0, 0x384

    if-eq p1, v4, :cond_12

    if-eq p1, v3, :cond_11

    if-eq p1, v2, :cond_10

    goto :goto_4

    .line 397
    :cond_10
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$7;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    const-string v0, "[SPP] SPP disconnected"

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$1300(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;Ljava/lang/String;)V

    goto :goto_4

    .line 393
    :cond_11
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$7;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    const-string v1, "[SPP] SPP connect failed"

    invoke-static {p1, v1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$1300(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;Ljava/lang/String;)V

    .line 394
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$7;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$2100(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;ILjava/lang/Object;)V

    goto :goto_4

    .line 380
    :cond_12
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$7;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    const-string v1, "[SPP] SPP connected"

    invoke-static {p1, v1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$1300(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;Ljava/lang/String;)V

    .line 381
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$7;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$2100(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;ILjava/lang/Object;)V

    goto :goto_4

    .line 384
    :cond_13
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$7;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    const-string v0, "[SPP] SPP connecting"

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$1300(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;Ljava/lang/String;)V

    goto :goto_4

    .line 387
    :cond_14
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$7;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p1, v5}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$2202(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;Z)Z

    .line 388
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$7;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$2300(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)Lcom/autochips/bluetooth/spp/SppService;

    move-result-object p1

    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$7;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$2200(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/autochips/bluetooth/spp/SppService;->setSyncObject(Z)V

    .line 389
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$7;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    const/16 v0, 0x385

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$2100(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;ILjava/lang/Object;)V

    .line 390
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$7;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    const-string v0, "[SPP] SPP state none"

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$1300(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;Ljava/lang/String;)V

    :cond_15
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x384
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
