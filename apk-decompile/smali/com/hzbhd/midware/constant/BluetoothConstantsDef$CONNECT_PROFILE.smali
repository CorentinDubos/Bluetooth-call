.class public final enum Lcom/hzbhd/midware/constant/BluetoothConstantsDef$CONNECT_PROFILE;
.super Ljava/lang/Enum;
.source "BluetoothConstantsDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midware/constant/BluetoothConstantsDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CONNECT_PROFILE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hzbhd/midware/constant/BluetoothConstantsDef$CONNECT_PROFILE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hzbhd/midware/constant/BluetoothConstantsDef$CONNECT_PROFILE;

.field public static final enum A2DP:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$CONNECT_PROFILE;

.field public static final enum HFP:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$CONNECT_PROFILE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 112
    new-instance v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$CONNECT_PROFILE;

    const-string v1, "HFP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$CONNECT_PROFILE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$CONNECT_PROFILE;->HFP:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$CONNECT_PROFILE;

    .line 113
    new-instance v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$CONNECT_PROFILE;

    const-string v1, "A2DP"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$CONNECT_PROFILE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$CONNECT_PROFILE;->A2DP:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$CONNECT_PROFILE;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/hzbhd/midware/constant/BluetoothConstantsDef$CONNECT_PROFILE;

    .line 111
    sget-object v4, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$CONNECT_PROFILE;->HFP:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$CONNECT_PROFILE;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$CONNECT_PROFILE;->$VALUES:[Lcom/hzbhd/midware/constant/BluetoothConstantsDef$CONNECT_PROFILE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 111
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hzbhd/midware/constant/BluetoothConstantsDef$CONNECT_PROFILE;
    .locals 1

    .line 111
    const-class v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$CONNECT_PROFILE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$CONNECT_PROFILE;

    return-object p0
.end method

.method public static values()[Lcom/hzbhd/midware/constant/BluetoothConstantsDef$CONNECT_PROFILE;
    .locals 1

    .line 111
    sget-object v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$CONNECT_PROFILE;->$VALUES:[Lcom/hzbhd/midware/constant/BluetoothConstantsDef$CONNECT_PROFILE;

    invoke-virtual {v0}, [Lcom/hzbhd/midware/constant/BluetoothConstantsDef$CONNECT_PROFILE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hzbhd/midware/constant/BluetoothConstantsDef$CONNECT_PROFILE;

    return-object v0
.end method
