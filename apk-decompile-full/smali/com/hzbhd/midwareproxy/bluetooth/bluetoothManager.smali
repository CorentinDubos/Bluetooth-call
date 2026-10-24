.class public Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;
.super Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;
.source "bluetoothManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BluetoothCallBackImpl;,
        Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$newPairedDeviceStruct;,
        Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$callStateChangedUpdateStruct;,
        Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$phoneBookSyncUpdateStruct;,
        Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "bluetoothManager"

.field private static mBlueToothService:Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;

.field private static mBluetoothManager:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;


# instance fields
.field private mBluetoothUpdateListener:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BluetoothUpdateListener;

.field private mEventHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;-><init>()V

    .line 134
    new-instance v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$1;-><init>(Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mEventHandler:Landroid/os/Handler;

    .line 42
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->getServiceConnection()Z

    return-void
.end method

.method private A2DPActionChanged(II)V
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mEventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 243
    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;->A2DPActionChanged:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 244
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private A2dpPlayStateChanged(I)V
    .locals 3

    .line 256
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mEventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 257
    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;->playStateChanged:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 258
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private BTAudioChannelRequest(IZ)V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mEventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 206
    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;->BTAudioChannelRequest:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p2, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 207
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private HFPActionChanged(II)V
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mEventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 250
    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;->HFPActionChanged:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 251
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private HFPMicStateChanged(I)V
    .locals 3

    .line 263
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mEventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 264
    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;->HFPMicStateChanged:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 265
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private HFPSwitchStateChanged(I)V
    .locals 3

    .line 270
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mEventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 271
    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;->HFPSwitchStateChanged:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 272
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private InquiryStateChanged(II)V
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mEventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 236
    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;->InquiryStateChanged:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 237
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private MethodResultReturned(IIII)V
    .locals 7

    .line 277
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mEventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 278
    new-instance v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$callStateChangedUpdateStruct;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$callStateChangedUpdateStruct;-><init>(Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;IIII)V

    .line 279
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mEventHandler:Landroid/os/Handler;

    sget-object p2, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;->MethodResultReturned:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {p2}, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3, p3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 280
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;)Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BluetoothUpdateListener;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mBluetoothUpdateListener:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BluetoothUpdateListener;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;IIII)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->MethodResultReturned(IIII)V

    return-void
.end method

