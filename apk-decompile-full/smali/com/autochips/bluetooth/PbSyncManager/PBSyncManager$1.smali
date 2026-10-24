.class Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager$1;
.super Ljava/lang/Object;
.source "PBSyncManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager$1;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 298
    invoke-static {}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;->access$000()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Porxy object connected"

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;->access$100(Ljava/lang/String;)V

    .line 299
    :cond_0
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager$1;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;

    invoke-static {p2}, Lcom/autochips/bluetooth/PbSyncManager/IPBSyncManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autochips/bluetooth/PbSyncManager/IPBSyncManager;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;->access$202(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;Lcom/autochips/bluetooth/PbSyncManager/IPBSyncManager;)Lcom/autochips/bluetooth/PbSyncManager/IPBSyncManager;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 293
    invoke-static {}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;->access$000()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Porxy object disconnected"

    invoke-static {p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;->access$100(Ljava/lang/String;)V

    .line 294
    :cond_0
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager$1;->this$0:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;->access$202(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManager;Lcom/autochips/bluetooth/PbSyncManager/IPBSyncManager;)Lcom/autochips/bluetooth/PbSyncManager/IPBSyncManager;

    return-void
.end method
