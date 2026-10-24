.class Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$6;
.super Ljava/util/TimerTask;
.source "SmsSyncManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->SendTimerTask(I)V
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

    .line 275
    iput-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$6;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 277
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x4

    .line 278
    iput v1, v0, Landroid/os/Message;->what:I

    .line 279
    iget-object v1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$6;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {v1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$1200(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
