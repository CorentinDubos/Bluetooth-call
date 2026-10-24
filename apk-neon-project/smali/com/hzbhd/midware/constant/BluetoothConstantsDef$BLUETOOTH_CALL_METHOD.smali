.class public final enum Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;
.super Ljava/lang/Enum;
.source "BluetoothConstantsDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midware/constant/BluetoothConstantsDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BLUETOOTH_CALL_METHOD"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;

.field public static final enum CALLOUT:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;

.field public static final enum CONNECT_A2DP:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;

.field public static final enum CONNECT_DEVICE:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;

.field public static final enum CONNECT_HFP:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;

.field public static final enum DISCONNECT_A2DP:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;

.field public static final enum DISCONNECT_HFP:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;

.field public static final enum HANGUP:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;

.field public static final enum REJECT:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;

.field public static final enum SETNAME:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;

.field public static final enum SETPIN:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;

.field public static final enum TERMINATE:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 156
    new-instance v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;

    const-string v1, "SETNAME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;->SETNAME:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;

    .line 157
    new-instance v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;

    const-string v1, "SETPIN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;->SETPIN:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;

    .line 158
    new-instance v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;

    const-string v1, "CONNECT_DEVICE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;->CONNECT_DEVICE:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;

    .line 159
    new-instance v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;

    const-string v1, "CONNECT_HFP"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;->CONNECT_HFP:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;

    .line 160
    new-instance v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;

    const-string v1, "CONNECT_A2DP"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;->CONNECT_A2DP:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;

    .line 161
    new-instance v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;

    const-string v1, "DISCONNECT_HFP"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;->DISCONNECT_HFP:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;

    .line 162
    new-instance v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;

    const-string v1, "DISCONNECT_A2DP"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;->DISCONNECT_A2DP:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;

    .line 163
    new-instance v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;

    const-string v1, "HANGUP"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;->HANGUP:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;

    .line 164
    new-instance v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;

    const-string v1, "REJECT"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;->REJECT:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;

    .line 165
    new-instance v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;

    const-string v1, "TERMINATE"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;->TERMINATE:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;

    .line 166
    new-instance v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;

    const-string v1, "CALLOUT"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;->CALLOUT:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;

    const/16 v1, 0xb

    new-array v1, v1, [Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;

    .line 155
    sget-object v13, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;->SETNAME:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;

    aput-object v13, v1, v2

    sget-object v2, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;->SETPIN:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;

    aput-object v2, v1, v3

    sget-object v2, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;->CONNECT_DEVICE:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;

    aput-object v2, v1, v4

    sget-object v2, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;->CONNECT_HFP:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;

    aput-object v2, v1, v5

    sget-object v2, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;->CONNECT_A2DP:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;

    aput-object v2, v1, v6

    sget-object v2, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;->DISCONNECT_HFP:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;

    aput-object v2, v1, v7

    sget-object v2, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;->DISCONNECT_A2DP:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;

    aput-object v2, v1, v8

    sget-object v2, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;->HANGUP:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;

    aput-object v2, v1, v9

    sget-object v2, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;->REJECT:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;

    aput-object v2, v1, v10

    sget-object v2, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;->TERMINATE:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;

    aput-object v2, v1, v11

    aput-object v0, v1, v12

    sput-object v1, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;->$VALUES:[Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 155
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;
    .locals 1

    .line 155
    const-class v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;

    return-object p0
.end method

.method public static values()[Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;
    .locals 1

    .line 155
    sget-object v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;->$VALUES:[Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;

    invoke-virtual {v0}, [Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;

    return-object v0
.end method
