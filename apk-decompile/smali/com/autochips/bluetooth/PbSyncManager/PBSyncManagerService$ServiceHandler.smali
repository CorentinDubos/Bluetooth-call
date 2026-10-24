.class Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;
.super Landroid/os/Handler;
.source "PBSyncManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;


# direct methods
.method public constructor <init>(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;Landroid/os/Looper;)V
    .locals 0

    .line 2692
    iput-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    .line 2693
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13

    .line 2698
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x70

    const/4 v2, 0x0

    const-string v3, "PBSyncManagerService"

    const/4 v4, 0x1

    if-eq v0, v1, :cond_58

    const/16 v5, 0x2af8

    const-string v6, "AT_Respond"

    if-eq v0, v5, :cond_57

    const/16 v5, 0x2710

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x4

    const/4 v10, 0x3

    if-eq v0, v5, :cond_50

    const/16 v5, 0x2711

    if-eq v0, v5, :cond_4e

    packed-switch v0, :pswitch_data_0

    const-string v5, "[PBAP] current folder download enough : "

    const-string v6, "exsisted record:"

    const-wide/16 v11, 0x0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    goto/16 :goto_7

    .line 2808
    :pswitch_0
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PBMGR_DISCONNECT_CNF m_bStopDwLd = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v6, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_bStopDwLd:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$300(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;Ljava/lang/String;)V

    .line 2809
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PBMGR_DISCONNECT_CNF m_FlagGetRemoteInfo = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v6}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2700(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$300(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;Ljava/lang/String;)V

    .line 2811
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v0

    if-ne v0, v10, :cond_0

    const-wide/16 v5, 0x1f4

    .line 2813
    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2816
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 2819
    :cond_0
    :goto_0
    sget-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_bStopDwLd:Z

    if-eqz v0, :cond_1

    .line 2820
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1, v1, v7}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;ILjava/lang/Object;)V

    goto/16 :goto_7

    .line 2824
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 2826
    invoke-static {}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2200()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disconnect profile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2831
    :cond_2
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2500(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Z

    move-result v0

    const/4 v1, 0x5

    if-eqz v0, :cond_4

    .line 2832
    invoke-static {}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2200()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "[PBSync]connect spp try again!"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2833
    :cond_3
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1, v1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2402(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;I)I

    .line 2834
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2800(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;I)V

    goto/16 :goto_7

    .line 2841
    :cond_4
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v0

    if-ne v0, v4, :cond_5

    if-nez p1, :cond_5

    .line 2842
    sput-boolean v4, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_bStopDwLd:Z

    .line 2843
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$500(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto/16 :goto_7

    .line 2848
    :cond_5
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2700(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 2849
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2100(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)V

    .line 2850
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 2851
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1, v2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2702(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;Z)Z

    .line 2852
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1, v2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$202(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;I)I

    .line 2853
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1800(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)V

    goto/16 :goto_7

    .line 2855
    :cond_6
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$3000(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result p1

    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$3100(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v0

    sub-int/2addr v0, v4

    if-ge p1, v0, :cond_7

    .line 2856
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$3008(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    .line 2857
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$3200(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)[I

    move-result-object v0

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$3000(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v1

    aget v0, v0, v1

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1902(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;I)I

    .line 2858
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1, v4}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$3300(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;I)V

    .line 2859
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2800(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;I)V

    goto/16 :goto_7

    .line 2862
    :cond_7
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1, v2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2702(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;Z)Z

    .line 2863
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1, v2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$202(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;I)I

    .line 2864
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1800(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)V

    goto/16 :goto_7

    .line 2869
    :cond_8
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2400(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$3400(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v5}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$600(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v5

    invoke-static {p1, v0, v5}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1400(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;Ljava/lang/String;I)I

    move-result p1

    if-lez p1, :cond_9

    goto/16 :goto_2

    .line 2874
    :cond_9
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2400(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result p1

    if-ne v4, p1, :cond_5a

    .line 2876
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$3708(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    .line 2878
    :goto_1
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$3700(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result p1

    if-ge p1, v9, :cond_a

    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$3800(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)[I

    move-result-object p1

    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$3700(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v0

    aget p1, p1, v0

    if-nez p1, :cond_a

    .line 2880
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$3708(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    goto :goto_1

    .line 2882
    :cond_a
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$3700(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result p1

    if-lt p1, v9, :cond_c

    .line 2883
    invoke-static {}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2200()Z

    move-result p1

    if-eqz p1, :cond_b

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "all profiles have been tryed, sub path "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$3900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)[I

    move-result-object v0

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$600(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v1

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " could not download"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2885
    :cond_b
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$3600(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)V

    goto/16 :goto_7

    .line 2886
    :cond_c
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$3800(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)[I

    move-result-object p1

    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$3700(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v0

    aget p1, p1, v0

    if-eqz p1, :cond_5a

    .line 2887
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$3800(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)[I

    move-result-object v0

    iget-object v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$3700(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v2

    aget v0, v0, v2

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1902(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;I)I

    .line 2888
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1, v1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2402(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;I)I

    .line 2889
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2800(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;I)V

    goto/16 :goto_7

    .line 2872
    :cond_d
    :goto_2
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$3500(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)[I

    move-result-object p1

    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$600(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v0

    aput v2, p1, v0

    .line 2873
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$3600(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)V

    goto/16 :goto_7

    .line 3098
    :pswitch_1
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2100(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)V

    .line 3099
    sget-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_bStopDwLd:Z

    if-eqz v0, :cond_f

    .line 3100
    invoke-static {}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2200()Z

    move-result p1

    if-eqz p1, :cond_e

    const-string p1, "PBMGR_GET_VCARDENTRY_CNF"

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3101
    :cond_e
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2000(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;I)V

    goto/16 :goto_7

    .line 3105
    :cond_f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 3106
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v0

    if-ne v4, v0, :cond_5a

    if-eqz p1, :cond_17

    .line 3108
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$5200(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 3110
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$5300(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_10

    .line 3111
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    const-string v0, "get no Records in path"

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$300(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;Ljava/lang/String;)V

    .line 3113
    :cond_10
    :goto_3
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$5300(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_13

    .line 3114
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$5300(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;

    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$3900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)[I

    move-result-object v0

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$600(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v1

    aget v0, v0, v1

    shl-int v0, v4, v0

    invoke-virtual {p1, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;->setType(I)V

    .line 3115
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1600(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Lcom/autochips/bluetooth/util/BTDBAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$5300(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1700(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)[I

    move-result-object v1

    iget-object v7, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v7}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$3900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)[I

    move-result-object v7

    iget-object v9, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v9}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$600(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v9

    aget v7, v7, v9

    aget v1, v1, v7

    invoke-virtual {p1, v0, v1}, Lcom/autochips/bluetooth/util/BTDBAdapter;->insertOneRecord(Lcom/autochips/bluetooth/PbSyncManager/PBRecord;I)J

    move-result-wide v0

    cmp-long p1, v0, v11

    if-ltz p1, :cond_11

    .line 3118
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1700(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)[I

    move-result-object p1

    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$3900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)[I

    move-result-object v0

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$600(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v1

    aget v0, v0, v1

    aget v1, p1, v0

    add-int/2addr v1, v4

    aput v1, p1, v0

    .line 3119
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$4500(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 3121
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2100(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)V

    .line 3122
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$5400(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)V

    .line 3123
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$3900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$600(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$300(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;Ljava/lang/String;)V

    .line 3125
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$4200(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)V

    return-void

    .line 3129
    :cond_11
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1, v6}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$300(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;Ljava/lang/String;)V

    .line 3131
    :cond_12
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$5300(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$300(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 3133
    :cond_13
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$5500(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)[I

    move-result-object p1

    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$600(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v0

    aget v1, p1, v0

    iget-object v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$5300(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    aput v1, p1, v0

    .line 3135
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2100(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)V

    .line 3136
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$5700(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)V

    .line 3138
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    iget-object p1, p1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rPBInfo:Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;

    iget p1, p1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;->u4RecordNum:I

    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$4900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)[I

    move-result-object v0

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$600(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v1

    aget v0, v0, v1

    if-le p1, v0, :cond_14

    .line 3139
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pullVcardEntry("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$4900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$600(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") OK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$300(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;Ljava/lang/String;)V

    .line 3140
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$4900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)[I

    move-result-object p1

    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$600(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v0

    aget v1, p1, v0

    add-int/2addr v1, v4

    aput v1, p1, v0

    .line 3144
    :try_start_1
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1, v8}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$3300(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;I)V

    .line 3145
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$5900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Landroid/bluetooth/IBluetoothPbapCall;

    move-result-object p1

    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$5800(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$4900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$600(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v2

    aget v1, v1, v2

    invoke-interface {p1, v0, v1}, Landroid/bluetooth/IBluetoothPbapCall;->pbapPullVcardEntry(Ljava/lang/String;I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_7

    :catch_1
    move-exception p1

    .line 3147
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_7

    .line 3150
    :cond_14
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2100(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)V

    .line 3151
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$5400(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)V

    const-string p1, "[getvcardEntry] subpath finish OK"

    .line 3152
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3153
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$4200(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)V

    goto/16 :goto_7

    .line 3157
    :cond_15
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2100(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)V

    .line 3158
    invoke-static {}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2200()Z

    move-result p1

    if-eqz p1, :cond_16

    const-string p1, "[getvcardEntry] parse Vcard failed, need to check code!"

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3159
    :cond_16
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1, v4}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2402(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;I)I

    .line 3160
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2000(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;I)V

    goto/16 :goto_7

    .line 3164
    :cond_17
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2100(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)V

    .line 3165
    invoke-static {}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2200()Z

    move-result p1

    if-eqz p1, :cond_18

    const-string p1, "[getvcardEntry] failed, need to check profile!"

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3166
    :cond_18
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1, v4}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2402(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;I)I

    .line 3167
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2000(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;I)V

    goto/16 :goto_7

    .line 2789
    :pswitch_2
    sget-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_bStopDwLd:Z

    if-eqz v0, :cond_1a

    .line 2790
    invoke-static {}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2200()Z

    move-result p1

    if-eqz p1, :cond_19

    const-string p1, "PBMGR_CREATE_CONNECT_RES"

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2791
    :cond_19
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2000(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;I)V

    goto/16 :goto_7

    .line 2794
    :cond_1a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 2796
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v0

    invoke-static {p1, v0, v2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2600(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;IZ)V

    goto/16 :goto_7

    .line 2799
    :cond_1b
    invoke-static {}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2200()Z

    move-result p1

    if-eqz p1, :cond_1c

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "connect "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " failed"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2800
    :cond_1c
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1, v4}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2402(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;I)I

    .line 2801
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2000(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;I)V

    goto/16 :goto_7

    .line 2912
    :pswitch_3
    sget-boolean p1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_bStopDwLd:Z

    if-eqz p1, :cond_1e

    .line 2913
    invoke-static {}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2200()Z

    move-result p1

    if-eqz p1, :cond_1d

    const-string p1, "PBMGR_SET_PATH"

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2914
    :cond_1d
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2000(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;I)V

    goto/16 :goto_7

    .line 2917
    :cond_1e
    invoke-static {}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2200()Z

    move-result p1

    if-eqz p1, :cond_1f

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "PBMGR_SET_PATH thread = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " name = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2919
    :cond_1f
    invoke-static {}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2200()Z

    move-result p1

    if-eqz p1, :cond_20

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "m_eCompPath = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$600(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    move p1, v2

    .line 2920
    :goto_4
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$3900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)[I

    move-result-object v0

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$600(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0xe

    if-ge v0, v1, :cond_24

    .line 2921
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$3900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)[I

    move-result-object p1

    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$600(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v0

    aget p1, p1, v0

    shl-int p1, v4, p1

    .line 2922
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$4100(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)[I

    move-result-object v0

    aget v0, v0, v4

    if-ne v0, v9, :cond_22

    const/16 v0, 0x20

    if-ne p1, v0, :cond_22

    .line 2925
    invoke-static {}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2200()Z

    move-result p1

    if-eqz p1, :cond_21

    const-string p1, "not support sim phonebook. next."

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2926
    :cond_21
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$4200(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)V

    return-void

    .line 2929
    :cond_22
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$4300(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$4400(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_23

    goto :goto_5

    .line 2920
    :cond_23
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$3900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)[I

    move-result-object v0

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$600(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v1

    aget v5, v0, v1

    add-int/2addr v5, v4

    aput v5, v0, v1

    goto :goto_4

    .line 2935
    :cond_24
    :goto_5
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$4500(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 2936
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ATCMD] current folder record count enough : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$3900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$600(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$300(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;Ljava/lang/String;)V

    .line 2938
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$4200(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)V

    return-void

    .line 2942
    :cond_25
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$3900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)[I

    move-result-object v0

    iget-object v4, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v4}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$600(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v4

    aget v0, v0, v4

    if-ne v0, v1, :cond_27

    .line 2943
    invoke-static {}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2200()Z

    move-result p1

    if-eqz p1, :cond_26

    const-string p1, "all path have been download"

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2944
    :cond_26
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1, v2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2402(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;I)I

    .line 2945
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2000(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;I)V

    goto/16 :goto_7

    .line 2947
    :cond_27
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$4600(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;II)Z

    goto/16 :goto_7

    .line 3017
    :pswitch_4
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2100(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)V

    .line 3018
    sget-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_bStopDwLd:Z

    if-eqz v0, :cond_29

    .line 3019
    invoke-static {}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2200()Z

    move-result p1

    if-eqz p1, :cond_28

    const-string p1, "PBMGR_GET_PHONEBOOK_CNF"

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3020
    :cond_28
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2000(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;I)V

    goto/16 :goto_7

    .line 3024
    :cond_29
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 3025
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v0

    if-ne v4, v0, :cond_5a

    const-string v0, "[PBAP] current folder download success"

    if-eqz p1, :cond_32

    .line 3027
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$5200(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Z

    move-result p1

    if-eqz p1, :cond_30

    .line 3029
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$5300(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2a

    .line 3030
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    const-string v1, "[PBAP] get no Records in path"

    invoke-static {p1, v1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$300(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;Ljava/lang/String;)V

    .line 3032
    :cond_2a
    :goto_6
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$5300(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_2d

    .line 3033
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$5300(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$3900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)[I

    move-result-object v1

    iget-object v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v3}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$600(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v3

    aget v1, v1, v3

    shl-int v1, v4, v1

    invoke-virtual {p1, v1}, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;->setType(I)V

    .line 3034
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1600(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Lcom/autochips/bluetooth/util/BTDBAdapter;

    move-result-object p1

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$5300(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;

    iget-object v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v3}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1700(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)[I

    move-result-object v3

    iget-object v7, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v7}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$3900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)[I

    move-result-object v7

    iget-object v8, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v8}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$600(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v8

    aget v7, v7, v8

    aget v3, v3, v7

    invoke-virtual {p1, v1, v3}, Lcom/autochips/bluetooth/util/BTDBAdapter;->insertOneRecord(Lcom/autochips/bluetooth/PbSyncManager/PBRecord;I)J

    move-result-wide v7

    cmp-long p1, v7, v11

    if-ltz p1, :cond_2b

    .line 3037
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1700(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)[I

    move-result-object p1

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$3900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)[I

    move-result-object v1

    iget-object v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v3}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$600(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v3

    aget v1, v1, v3

    aget v3, p1, v1

    add-int/2addr v3, v4

    aput v3, p1, v1

    .line 3038
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$4500(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 3039
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2100(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)V

    .line 3040
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$5400(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)V

    .line 3041
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$3900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$600(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$300(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;Ljava/lang/String;)V

    .line 3043
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$4200(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)V

    return-void

    .line 3047
    :cond_2b
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1, v6}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$300(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;Ljava/lang/String;)V

    .line 3049
    :cond_2c
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$5300(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;

    invoke-virtual {v1}, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$300(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6

    .line 3051
    :cond_2d
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$5500(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)[I

    move-result-object p1

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$600(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v1

    aget v2, p1, v1

    iget-object v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v3}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$5300(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    aput v2, p1, v1

    .line 3052
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$4900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)[I

    move-result-object p1

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$600(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v1

    aget v2, p1, v1

    iget-object v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v3}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$5600(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v3

    add-int/2addr v2, v3

    aput v2, p1, v1

    .line 3054
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$5700(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)V

    .line 3055
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$4900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)[I

    move-result-object p1

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$600(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v1

    aget p1, p1, v1

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    iget-object v1, v1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rPBInfo:Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;

    iget v1, v1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;->u4RecordNum:I

    if-le p1, v1, :cond_2e

    .line 3056
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$5400(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)V

    .line 3058
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$300(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;Ljava/lang/String;)V

    .line 3059
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$4200(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)V

    goto/16 :goto_7

    .line 3062
    :cond_2e
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$4900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)[I

    move-result-object p1

    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$600(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v0

    aget p1, p1, v0

    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$5000(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v0

    add-int/2addr p1, v0

    sub-int/2addr p1, v4

    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    iget-object v0, v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rPBInfo:Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;

    iget v0, v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;->u4RecordNum:I

    if-gt p1, v0, :cond_2f

    .line 3063
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v0

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$4900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$600(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v2

    aget v1, v1, v2

    iget-object v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$4900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)[I

    move-result-object v2

    iget-object v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v3}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$600(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v3

    aget v2, v2, v3

    iget-object v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v3}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$5000(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v2, v4

    invoke-static {p1, v0, v1, v2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$5100(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;III)Z

    goto/16 :goto_7

    .line 3065
    :cond_2f
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v0

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$4900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$600(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v2

    aget v1, v1, v2

    iget-object v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    iget-object v2, v2, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rPBInfo:Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;

    iget v2, v2, Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;->u4RecordNum:I

    invoke-static {p1, v0, v1, v2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$5100(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;III)Z

    goto/16 :goto_7

    .line 3069
    :cond_30
    invoke-static {}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2200()Z

    move-result p1

    if-eqz p1, :cond_31

    const-string p1, "[PBAP] parse Vcard failed, need to check parse code!"

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3070
    :cond_31
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1, v4}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2402(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;I)I

    .line 3071
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2000(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;I)V

    goto/16 :goto_7

    .line 3079
    :cond_32
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$5700(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)V

    .line 3080
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$4900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)[I

    move-result-object p1

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$600(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v1

    aget p1, p1, v1

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    iget-object v1, v1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rPBInfo:Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;

    iget v1, v1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;->u4RecordNum:I

    if-lt p1, v1, :cond_33

    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1700(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)[I

    move-result-object p1

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$3900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$600(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v2

    aget v1, v1, v2

    aget p1, p1, v1

    if-lez p1, :cond_33

    .line 3082
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$5400(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)V

    .line 3084
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$300(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;Ljava/lang/String;)V

    .line 3085
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$4200(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)V

    goto/16 :goto_7

    .line 3087
    :cond_33
    invoke-static {}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2200()Z

    move-result p1

    if-eqz p1, :cond_34

    const-string p1, "[PBAP] download phonebook error, need to check profile"

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3088
    :cond_34
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1, v4}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2402(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;I)I

    .line 3089
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2000(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;I)V

    goto/16 :goto_7

    .line 2973
    :pswitch_5
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2100(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)V

    .line 2974
    sget-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_bStopDwLd:Z

    if-eqz v0, :cond_36

    .line 2975
    invoke-static {}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2200()Z

    move-result p1

    if-eqz p1, :cond_35

    const-string p1, "PBMGR_GET_INFOLIST_CNF"

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2976
    :cond_35
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2000(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;I)V

    goto/16 :goto_7

    .line 2980
    :cond_36
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 2981
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v0

    if-ne v4, v0, :cond_5a

    if-eqz p1, :cond_3b

    const/4 p1, -0x1

    .line 2983
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$4900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)[I

    move-result-object v0

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$600(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v1

    aget v0, v0, v1

    if-ne p1, v0, :cond_37

    .line 2984
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$4900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)[I

    move-result-object p1

    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$600(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v0

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    iget-object v1, v1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rPBInfo:Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;

    iget v1, v1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;->u4StartIdx:I

    aput v1, p1, v0

    .line 2987
    :cond_37
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    iget-object p1, p1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rPBInfo:Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;

    iget p1, p1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;->u4RecordNum:I

    if-lez p1, :cond_3a

    .line 2988
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$4900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)[I

    move-result-object p1

    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$600(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v0

    aget p1, p1, v0

    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    iget-object v0, v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rPBInfo:Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;

    iget v0, v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;->u4RecordNum:I

    if-le p1, v0, :cond_38

    .line 2989
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    const-string v0, "[PBAP]mCurDwnNumIdx[m_eCompPath] > m_rPBInfo.u4RecordNum"

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$300(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;Ljava/lang/String;)V

    .line 2991
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$4200(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)V

    goto/16 :goto_7

    .line 2995
    :cond_38
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$4900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)[I

    move-result-object p1

    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$600(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v0

    aget p1, p1, v0

    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$5000(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v0

    add-int/2addr p1, v0

    sub-int/2addr p1, v4

    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    iget-object v0, v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rPBInfo:Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;

    iget v0, v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;->u4RecordNum:I

    if-gt p1, v0, :cond_39

    .line 2996
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v0

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$4900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$600(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v2

    aget v1, v1, v2

    iget-object v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$4900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)[I

    move-result-object v2

    iget-object v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v3}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$600(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v3

    aget v2, v2, v3

    iget-object v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v3}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$5000(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v2, v4

    invoke-static {p1, v0, v1, v2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$5100(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;III)Z

    goto/16 :goto_7

    .line 2998
    :cond_39
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v0

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$4900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$600(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v2

    aget v1, v1, v2

    iget-object v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    iget-object v2, v2, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rPBInfo:Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;

    iget v2, v2, Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;->u4RecordNum:I

    invoke-static {p1, v0, v1, v2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$5100(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;III)Z

    goto/16 :goto_7

    .line 3000
    :cond_3a
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    const-string v0, "[PBAP] List Record number = 0"

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$300(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;Ljava/lang/String;)V

    .line 3002
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$4200(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)V

    goto/16 :goto_7

    .line 3004
    :cond_3b
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$3900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)[I

    move-result-object p1

    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$600(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v0

    aget p1, p1, v0

    if-lez p1, :cond_3c

    .line 3006
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$4200(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)V

    goto/16 :goto_7

    .line 3008
    :cond_3c
    invoke-static {}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2200()Z

    move-result p1

    if-eqz p1, :cond_3d

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[PBAP] Get InfoList error, folder: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$3900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)[I

    move-result-object v0

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$600(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v1

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3009
    :cond_3d
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1, v4}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2402(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;I)I

    .line 3010
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2000(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;I)V

    goto/16 :goto_7

    .line 2953
    :pswitch_6
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2100(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)V

    .line 2954
    sget-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_bStopDwLd:Z

    if-eqz v0, :cond_3f

    .line 2955
    invoke-static {}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2200()Z

    move-result p1

    if-eqz p1, :cond_3e

    const-string p1, "PBMGR_SET_PATH_CNF"

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2956
    :cond_3e
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2000(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;I)V

    goto/16 :goto_7

    .line 2960
    :cond_3f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 2961
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v0

    if-ne v4, v0, :cond_5a

    if-eqz p1, :cond_40

    .line 2963
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1, v4}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$4700(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;I)Z

    goto/16 :goto_7

    .line 2965
    :cond_40
    invoke-static {}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2200()Z

    move-result p1

    if-eqz p1, :cond_41

    const-string p1, "[PBAP] SetPath error"

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2966
    :cond_41
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$4800(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)V

    goto/16 :goto_7

    .line 2730
    :pswitch_7
    invoke-static {}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2200()Z

    move-result p1

    if-eqz p1, :cond_42

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[ATCMD] set echo Timeout!! mbSppConnectAgain = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2500(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2732
    :cond_42
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2500(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Z

    move-result p1

    if-nez p1, :cond_43

    .line 2733
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1, v4}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2402(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;I)I

    .line 2734
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1, v4}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2502(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;Z)Z

    .line 2735
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2000(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;I)V

    goto/16 :goto_7

    .line 2737
    :cond_43
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1, v4}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2402(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;I)I

    .line 2738
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1, v2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2502(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;Z)Z

    .line 2739
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2000(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;I)V

    goto/16 :goto_7

    .line 2700
    :pswitch_8
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1800(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)V

    goto/16 :goto_7

    .line 2703
    :pswitch_9
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    goto/16 :goto_7

    .line 2780
    :pswitch_a
    invoke-static {}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2200()Z

    move-result p1

    if-eqz p1, :cond_44

    const-string p1, "[ATCMD] get listinfo Timeout!"

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2781
    :cond_44
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1, v4}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2402(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;I)I

    .line 2782
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2000(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;I)V

    goto/16 :goto_7

    .line 2774
    :pswitch_b
    invoke-static {}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2200()Z

    move-result p1

    if-eqz p1, :cond_45

    const-string p1, "[ATCMD] get path Timeout!"

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2775
    :cond_45
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1, v4}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2402(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;I)I

    .line 2776
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2000(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;I)V

    goto/16 :goto_7

    .line 2768
    :pswitch_c
    invoke-static {}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2200()Z

    move-result p1

    if-eqz p1, :cond_46

    const-string p1, "[ATCMD] set path Timeout!"

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2769
    :cond_46
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1, v4}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2402(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;I)I

    .line 2770
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2000(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;I)V

    goto/16 :goto_7

    .line 2762
    :pswitch_d
    invoke-static {}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2200()Z

    move-result p1

    if-eqz p1, :cond_47

    const-string p1, "[ATCMD] set current charset Timeout!"

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2763
    :cond_47
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1, v4}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2402(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;I)I

    .line 2764
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2000(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;I)V

    goto/16 :goto_7

    .line 2756
    :pswitch_e
    invoke-static {}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2200()Z

    move-result p1

    if-eqz p1, :cond_48

    const-string p1, "[ATCMD] get current charset Timeout!"

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2757
    :cond_48
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1, v4}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2402(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;I)I

    .line 2758
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2000(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;I)V

    goto/16 :goto_7

    .line 2750
    :pswitch_f
    invoke-static {}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2200()Z

    move-result p1

    if-eqz p1, :cond_49

    const-string p1, "[ATCMD] get support charset Timeout!"

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2751
    :cond_49
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1, v4}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2402(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;I)I

    .line 2752
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2000(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;I)V

    goto/16 :goto_7

    .line 2744
    :pswitch_10
    invoke-static {}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2200()Z

    move-result p1

    if-eqz p1, :cond_4a

    const-string p1, "[ATCMD] get support path Timeout!"

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2745
    :cond_4a
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1, v4}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2402(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;I)I

    .line 2746
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2000(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;I)V

    goto/16 :goto_7

    .line 2710
    :pswitch_11
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2100(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)V

    .line 2711
    sget-boolean p1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_bStopDwLd:Z

    if-eqz p1, :cond_4c

    .line 2712
    invoke-static {}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2200()Z

    move-result p1

    if-eqz p1, :cond_4b

    const-string p1, "[Timeout]PBMGR_TIMER_DOWNLOAD"

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2713
    :cond_4b
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2000(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;I)V

    goto/16 :goto_7

    .line 2716
    :cond_4c
    invoke-static {}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2200()Z

    move-result p1

    if-eqz p1, :cond_5a

    const-string p1, "[ATCMD] PBMGR_TIMER_DOWNLOAD, no handle"

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 2707
    :pswitch_12
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2000(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;I)V

    goto/16 :goto_7

    .line 2720
    :pswitch_13
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2300(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)V

    .line 2721
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2100(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)V

    .line 2722
    invoke-static {}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2200()Z

    move-result p1

    if-eqz p1, :cond_4d

    const-string p1, "current download timeout"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2723
    :cond_4d
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1, v8}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2402(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;I)I

    .line 2724
    sput-boolean v4, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_bStopDwLd:Z

    .line 2725
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1, v4}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$402(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;Z)Z

    .line 2726
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2000(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;I)V

    goto/16 :goto_7

    .line 3212
    :cond_4e
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v0

    if-eq v0, v10, :cond_4f

    .line 3213
    invoke-static {}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2200()Z

    move-result p1

    if-eqz p1, :cond_5a

    const-string p1, "[SPP] Current Using Profile is not SPP! This is SMS message!"

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 3216
    :cond_4f
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3217
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SPP] SPP recieve respond:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$300(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;Ljava/lang/String;)V

    .line 3218
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$6000(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Lcom/autochips/bluetooth/util/PbSyncATParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/util/PbSyncATParser;->setRespondString(Ljava/lang/String;)V

    .line 3220
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$6100(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)V

    goto/16 :goto_7

    .line 3174
    :cond_50
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MESSAGE_STATE_CHANGE: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$300(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;Ljava/lang/String;)V

    .line 3175
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v0

    if-eq v0, v10, :cond_51

    .line 3176
    invoke-static {}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2200()Z

    move-result p1

    if-eqz p1, :cond_5a

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[SPP] Current Using Profile is not SPP! This is SMS message! m_CurUsingProfile = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 3180
    :cond_51
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_56

    if-eq p1, v4, :cond_55

    const/16 v0, 0x6c

    if-eq p1, v8, :cond_54

    if-eq p1, v10, :cond_53

    if-eq p1, v9, :cond_52

    goto/16 :goto_7

    .line 3202
    :cond_52
    sput-boolean v4, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_bStopDwLd:Z

    .line 3203
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$500(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 3204
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2100(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)V

    .line 3205
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1, v1, v7}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;ILjava/lang/Object;)V

    goto/16 :goto_7

    .line 3196
    :cond_53
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    const-string v1, "[SPP] SPP connect failed"

    invoke-static {p1, v1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$300(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;Ljava/lang/String;)V

    .line 3197
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    iput v2, p1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_SPPconnected:I

    .line 3198
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    iput-boolean v4, p1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_sppConnectionFailed:Z

    .line 3199
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;ILjava/lang/Object;)V

    goto/16 :goto_7

    .line 3182
    :cond_54
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    iput v4, p1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_SPPconnected:I

    .line 3183
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    const-string v1, "[SPP] SPP connected"

    invoke-static {p1, v1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$300(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;Ljava/lang/String;)V

    .line 3184
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;ILjava/lang/Object;)V

    goto/16 :goto_7

    .line 3187
    :cond_55
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    const-string v0, "[SPP] SPP connecting"

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$300(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;Ljava/lang/String;)V

    .line 3188
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    iput v2, p1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_SPPconnected:I

    goto/16 :goto_7

    .line 3191
    :cond_56
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    const-string v0, "[SPP] SPP state none"

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$300(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;Ljava/lang/String;)V

    .line 3192
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    iput v2, p1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_SPPconnected:I

    .line 3193
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    const/16 v0, 0x6e

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;ILjava/lang/Object;)V

    goto/16 :goto_7

    .line 3225
    :cond_57
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3226
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HFP] HFP recieve respond:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$300(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;Ljava/lang/String;)V

    .line 3227
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "worker thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$300(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;Ljava/lang/String;)V

    .line 3228
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$6000(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Lcom/autochips/bluetooth/util/PbSyncATParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/util/PbSyncATParser;->setRespondString(Ljava/lang/String;)V

    .line 3230
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$6100(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)V

    goto :goto_7

    .line 2897
    :cond_58
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2100(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)V

    .line 2898
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2300(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)V

    .line 2899
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$4000(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)V

    .line 2900
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1, v2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$202(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;I)I

    .line 2901
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$400(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Z

    move-result p1

    if-ne v4, p1, :cond_59

    .line 2902
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1, v2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$202(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;I)I

    .line 2903
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$1800(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)V

    goto :goto_7

    .line 2905
    :cond_59
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1, v2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$102(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;I)I

    .line 2906
    invoke-static {}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2200()Z

    move-result p1

    if-eqz p1, :cond_5a

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "PBMGR_STOP_DOWNLOAD mSyncState="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$100(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5a
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x66
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x6c
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
