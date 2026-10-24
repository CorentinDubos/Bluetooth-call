.class Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$1;
.super Landroid/os/Handler;
.source "BluetoothDunDtService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$1;->this$0:Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 119
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$1;->this$0:Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;

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

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->access$000(Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;Ljava/lang/String;)V

    .line 120
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xe

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 150
    :pswitch_0
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$1;->this$0:Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;

    iget-object v0, v0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->sb:Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$1;->this$0:Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;

    iget-object p1, p1, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_1

    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$1;->this$0:Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;

    iget-object p1, p1, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ERROR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    goto :goto_0

    .line 158
    :cond_0
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$1;->this$0:Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;

    const-string v0, "DUN response need to packet"

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->access$000(Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 152
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$1;->this$0:Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;

    iget-object p1, p1, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->response:Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$1;->this$0:Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;

    iget-object v0, v0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$1;->this$0:Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;

    const-string v0, "Complete packet"

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->access$000(Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;Ljava/lang/String;)V

    .line 154
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$1;->this$0:Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;

    iget-object v0, p1, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->response:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->access$500(Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;Ljava/lang/String;)V

    .line 155
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$1;->this$0:Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;

    iget-object p1, p1, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 156
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$1;->this$0:Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;

    iget-object p1, p1, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->response:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    goto/16 :goto_1

    .line 147
    :pswitch_1
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$1;->this$0:Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;

    const-string v0, "Send AT CMD Success"

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->access$000(Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 173
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-ne v4, p1, :cond_2

    .line 175
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$1;->this$0:Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;

    const/16 v0, 0xd

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->access$200(Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;I)V

    .line 176
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$1;->this$0:Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;

    const-string v0, "DUN disable Success"

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->access$000(Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 178
    :cond_2
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$1;->this$0:Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;

    invoke-static {p1, v1}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->access$200(Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;I)V

    .line 179
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$1;->this$0:Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;

    const-string v0, "DUN disable fail"

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->access$300(Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 168
    :pswitch_3
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$1;->this$0:Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;

    const-string v0, "disconnect ind"

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->access$000(Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;Ljava/lang/String;)V

    .line 169
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$1;->this$0:Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;

    invoke-static {p1, v3}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->access$600(Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;Z)V

    .line 170
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$1;->this$0:Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;

    invoke-static {p1, v2}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->access$200(Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;I)V

    goto/16 :goto_1

    .line 163
    :pswitch_4
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$1;->this$0:Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;

    const-string v0, "disconnect cnf"

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->access$000(Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;Ljava/lang/String;)V

    .line 164
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$1;->this$0:Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;

    invoke-static {p1, v4}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->access$600(Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;Z)V

    .line 165
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$1;->this$0:Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;

    invoke-static {p1, v2}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->access$200(Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;I)V

    goto :goto_1

    .line 135
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_3

    .line 137
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$1;->this$0:Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;

    invoke-static {p1, v4}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->access$400(Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;Z)V

    .line 138
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$1;->this$0:Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;

    invoke-static {p1, v4}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->access$200(Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;I)V

    goto :goto_1

    .line 140
    :cond_3
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$1;->this$0:Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;

    invoke-static {v0, v3}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->access$400(Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;Z)V

    .line 141
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$1;->this$0:Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DUN connect fail,result code is: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->access$300(Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;Ljava/lang/String;)V

    .line 142
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$1;->this$0:Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;

    invoke-static {p1, v2}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->access$200(Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;I)V

    goto :goto_1

    .line 122
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-ne v4, p1, :cond_4

    .line 124
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$1;->this$0:Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;

    const/16 v0, 0xb

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->access$200(Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;I)V

    .line 125
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$1;->this$0:Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;

    const-string v0, "DUN Enable Success"

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->access$000(Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;Ljava/lang/String;)V

    goto :goto_1

    .line 127
    :cond_4
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$1;->this$0:Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;

    const-string v0, "DUN Enable fail"

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->access$300(Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;Ljava/lang/String;)V

    .line 128
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$1;->this$0:Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;

    invoke-virtual {p1}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->stopSelf()V

    .line 129
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$1;->this$0:Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;

    invoke-static {p1, v1}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->access$200(Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;I)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x15f91
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
