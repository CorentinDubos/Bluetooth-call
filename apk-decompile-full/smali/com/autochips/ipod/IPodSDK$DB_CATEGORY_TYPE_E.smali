.class public final enum Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;
.super Ljava/lang/Enum;
.source "IPodSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/ipod/IPodSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DB_CATEGORY_TYPE_E"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;

.field public static final enum DB_TYPE_ALBUM:Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;

.field public static final enum DB_TYPE_ARTIST:Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;

.field public static final enum DB_TYPE_AUDIOBOOK:Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;

.field public static final enum DB_TYPE_COMPOSER:Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;

.field public static final enum DB_TYPE_GENIUS_MIXES:Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;

.field public static final enum DB_TYPE_GENRE:Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;

.field public static final enum DB_TYPE_NESTED_PLAYLIST:Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;

.field public static final enum DB_TYPE_PLAYLIST:Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;

.field public static final enum DB_TYPE_PODCAST:Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;

.field public static final enum DB_TYPE_TOP_LEVEL:Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;

.field public static final enum DB_TYPE_TRACK:Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 519
    new-instance v0, Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;

    const-string v1, "DB_TYPE_TOP_LEVEL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;->DB_TYPE_TOP_LEVEL:Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;

    .line 523
    new-instance v0, Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;

    const-string v1, "DB_TYPE_PLAYLIST"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;->DB_TYPE_PLAYLIST:Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;

    .line 527
    new-instance v0, Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;

    const-string v1, "DB_TYPE_ARTIST"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;->DB_TYPE_ARTIST:Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;

    .line 531
    new-instance v0, Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;

    const-string v1, "DB_TYPE_ALBUM"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;->DB_TYPE_ALBUM:Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;

    .line 535
    new-instance v0, Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;

    const-string v1, "DB_TYPE_GENRE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;->DB_TYPE_GENRE:Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;

    .line 539
    new-instance v0, Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;

    const-string v1, "DB_TYPE_TRACK"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;->DB_TYPE_TRACK:Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;

    .line 543
    new-instance v0, Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;

    const-string v1, "DB_TYPE_COMPOSER"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;->DB_TYPE_COMPOSER:Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;

    .line 547
    new-instance v0, Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;

    const-string v1, "DB_TYPE_AUDIOBOOK"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;->DB_TYPE_AUDIOBOOK:Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;

    .line 551
    new-instance v0, Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;

    const-string v1, "DB_TYPE_PODCAST"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10}, Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;->DB_TYPE_PODCAST:Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;

    .line 555
    new-instance v0, Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;

    const-string v1, "DB_TYPE_NESTED_PLAYLIST"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11, v11}, Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;->DB_TYPE_NESTED_PLAYLIST:Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;

    .line 559
    new-instance v0, Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;

    const-string v1, "DB_TYPE_GENIUS_MIXES"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12, v12}, Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;->DB_TYPE_GENIUS_MIXES:Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;

    const/16 v1, 0xb

    new-array v1, v1, [Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;

    .line 515
    sget-object v13, Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;->DB_TYPE_TOP_LEVEL:Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;

    aput-object v13, v1, v2

    sget-object v2, Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;->DB_TYPE_PLAYLIST:Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;

    aput-object v2, v1, v3

    sget-object v2, Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;->DB_TYPE_ARTIST:Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;

    aput-object v2, v1, v4

    sget-object v2, Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;->DB_TYPE_ALBUM:Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;

    aput-object v2, v1, v5

    sget-object v2, Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;->DB_TYPE_GENRE:Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;

    aput-object v2, v1, v6

    sget-object v2, Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;->DB_TYPE_TRACK:Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;

    aput-object v2, v1, v7

    sget-object v2, Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;->DB_TYPE_COMPOSER:Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;

    aput-object v2, v1, v8

    sget-object v2, Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;->DB_TYPE_AUDIOBOOK:Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;

    aput-object v2, v1, v9

    sget-object v2, Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;->DB_TYPE_PODCAST:Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;

    aput-object v2, v1, v10

    sget-object v2, Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;->DB_TYPE_NESTED_PLAYLIST:Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;

    aput-object v2, v1, v11

    aput-object v0, v1, v12

    sput-object v1, Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;->$VALUES:[Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 561
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 562
    iput p3, p0, Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 591
    sget-object p0, Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;->DB_TYPE_TOP_LEVEL:Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;

    return-object p0

    .line 589
    :pswitch_0
    sget-object p0, Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;->DB_TYPE_GENIUS_MIXES:Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;

    return-object p0

    .line 587
    :pswitch_1
    sget-object p0, Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;->DB_TYPE_NESTED_PLAYLIST:Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;

    return-object p0

    .line 585
    :pswitch_2
    sget-object p0, Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;->DB_TYPE_PODCAST:Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;

    return-object p0

    .line 583
    :pswitch_3
    sget-object p0, Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;->DB_TYPE_AUDIOBOOK:Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;

    return-object p0

    .line 581
    :pswitch_4
    sget-object p0, Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;->DB_TYPE_COMPOSER:Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;

    return-object p0

    .line 579
    :pswitch_5
    sget-object p0, Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;->DB_TYPE_TRACK:Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;

    return-object p0

    .line 577
    :pswitch_6
    sget-object p0, Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;->DB_TYPE_GENRE:Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;

    return-object p0

    .line 575
    :pswitch_7
    sget-object p0, Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;->DB_TYPE_ALBUM:Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;

    return-object p0

    .line 573
    :pswitch_8
    sget-object p0, Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;->DB_TYPE_ARTIST:Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;

    return-object p0

    .line 571
    :pswitch_9
    sget-object p0, Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;->DB_TYPE_PLAYLIST:Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
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

.method public static valueOf(Ljava/lang/String;)Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;
    .locals 1

    .line 515
    const-class v0, Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;

    return-object p0
.end method

.method public static values()[Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;
    .locals 1

    .line 515
    sget-object v0, Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;->$VALUES:[Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;

    invoke-virtual {v0}, [Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;

    return-object v0
.end method


# virtual methods
.method public next()Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;
    .locals 1

    .line 599
    iget v0, p0, Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;->value:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;->valueOf(I)Lcom/autochips/ipod/IPodSDK$DB_CATEGORY_TYPE_E;

    move-result-object v0

    return-object v0
.end method
