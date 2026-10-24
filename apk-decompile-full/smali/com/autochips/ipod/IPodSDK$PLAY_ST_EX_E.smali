.class public final enum Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;
.super Ljava/lang/Enum;
.source "IPodSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/ipod/IPodSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PLAY_ST_EX_E"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;

.field public static final enum PB_ST_EX_ERR_0XFF:Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;

.field public static final enum PB_ST_EX_FFW_SEEK_START:Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;

.field public static final enum PB_ST_EX_FFW_SEEK_STOP:Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;

.field public static final enum PB_ST_EX_FR_0X04:Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;

.field public static final enum PB_ST_EX_PAUSE_0X02:Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;

.field public static final enum PB_ST_EX_PF_0X03:Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;

.field public static final enum PB_ST_EX_PLAY_0X01:Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;

.field public static final enum PB_ST_EX_REWIND_0X05:Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;

.field public static final enum PB_ST_EX_REW_SEEK_START:Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;

.field public static final enum PB_ST_EX_REW_SEEK_STOP:Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;

.field public static final enum PB_ST_EX_STOP_0X00:Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 390
    new-instance v0, Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;

    const-string v1, "PB_ST_EX_STOP_0X00"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;->PB_ST_EX_STOP_0X00:Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;

    .line 394
    new-instance v0, Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;

    const-string v1, "PB_ST_EX_PLAY_0X01"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;->PB_ST_EX_PLAY_0X01:Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;

    .line 398
    new-instance v0, Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;

    const-string v1, "PB_ST_EX_PAUSE_0X02"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;->PB_ST_EX_PAUSE_0X02:Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;

    .line 399
    new-instance v0, Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;

    const-string v1, "PB_ST_EX_PF_0X03"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;->PB_ST_EX_PF_0X03:Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;

    .line 400
    new-instance v0, Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;

    const-string v1, "PB_ST_EX_FR_0X04"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;->PB_ST_EX_FR_0X04:Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;

    .line 401
    new-instance v0, Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;

    const-string v1, "PB_ST_EX_REWIND_0X05"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;->PB_ST_EX_REWIND_0X05:Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;

    .line 405
    new-instance v0, Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;

    const-string v1, "PB_ST_EX_FFW_SEEK_STOP"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;->PB_ST_EX_FFW_SEEK_STOP:Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;

    .line 409
    new-instance v0, Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;

    const-string v1, "PB_ST_EX_REW_SEEK_STOP"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;->PB_ST_EX_REW_SEEK_STOP:Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;

    .line 413
    new-instance v0, Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;

    const-string v1, "PB_ST_EX_FFW_SEEK_START"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10}, Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;->PB_ST_EX_FFW_SEEK_START:Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;

    .line 417
    new-instance v0, Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;

    const-string v1, "PB_ST_EX_REW_SEEK_START"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11, v11}, Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;->PB_ST_EX_REW_SEEK_START:Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;

    .line 421
    new-instance v0, Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;

    const-string v1, "PB_ST_EX_ERR_0XFF"

    const/16 v12, 0xa

    const/16 v13, 0xff

    invoke-direct {v0, v1, v12, v13}, Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;->PB_ST_EX_ERR_0XFF:Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;

    const/16 v1, 0xb

    new-array v1, v1, [Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;

    .line 386
    sget-object v13, Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;->PB_ST_EX_STOP_0X00:Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;

    aput-object v13, v1, v2

    sget-object v2, Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;->PB_ST_EX_PLAY_0X01:Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;

    aput-object v2, v1, v3

    sget-object v2, Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;->PB_ST_EX_PAUSE_0X02:Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;

    aput-object v2, v1, v4

    sget-object v2, Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;->PB_ST_EX_PF_0X03:Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;

    aput-object v2, v1, v5

    sget-object v2, Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;->PB_ST_EX_FR_0X04:Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;

    aput-object v2, v1, v6

    sget-object v2, Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;->PB_ST_EX_REWIND_0X05:Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;

    aput-object v2, v1, v7

    sget-object v2, Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;->PB_ST_EX_FFW_SEEK_STOP:Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;

    aput-object v2, v1, v8

    sget-object v2, Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;->PB_ST_EX_REW_SEEK_STOP:Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;

    aput-object v2, v1, v9

    sget-object v2, Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;->PB_ST_EX_FFW_SEEK_START:Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;

    aput-object v2, v1, v10

    sget-object v2, Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;->PB_ST_EX_REW_SEEK_START:Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;

    aput-object v2, v1, v11

    aput-object v0, v1, v12

    sput-object v1, Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;->$VALUES:[Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 423
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 424
    iput p3, p0, Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 453
    sget-object p0, Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;->PB_ST_EX_ERR_0XFF:Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;

    return-object p0

    .line 451
    :pswitch_0
    sget-object p0, Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;->PB_ST_EX_REW_SEEK_START:Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;

    return-object p0

    .line 449
    :pswitch_1
    sget-object p0, Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;->PB_ST_EX_FFW_SEEK_START:Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;

    return-object p0

    .line 447
    :pswitch_2
    sget-object p0, Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;->PB_ST_EX_REW_SEEK_STOP:Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;

    return-object p0

    .line 445
    :pswitch_3
    sget-object p0, Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;->PB_ST_EX_FFW_SEEK_STOP:Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;

    return-object p0

    .line 443
    :pswitch_4
    sget-object p0, Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;->PB_ST_EX_REWIND_0X05:Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;

    return-object p0

    .line 441
    :pswitch_5
    sget-object p0, Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;->PB_ST_EX_FR_0X04:Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;

    return-object p0

    .line 439
    :pswitch_6
    sget-object p0, Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;->PB_ST_EX_PF_0X03:Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;

    return-object p0

    .line 437
    :pswitch_7
    sget-object p0, Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;->PB_ST_EX_PAUSE_0X02:Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;

    return-object p0

    .line 435
    :pswitch_8
    sget-object p0, Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;->PB_ST_EX_PLAY_0X01:Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;

    return-object p0

    .line 433
    :pswitch_9
    sget-object p0, Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;->PB_ST_EX_STOP_0X00:Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;
    .locals 1

    .line 386
    const-class v0, Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;

    return-object p0
.end method

.method public static values()[Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;
    .locals 1

    .line 386
    sget-object v0, Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;->$VALUES:[Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;

    invoke-virtual {v0}, [Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;

    return-object v0
.end method


# virtual methods
.method public next()Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;
    .locals 1

    .line 461
    iget v0, p0, Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;->value:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;->valueOf(I)Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;

    move-result-object v0

    return-object v0
.end method
