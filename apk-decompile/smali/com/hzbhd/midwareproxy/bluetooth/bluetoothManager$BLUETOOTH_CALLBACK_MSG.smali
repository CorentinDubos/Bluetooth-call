.class final enum Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;
.super Ljava/lang/Enum;
.source "bluetoothManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "BLUETOOTH_CALLBACK_MSG"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;

.field public static final enum A2DPActionChanged:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;

.field public static final enum BTAudioChannelRequest:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;

.field public static final enum HFPActionChanged:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;

.field public static final enum HFPMicStateChanged:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;

.field public static final enum HFPSwitchStateChanged:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;

.field public static final enum InquiryStateChanged:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;

.field public static final enum MethodResultReturned:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;

.field public static final enum newConnection:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;

.field public static final enum newDevicePaired:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;

.field public static final enum newDeviceSearch:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;

.field public static final enum phoneBookSync:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;

.field public static final enum playStateChanged:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 84
    new-instance v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;

    const-string v1, "phoneBookSync"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;->phoneBookSync:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;

    .line 85
    new-instance v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;

    const-string v1, "BTAudioChannelRequest"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;->BTAudioChannelRequest:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;

    .line 86
    new-instance v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;

    const-string v1, "newDevicePaired"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;->newDevicePaired:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;

    .line 87
    new-instance v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;

    const-string v1, "newDeviceSearch"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;->newDeviceSearch:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;

    .line 88
    new-instance v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;

    const-string v1, "newConnection"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;->newConnection:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;

    .line 89
    new-instance v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;

    const-string v1, "InquiryStateChanged"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;->InquiryStateChanged:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;

    .line 90
    new-instance v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;

    const-string v1, "A2DPActionChanged"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;->A2DPActionChanged:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;

    .line 91
    new-instance v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;

    const-string v1, "HFPActionChanged"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;->HFPActionChanged:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;

    .line 92
    new-instance v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;

    const-string v1, "playStateChanged"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;->playStateChanged:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;

    .line 93
    new-instance v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;

    const-string v1, "HFPMicStateChanged"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;->HFPMicStateChanged:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;

    .line 94
    new-instance v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;

    const-string v1, "HFPSwitchStateChanged"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;->HFPSwitchStateChanged:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;

    .line 95
    new-instance v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;

    const-string v1, "MethodResultReturned"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;->MethodResultReturned:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;

    const/16 v1, 0xc

    new-array v1, v1, [Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;

    .line 83
    sget-object v14, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;->phoneBookSync:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;

    aput-object v14, v1, v2

    sget-object v2, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;->BTAudioChannelRequest:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;

    aput-object v2, v1, v3

    sget-object v2, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;->newDevicePaired:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;

    aput-object v2, v1, v4

    sget-object v2, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;->newDeviceSearch:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;

    aput-object v2, v1, v5

    sget-object v2, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;->newConnection:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;

    aput-object v2, v1, v6

    sget-object v2, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;->InquiryStateChanged:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;

    aput-object v2, v1, v7

    sget-object v2, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;->A2DPActionChanged:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;

    aput-object v2, v1, v8

    sget-object v2, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;->HFPActionChanged:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;

    aput-object v2, v1, v9

    sget-object v2, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;->playStateChanged:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;

    aput-object v2, v1, v10

    sget-object v2, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;->HFPMicStateChanged:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;

    aput-object v2, v1, v11

    sget-object v2, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;->HFPSwitchStateChanged:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;

    aput-object v2, v1, v12

    aput-object v0, v1, v13

    sput-object v1, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;->$VALUES:[Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 83
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;
    .locals 1

    .line 83
    const-class v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;

    return-object p0
.end method

.method public static values()[Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;
    .locals 1

    .line 83
    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;->$VALUES:[Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v0}, [Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;

    return-object v0
.end method
