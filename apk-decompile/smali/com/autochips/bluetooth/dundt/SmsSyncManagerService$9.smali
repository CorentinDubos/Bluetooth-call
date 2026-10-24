.class Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$9;
.super Ljava/lang/Object;
.source "SmsSyncManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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

    .line 1040
    iput-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$9;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 1043
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$9;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    check-cast p2, Lcom/autochips/bluetooth/spp/SppService$LocalBinder;

    invoke-virtual {p2}, Lcom/autochips/bluetooth/spp/SppService$LocalBinder;->getSppService()Lcom/autochips/bluetooth/spp/SppService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$2302(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;Lcom/autochips/bluetooth/spp/SppService;)Lcom/autochips/bluetooth/spp/SppService;

    .line 1044
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$9;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$2300(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)Lcom/autochips/bluetooth/spp/SppService;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1045
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$9;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    const-string p2, "[SMSSync]SPP Service connected"

    invoke-static {p1, p2}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$1300(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;Ljava/lang/String;)V

    .line 1046
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$9;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$2300(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)Lcom/autochips/bluetooth/spp/SppService;

    move-result-object p1

    iget-object p2, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$9;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p2}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$3200(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/autochips/bluetooth/spp/SppService;->setSppHandler(Landroid/os/Handler;)V

    goto :goto_0

    .line 1048
    :cond_0
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$9;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    const-string p2, "[SMSSync]SPP Service connect failed"

    invoke-static {p1, p2}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$1300(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1052
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$9;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$2302(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;Lcom/autochips/bluetooth/spp/SppService;)Lcom/autochips/bluetooth/spp/SppService;

    .line 1053
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$9;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    const-string v0, "[SMSSync]SPP Service disconnected"

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$1300(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;Ljava/lang/String;)V

    return-void
.end method
