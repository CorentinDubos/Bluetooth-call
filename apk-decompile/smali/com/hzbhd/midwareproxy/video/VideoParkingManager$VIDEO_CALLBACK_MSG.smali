.class final enum Lcom/hzbhd/midwareproxy/video/VideoParkingManager$VIDEO_CALLBACK_MSG;
.super Ljava/lang/Enum;
.source "VideoParkingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/video/VideoParkingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "VIDEO_CALLBACK_MSG"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hzbhd/midwareproxy/video/VideoParkingManager$VIDEO_CALLBACK_MSG;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hzbhd/midwareproxy/video/VideoParkingManager$VIDEO_CALLBACK_MSG;

.field public static final enum onParingStateChanged:Lcom/hzbhd/midwareproxy/video/VideoParkingManager$VIDEO_CALLBACK_MSG;

.field public static final enum reportVideoStatus:Lcom/hzbhd/midwareproxy/video/VideoParkingManager$VIDEO_CALLBACK_MSG;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 69
    new-instance v0, Lcom/hzbhd/midwareproxy/video/VideoParkingManager$VIDEO_CALLBACK_MSG;

    const-string/jumbo v1, "reportVideoStatus"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hzbhd/midwareproxy/video/VideoParkingManager$VIDEO_CALLBACK_MSG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/video/VideoParkingManager$VIDEO_CALLBACK_MSG;->reportVideoStatus:Lcom/hzbhd/midwareproxy/video/VideoParkingManager$VIDEO_CALLBACK_MSG;

    .line 70
    new-instance v0, Lcom/hzbhd/midwareproxy/video/VideoParkingManager$VIDEO_CALLBACK_MSG;

    const-string v1, "onParingStateChanged"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/hzbhd/midwareproxy/video/VideoParkingManager$VIDEO_CALLBACK_MSG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/video/VideoParkingManager$VIDEO_CALLBACK_MSG;->onParingStateChanged:Lcom/hzbhd/midwareproxy/video/VideoParkingManager$VIDEO_CALLBACK_MSG;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/hzbhd/midwareproxy/video/VideoParkingManager$VIDEO_CALLBACK_MSG;

    .line 68
    sget-object v4, Lcom/hzbhd/midwareproxy/video/VideoParkingManager$VIDEO_CALLBACK_MSG;->reportVideoStatus:Lcom/hzbhd/midwareproxy/video/VideoParkingManager$VIDEO_CALLBACK_MSG;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/hzbhd/midwareproxy/video/VideoParkingManager$VIDEO_CALLBACK_MSG;->$VALUES:[Lcom/hzbhd/midwareproxy/video/VideoParkingManager$VIDEO_CALLBACK_MSG;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hzbhd/midwareproxy/video/VideoParkingManager$VIDEO_CALLBACK_MSG;
    .locals 1

    .line 68
    const-class v0, Lcom/hzbhd/midwareproxy/video/VideoParkingManager$VIDEO_CALLBACK_MSG;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hzbhd/midwareproxy/video/VideoParkingManager$VIDEO_CALLBACK_MSG;

    return-object p0
.end method

.method public static values()[Lcom/hzbhd/midwareproxy/video/VideoParkingManager$VIDEO_CALLBACK_MSG;
    .locals 1

    .line 68
    sget-object v0, Lcom/hzbhd/midwareproxy/video/VideoParkingManager$VIDEO_CALLBACK_MSG;->$VALUES:[Lcom/hzbhd/midwareproxy/video/VideoParkingManager$VIDEO_CALLBACK_MSG;

    invoke-virtual {v0}, [Lcom/hzbhd/midwareproxy/video/VideoParkingManager$VIDEO_CALLBACK_MSG;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hzbhd/midwareproxy/video/VideoParkingManager$VIDEO_CALLBACK_MSG;

    return-object v0
.end method
