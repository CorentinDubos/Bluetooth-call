.class Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$13;
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

    .line 3338
    iput-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$13;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 3341
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$13;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p2}, Landroid/bluetooth/IBluetoothPbapCall$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothPbapCall;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$5902(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;Landroid/bluetooth/IBluetoothPbapCall;)Landroid/bluetooth/IBluetoothPbapCall;

    .line 3343
    :try_start_0
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$13;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$5900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Landroid/bluetooth/IBluetoothPbapCall;

    move-result-object p1

    iget-object p2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$13;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$6200(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Landroid/bluetooth/IPBCallback$Stub;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/bluetooth/IBluetoothPbapCall;->registerCallback(Landroid/bluetooth/IPBCallback;)V

    .line 3344
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$13;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$5900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Landroid/bluetooth/IBluetoothPbapCall;

    move-result-object p1

    invoke-interface {p1}, Landroid/bluetooth/IBluetoothPbapCall;->pbapGetState()I

    move-result p1

    .line 3345
    iget-object p2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$13;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[PBAP]pbapGetState()  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$300(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3347
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3349
    :goto_0
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$13;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$5900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Landroid/bluetooth/IBluetoothPbapCall;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3350
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$13;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    const-string p2, "[PBAP]onServiceConnected(), OK"

    invoke-static {p1, p2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$300(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;Ljava/lang/String;)V

    goto :goto_1

    .line 3352
    :cond_0
    invoke-static {}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$2200()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "PBSyncManagerService"

    const-string p2, "[PBAP]onServiceConnected(), ERROR"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 3357
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$13;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    const-string v0, "[PBAP]onServiceDisconnected()"

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$300(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;Ljava/lang/String;)V

    .line 3358
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$13;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->access$5902(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;Landroid/bluetooth/IBluetoothPbapCall;)Landroid/bluetooth/IBluetoothPbapCall;

    return-void
.end method
