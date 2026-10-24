.class Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$4;
.super Ljava/util/TimerTask;
.source "PBSyncManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->SendTimerTask(I)V
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

    .line 337
    iput-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$4;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 339
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$4;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$000(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 340
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x4

    .line 341
    iput v1, v0, Landroid/os/Message;->what:I

    .line 342
    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$4;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {v1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$000(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
