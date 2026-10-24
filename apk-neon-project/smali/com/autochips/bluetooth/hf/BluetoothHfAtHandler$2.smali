.class Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$2;
.super Lcom/autochips/bluetooth/hf/HfAtCommandHandler;
.source "BluetoothHfAtHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->initializeHfAtParser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)V
    .locals 0

    .line 511
    iput-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$2;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-direct {p0}, Lcom/autochips/bluetooth/hf/HfAtCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponseCode()V
    .locals 1

    .line 514
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "[ATCMD] ERROR "

    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$100(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 515
    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$202(I)I

    return-void
.end method
