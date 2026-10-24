.class Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$PulldataResult;
.super Ljava/lang/Object;
.source "BluetoothPbapClientService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PulldataResult"
.end annotation


# instance fields
.field public cnf_code:I

.field public newMissedCalls:S

.field public phonebookSize:S

.field final synthetic this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService$PulldataResult;->this$0:Lcom/autochips/bluetooth/pbapclient/BluetoothPbapClientService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
