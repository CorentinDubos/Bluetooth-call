.class public Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;
.super Ljava/lang/Object;
.source "BluetoothHfAtParser.java"


# static fields
.field private static final COMMAND_NORMAL:I = 0x0

.field private static final COMMAND_SPECIAL:I = 0x1

.field private static final COMMAND_SPECIAL_COMMBINE:I = 0x3

.field private static final COMMAND_SPECIAL_INCOMPLETE:I = 0x2

.field private static DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BluetoothHfAtParser"

.field private static final TYPE_ACTION:I = 0x0

.field private static final TYPE_READ:I = 0x1

.field private static final TYPE_RESULT:I = 0x4

.field private static final TYPE_SET:I = 0x2

.field private static final TYPE_TEST:I = 0x3

.field private static mIgnoreRsp:Ljava/lang/String;


# instance fields
.field private mBasicHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Character;",
            "Lcom/autochips/bluetooth/hf/HfAtCommandHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mCombineCommand:Z

.field private mExtHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/autochips/bluetooth/hf/HfAtCommandHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mSpecialAtCommands:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mcacheCommandBuffer:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 92
    sget-boolean v0, Lcom/autochips/bluetooth/BtEmulatorDebug;->mDebugAll:Z

    sget-boolean v1, Lcom/autochips/bluetooth/BtEmulatorDebug;->mDebugHF:Z

    and-int/2addr v0, v1

    sput-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 112
    iput-boolean v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->mCombineCommand:Z

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->mBasicHandlers:Ljava/util/HashMap;

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->mExtHandlers:Ljava/util/HashMap;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->mSpecialAtCommands:Ljava/util/ArrayList;

    const-string v1, "+MMGL"

    .line 127
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->mSpecialAtCommands:Ljava/util/ArrayList;

    const-string v1, "+CMGL"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->mSpecialAtCommands:Ljava/util/ArrayList;

    const-string v1, "+CMGR"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->mSpecialAtCommands:Ljava/util/ArrayList;

    const-string v1, "+CPMS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->mSpecialAtCommands:Ljava/util/ArrayList;

    const-string v1, "+CMSERROR"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private checkSpecialCommands(Ljava/lang/String;)I
    .locals 6

    .line 268
    invoke-static {p1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    .line 270
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 271
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 273
    invoke-static {v2}, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->isAtoZ(C)Z

    move-result v3

    if-eqz v3, :cond_0

    return v0

    :cond_0
    const/16 v3, 0x2b

    const-string v4, "BluetoothHfAtParser"

    const/4 v5, 0x1

    if-ne v2, v3, :cond_4

    .line 281
    iput-boolean v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->mCombineCommand:Z

    add-int/lit8 v2, v1, 0x1

    .line 282
    invoke-static {p1, v2}, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->findEndExtendedName(Ljava/lang/String;I)I

    move-result v2

    .line 283
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 284
    iget-object v2, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->mSpecialAtCommands:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, "CMGR"

    .line 285
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x1d

    if-ge p1, v0, :cond_2

    .line 286
    sget-boolean p1, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->DEBUG:Z

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "command is not complete!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_1
    iput-boolean v5, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->mCombineCommand:Z

    const/4 p1, 0x2

    return p1

    :cond_2
    return v5

    :cond_3
    return v0

    :cond_4
    const/16 v3, 0x30

    if-lt v2, v3, :cond_6

    const/16 v3, 0x39

    if-gt v2, v3, :cond_6

    .line 296
    sget-boolean v2, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->DEBUG:Z

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "numerical string!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_5
    iget-boolean v2, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->mCombineCommand:Z

    if-ne v2, v5, :cond_6

    const/4 p1, 0x3

    return p1

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_7
    return v0
.end method

.method private static clean(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 171
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 172
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v1, 0x1

    .line 174
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 176
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v2, 0x1

    .line 180
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    goto :goto_1

    :cond_1
    const/16 v3, 0x20

    if-eq v2, v3, :cond_2

    .line 183
    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 187
    :cond_3
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static findChar(CLjava/lang/String;I)I
    .locals 2

    .line 199
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_2

    .line 200
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    add-int/lit8 p2, p2, 0x1

    .line 202
    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 204
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    return p0

    :cond_0
    if-ne v0, p0, :cond_1

    return p2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 210
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    return p0
.end method

.method private static findEndExtendedName(Ljava/lang/String;I)I
    .locals 2

    .line 243
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 244
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 248
    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->isAtoZ(C)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v1, 0x30

    if-lt v0, v1, :cond_1

    const/16 v1, 0x39

    if-gt v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x21

    if-eq v0, v1, :cond_2

    const/16 v1, 0x25

    if-eq v0, v1, :cond_2

    const/16 v1, 0x5f

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    return p1

    :cond_2
    :goto_1
    :pswitch_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 263
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x2d
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static generateArgs(Ljava/lang/String;)[Ljava/lang/Object;
    .locals 4

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 222
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v1, v2, :cond_0

    const/16 v2, 0x2c

    .line 223
    invoke-static {v2, p0, v1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->findChar(CLjava/lang/String;I)I

    move-result v2

    .line 225
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 227
    :try_start_0
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 229
    :catch_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    .line 234
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getRawData()Ljava/lang/String;
    .locals 1

    .line 478
    sget-object v0, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->mIgnoreRsp:Ljava/lang/String;

    return-object v0
.end method

.method private static isAtoZ(C)Z
    .locals 1

    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static resetRawData()V
    .locals 1

    const-string v0, ""

    .line 482
    sput-object v0, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->mIgnoreRsp:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public process(Ljava/lang/String;)V
    .locals 12

    .line 371
    invoke-static {p1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    .line 374
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "BluetoothHfAtParser"

    if-eqz v0, :cond_1

    .line 375
    sget-boolean p1, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "process empty line "

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    move v2, v0

    .line 379
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_14

    .line 380
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 382
    invoke-static {v3}, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->isAtoZ(C)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 383
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->mExtHandlers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 384
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->mExtHandlers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 385
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->mExtHandlers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autochips/bluetooth/hf/HfAtCommandHandler;

    invoke-virtual {p1}, Lcom/autochips/bluetooth/hf/HfAtCommandHandler;->handleResponseCode()V

    :cond_2
    return-void

    .line 389
    :cond_3
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->DEBUG:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignore the basic AT command "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_4
    sput-object p1, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->mIgnoreRsp:Ljava/lang/String;

    return-void

    :cond_5
    const/16 v4, 0x2b

    if-ne v3, v4, :cond_13

    add-int/lit8 v3, v2, 0x1

    .line 399
    invoke-static {p1, v3}, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->findEndExtendedName(Ljava/lang/String;I)I

    move-result v3

    .line 400
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 401
    iget-object v5, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->mExtHandlers:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 404
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->DEBUG:Z

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignore the Ext AT command "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_6
    sput-object p1, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->mIgnoreRsp:Ljava/lang/String;

    return-void

    .line 408
    :cond_7
    iget-object v5, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->mExtHandlers:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/autochips/bluetooth/hf/HfAtCommandHandler;

    if-nez v4, :cond_8

    return-void

    :cond_8
    const/16 v5, 0x3b

    .line 416
    invoke-static {v5, p1, v2}, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->findChar(CLjava/lang/String;I)I

    move-result v2

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-lt v3, v2, :cond_a

    :cond_9
    move v9, v0

    goto :goto_1

    .line 425
    :cond_a
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x3f

    if-ne v9, v10, :cond_b

    move v9, v8

    goto :goto_1

    .line 427
    :cond_b
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v11, 0x3a

    if-ne v9, v11, :cond_c

    move v9, v5

    goto :goto_1

    .line 429
    :cond_c
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v11, 0x3d

    if-ne v9, v11, :cond_9

    add-int/lit8 v9, v3, 0x1

    if-ge v9, v2, :cond_d

    .line 431
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v10, :cond_d

    move v9, v6

    goto :goto_1

    :cond_d
    move v9, v7

    :goto_1
    if-eqz v9, :cond_12

    if-eq v9, v8, :cond_11

    if-eq v9, v7, :cond_10

    if-eq v9, v6, :cond_f

    if-eq v9, v5, :cond_e

    goto/16 :goto_0

    :cond_e
    add-int/lit8 v3, v3, 0x1

    .line 450
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->generateArgs(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v3

    .line 452
    invoke-virtual {v4, v3}, Lcom/autochips/bluetooth/hf/HfAtCommandHandler;->handleResponseCode([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 458
    :cond_f
    invoke-virtual {v4}, Lcom/autochips/bluetooth/hf/HfAtCommandHandler;->handleTestCommand()Landroid/bluetooth/AtCommandResult;

    goto/16 :goto_0

    :cond_10
    add-int/lit8 v3, v3, 0x1

    .line 461
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->generateArgs(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v3

    .line 463
    invoke-virtual {v4, v3}, Lcom/autochips/bluetooth/hf/HfAtCommandHandler;->handleSetCommand([Ljava/lang/Object;)Landroid/bluetooth/AtCommandResult;

    goto/16 :goto_0

    .line 455
    :cond_11
    invoke-virtual {v4}, Lcom/autochips/bluetooth/hf/HfAtCommandHandler;->handleReadCommand()Landroid/bluetooth/AtCommandResult;

    goto/16 :goto_0

    .line 446
    :cond_12
    invoke-virtual {v4}, Lcom/autochips/bluetooth/hf/HfAtCommandHandler;->handleActionCommand()Landroid/bluetooth/AtCommandResult;

    goto/16 :goto_0

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_14
    return-void
.end method

.method public processHfAtCommands(Ljava/lang/String;)V
    .locals 7

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 320
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->checkSpecialCommands(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    const-string v3, "BluetoothHfAtParser"

    if-ne v1, v2, :cond_1

    .line 322
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "is a special command "

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_0
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->process(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 325
    iput-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->mcacheCommandBuffer:Ljava/lang/String;

    .line 326
    sget-boolean p1, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->DEBUG:Z

    if-eqz p1, :cond_a

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "command is not complete!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->mcacheCommandBuffer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_2
    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 328
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->DEBUG:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "process COMMAND_SPECIAL_COMMBINE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->mcacheCommandBuffer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->mcacheCommandBuffer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->process(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_4
    const-string v1, "\r\n"

    .line 331
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    .line 333
    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_a

    .line 334
    sget-boolean v4, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->DEBUG:Z

    if-eqz v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processHfAtCommands: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p1, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_5
    aget-object v4, p1, v2

    const-string v5, "CMGR"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/16 v6, 0x1d

    if-ltz v4, :cond_7

    aget-object v4, p1, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v6, :cond_6

    goto :goto_1

    .line 354
    :cond_6
    aget-object v4, p1, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 345
    :cond_7
    :goto_1
    aget-object v4, p1, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_9

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ge v4, v6, :cond_9

    .line 348
    sget-boolean v4, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->DEBUG:Z

    if-eqz v4, :cond_8

    const-string v4, "String end without CRLF,add it"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->process(Ljava/lang/String;)V

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_a
    :goto_3
    return-void
.end method

.method public register(Ljava/lang/Character;Lcom/autochips/bluetooth/hf/HfAtCommandHandler;)V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->mBasicHandlers:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public register(Ljava/lang/String;Lcom/autochips/bluetooth/hf/HfAtCommandHandler;)V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->mExtHandlers:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
