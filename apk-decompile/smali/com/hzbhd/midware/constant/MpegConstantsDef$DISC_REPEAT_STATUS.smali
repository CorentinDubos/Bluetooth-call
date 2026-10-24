.class public final enum Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_REPEAT_STATUS;
.super Ljava/lang/Enum;
.source "MpegConstantsDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midware/constant/MpegConstantsDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DISC_REPEAT_STATUS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_REPEAT_STATUS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_REPEAT_STATUS;

.field public static final enum PLAY_REPEAT_ALL:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_REPEAT_STATUS;

.field public static final enum PLAY_REPEAT_CHAPTER:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_REPEAT_STATUS;

.field public static final enum PLAY_REPEAT_FOLDER:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_REPEAT_STATUS;

.field public static final enum PLAY_REPEAT_OFF:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_REPEAT_STATUS;

.field public static final enum PLAY_REPEAT_ONE:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_REPEAT_STATUS;

.field public static final enum PLAY_REPEAT_TITLE:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_REPEAT_STATUS;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 403
    new-instance v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_REPEAT_STATUS;

    const-string v1, "PLAY_REPEAT_OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_REPEAT_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_REPEAT_STATUS;->PLAY_REPEAT_OFF:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_REPEAT_STATUS;

    new-instance v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_REPEAT_STATUS;

    const-string v1, "PLAY_REPEAT_ONE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_REPEAT_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_REPEAT_STATUS;->PLAY_REPEAT_ONE:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_REPEAT_STATUS;

    new-instance v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_REPEAT_STATUS;

    const-string v1, "PLAY_REPEAT_FOLDER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_REPEAT_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_REPEAT_STATUS;->PLAY_REPEAT_FOLDER:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_REPEAT_STATUS;

    new-instance v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_REPEAT_STATUS;

    const-string v1, "PLAY_REPEAT_ALL"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_REPEAT_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_REPEAT_STATUS;->PLAY_REPEAT_ALL:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_REPEAT_STATUS;

    new-instance v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_REPEAT_STATUS;

    const-string v1, "PLAY_REPEAT_TITLE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_REPEAT_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_REPEAT_STATUS;->PLAY_REPEAT_TITLE:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_REPEAT_STATUS;

    new-instance v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_REPEAT_STATUS;

    const-string v1, "PLAY_REPEAT_CHAPTER"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_REPEAT_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_REPEAT_STATUS;->PLAY_REPEAT_CHAPTER:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_REPEAT_STATUS;

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_REPEAT_STATUS;

    .line 402
    sget-object v8, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_REPEAT_STATUS;->PLAY_REPEAT_OFF:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_REPEAT_STATUS;

    aput-object v8, v1, v2

    sget-object v2, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_REPEAT_STATUS;->PLAY_REPEAT_ONE:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_REPEAT_STATUS;

    aput-object v2, v1, v3

    sget-object v2, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_REPEAT_STATUS;->PLAY_REPEAT_FOLDER:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_REPEAT_STATUS;

    aput-object v2, v1, v4

    sget-object v2, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_REPEAT_STATUS;->PLAY_REPEAT_ALL:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_REPEAT_STATUS;

    aput-object v2, v1, v5

    sget-object v2, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_REPEAT_STATUS;->PLAY_REPEAT_TITLE:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_REPEAT_STATUS;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_REPEAT_STATUS;->$VALUES:[Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_REPEAT_STATUS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 402
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_REPEAT_STATUS;
    .locals 1

    .line 402
    const-class v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_REPEAT_STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_REPEAT_STATUS;

    return-object p0
.end method

.method public static values()[Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_REPEAT_STATUS;
    .locals 1

    .line 402
    sget-object v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_REPEAT_STATUS;->$VALUES:[Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_REPEAT_STATUS;

    invoke-virtual {v0}, [Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_REPEAT_STATUS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_REPEAT_STATUS;

    return-object v0
.end method
