.class Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$newPairedDeviceStruct;
.super Ljava/lang/Object;
.source "bluetoothManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "newPairedDeviceStruct"
.end annotation


# instance fields
.field mDevAddr:Ljava/lang/String;

.field mDevName:Ljava/lang/String;

.field final synthetic this$0:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;


# direct methods
.method public constructor <init>(Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$newPairedDeviceStruct;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$newPairedDeviceStruct;->mDevAddr:Ljava/lang/String;

    .line 129
    iput-object p3, p0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$newPairedDeviceStruct;->mDevName:Ljava/lang/String;

    return-void
.end method
