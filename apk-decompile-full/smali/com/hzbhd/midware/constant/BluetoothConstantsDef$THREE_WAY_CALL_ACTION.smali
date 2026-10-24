.class public final enum Lcom/hzbhd/midware/constant/BluetoothConstantsDef$THREE_WAY_CALL_ACTION;
.super Ljava/lang/Enum;
.source "BluetoothConstantsDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midware/constant/BluetoothConstantsDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "THREE_WAY_CALL_ACTION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hzbhd/midware/constant/BluetoothConstantsDef$THREE_WAY_CALL_ACTION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hzbhd/midware/constant/BluetoothConstantsDef$THREE_WAY_CALL_ACTION;

.field public static final enum ACCEPT_WAITING_AND_HOLD_ACTIVE:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$THREE_WAY_CALL_ACTION;

.field public static final enum REJECT_WAITING_OR_RELEASE_HOLD:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$THREE_WAY_CALL_ACTION;

.field public static final enum RELEASE_ACTIVE_AND_ACCEPT_OTHER:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$THREE_WAY_CALL_ACTION;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 132
    new-instance v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$THREE_WAY_CALL_ACTION;

    const-string v1, "REJECT_WAITING_OR_RELEASE_HOLD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$THREE_WAY_CALL_ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$THREE_WAY_CALL_ACTION;->REJECT_WAITING_OR_RELEASE_HOLD:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$THREE_WAY_CALL_ACTION;

    .line 133
    new-instance v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$THREE_WAY_CALL_ACTION;

    const-string v1, "RELEASE_ACTIVE_AND_ACCEPT_OTHER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$THREE_WAY_CALL_ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$THREE_WAY_CALL_ACTION;->RELEASE_ACTIVE_AND_ACCEPT_OTHER:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$THREE_WAY_CALL_ACTION;

    .line 134
    new-instance v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$THREE_WAY_CALL_ACTION;

    const-string v1, "ACCEPT_WAITING_AND_HOLD_ACTIVE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$THREE_WAY_CALL_ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$THREE_WAY_CALL_ACTION;->ACCEPT_WAITING_AND_HOLD_ACTIVE:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$THREE_WAY_CALL_ACTION;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/hzbhd/midware/constant/BluetoothConstantsDef$THREE_WAY_CALL_ACTION;

    .line 131
    sget-object v5, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$THREE_WAY_CALL_ACTION;->REJECT_WAITING_OR_RELEASE_HOLD:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$THREE_WAY_CALL_ACTION;

    aput-object v5, v1, v2

    sget-object v2, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$THREE_WAY_CALL_ACTION;->RELEASE_ACTIVE_AND_ACCEPT_OTHER:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$THREE_WAY_CALL_ACTION;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$THREE_WAY_CALL_ACTION;->$VALUES:[Lcom/hzbhd/midware/constant/BluetoothConstantsDef$THREE_WAY_CALL_ACTION;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 131
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hzbhd/midware/constant/BluetoothConstantsDef$THREE_WAY_CALL_ACTION;
    .locals 1

    .line 131
    const-class v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$THREE_WAY_CALL_ACTION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$THREE_WAY_CALL_ACTION;

    return-object p0
.end method

.method public static values()[Lcom/hzbhd/midware/constant/BluetoothConstantsDef$THREE_WAY_CALL_ACTION;
    .locals 1

    .line 131
    sget-object v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$THREE_WAY_CALL_ACTION;->$VALUES:[Lcom/hzbhd/midware/constant/BluetoothConstantsDef$THREE_WAY_CALL_ACTION;

    invoke-virtual {v0}, [Lcom/hzbhd/midware/constant/BluetoothConstantsDef$THREE_WAY_CALL_ACTION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hzbhd/midware/constant/BluetoothConstantsDef$THREE_WAY_CALL_ACTION;

    return-object v0
.end method
