.class Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$14;
.super Ljava/lang/Object;
.source "PBSyncManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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

    .line 3368
    iput-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$14;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 3371
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$14;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    check-cast p2, Lcom/autochips/bluetooth/spp/SppService$LocalBinder;

    invoke-virtual {p2}, Lcom/autochips/bluetooth/spp/SppService$LocalBinder;->getSppService()Lcom/autochips/bluetooth/spp/SppService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$6302(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;Lcom/autochips/bluetooth/spp/SppService;)Lcom/autochips/bluetooth/spp/SppService;

    .line 3372
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$14;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$6300(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Lcom/autochips/bluetooth/spp/SppService;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3373
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$14;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    const-string p2, "[PBSync]SPP Service connected"

    invoke-static {p1, p2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$300(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;Ljava/lang/String;)V

    .line 3374
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$14;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$6300(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Lcom/autochips/bluetooth/spp/SppService;

    move-result-object p1

    iget-object p2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$14;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$000(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/autochips/bluetooth/spp/SppService;->setHandler(Landroid/os/Handler;)V

    goto :goto_0

    .line 3376
    :cond_0
    invoke-static {}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2200()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "PBSyncManagerService"

    const-string p2, "[PBSync]SPP Service connect failed"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 3380
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$14;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$6302(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;Lcom/autochips/bluetooth/spp/SppService;)Lcom/autochips/bluetooth/spp/SppService;

    .line 3381
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$14;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    const-string v0, "[PBSync]SPP Service disconnected"

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$300(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;Ljava/lang/String;)V

    return-void
.end method
