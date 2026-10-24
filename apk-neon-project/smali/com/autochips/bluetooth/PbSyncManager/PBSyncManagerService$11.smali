.class Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;
.super Lcom/autochips/bluetooth/PbSyncManager/IPBSyncManager$Stub;
.source "PBSyncManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)V
    .locals 0

    .line 2445
    iput-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-direct {p0}, Lcom/autochips/bluetooth/PbSyncManager/IPBSyncManager$Stub;-><init>()V

    return-void
.end method

.method private readPhonebookandCallhisotyCountfromDatebase()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    .line 2657
    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1700(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)[I

    move-result-object v1

    aget v1, v1, v0

    if-nez v1, :cond_0

    .line 2658
    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1700(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1600(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Lcom/autochips/bluetooth/util/BTDBAdapter;

    move-result-object v2

    const/4 v3, 0x1

    shl-int/2addr v3, v0

    invoke-virtual {v2, v3}, Lcom/autochips/bluetooth/util/BTDBAdapter;->getCount(I)I

    move-result v2

    aput v2, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public AddCall(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2606
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PBSync]AddCall("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$300(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;Ljava/lang/String;)V

    .line 2608
    invoke-direct {p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;->readPhonebookandCallhisotyCountfromDatebase()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 2611
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1600(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Lcom/autochips/bluetooth/util/BTDBAdapter;

    move-result-object p1

    const/16 v2, 0x100

    invoke-virtual {p1, v2}, Lcom/autochips/bluetooth/util/BTDBAdapter;->updateOrderNumber(I)V

    .line 2612
    new-instance p1, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;

    invoke-direct {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;-><init>()V

    .line 2613
    invoke-virtual {p1, v2}, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;->setType(I)V

    .line 2614
    invoke-virtual {p1, p2}, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;->setName(Ljava/lang/String;)V

    .line 2615
    invoke-virtual {p1, p3}, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;->setNumber(Ljava/lang/String;)V

    .line 2616
    invoke-virtual {p1, p4}, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;->setCalltime(Ljava/lang/String;)V

    .line 2617
    iget-object p2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1600(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Lcom/autochips/bluetooth/util/BTDBAdapter;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcom/autochips/bluetooth/util/BTDBAdapter;->insertOneRecord(Lcom/autochips/bluetooth/PbSyncManager/PBRecord;I)J

    .line 2618
    iget-object p2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1700(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)[I

    move-result-object p2

    const/16 p3, 0x8

    aget p4, p2, p3

    add-int/2addr p4, v1

    aput p4, p2, p3

    .line 2620
    iget-object p2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-virtual {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$300(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    if-ne v1, p1, :cond_1

    .line 2622
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1600(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Lcom/autochips/bluetooth/util/BTDBAdapter;

    move-result-object p1

    const/16 v2, 0x40

    invoke-virtual {p1, v2}, Lcom/autochips/bluetooth/util/BTDBAdapter;->updateOrderNumber(I)V

    .line 2623
    new-instance p1, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;

    invoke-direct {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;-><init>()V

    .line 2624
    invoke-virtual {p1, v2}, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;->setType(I)V

    .line 2625
    invoke-virtual {p1, p2}, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;->setName(Ljava/lang/String;)V

    .line 2626
    invoke-virtual {p1, p3}, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;->setNumber(Ljava/lang/String;)V

    .line 2627
    invoke-virtual {p1, p4}, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;->setCalltime(Ljava/lang/String;)V

    .line 2628
    iget-object p2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1600(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Lcom/autochips/bluetooth/util/BTDBAdapter;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcom/autochips/bluetooth/util/BTDBAdapter;->insertOneRecord(Lcom/autochips/bluetooth/PbSyncManager/PBRecord;I)J

    .line 2629
    iget-object p2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1700(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)[I

    move-result-object p2

    const/4 p3, 0x6

    aget p4, p2, p3

    add-int/2addr p4, v1

    aput p4, p2, p3

    .line 2631
    iget-object p2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-virtual {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$300(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne v2, p1, :cond_2

    .line 2633
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1600(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Lcom/autochips/bluetooth/util/BTDBAdapter;

    move-result-object p1

    const/16 v2, 0x400

    invoke-virtual {p1, v2}, Lcom/autochips/bluetooth/util/BTDBAdapter;->updateOrderNumber(I)V

    .line 2634
    new-instance p1, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;

    invoke-direct {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;-><init>()V

    .line 2635
    invoke-virtual {p1, v2}, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;->setType(I)V

    .line 2636
    invoke-virtual {p1, p2}, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;->setName(Ljava/lang/String;)V

    .line 2637
    invoke-virtual {p1, p3}, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;->setNumber(Ljava/lang/String;)V

    .line 2638
    invoke-virtual {p1, p4}, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;->setCalltime(Ljava/lang/String;)V

    .line 2639
    iget-object p2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1600(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Lcom/autochips/bluetooth/util/BTDBAdapter;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcom/autochips/bluetooth/util/BTDBAdapter;->insertOneRecord(Lcom/autochips/bluetooth/PbSyncManager/PBRecord;I)J

    .line 2640
    iget-object p2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1700(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)[I

    move-result-object p2

    const/16 p3, 0xa

    aget p4, p2, p3

    add-int/2addr p4, v1

    aput p4, p2, p3

    .line 2642
    iget-object p2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-virtual {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$300(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;Ljava/lang/String;)V

    .line 2645
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    const-string p2, "pause_data"

    invoke-virtual {p1, p2, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "PBSyncManagerService"

    const-string p3, "[PauseInfo] WritePauseInfo"

    .line 2646
    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/16 p2, 0xe

    if-ge v0, p2, :cond_3

    .line 2648
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "PBRecCnt"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p3}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1700(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)[I

    move-result-object p3

    aget p3, p3, v0

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2649
    iget-object p2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "[PauseInfo] latest m_u4PBRecCnt["

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "] = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p4}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1700(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)[I

    move-result-object p4

    aget p4, p4, v0

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$300(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2651
    :cond_3
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public ClearRemoteDevice()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public DeInit()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public GetNameByTelExectly(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2592
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    const-string v1, "pause_data"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "BTADDR"

    const-string v2, ""

    .line 2593
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2594
    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[PauseInfo] old download Addr = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$300(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;Ljava/lang/String;)V

    .line 2595
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2596
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1600(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Lcom/autochips/bluetooth/util/BTDBAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/autochips/bluetooth/util/BTDBAdapter;->getNamebyTel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v2
.end method

.method public GetRecCnt(Ljava/lang/String;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2571
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v0, p1, p2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1400(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public GetRecord(IIILjava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Lcom/autochips/bluetooth/PbSyncManager/PBRecord;",
            ">;)Z"
        }
    .end annotation

    .line 2575
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1500(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;IIILjava/util/List;)Z

    move-result p1

    return p1
.end method

.method public GetSyncPath()I
    .locals 1

    .line 2676
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$600(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v0

    return v0
.end method

.method public GetSyncState()I
    .locals 1

    .line 2672
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$100(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v0

    return v0
.end method

.method public Init()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2567
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->ServiceInit()Z

    move-result v0

    return v0
.end method

.method public SearchPhonebook(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/autochips/bluetooth/PbSyncManager/PBRecord;",
            ">;)Z"
        }
    .end annotation

    .line 2580
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    const-string v1, "pause_data"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "BTADDR"

    const-string v3, ""

    .line 2581
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2582
    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[PauseInfo] old download Addr = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$300(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;Ljava/lang/String;)V

    .line 2583
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2584
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1600(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Lcom/autochips/bluetooth/util/BTDBAdapter;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/autochips/bluetooth/util/BTDBAdapter;->SearchPhonebookByString(Ljava/lang/String;Ljava/util/List;)Z

    move-result p1

    return p1

    :cond_0
    return v2
.end method

.method public SetDownloadMaxCnt(II)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x8

    const/4 v3, 0x1

    if-ge v1, v2, :cond_3

    if-ne v1, p1, :cond_2

    const/4 v2, 0x2

    const/4 v4, -0x1

    if-ne v2, p1, :cond_0

    .line 2550
    iget-object v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1300(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)[I

    move-result-object v2

    aput v4, v2, v0

    .line 2551
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1300(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)[I

    move-result-object v0

    aput v4, v0, v3

    :cond_0
    const/4 v0, 0x6

    if-ne v0, p1, :cond_1

    .line 2554
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1300(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)[I

    move-result-object v0

    const/4 v2, 0x3

    aput v4, v0, v2

    .line 2555
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1300(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)[I

    move-result-object v0

    const/4 v2, 0x4

    aput v4, v0, v2

    .line 2556
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1300(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)[I

    move-result-object v0

    const/4 v2, 0x5

    aput v4, v0, v2

    .line 2558
    :cond_1
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1300(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)[I

    move-result-object v0

    aput p2, v0, v1

    .line 2559
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ATCMD]SetDownloadMaxCnt("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$300(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;Ljava/lang/String;)V

    return v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v3
.end method

.method public SetIndStep(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2541
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v0, p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1202(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;I)I

    const/4 p1, 0x1

    return p1
.end method

.method public SetRemoteDevInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public SetRemoteDevice(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2519
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$102(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;I)I

    .line 2520
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetRemoteDevice() mSyncState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v3}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$100(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$300(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2521
    sput-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_bStopDwLd:Z

    .line 2522
    iget-object v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v2, p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1102(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 2523
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1100(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$802(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;Ljava/lang/String;)Ljava/lang/String;

    .line 2525
    new-instance p1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$DownloadListNode;

    iget-object v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    const/4 v3, 0x0

    invoke-direct {p1, v2, v3}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$DownloadListNode;-><init>(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$1;)V

    .line 2526
    iput v0, p1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$DownloadListNode;->eMsg:I

    .line 2527
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$800(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$DownloadListNode;->btaddr:Ljava/lang/String;

    .line 2528
    iput p2, p1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$DownloadListNode;->downloadpath:I

    .line 2529
    iget-object p2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$500(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2531
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    const/16 p2, 0xb

    invoke-static {p1, p2, v3}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;ILjava/lang/Object;)V

    return v1
.end method

.method public SetTimeOutVal(II)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v0, 0x8

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2514
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1000(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)[I

    move-result-object v0

    aput p2, v0, p1

    const/4 p1, 0x1

    return p1
.end method

.method public StartDownload(IZ)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2498
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PBSync StartDownload thread = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$300(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;Ljava/lang/String;)V

    .line 2499
    new-instance v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$DownloadListNode;

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$DownloadListNode;-><init>(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$1;)V

    const/4 v1, 0x1

    .line 2500
    iput v1, v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$DownloadListNode;->eMsg:I

    .line 2501
    iget-object v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v3}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$800(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$DownloadListNode;->btaddr:Ljava/lang/String;

    .line 2502
    iput p1, v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$DownloadListNode;->downloadpath:I

    .line 2503
    iput-boolean p2, v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$DownloadListNode;->bContinue:Z

    .line 2504
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$500(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2506
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    const/16 p2, 0xb

    invoke-static {p1, p2, v2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;ILjava/lang/Object;)V

    return v1
.end method

.method public StopDownload(I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2447
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$102(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;I)I

    .line 2448
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$200(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 2449
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    const-string v0, "StopDownload() PBMGR_SYNC_STATE_IDLE return"

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$300(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;Ljava/lang/String;)V

    .line 2450
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1, v2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$102(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;I)I

    return v3

    :cond_0
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 2455
    sput-boolean v3, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_bStopDwLd:Z

    .line 2456
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1, v2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$402(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;Z)Z

    .line 2457
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$500(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto/16 :goto_2

    :cond_1
    const/4 v0, 0x6

    const-string v4, "[StopDownload] remove i = "

    const-string v5, "[StopDownload] m_eCompPath = "

    if-ne p1, v0, :cond_4

    .line 2461
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v0, v3}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$402(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;Z)Z

    .line 2462
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v5}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$600(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$300(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;Ljava/lang/String;)V

    .line 2463
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$600(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v0

    if-ne v0, p1, :cond_2

    .line 2464
    sput-boolean v3, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_bStopDwLd:Z

    goto/16 :goto_2

    .line 2466
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$500(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    .line 2467
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$500(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$DownloadListNode;

    iget v0, v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$DownloadListNode;->downloadpath:I

    if-ne v0, p1, :cond_3

    .line 2468
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$500(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2469
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$300(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-ne p1, v1, :cond_7

    .line 2477
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v0, v3}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$402(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;Z)Z

    .line 2478
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v5}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$600(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$300(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;Ljava/lang/String;)V

    .line 2479
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$600(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v0

    if-ne v0, p1, :cond_5

    .line 2480
    sput-boolean v3, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_bStopDwLd:Z

    .line 2483
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$500(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    .line 2484
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$500(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$DownloadListNode;

    iget v0, v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$DownloadListNode;->downloadpath:I

    if-ne v0, p1, :cond_6

    .line 2485
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$500(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2486
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$300(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;Ljava/lang/String;)V

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2493
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[StopDownload] m_bStopDwLd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_bStopDwLd:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$300(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;Ljava/lang/String;)V

    return v3
.end method
