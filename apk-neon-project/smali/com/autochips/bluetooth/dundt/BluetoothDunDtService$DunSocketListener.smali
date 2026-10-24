.class Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$DunSocketListener;
.super Ljava/lang/Thread;
.source "BluetoothDunDtService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DunSocketListener"
.end annotation


# instance fields
.field public mDunStopListen:Z

.field final synthetic this$0:Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;


# direct methods
.method private constructor <init>(Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$DunSocketListener;->this$0:Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$1;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$DunSocketListener;-><init>(Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$DunSocketListener;->this$0:Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;

    const-string v1, "DunSocketListener start."

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->access$000(Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;Ljava/lang/String;)V

    .line 107
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$DunSocketListener;->mDunStopListen:Z

    if-nez v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$DunSocketListener;->this$0:Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->access$100(Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 109
    iput-boolean v0, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$DunSocketListener;->mDunStopListen:Z

    goto :goto_0

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService$DunSocketListener;->this$0:Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;

    const-string v1, "DunSocketListener stopped."

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;->access$000(Lcom/autochips/bluetooth/dundt/BluetoothDunDtService;Ljava/lang/String;)V

    return-void
.end method
