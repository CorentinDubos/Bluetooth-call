.class Lcom/hzbhd/bluetooth/paired/PairedListFragment$3;
.super Landroid/os/Handler;
.source "PairedListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/bluetooth/paired/PairedListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/bluetooth/paired/PairedListFragment;


# direct methods
.method constructor <init>(Lcom/hzbhd/bluetooth/paired/PairedListFragment;)V
    .locals 0

    .line 529
    iput-object p1, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment$3;->this$0:Lcom/hzbhd/bluetooth/paired/PairedListFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 533
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 535
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 536
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->reqBluetoothUnpair(Ljava/lang/String;)Z

    :cond_1
    :goto_0
    return-void
.end method
