.class public final enum Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform$USB_MODE;
.super Ljava/lang/Enum;
.source "DefaultHardware_Platform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "USB_MODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform$USB_MODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform$USB_MODE;

.field public static final enum DEVIE:Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform$USB_MODE;

.field public static final enum HOST:Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform$USB_MODE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 33
    new-instance v0, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform$USB_MODE;

    const-string v1, "HOST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform$USB_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform$USB_MODE;->HOST:Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform$USB_MODE;

    new-instance v0, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform$USB_MODE;

    const-string v1, "DEVIE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform$USB_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform$USB_MODE;->DEVIE:Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform$USB_MODE;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform$USB_MODE;

    sget-object v4, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform$USB_MODE;->HOST:Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform$USB_MODE;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform$USB_MODE;->$VALUES:[Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform$USB_MODE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform$USB_MODE;
    .locals 1

    .line 33
    const-class v0, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform$USB_MODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform$USB_MODE;

    return-object p0
.end method

.method public static values()[Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform$USB_MODE;
    .locals 1

    .line 33
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform$USB_MODE;->$VALUES:[Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform$USB_MODE;

    invoke-virtual {v0}, [Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform$USB_MODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform$USB_MODE;

    return-object v0
.end method
