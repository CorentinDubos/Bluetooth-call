.class final enum Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;
.super Ljava/lang/Enum;
.source "MpegplayerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "MPEG_CALLBACK_MSG"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;

.field public static final enum discEjected:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;

.field public static final enum discQueryEnd:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;

.field public static final enum discQueryStart:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;

.field public static final enum playCDTrackUpdate:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;

.field public static final enum playDVDRootMenuUpdate:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;

.field public static final enum playDVDTitleChapterUpdate:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;

.field public static final enum playROMFileUpdate:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;

.field public static final enum playStatusUpdate:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;

.field public static final enum playTimeUpdate:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 150
    new-instance v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;

    const-string v1, "discEjected"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;->discEjected:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;

    new-instance v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;

    const-string v1, "discQueryStart"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;->discQueryStart:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;

    new-instance v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;

    const-string v1, "discQueryEnd"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;->discQueryEnd:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;

    new-instance v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;

    const-string v1, "playDVDRootMenuUpdate"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;->playDVDRootMenuUpdate:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;

    new-instance v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;

    const-string v1, "playStatusUpdate"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;->playStatusUpdate:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;

    new-instance v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;

    const-string v1, "playTimeUpdate"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;->playTimeUpdate:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;

    new-instance v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;

    const-string v1, "playCDTrackUpdate"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;->playCDTrackUpdate:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;

    new-instance v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;

    const-string v1, "playDVDTitleChapterUpdate"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;->playDVDTitleChapterUpdate:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;

    new-instance v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;

    const-string v1, "playROMFileUpdate"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;->playROMFileUpdate:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;

    const/16 v1, 0x9

    new-array v1, v1, [Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;

    .line 149
    sget-object v11, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;->discEjected:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;

    aput-object v11, v1, v2

    sget-object v2, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;->discQueryStart:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;

    aput-object v2, v1, v3

    sget-object v2, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;->discQueryEnd:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;

    aput-object v2, v1, v4

    sget-object v2, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;->playDVDRootMenuUpdate:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;

    aput-object v2, v1, v5

    sget-object v2, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;->playStatusUpdate:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;

    aput-object v2, v1, v6

    sget-object v2, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;->playTimeUpdate:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;

    aput-object v2, v1, v7

    sget-object v2, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;->playCDTrackUpdate:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;

    aput-object v2, v1, v8

    sget-object v2, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;->playDVDTitleChapterUpdate:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;

    aput-object v2, v1, v9

    aput-object v0, v1, v10

    sput-object v1, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;->$VALUES:[Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 149
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;
    .locals 1

    .line 149
    const-class v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;

    return-object p0
.end method

.method public static values()[Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;
    .locals 1

    .line 149
    sget-object v0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;->$VALUES:[Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;

    invoke-virtual {v0}, [Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$MPEG_CALLBACK_MSG;

    return-object v0
.end method
