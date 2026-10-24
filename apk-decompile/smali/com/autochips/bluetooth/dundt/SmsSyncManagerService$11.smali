.class Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$11;
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

    .line 1088
    iput-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 1091
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p2}, Landroid/bluetooth/IBluetoothDunDt$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothDunDt;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$3702(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;Landroid/bluetooth/IBluetoothDunDt;)Landroid/bluetooth/IBluetoothDunDt;

    .line 1093
    :try_start_0
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$3700(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)Landroid/bluetooth/IBluetoothDunDt;

    move-result-object p1

    iget-object p2, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    invoke-static {p2}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$3800(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)Landroid/bluetooth/IDunCallback$Stub;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/bluetooth/IBluetoothDunDt;->registerCallback(Landroid/bluetooth/IDunCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1095
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1100
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$3702(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;Landroid/bluetooth/IBluetoothDunDt;)Landroid/bluetooth/IBluetoothDunDt;

    .line 1101
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$11;->this$0:Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;

    const-string v0, "[SMSSync]Dun Service disconnected"

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->access$1300(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;Ljava/lang/String;)V

    return-void
.end method
