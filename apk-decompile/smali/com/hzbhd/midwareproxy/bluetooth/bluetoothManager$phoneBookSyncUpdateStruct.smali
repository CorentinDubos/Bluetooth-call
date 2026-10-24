.class Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$phoneBookSyncUpdateStruct;
.super Ljava/lang/Object;
.source "bluetoothManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "phoneBookSyncUpdateStruct"
.end annotation


# instance fields
.field mFullName:Ljava/lang/String;

.field mPhoneNumber:Ljava/lang/String;

.field mRecordType:I

.field mState:I

.field final synthetic this$0:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;


# direct methods
.method public constructor <init>(Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$phoneBookSyncUpdateStruct;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$phoneBookSyncUpdateStruct;->mRecordType:I

    .line 105
    iput-object p3, p0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$phoneBookSyncUpdateStruct;->mFullName:Ljava/lang/String;

    .line 106
    iput-object p4, p0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$phoneBookSyncUpdateStruct;->mPhoneNumber:Ljava/lang/String;

    .line 107
    iput p5, p0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$phoneBookSyncUpdateStruct;->mState:I

    return-void
.end method
