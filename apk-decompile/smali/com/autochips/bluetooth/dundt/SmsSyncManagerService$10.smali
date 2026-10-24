.class Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$10;
.super Landroid/bluetooth/IDunCallback$Stub;
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

    .line 1061
    iput-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$10;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-direct {p0}, Landroid/bluetooth/IDunCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyConnect(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1064
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$10;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$2200(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1065
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$10;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    const/16 v1, 0x384

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$2100(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public notifyDisConnect(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1070
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$10;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$2200(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1071
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$10;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    const/16 v1, 0x385

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$2100(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public notifyGetData(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1076
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$10;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$2200(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1077
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$10;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    const/16 v1, 0x386

    invoke-static {v0, v1, p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$2100(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
