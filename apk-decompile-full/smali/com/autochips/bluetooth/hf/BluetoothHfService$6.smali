.class Lcom/autochips/bluetooth/hf/BluetoothHfService$6;
.super Ljava/lang/Object;
.source "BluetoothHfService.java"

# interfaces
.implements Landroid/cbm/CBManager$OnActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/hf/BluetoothHfService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/hf/BluetoothHfService;)V
    .locals 0

    .line 903
    iput-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$6;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAction(III)I
    .locals 0

    .line 905
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->access$000()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onAction:cmd = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "BluetoothHfService"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p2, 0x2

    const/4 p3, 0x0

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_2

    const/4 p2, 0x5

    if-eq p1, p2, :cond_2

    const/4 p2, 0x6

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 910
    :cond_1
    iget-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$6;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->requestCBMSCOEnable(Z)V

    goto :goto_0

    .line 918
    :cond_2
    iget-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$6;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    invoke-virtual {p1, p3}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->requestCBMSCOEnable(Z)V

    :goto_0
    return p3
.end method
