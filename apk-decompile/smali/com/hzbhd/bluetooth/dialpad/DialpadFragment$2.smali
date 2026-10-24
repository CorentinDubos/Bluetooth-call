.class Lcom/hzbhd/bluetooth/dialpad/DialpadFragment$2;
.super Ljava/lang/Object;
.source "DialpadFragment.java"

# interfaces
.implements Lcom/hzbhd/bluetooth/ui/_a6/A6CallLogAdapter$CallLogAdapterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->initPA6(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;


# direct methods
.method constructor <init>(Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;)V
    .locals 0

    .line 574
    iput-object p1, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment$2;->this$0:Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doDialAction(Ljava/lang/String;)V
    .locals 2

    .line 577
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 578
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->reqHfpDialCall(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method
