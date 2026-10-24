.class public final enum Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;
.super Ljava/lang/Enum;
.source "MpegConstantsDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midware/constant/MpegConstantsDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DISC_PLAY_STATUS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

.field public static final enum PLAY_STATUS_BACKWARD_20X:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

.field public static final enum PLAY_STATUS_BACKWARD_2X:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

.field public static final enum PLAY_STATUS_BACKWARD_4X:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

.field public static final enum PLAY_STATUS_BACKWARD_8X:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

.field public static final enum PLAY_STATUS_BACKWARD_OFF:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

.field public static final enum PLAY_STATUS_DISC_ERROR:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

.field public static final enum PLAY_STATUS_FORWARD_20X:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

.field public static final enum PLAY_STATUS_FORWARD_2X:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

.field public static final enum PLAY_STATUS_FORWARD_4X:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

.field public static final enum PLAY_STATUS_FORWARD_8X:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

.field public static final enum PLAY_STATUS_FORWARD_OFF:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

.field public static final enum PLAY_STATUS_LOADING:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

.field public static final enum PLAY_STATUS_PAUSE:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

.field public static final enum PLAY_STATUS_PLAY:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

.field public static final enum PLAY_STATUS_PRE_STOP:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

.field public static final enum PLAY_STATUS_STOP:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

.field public static final enum RESUME:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 382
    new-instance v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

    const-string v1, "PLAY_STATUS_LOADING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;->PLAY_STATUS_LOADING:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

    .line 383
    new-instance v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

    const-string v1, "PLAY_STATUS_PLAY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;->PLAY_STATUS_PLAY:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

    .line 384
    new-instance v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

    const-string v1, "PLAY_STATUS_PAUSE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;->PLAY_STATUS_PAUSE:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

    .line 385
    new-instance v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

    const-string v1, "PLAY_STATUS_PRE_STOP"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;->PLAY_STATUS_PRE_STOP:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

    .line 386
    new-instance v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

    const-string v1, "PLAY_STATUS_STOP"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;->PLAY_STATUS_STOP:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

    .line 387
    new-instance v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

    const-string v1, "RESUME"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;->RESUME:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

    .line 388
    new-instance v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

    const-string v1, "PLAY_STATUS_FORWARD_OFF"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;->PLAY_STATUS_FORWARD_OFF:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

    .line 389
    new-instance v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

    const-string v1, "PLAY_STATUS_FORWARD_2X"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;->PLAY_STATUS_FORWARD_2X:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

    .line 390
    new-instance v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

    const-string v1, "PLAY_STATUS_FORWARD_4X"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;->PLAY_STATUS_FORWARD_4X:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

    .line 391
    new-instance v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

    const-string v1, "PLAY_STATUS_FORWARD_8X"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;->PLAY_STATUS_FORWARD_8X:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

    .line 392
    new-instance v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

    const-string v1, "PLAY_STATUS_FORWARD_20X"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;->PLAY_STATUS_FORWARD_20X:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

    .line 393
    new-instance v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

    const-string v1, "PLAY_STATUS_BACKWARD_OFF"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;->PLAY_STATUS_BACKWARD_OFF:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

    .line 394
    new-instance v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

    const-string v1, "PLAY_STATUS_BACKWARD_2X"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;->PLAY_STATUS_BACKWARD_2X:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

    .line 395
    new-instance v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

    const-string v1, "PLAY_STATUS_BACKWARD_4X"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;->PLAY_STATUS_BACKWARD_4X:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

    .line 396
    new-instance v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

    const-string v1, "PLAY_STATUS_BACKWARD_8X"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;->PLAY_STATUS_BACKWARD_8X:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

    .line 397
    new-instance v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

    const-string v1, "PLAY_STATUS_BACKWARD_20X"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15}, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;->PLAY_STATUS_BACKWARD_20X:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

    .line 398
    new-instance v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

    const-string v1, "PLAY_STATUS_DISC_ERROR"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15}, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;->PLAY_STATUS_DISC_ERROR:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

    const/16 v1, 0x11

    new-array v1, v1, [Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

    .line 381
    sget-object v16, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;->PLAY_STATUS_LOADING:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

    aput-object v16, v1, v2

    sget-object v2, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;->PLAY_STATUS_PLAY:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

    aput-object v2, v1, v3

    sget-object v2, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;->PLAY_STATUS_PAUSE:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

    aput-object v2, v1, v4

    sget-object v2, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;->PLAY_STATUS_PRE_STOP:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

    aput-object v2, v1, v5

    sget-object v2, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;->PLAY_STATUS_STOP:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

    aput-object v2, v1, v6

    sget-object v2, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;->RESUME:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

    aput-object v2, v1, v7

    sget-object v2, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;->PLAY_STATUS_FORWARD_OFF:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

    aput-object v2, v1, v8

    sget-object v2, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;->PLAY_STATUS_FORWARD_2X:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

    aput-object v2, v1, v9

    sget-object v2, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;->PLAY_STATUS_FORWARD_4X:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

    aput-object v2, v1, v10

    sget-object v2, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;->PLAY_STATUS_FORWARD_8X:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

    aput-object v2, v1, v11

    sget-object v2, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;->PLAY_STATUS_FORWARD_20X:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

    aput-object v2, v1, v12

    sget-object v2, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;->PLAY_STATUS_BACKWARD_OFF:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

    aput-object v2, v1, v13

    sget-object v2, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;->PLAY_STATUS_BACKWARD_2X:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

    aput-object v2, v1, v14

    sget-object v2, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;->PLAY_STATUS_BACKWARD_4X:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;->PLAY_STATUS_BACKWARD_8X:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;->PLAY_STATUS_BACKWARD_20X:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    aput-object v0, v1, v15

    sput-object v1, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;->$VALUES:[Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 381
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;
    .locals 1

    .line 381
    const-class v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

    return-object p0
.end method

.method public static values()[Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;
    .locals 1

    .line 381
    sget-object v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;->$VALUES:[Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

    invoke-virtual {v0}, [Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_PLAY_STATUS;

    return-object v0
.end method
