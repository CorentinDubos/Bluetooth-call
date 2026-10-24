.class Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$callStateChangedUpdateStruct;
.super Ljava/lang/Object;
.source "bluetoothManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "callStateChangedUpdateStruct"
.end annotation


# instance fields
.field mCallResult:I

.field mHFPState:I

.field mMethod:I

.field mSinkState:I

.field final synthetic this$0:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;


# direct methods
.method public constructor <init>(Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;IIII)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$callStateChangedUpdateStruct;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$callStateChangedUpdateStruct;->mMethod:I

    .line 118
    iput p3, p0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$callStateChangedUpdateStruct;->mCallResult:I

    .line 119
    iput p4, p0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$callStateChangedUpdateStruct;->mHFPState:I

    .line 120
    iput p5, p0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$callStateChangedUpdateStruct;->mSinkState:I

    return-void
.end method
