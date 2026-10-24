.class public final enum Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_RESULT;
.super Ljava/lang/Enum;
.source "BluetoothConstantsDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midware/constant/BluetoothConstantsDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BLUETOOTH_CALL_RESULT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_RESULT;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_RESULT;

.field public static final enum FAIL:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_RESULT;

.field public static final enum SUCCESS:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_RESULT;

.field public static final enum TIMEOUT:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_RESULT;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 170
    new-instance v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_RESULT;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_RESULT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_RESULT;->SUCCESS:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_RESULT;

    .line 171
    new-instance v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_RESULT;

    const-string v1, "FAIL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_RESULT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_RESULT;->FAIL:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_RESULT;

    .line 172
    new-instance v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_RESULT;

    const-string v1, "TIMEOUT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_RESULT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_RESULT;->TIMEOUT:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_RESULT;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_RESULT;

    .line 169
    sget-object v5, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_RESULT;->SUCCESS:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_RESULT;

    aput-object v5, v1, v2

    sget-object v2, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_RESULT;->FAIL:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_RESULT;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_RESULT;->$VALUES:[Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_RESULT;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 169
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_RESULT;
    .locals 1

    .line 169
    const-class v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_RESULT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_RESULT;

    return-object p0
.end method

.method public static values()[Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_RESULT;
    .locals 1

    .line 169
    sget-object v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_RESULT;->$VALUES:[Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_RESULT;

    invoke-virtual {v0}, [Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_RESULT;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_RESULT;

    return-object v0
.end method
