.class public final enum Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_ANDROID_STANDY_SLEEP_TYPE;
.super Ljava/lang/Enum;
.source "HardwareConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/hardware/HardwareConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HARDWARD_PLATFORM_ANDROID_STANDY_SLEEP_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_ANDROID_STANDY_SLEEP_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_ANDROID_STANDY_SLEEP_TYPE;

.field public static final enum DEFAULT:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_ANDROID_STANDY_SLEEP_TYPE;

.field public static final enum OS_COMMAND:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_ANDROID_STANDY_SLEEP_TYPE;

.field public static final enum RESERVED2:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_ANDROID_STANDY_SLEEP_TYPE;

.field public static final enum RESERVED3:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_ANDROID_STANDY_SLEEP_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 111
    new-instance v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_ANDROID_STANDY_SLEEP_TYPE;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_ANDROID_STANDY_SLEEP_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_ANDROID_STANDY_SLEEP_TYPE;->DEFAULT:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_ANDROID_STANDY_SLEEP_TYPE;

    .line 112
    new-instance v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_ANDROID_STANDY_SLEEP_TYPE;

    const-string v1, "OS_COMMAND"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_ANDROID_STANDY_SLEEP_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_ANDROID_STANDY_SLEEP_TYPE;->OS_COMMAND:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_ANDROID_STANDY_SLEEP_TYPE;

    .line 113
    new-instance v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_ANDROID_STANDY_SLEEP_TYPE;

    const-string v1, "RESERVED2"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_ANDROID_STANDY_SLEEP_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_ANDROID_STANDY_SLEEP_TYPE;->RESERVED2:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_ANDROID_STANDY_SLEEP_TYPE;

    .line 114
    new-instance v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_ANDROID_STANDY_SLEEP_TYPE;

    const-string v1, "RESERVED3"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_ANDROID_STANDY_SLEEP_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_ANDROID_STANDY_SLEEP_TYPE;->RESERVED3:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_ANDROID_STANDY_SLEEP_TYPE;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_ANDROID_STANDY_SLEEP_TYPE;

    .line 110
    sget-object v6, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_ANDROID_STANDY_SLEEP_TYPE;->DEFAULT:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_ANDROID_STANDY_SLEEP_TYPE;

    aput-object v6, v1, v2

    sget-object v2, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_ANDROID_STANDY_SLEEP_TYPE;->OS_COMMAND:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_ANDROID_STANDY_SLEEP_TYPE;

    aput-object v2, v1, v3

    sget-object v2, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_ANDROID_STANDY_SLEEP_TYPE;->RESERVED2:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_ANDROID_STANDY_SLEEP_TYPE;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_ANDROID_STANDY_SLEEP_TYPE;->$VALUES:[Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_ANDROID_STANDY_SLEEP_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 110
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_ANDROID_STANDY_SLEEP_TYPE;
    .locals 1

    .line 110
    const-class v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_ANDROID_STANDY_SLEEP_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_ANDROID_STANDY_SLEEP_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_ANDROID_STANDY_SLEEP_TYPE;
    .locals 1

    .line 110
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_ANDROID_STANDY_SLEEP_TYPE;->$VALUES:[Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_ANDROID_STANDY_SLEEP_TYPE;

    invoke-virtual {v0}, [Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_ANDROID_STANDY_SLEEP_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_ANDROID_STANDY_SLEEP_TYPE;

    return-object v0
.end method
