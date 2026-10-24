.class public final enum Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;
.super Ljava/lang/Enum;
.source "BluetoothConstantsDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midware/constant/BluetoothConstantsDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HFP_ACTION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;

.field public static final enum ACTIVE:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;

.field public static final enum CALLERNUM_OK:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;

.field public static final enum CALL_ON_HOLD:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;

.field public static final enum CONNECTED:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;

.field public static final enum CONNECTING:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;

.field public static final enum DISCONNECTED:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;

.field public static final enum INCOMING_ESTABLISH:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;

.field public static final enum MULTI_CALL:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;

.field public static final enum NOT_INIT:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;

.field public static final enum OUTGOING_ESTABLISH:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;

.field public static final enum READY:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;

.field public static final enum WAITING_CALL:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 117
    new-instance v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;

    const-string v1, "NOT_INIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;->NOT_INIT:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;

    .line 118
    new-instance v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;

    const-string v1, "READY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;->READY:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;

    .line 119
    new-instance v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;

    const-string v1, "CONNECTING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;->CONNECTING:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;

    .line 120
    new-instance v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;

    const-string v1, "CONNECTED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;->CONNECTED:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;

    .line 121
    new-instance v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;

    const-string v1, "DISCONNECTED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;->DISCONNECTED:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;

    .line 122
    new-instance v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;

    const-string v1, "OUTGOING_ESTABLISH"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;->OUTGOING_ESTABLISH:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;

    .line 123
    new-instance v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;

    const-string v1, "INCOMING_ESTABLISH"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;->INCOMING_ESTABLISH:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;

    .line 124
    new-instance v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;

    const-string v1, "ACTIVE"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;->ACTIVE:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;

    .line 125
    new-instance v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;

    const-string v1, "CALLERNUM_OK"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;->CALLERNUM_OK:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;

    .line 126
    new-instance v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;

    const-string v1, "WAITING_CALL"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;->WAITING_CALL:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;

    .line 127
    new-instance v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;

    const-string v1, "MULTI_CALL"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;->MULTI_CALL:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;

    .line 128
    new-instance v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;

    const-string v1, "CALL_ON_HOLD"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;->CALL_ON_HOLD:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;

    const/16 v1, 0xc

    new-array v1, v1, [Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;

    .line 116
    sget-object v14, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;->NOT_INIT:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;

    aput-object v14, v1, v2

    sget-object v2, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;->READY:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;

    aput-object v2, v1, v3

    sget-object v2, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;->CONNECTING:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;

    aput-object v2, v1, v4

    sget-object v2, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;->CONNECTED:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;

    aput-object v2, v1, v5

    sget-object v2, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;->DISCONNECTED:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;

    aput-object v2, v1, v6

    sget-object v2, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;->OUTGOING_ESTABLISH:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;

    aput-object v2, v1, v7

    sget-object v2, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;->INCOMING_ESTABLISH:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;

    aput-object v2, v1, v8

    sget-object v2, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;->ACTIVE:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;

    aput-object v2, v1, v9

    sget-object v2, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;->CALLERNUM_OK:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;

    aput-object v2, v1, v10

    sget-object v2, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;->WAITING_CALL:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;

    aput-object v2, v1, v11

    sget-object v2, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;->MULTI_CALL:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;

    aput-object v2, v1, v12

    aput-object v0, v1, v13

    sput-object v1, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;->$VALUES:[Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 116
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;
    .locals 1

    .line 116
    const-class v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;

    return-object p0
.end method

.method public static values()[Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;
    .locals 1

    .line 116
    sget-object v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;->$VALUES:[Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;

    invoke-virtual {v0}, [Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;

    return-object v0
.end method
