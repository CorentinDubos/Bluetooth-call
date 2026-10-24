.class synthetic Lcom/hzbhd/midwareproxy/video/VideoParkingManager$2;
.super Ljava/lang/Object;
.source "VideoParkingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/video/VideoParkingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$hzbhd$midwareproxy$video$VideoParkingManager$VIDEO_CALLBACK_MSG:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 97
    invoke-static {}, Lcom/hzbhd/midwareproxy/video/VideoParkingManager$VIDEO_CALLBACK_MSG;->values()[Lcom/hzbhd/midwareproxy/video/VideoParkingManager$VIDEO_CALLBACK_MSG;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/hzbhd/midwareproxy/video/VideoParkingManager$2;->$SwitchMap$com$hzbhd$midwareproxy$video$VideoParkingManager$VIDEO_CALLBACK_MSG:[I

    :try_start_0
    sget-object v1, Lcom/hzbhd/midwareproxy/video/VideoParkingManager$VIDEO_CALLBACK_MSG;->reportVideoStatus:Lcom/hzbhd/midwareproxy/video/VideoParkingManager$VIDEO_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/video/VideoParkingManager$VIDEO_CALLBACK_MSG;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/hzbhd/midwareproxy/video/VideoParkingManager$2;->$SwitchMap$com$hzbhd$midwareproxy$video$VideoParkingManager$VIDEO_CALLBACK_MSG:[I

    sget-object v1, Lcom/hzbhd/midwareproxy/video/VideoParkingManager$VIDEO_CALLBACK_MSG;->onParingStateChanged:Lcom/hzbhd/midwareproxy/video/VideoParkingManager$VIDEO_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/video/VideoParkingManager$VIDEO_CALLBACK_MSG;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
