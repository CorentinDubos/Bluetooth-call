.class public final enum Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;
.super Ljava/lang/Enum;
.source "IPodSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/ipod/IPodSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TRACK_INF_TYPE_E"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;

.field public static final enum TRACK_ARTWORK_CNT:Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;

.field public static final enum TRACK_CAP_INF:Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;

.field public static final enum TRACK_COMPOSER:Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;

.field public static final enum TRACK_DATE_INFOTYPE_CODE:Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;

.field public static final enum TRACK_DESCRIPTION:Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;

.field public static final enum TRACK_GENRE:Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;

.field public static final enum TRACK_INF_NONE:Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;

.field public static final enum TRACK_LOCALCOASTING_NAME:Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;

.field public static final enum TRACK_SONG_LYRICS:Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 301
    new-instance v0, Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;

    const-string v1, "TRACK_CAP_INF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;->TRACK_CAP_INF:Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;

    .line 306
    new-instance v0, Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;

    const-string v1, "TRACK_LOCALCOASTING_NAME"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;->TRACK_LOCALCOASTING_NAME:Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;

    .line 311
    new-instance v0, Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;

    const-string v1, "TRACK_DATE_INFOTYPE_CODE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;->TRACK_DATE_INFOTYPE_CODE:Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;

    .line 316
    new-instance v0, Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;

    const-string v1, "TRACK_DESCRIPTION"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;->TRACK_DESCRIPTION:Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;

    .line 321
    new-instance v0, Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;

    const-string v1, "TRACK_SONG_LYRICS"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;->TRACK_SONG_LYRICS:Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;

    .line 326
    new-instance v0, Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;

    const-string v1, "TRACK_GENRE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;->TRACK_GENRE:Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;

    .line 331
    new-instance v0, Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;

    const-string v1, "TRACK_COMPOSER"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;->TRACK_COMPOSER:Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;

    .line 336
    new-instance v0, Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;

    const-string v1, "TRACK_ARTWORK_CNT"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;->TRACK_ARTWORK_CNT:Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;

    .line 341
    new-instance v0, Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;

    const-string v1, "TRACK_INF_NONE"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10}, Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;->TRACK_INF_NONE:Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;

    const/16 v1, 0x9

    new-array v1, v1, [Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;

    .line 297
    sget-object v11, Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;->TRACK_CAP_INF:Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;

    aput-object v11, v1, v2

    sget-object v2, Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;->TRACK_LOCALCOASTING_NAME:Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;

    aput-object v2, v1, v3

    sget-object v2, Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;->TRACK_DATE_INFOTYPE_CODE:Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;

    aput-object v2, v1, v4

    sget-object v2, Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;->TRACK_DESCRIPTION:Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;

    aput-object v2, v1, v5

    sget-object v2, Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;->TRACK_SONG_LYRICS:Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;

    aput-object v2, v1, v6

    sget-object v2, Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;->TRACK_GENRE:Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;

    aput-object v2, v1, v7

    sget-object v2, Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;->TRACK_COMPOSER:Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;

    aput-object v2, v1, v8

    sget-object v2, Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;->TRACK_ARTWORK_CNT:Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;

    aput-object v2, v1, v9

    aput-object v0, v1, v10

    sput-object v1, Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;->$VALUES:[Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 343
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 344
    iput p3, p0, Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 369
    sget-object p0, Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;->TRACK_INF_NONE:Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;

    return-object p0

    .line 367
    :pswitch_0
    sget-object p0, Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;->TRACK_ARTWORK_CNT:Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;

    return-object p0

    .line 365
    :pswitch_1
    sget-object p0, Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;->TRACK_COMPOSER:Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;

    return-object p0

    .line 363
    :pswitch_2
    sget-object p0, Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;->TRACK_GENRE:Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;

    return-object p0

    .line 361
    :pswitch_3
    sget-object p0, Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;->TRACK_SONG_LYRICS:Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;

    return-object p0

    .line 359
    :pswitch_4
    sget-object p0, Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;->TRACK_DESCRIPTION:Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;

    return-object p0

    .line 357
    :pswitch_5
    sget-object p0, Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;->TRACK_DATE_INFOTYPE_CODE:Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;

    return-object p0

    .line 355
    :pswitch_6
    sget-object p0, Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;->TRACK_LOCALCOASTING_NAME:Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;

    return-object p0

    .line 353
    :pswitch_7
    sget-object p0, Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;->TRACK_CAP_INF:Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static valueOf(Ljava/lang/String;)Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;
    .locals 1

    .line 297
    const-class v0, Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;

    return-object p0
.end method

.method public static values()[Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;
    .locals 1

    .line 297
    sget-object v0, Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;->$VALUES:[Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;

    invoke-virtual {v0}, [Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;

    return-object v0
.end method


# virtual methods
.method public next()Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;
    .locals 1

    .line 377
    iget v0, p0, Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;->value:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;->valueOf(I)Lcom/autochips/ipod/IPodSDK$TRACK_INF_TYPE_E;

    move-result-object v0

    return-object v0
.end method
