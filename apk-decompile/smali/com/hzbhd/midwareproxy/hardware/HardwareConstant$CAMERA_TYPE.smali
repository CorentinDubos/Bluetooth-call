.class public final enum Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;
.super Ljava/lang/Enum;
.source "HardwareConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/hardware/HardwareConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CAMERA_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;

.field public static final enum CAMERA_ATV:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;

.field public static final enum CAMERA_AUXIN:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;

.field public static final enum CAMERA_BACKCAMERA:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;

.field public static final enum CAMERA_DTV:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;

.field public static final enum CAMERA_DVR:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;

.field public static final enum CAMERA_MPEG:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;

.field public static final enum CAMERA_PRECAMERA:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 39
    new-instance v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;

    const-string v1, "CAMERA_MPEG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;->CAMERA_MPEG:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;

    .line 40
    new-instance v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;

    const-string v1, "CAMERA_AUXIN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;->CAMERA_AUXIN:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;

    .line 41
    new-instance v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;

    const-string v1, "CAMERA_PRECAMERA"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;->CAMERA_PRECAMERA:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;

    .line 42
    new-instance v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;

    const-string v1, "CAMERA_BACKCAMERA"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;->CAMERA_BACKCAMERA:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;

    .line 43
    new-instance v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;

    const-string v1, "CAMERA_DTV"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;->CAMERA_DTV:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;

    .line 44
    new-instance v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;

    const-string v1, "CAMERA_ATV"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;->CAMERA_ATV:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;

    .line 45
    new-instance v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;

    const-string v1, "CAMERA_DVR"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;->CAMERA_DVR:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;

    .line 38
    sget-object v9, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;->CAMERA_MPEG:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;

    aput-object v9, v1, v2

    sget-object v2, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;->CAMERA_AUXIN:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;

    aput-object v2, v1, v3

    sget-object v2, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;->CAMERA_PRECAMERA:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;

    aput-object v2, v1, v4

    sget-object v2, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;->CAMERA_BACKCAMERA:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;

    aput-object v2, v1, v5

    sget-object v2, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;->CAMERA_DTV:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;

    aput-object v2, v1, v6

    sget-object v2, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;->CAMERA_ATV:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;

    aput-object v2, v1, v7

    aput-object v0, v1, v8

    sput-object v1, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;->$VALUES:[Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;
    .locals 1

    .line 38
    const-class v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;
    .locals 1

    .line 38
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;->$VALUES:[Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;

    invoke-virtual {v0}, [Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$CAMERA_TYPE;

    return-object v0
.end method
