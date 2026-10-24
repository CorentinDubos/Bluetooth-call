.class Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$1;
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

    .line 170
    iput-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$1;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 172
    iget p1, p1, Landroid/os/Message;->what:I

    const-string v0, "SmsSyncManagerService"

    if-eqz p1, :cond_d

    const/4 v1, 0x1

    if-eq p1, v1, :cond_b

    const/4 v2, 0x2

    if-eq p1, v2, :cond_5

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    goto/16 :goto_0

    .line 175
    :cond_0
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$1;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$000(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)V

    .line 176
    invoke-static {}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$100()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "[Timeout]MSG_TIMEOUT_SET_ECHO"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_1
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$1;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$200(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)I

    move-result p1

    if-lez p1, :cond_2

    .line 180
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$1;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$210(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)I

    .line 181
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$1;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p1, v1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$302(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;Z)Z

    .line 183
    :cond_2
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$1;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$400(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$500(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;I)V

    goto/16 :goto_0

    .line 219
    :cond_3
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$1;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$000(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)V

    .line 220
    invoke-static {}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$100()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "[Timeout]MSG_TIMEOUT_GET_SMS_COUNT"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_4
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$1;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$400(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$500(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;I)V

    goto/16 :goto_0

    .line 197
    :cond_5
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$1;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$000(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)V

    .line 198
    invoke-static {}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$100()Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "[Timeout]MSG_TIMEOUT_GET_SMS_RECORD"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_6
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$1;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$700(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)I

    move-result p1

    if-nez p1, :cond_7

    .line 201
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$1;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$400(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$500(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;I)V

    goto/16 :goto_0

    .line 204
    :cond_7
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$1;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$800(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)I

    move-result p1

    if-lez p1, :cond_9

    .line 205
    invoke-static {}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$100()Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "Get SMS record timeout,try once again"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_8
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$1;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$810(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)I

    .line 207
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$1;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$910(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)I

    .line 208
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$1;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$400(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$1000(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;I)V

    .line 209
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$1;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$900(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)I

    move-result v0

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$1102(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;I)I

    goto :goto_0

    .line 211
    :cond_9
    invoke-static {}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$100()Z

    move-result p1

    if-eqz p1, :cond_a

    const-string p1, "Still not response,continue next index"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_a
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$1;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$400(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$1000(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;I)V

    .line 213
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$1;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p1, v1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$802(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;I)I

    .line 214
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$1;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$900(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)I

    move-result v0

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$1102(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;I)I

    goto :goto_0

    .line 192
    :cond_b
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$1;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$000(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)V

    .line 193
    invoke-static {}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$100()Z

    move-result p1

    if-eqz p1, :cond_c

    const-string p1, "[Timeout]MSG_TIMEOUT_GET_SERIAL"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_c
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$1;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$400(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$600(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;I)V

    goto :goto_0

    .line 187
    :cond_d
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$1;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$000(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)V

    .line 188
    invoke-static {}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$100()Z

    move-result p1

    if-eqz p1, :cond_e

    const-string p1, "[Timeout]MSG_TIMEOUT_GET_FACTORY"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_e
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$1;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$400(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$600(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;I)V

    :goto_0
    return-void
.end method
