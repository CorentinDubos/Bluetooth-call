.class public final enum Lcom/hzbhd/midware/constant/BluetoothConstantsDef$AUDIO_TRUANSFER_STATE;
.super Ljava/lang/Enum;
.source "BluetoothConstantsDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midware/constant/BluetoothConstantsDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AUDIO_TRUANSFER_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hzbhd/midware/constant/BluetoothConstantsDef$AUDIO_TRUANSFER_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hzbhd/midware/constant/BluetoothConstantsDef$AUDIO_TRUANSFER_STATE;

.field public static final enum HAND_FREE:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$AUDIO_TRUANSFER_STATE;

.field public static final enum PHONE:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$AUDIO_TRUANSFER_STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 151
    new-instance v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$AUDIO_TRUANSFER_STATE;

    const-string v1, "PHONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$AUDIO_TRUANSFER_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$AUDIO_TRUANSFER_STATE;->PHONE:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$AUDIO_TRUANSFER_STATE;

    .line 152
    new-instance v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$AUDIO_TRUANSFER_STATE;

    const-string v1, "HAND_FREE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$AUDIO_TRUANSFER_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$AUDIO_TRUANSFER_STATE;->HAND_FREE:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$AUDIO_TRUANSFER_STATE;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/hzbhd/midware/constant/BluetoothConstantsDef$AUDIO_TRUANSFER_STATE;

    .line 150
    sget-object v4, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$AUDIO_TRUANSFER_STATE;->PHONE:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$AUDIO_TRUANSFER_STATE;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$AUDIO_TRUANSFER_STATE;->$VALUES:[Lcom/hzbhd/midware/constant/BluetoothConstantsDef$AUDIO_TRUANSFER_STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 150
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hzbhd/midware/constant/BluetoothConstantsDef$AUDIO_TRUANSFER_STATE;
    .locals 1

    .line 150
    const-class v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$AUDIO_TRUANSFER_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$AUDIO_TRUANSFER_STATE;

    return-object p0
.end method

.method public static values()[Lcom/hzbhd/midware/constant/BluetoothConstantsDef$AUDIO_TRUANSFER_STATE;
    .locals 1

    .line 150
    sget-object v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$AUDIO_TRUANSFER_STATE;->$VALUES:[Lcom/hzbhd/midware/constant/BluetoothConstantsDef$AUDIO_TRUANSFER_STATE;

    invoke-virtual {v0}, [Lcom/hzbhd/midware/constant/BluetoothConstantsDef$AUDIO_TRUANSFER_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hzbhd/midware/constant/BluetoothConstantsDef$AUDIO_TRUANSFER_STATE;

    return-object v0
.end method
