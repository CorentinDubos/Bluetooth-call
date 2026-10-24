.class final Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BluetoothCallBackImpl;
.super Lcom/hzbhd/midwareproxy/binder/callback/IBluetoothCallBackInterface$Stub;
.source "bluetoothManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BluetoothCallBackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;


# direct methods
.method private constructor <init>(Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BluetoothCallBackImpl;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;

    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/binder/callback/IBluetoothCallBackInterface$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$1;)V
    .locals 0

    .line 285
    invoke-direct {p0, p1}, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BluetoothCallBackImpl;-><init>(Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;)V

    return-void
.end method


# virtual methods
.method public A2DPActionChanged(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 303
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BluetoothCallBackImpl;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;

    invoke-static {v0, p1, p2}, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->access$500(Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;II)V

    return-void
.end method

.method public A2dpPlayStateChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 312
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BluetoothCallBackImpl;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;

    invoke-static {v0, p1}, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->access$700(Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;I)V

    return-void
.end method

.method public BTAudioChannelRequest(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 294
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BluetoothCallBackImpl;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;

    invoke-static {v0, p1, p2}, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->access$300(Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;IZ)V

    return-void
.end method

.method public HFPActionChanged(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 308
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BluetoothCallBackImpl;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;

    invoke-static {v0, p1, p2}, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->access$600(Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;II)V

    return-void
.end method

.method public HFPMicStateChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BluetoothCallBackImpl;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;

    invoke-static {v0, p1}, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;I)V

    return-void
.end method

.method public HFPSwitchStateChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 320
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BluetoothCallBackImpl;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;

    invoke-static {v0, p1}, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->access$900(Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;I)V

    return-void
.end method

.method public InquiryStateChanged(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 338
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BluetoothCallBackImpl;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;

    invoke-static {v0, p1, p2}, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->access$1200(Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;II)V

    return-void
.end method

.method public MethodResultReturned(IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 325
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BluetoothCallBackImpl;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->access$1000(Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;IIII)V

    return-void
.end method

.method public newConnectionDevName(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 344
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BluetoothCallBackImpl;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;

    invoke-static {v0, p1, p2}, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->access$1300(Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;ILjava/lang/String;)V

    return-void
.end method

.method public newDevicePaired(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 298
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BluetoothCallBackImpl;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;

    invoke-static {v0, p1, p2}, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->access$400(Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public newDeviceSearch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "sw-ap006"

    const-string v1, "------------newDeviceSearch(3)-----------"

    .line 331
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BluetoothCallBackImpl;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;

    invoke-static {v0, p1, p2}, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->access$1100(Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public phoneBookSync(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BluetoothCallBackImpl;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