.method static synthetic access$1100(Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->newDeviceSearch(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;II)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->InquiryStateChanged(II)V

    return-void
.end method

.method static synthetic access$1300(Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;ILjava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->newConnectionDevName(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->phoneBookSync(ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;IZ)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->BTAudioChannelRequest(IZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->newDevicePaired(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;II)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->A2DPActionChanged(II)V

    return-void
.end method

.method static synthetic access$600(Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;II)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->HFPActionChanged(II)V

    return-void
.end method

.method static synthetic access$700(Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->A2dpPlayStateChanged(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->HFPMicStateChanged(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->HFPSwitchStateChanged(I)V

    return-void
.end method

.method public static declared-synchronized getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;
    .locals 2

    const-class v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;

    monitor-enter v0

    .line 34
    :try_start_0
    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mBluetoothManager:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;

    if-nez v1, :cond_0

    .line 35
    new-instance v1, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;

    invoke-direct {v1}, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;-><init>()V

    sput-object v1, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mBluetoothManager:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;

    .line 37
    :cond_0
    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mBluetoothManager:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private newConnectionDevName(ILjava/lang/String;)V
    .locals 3

    .line 228
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mEventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 229
    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;->newConnection:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 230
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private newDevicePaired(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mEventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 213
    new-instance v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$newPairedDeviceStruct;

    invoke-direct {v0, p0, p1, p2}, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$newPairedDeviceStruct;-><init>(Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mEventHandler:Landroid/os/Handler;

    sget-object p2, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;->newDevicePaired:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {p2}, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result p2

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v1, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 215
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private newDeviceSearch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mEventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 221
    new-instance v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$newPairedDeviceStruct;

    invoke-direct {v0, p0, p1, p2}, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$newPairedDeviceStruct;-><init>(Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mEventHandler:Landroid/os/Handler;

    sget-object p2, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;->newDeviceSearch:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {p2}, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result p2

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v1, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 223
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private phoneBookSync(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 7

    .line 194
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mEventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 195
    new-instance v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$phoneBookSyncUpdateStruct;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$phoneBookSyncUpdateStruct;-><init>(Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;ILjava/lang/String;Ljava/lang/String;I)V

    .line 196
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mEventHandler:Landroid/os/Handler;

    sget-object p2, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;->phoneBookSync:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {p2}, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3, p3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 197
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public answerCall()Z
    .locals 1

    .line 693
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mBlueToothService:Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;->answerCall()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 695
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public autoConnect(Z)Z
    .locals 1

    .line 457
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mBlueToothService:Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;->autoConnect(Z)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 459
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public autoReply(Z)Z
    .locals 1

    .line 475
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mBlueToothService:Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;->autoReply(Z)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 477
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public callOut(Ljava/lang/String;)Z
    .locals 1

    .line 720
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mBlueToothService:Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;->callOut(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 722
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public connectA2DP()Z
    .locals 1

    .line 539
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mBlueToothService:Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;->connectA2DP()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 541
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public connectA2DP(Ljava/lang/String;)Z
    .locals 1

    .line 548
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mBlueToothService:Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;->connectA2DPDev(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 550
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public connectDevice(Ljava/lang/String;)Z
    .locals 1

    .line 493
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mBlueToothService:Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;->connectDevice(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 495
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public connectHFP()Z
    .locals 1

    .line 657
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mBlueToothService:Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;->connectHFP()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 659
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public connectHFP(Ljava/lang/String;)Z
    .locals 1

    .line 666
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mBlueToothService:Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;->connectHFPDev(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 668
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public deletePairedDevice(Ljava/lang/String;)Z
    .locals 1

    .line 529
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mBlueToothService:Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;->deletePairedDevice(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 531
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public disable()Z
    .locals 1

    .line 376
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mBlueToothService:Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;->disable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 378
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public disconnectA2DP()Z
    .locals 1

    .line 557
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mBlueToothService:Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;->disconnectA2DP()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 559
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public disconnectHFP()Z
    .locals 1

    .line 675
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mBlueToothService:Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;->disconnectHFP()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 677
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public enable()Z
    .locals 1

    .line 367
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mBlueToothService:Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;->enable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 369
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public enhancedCallCtrl(I)Z
    .locals 1

    .line 756
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mBlueToothService:Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;->enhancedCallCtrl(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 758
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public getA2DPConnectedDevAddr()Ljava/lang/String;
    .locals 1

    .line 575
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mBlueToothService:Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;->getA2DPConnectedDevAddr()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 577
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getA2DPConnectedDevName()Ljava/lang/String;
    .locals 1

    .line 584
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mBlueToothService:Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;->getA2DPConnectedDevName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 586
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCallHistoryName(I)Ljava/lang/String;
    .locals 1

    .line 918
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mBlueToothService:Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;->getCallHistoryName(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 920
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getCallHistoryTelNumber(I)Ljava/lang/String;
    .locals 1

    .line 927
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mBlueToothService:Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;->getCallHistoryTelNumber(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 929
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getCallHistoryType(I)Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_RECORDS_TYPE;
    .locals 2

    .line 936
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_RECORDS_TYPE;->values()[Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_RECORDS_TYPE;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mBlueToothService:Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;

    invoke-interface {v1, p1}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;->getCallType(I)I

    move-result p1

    aget-object p1, v0, p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 938
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getCallTime()I
    .locals 1

    .line 846
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mBlueToothService:Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;->getCallTime()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 848
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public getCallerNum()Ljava/lang/String;
    .locals 1

    .line 792
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mBlueToothService:Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;->getCallerNum()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 794
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getConnectedDevAddr()Ljava/lang/String;
    .locals 1

    .line 511
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mBlueToothService:Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;->getConnectedDevAddr()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 513
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getConnectedDevName()Ljava/lang/String;
    .locals 1

    .line 520
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mBlueToothService:Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;->getConnectedDevName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 522
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContactNameByTelNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 954
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mBlueToothService:Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;->getContactNameByTelNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 956
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getContactType(I)Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_RECORDS_TYPE;
    .locals 2

    .line 945
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_RECORDS_TYPE;->values()[Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_RECORDS_TYPE;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mBlueToothService:Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;

    invoke-interface {v1, p1}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;->getMemoryType(I)I

    move-result p1

    aget-object p1, v0, p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 947
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getCount()I
    .locals 1

    .line 864
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mBlueToothService:Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;->getCount()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 866
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 647
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mBlueToothService:Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;->getDuration()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 649
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public getFullName(I)Ljava/lang/String;
    .locals 1

    .line 873
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mBlueToothService:Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;->getFullName(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 875
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getHFPState()I
    .locals 1

    .line 738
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mBlueToothService:Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;->getHFPState()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 740
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 741
    sget-object v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;->NOT_INIT:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;

    invoke-virtual {v0}, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;->ordinal()I

    move-result v0

    return v0
.end method

.method public getHostBTAddress()Ljava/lang/String;
    .locals 1

    .line 385
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mBlueToothService:Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;->getHostBTAddress()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 387
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getHostBTName()Ljava/lang/String;
    .locals 1

    .line 394
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mBlueToothService:Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;->getHostBTName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 396
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getInquiryState()Z
    .locals 1

    .line 828
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mBlueToothService:Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;->getInquiryState()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 830
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public getPairedDeviceAddress(I)Ljava/lang/String;
    .locals 1

    .line 430
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mBlueToothService:Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;->getPairedDeviceAddress(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 432
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getPairedDeviceName(I)Ljava/lang/String;
    .locals 1

    .line 439
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mBlueToothService:Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;->getPairedDeviceName(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 441
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getPairedDeviceNums()I
    .locals 1

    .line 448
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mBlueToothService:Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;->getPairedDeviceNums()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 450
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public getPin()Ljava/lang/String;
    .locals 1

    .line 963
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mBlueToothService:Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;->getPin()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 965
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 638
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mBlueToothService:Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;->getPosition()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 640
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public getServiceConnection()Z
    .locals 4

    .line 52
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->connectService()Landroid/os/IBinder;

    move-result-object v0

    const-string v1, "bluetoothManager"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 54
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mBlueToothService:Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;

    .line 56
    :try_start_0
    new-instance v3, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BluetoothCallBackImpl;

    invoke-direct {v3, p0, v2}, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BluetoothCallBackImpl;-><init>(Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$1;)V

    invoke-interface {v0, v3}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;->registerCallBack(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 58
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    const-string v0, "BluetoothService connected1:"

    .line 60
    invoke-static {v1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    .line 63
    :cond_0
    sput-object v2, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mBlueToothService:Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;

    const-string v0, "BluetoothService not connected:"

    .line 64
    invoke-static {v1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    const-string v0, "hzbhd.bluetooth"

    return-object v0
.end method

.method public getTelNumber(I)Ljava/lang/String;
    .locals 1

    .line 882
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mBlueToothService:Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;->getTelNumber(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 884
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 403
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mBlueToothService:Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;->getVersion()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 405
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public isA2DPConnected()Z
    .locals 1

    .line 566
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mBlueToothService:Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;->isA2DPConnected()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 568
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public isAutoConnect()Z
    .locals 1

    .line 466
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mBlueToothService:Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;->isAutoConnect()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 468
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public isAutoReply()Z
    .locals 1

    .line 484
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mBlueToothService:Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;->isAutoReply()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 486
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public isDeviceConnected()Z
    .locals 1

    .line 502
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mBlueToothService:Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;->isDeviceConnected()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 504
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 358
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mBlueToothService:Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;->isEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 360
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public isHFPConnected()Z
    .locals 1

    .line 684
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mBlueToothService:Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;->isHFPConnected()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 686
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public isMicMute()Z
    .locals 1

    .line 765
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mBlueToothService:Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;->isMicMute()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 767
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public isPhoneOrDevice()Lcom/hzbhd/midware/constant/BluetoothConstantsDef$AUDIO_TRUANSFER_STATE;
    .locals 2

    .line 783
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$AUDIO_TRUANSFER_STATE;->values()[Lcom/hzbhd/midware/constant/BluetoothConstantsDef$AUDIO_TRUANSFER_STATE;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mBlueToothService:Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;

    invoke-interface {v1}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;->isPhoneOrDevice()I

    move-result v1

    aget-object v0, v0, v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 785
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 593
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mBlueToothService:Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;->isPlaying()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 595
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public isSyncCallLogNow()Z
    .locals 1

    .line 900
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mBlueToothService:Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;->isSyncCallLogNow()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 902
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public isSyncPhoneBookNow()Z
    .locals 1

    .line 891
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mBlueToothService:Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;->isSyncPhoneBookNow()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 893
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public muteMic(Z)Z
    .locals 1

    .line 747
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mBlueToothService:Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;->muteMic(Z)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 749
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public next()Z
    .locals 1

    .line 629
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mBlueToothService:Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;->next()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 631
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public pause()Z
    .locals 1

    .line 611
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mBlueToothService:Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;->pause()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 613
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public play()Z
    .locals 1

    .line 602
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mBlueToothService:Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;->play()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 604
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public prev()Z
    .locals 1

    .line 620
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mBlueToothService:Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;->prev()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 622
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public queryCallHistory()I
    .locals 1

    .line 909
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mBlueToothService:Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;->queryCallHistory()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 911
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public queryContact()I
    .locals 1

    .line 855
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mBlueToothService:Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;->queryContact()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 857
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public reDial()Z
    .locals 1

    .line 729
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mBlueToothService:Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;->reDial()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 731
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public rejectCall()Z
    .locals 1

    .line 702
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mBlueToothService:Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;->rejectCall()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 704
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public sendDTMF(B)Z
    .locals 1

    .line 801
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mBlueToothService:Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;->sendDTMF(B)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 803
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public serviceDied()V
    .locals 0

    .line 77
    invoke-super {p0}, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;->serviceDied()V

    return-void
.end method

.method public serviceReConnected()V
    .locals 0

    .line 72
    invoke-super {p0}, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;->serviceReConnected()V

    return-void
.end method

.method public setBluetoothUpdateListener(Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BluetoothUpdateListener;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 352
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mBluetoothUpdateListener:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BluetoothUpdateListener;

    :cond_0
    return-void
.end method

.method public setHostBTName(Ljava/lang/String;)Z
    .locals 1

    .line 412
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mBlueToothService:Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;->setHostBTName(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 414
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public setPin(Ljava/lang/String;)Z
    .locals 1

    .line 421
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mBlueToothService:Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;->setPin(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 423
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public startDeviceInquiry()Z
    .locals 1

    .line 810
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mBlueToothService:Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;->startDevInquiry()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 812
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public stopDeviceInquiry()Z
    .locals 1

    .line 819
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mBlueToothService:Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;->stopDevInquiry()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 821
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public switchDevOrPhone(Lcom/hzbhd/midware/constant/BluetoothConstantsDef$AUDIO_TRUANSFER_STATE;)Z
    .locals 1

    .line 774
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mBlueToothService:Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;

    invoke-virtual {p1}, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$AUDIO_TRUANSFER_STATE;->ordinal()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;->switchDevOrPhone(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 776
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public syncPhonebook(Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_SYNC_RECORDS;)Z
    .locals 1

    .line 837
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mBlueToothService:Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;

    invoke-virtual {p1}, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_SYNC_RECORDS;->ordinal()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;->syncPhonebook(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 839
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public terminateCall()Z
    .locals 1

    .line 711
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->mBlueToothService:Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;->terminateCall()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 713
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method
