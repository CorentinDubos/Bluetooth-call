.class Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$2;
.super Ljava/util/TimerTask;
.source "AvrcpCtPlayerUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->startBTMusicTimer(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;)V
    .locals 0

    .line 990
    iput-object p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$2;->this$0:Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 993
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$2;->this$0:Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;

    invoke-static {v0}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->access$000(Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$2;->this$0:Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;

    invoke-static {v0}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->access$100(Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$2;->this$0:Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;

    invoke-static {v0}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->access$200(Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;)Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1000
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$2;->this$0:Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;

    invoke-static {v0}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->access$200(Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;)Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->getAvrcpStateValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_1

    const/16 v0, 0xf

    iget-object v2, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$2;->this$0:Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;

    invoke-static {v2}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->access$200(Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;)Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->getA2dpSinkStateValue()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 1003
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$2;->this$0:Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;

    invoke-static {v0}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->access$400(Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1004
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$2;->this$0:Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;

    invoke-static {v0}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->access$500(Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;)Ljava/util/PriorityQueue;

    move-result-object v2

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->access$600(Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;Ljava/util/PriorityQueue;ILjava/lang/String;)Z

    .line 1006
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$2;->this$0:Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;

    invoke-static {v0}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->access$500(Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;)Ljava/util/PriorityQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$2;->this$0:Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;

    invoke-static {v0}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->access$500(Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;)Ljava/util/PriorityQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$bt_music_avrcp_request;

    invoke-static {v0, v2}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->access$700(Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$bt_music_avrcp_request;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1007
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$2;->this$0:Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->access$402(Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;Z)Z

    goto :goto_0

    .line 1013
    :cond_1
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$2;->this$0:Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;

    invoke-static {v0}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->access$300(Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;)V

    :cond_2
    :goto_0
    return-void

    .line 996
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$2;->this$0:Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;

    invoke-static {v0}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->access$300(Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;)V

    return-void
.end method
