.class Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$4;
.super Ljava/lang/Object;
.source "BluetoothAvrcpCtService.java"

# interfaces
.implements Landroid/cbm/CBManager$OnActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;)V
    .locals 0

    .line 993
    iput-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$4;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAction(III)I
    .locals 6

    .line 997
    iget-object p2, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$4;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAction:cmd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->access$000(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;Ljava/lang/String;)V

    const-string p2, "android.permission.BLUETOOTH"

    const/16 v0, 0xf

    const-string v1, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.EXTRA_BTMUSIC_INTERACTIVE"

    const-string v2, "ERROR:CBManager exception:"

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1062
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$4;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    const-string p2, "onAction: unsupport cmd"

    invoke-static {p1, p2}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->access$000(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1015
    :pswitch_0
    sget p1, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mPlaybackStatus:I

    if-eq p1, v3, :cond_2

    .line 1017
    :try_start_0
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$4;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    invoke-static {p1, v3, v4}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->access$300(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;II)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception p1

    .line 1019
    iget-object p2, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$4;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->access$000(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1025
    :pswitch_1
    sget p1, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mPlaybackStatus:I

    if-ne p1, v3, :cond_2

    .line 1027
    :try_start_1
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$4;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    invoke-static {p1, v4, v4}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->access$300(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;II)I

    move-result v4
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception p1

    .line 1029
    iget-object p2, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$4;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->access$000(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1036
    :pswitch_2
    :try_start_2
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$4;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    invoke-static {p1, v4, v4}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->access$300(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;II)I

    move-result p1
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception p1

    .line 1038
    iget-object v3, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$4;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->access$000(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;Ljava/lang/String;)V

    move p1, v4

    :goto_0
    const/16 v2, 0xd

    if-ne p3, v2, :cond_0

    .line 1043
    new-instance p2, Landroid/content/Intent;

    const-string p3, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.action.ACTION_BTMUSIC_ACTION_MANAGE"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p3, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.COMMAND_BTMUSIC_ACTION_SET"

    .line 1044
    invoke-virtual {p2, p3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1045
    iget-object p3, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$4;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    invoke-virtual {p3, p2}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2

    :cond_0
    if-ne p3, v0, :cond_1

    .line 1048
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$4;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    iget-object v0, v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_btmusic_interaction_intent:Landroid/content/Intent;

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1049
    iget-object p3, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$4;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    iget-object v0, p3, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_btmusic_interaction_intent:Landroid/content/Intent;

    invoke-virtual {p3, v0, p2}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_2

    .line 1001
    :pswitch_3
    :try_start_3
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$4;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    invoke-static {p1, v3, v4}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->access$300(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;II)I

    move-result p1
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_3
    move-exception p1

    .line 1003
    iget-object p3, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$4;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->access$000(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;Ljava/lang/String;)V

    move p1, v4

    .line 1006
    :goto_1
    iget-object p3, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$4;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    iget-object p3, p3, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_btmusic_interaction_intent:Landroid/content/Intent;

    invoke-virtual {p3, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p3

    if-ne p3, v0, :cond_1

    .line 1008
    iget-object p3, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$4;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    iget-object p3, p3, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_btmusic_interaction_intent:Landroid/content/Intent;

    invoke-virtual {p3, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1009
    iget-object p3, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$4;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    iget-object v0, p3, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->avrcp_btmusic_interaction_intent:Landroid/content/Intent;

    invoke-virtual {p3, v0, p2}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_1
    :goto_2
    move v4, p1

    goto :goto_3

    .line 1055
    :pswitch_4
    :try_start_4
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$4;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    invoke-static {p1, v4, v3}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->access$300(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;II)I

    move-result v4
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_3

    :catch_4
    move-exception p1

    .line 1057
    iget-object p2, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$4;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->access$000(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;Ljava/lang/String;)V

    .line 1066
    :cond_2
    :goto_3
    iget-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$4;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    const-string p2, "onAction End!!!"

    invoke-static {p1, p2}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->access$000(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;Ljava/lang/String;)V

    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
