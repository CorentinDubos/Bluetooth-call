.class public Lcom/autochips/bluetooth/util/PBSyncParsePclFile;
.super Ljava/lang/Object;
.source "PBSyncParsePclFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONECONFIG_LIST_T;,
        Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONECONFIG_LIST_NODE_T;,
        Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;,
        Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;
    }
.end annotation


# static fields
.field public static final BT_SYNCPREVUSINGMETHOD_ATCPROT:I = 0x4

.field public static final BT_SYNCPREVUSINGMETHOD_ATEOBEX:I = 0x3

.field public static final BT_SYNCPREVUSINGMETHOD_ATMSYNC:I = 0x1

.field public static final BT_SYNCPREVUSINGMETHOD_ATTSSPCSDW:I = 0x2

.field public static final BT_SYNCPREVUSINGMETHOD_MOTOV:I = 0x5

.field public static final BT_SYNCPREVUSINGMETHOD_NONE:I = 0x0

.field public static final BT_SYNCPREVUSINGMETHOD_SAMSUNG_D908:I = 0x6

.field public static final HFP_COM:I = 0x1

.field public static final HISTORY_ITEM_TYPE:I = 0x2

.field public static final MAX_CNT_OF_BT_COM:I = 0x4

.field public static final MAX_CNT_OF_BT_SYNCPREVUSINGMETHOD:I = 0x7

.field public static final MAX_OF_PHONECONFIG_ITEM_CNT:I = 0x3

.field public static final PBAP_COM:I = 0x3

.field public static final PBCONTACT_ITEM_TYPE:I = 0x0

.field public static final SIMCONTACT_ITEM_TYPE:I = 0x1

.field public static final SPP_COM:I = 0x2

.field public static final SYNCML_COM:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PBSyncParsePclFile"

.field private static final m_Instance:Lcom/autochips/bluetooth/util/PBSyncParsePclFile;

.field private static m_Parsed:Z = false


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFactory:Ljava/lang/String;

.field private mPhoneCfg:Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONECONFIG_LIST_T;

.field private mSerial:Ljava/lang/String;

.field private m_rSerialNd:Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 82
    new-instance v0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile;

    invoke-direct {v0}, Lcom/autochips/bluetooth/util/PBSyncParsePclFile;-><init>()V

    sput-object v0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile;->m_Instance:Lcom/autochips/bluetooth/util/PBSyncParsePclFile;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONECONFIG_LIST_T;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONECONFIG_LIST_T;-><init>(Lcom/autochips/bluetooth/util/PBSyncParsePclFile;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile;->mPhoneCfg:Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONECONFIG_LIST_T;

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile;->m_rSerialNd:Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;

    const-string v0, ""

    .line 88
    iput-object v0, p0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile;->mFactory:Ljava/lang/String;

    .line 89
    iput-object v0, p0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile;->mSerial:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/autochips/bluetooth/util/PBSyncParsePclFile;
    .locals 1

    .line 95
    sget-object v0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile;->m_Instance:Lcom/autochips/bluetooth/util/PBSyncParsePclFile;

    return-object v0
.end method


# virtual methods
.method public getPclCfgFrmList(Ljava/lang/String;Ljava/lang/String;)Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    const-string v1, ""

    .line 361
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 364
    :cond_0
    iget-object v1, p0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile;->mFactory:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile;->mSerial:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 365
    iget-object p1, p0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile;->m_rSerialNd:Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;

    return-object p1

    .line 368
    :cond_1
    iput-object p1, p0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile;->mFactory:Ljava/lang/String;

    .line 369
    iput-object p2, p0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile;->mSerial:Ljava/lang/String;

    .line 371
    iget-object v1, p0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile;->mPhoneCfg:Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONECONFIG_LIST_T;

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    move v2, v1

    .line 374
    :goto_0
    iget-object v3, p0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile;->mPhoneCfg:Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONECONFIG_LIST_T;

    iget v3, v3, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONECONFIG_LIST_T;->u4Count:I

    if-ge v2, v3, :cond_4

    .line 375
    iget-object v3, p0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile;->mPhoneCfg:Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONECONFIG_LIST_T;

    iget-object v3, v3, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONECONFIG_LIST_T;->rPhoneCfgList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONECONFIG_LIST_NODE_T;

    .line 376
    iget-object v4, v3, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONECONFIG_LIST_NODE_T;->sFactory:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v1

    .line 378
    :goto_1
    iget v5, v3, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONECONFIG_LIST_NODE_T;->u4Curcnt:I

    if-ge v4, v5, :cond_3

    .line 379
    iget-object v5, v3, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONECONFIG_LIST_NODE_T;->rSerialList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;

    .line 380
    iget-object v6, v5, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->sSerial:Ljava/lang/String;

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 381
    iput-object v5, p0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile;->m_rSerialNd:Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;

    return-object v5

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 389
    :cond_4
    iput-object v0, p0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile;->m_rSerialNd:Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;

    :cond_5
    :goto_2
    return-object v0
.end method

.method public parserPclFile(Ljava/io/InputStream;)Z
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 103
    sget-boolean v2, Lcom/autochips/bluetooth/util/PBSyncParsePclFile;->m_Parsed:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    return v3

    .line 106
    :cond_0
    sput-boolean v3, Lcom/autochips/bluetooth/util/PBSyncParsePclFile;->m_Parsed:Z

    const-string v2, "PBSyncParsePclFile"

    const/4 v4, 0x0

    if-nez v0, :cond_1

    const-string v0, "parserPclFile, fis == null"

    .line 120
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 124
    :cond_1
    new-instance v5, Ljava/io/DataInputStream;

    invoke-direct {v5, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v6, 0x0

    move v8, v4

    move v9, v8

    move-object v7, v6

    .line 127
    :goto_0
    :try_start_0
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3e

    const-string v11, ""

    .line 128
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3d

    invoke-virtual {v10, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    const-string v12, ";"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    goto/16 :goto_8

    .line 132
    :cond_2
    invoke-virtual {v10, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    const-string v12, "<"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v11, v3

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    const-string v12, ">"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 134
    iget-object v6, v1, Lcom/autochips/bluetooth/util/PBSyncParsePclFile;->mPhoneCfg:Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONECONFIG_LIST_T;

    iget v6, v6, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONECONFIG_LIST_T;->u4Count:I

    if-lt v8, v6, :cond_3

    return v3

    .line 137
    :cond_3
    iget-object v6, v1, Lcom/autochips/bluetooth/util/PBSyncParsePclFile;->mPhoneCfg:Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONECONFIG_LIST_T;

    iget-object v6, v6, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONECONFIG_LIST_T;->rPhoneCfgList:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONECONFIG_LIST_NODE_T;

    .line 138
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v11, v3

    invoke-virtual {v10, v3, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONECONFIG_LIST_NODE_T;->sFactory:Ljava/lang/String;

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 145
    :cond_4
    invoke-virtual {v10, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    const-string v12, "["

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v11, v3

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 147
    iget-object v7, v6, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONECONFIG_LIST_NODE_T;->rSerialList:Ljava/util/List;

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;

    .line 148
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v11, v3

    invoke-virtual {v10, v3, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->sSerial:Ljava/lang/String;

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :cond_5
    const-string v11, "FactoryCnt="

    .line 154
    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const/16 v12, 0xb

    if-ltz v11, :cond_7

    .line 155
    invoke-virtual {v10, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 156
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "FactoryCnt="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 158
    iget-object v10, v1, Lcom/autochips/bluetooth/util/PBSyncParsePclFile;->mPhoneCfg:Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONECONFIG_LIST_T;

    iput v8, v10, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONECONFIG_LIST_T;->u4Count:I

    move v10, v4

    :goto_1
    if-ge v10, v8, :cond_6

    .line 160
    new-instance v11, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONECONFIG_LIST_NODE_T;

    invoke-direct {v11, v1}, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONECONFIG_LIST_NODE_T;-><init>(Lcom/autochips/bluetooth/util/PBSyncParsePclFile;)V

    .line 161
    iget-object v12, v1, Lcom/autochips/bluetooth/util/PBSyncParsePclFile;->mPhoneCfg:Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONECONFIG_LIST_T;

    iget-object v12, v12, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONECONFIG_LIST_T;->rPhoneCfgList:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_6
    move v8, v4

    goto/16 :goto_0

    :cond_7
    const-string v11, "SerialCnt="

    .line 165
    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const/4 v13, 0x3

    if-ltz v11, :cond_a

    const/16 v9, 0xa

    .line 166
    invoke-virtual {v10, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 167
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 168
    iput v9, v6, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONECONFIG_LIST_NODE_T;->u4Curcnt:I

    move v10, v4

    :goto_2
    if-ge v10, v9, :cond_9

    .line 170
    new-instance v11, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;

    invoke-direct {v11, v1}, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;-><init>(Lcom/autochips/bluetooth/util/PBSyncParsePclFile;)V

    new-array v12, v13, [Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    .line 171
    iput-object v12, v11, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    move v12, v4

    :goto_3
    if-ge v12, v13, :cond_8

    .line 173
    iget-object v14, v11, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    new-instance v15, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    invoke-direct {v15, v1}, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;-><init>(Lcom/autochips/bluetooth/util/PBSyncParsePclFile;)V

    aput-object v15, v14, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 174
    :cond_8
    iget-object v12, v6, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONECONFIG_LIST_NODE_T;->rSerialList:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_9
    move v9, v4

    goto/16 :goto_0

    :cond_a
    const-string v11, "PBContact="

    .line 178
    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v14, "NOTSUPPORT"

    const-string v15, "SYNCML"

    const-string v12, "DUN"

    const-string v13, "PBAP"

    const-string v3, "SPP"

    const-string v4, "HFP"

    const/4 v0, 0x2

    if-ltz v11, :cond_10

    const/16 v11, 0xa

    .line 179
    :try_start_1
    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 180
    iget-object v11, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    const/4 v1, 0x0

    aget-object v11, v11, v1

    iput v1, v11, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->eComType:I

    .line 181
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 182
    iget-object v3, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    aget-object v3, v3, v1

    iput v0, v3, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->u1Protocol:I

    .line 183
    iget-object v0, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    aget-object v0, v0, v1

    const/4 v1, 0x1

    iput v1, v0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->eComType:I

    goto/16 :goto_8

    .line 184
    :cond_b
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 185
    iget-object v1, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    const/4 v4, 0x3

    iput v4, v1, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->u1Protocol:I

    .line 186
    iget-object v1, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    aget-object v1, v1, v3

    iput v0, v1, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->eComType:I

    goto/16 :goto_8

    .line 187
    :cond_c
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 188
    iget-object v0, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v3, 0x1

    iput v3, v0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->u1Protocol:I

    .line 189
    iget-object v0, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    aget-object v0, v0, v1

    const/4 v1, 0x3

    iput v1, v0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->eComType:I

    goto/16 :goto_8

    .line 190
    :cond_d
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_4

    .line 193
    :cond_e
    iget-object v0, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput v1, v0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->u1Protocol:I

    .line 194
    iget-object v0, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    aget-object v0, v0, v1

    const/4 v3, 0x4

    iput v3, v0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->eComType:I

    .line 195
    iget-object v0, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    aget-object v0, v0, v1

    iput v1, v0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->eMethod:I

    goto/16 :goto_8

    .line 191
    :cond_f
    :goto_4
    iget-object v0, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x4

    iput v1, v0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->u1Protocol:I

    goto/16 :goto_8

    :cond_10
    const-string v1, "SIMContact="

    .line 197
    invoke-virtual {v10, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_16

    const/16 v1, 0xb

    .line 198
    invoke-virtual {v10, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 199
    iget-object v10, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    const/4 v11, 0x1

    aget-object v10, v10, v11

    const/4 v11, 0x0

    iput v11, v10, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->eComType:I

    .line 200
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 201
    iget-object v1, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    iput v0, v1, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->u1Protocol:I

    .line 202
    iget-object v0, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    aget-object v0, v0, v3

    iput v3, v0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->eComType:I

    goto/16 :goto_8

    .line 203
    :cond_11
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 204
    iget-object v1, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    const/4 v4, 0x3

    iput v4, v1, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->u1Protocol:I

    .line 205
    iget-object v1, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    aget-object v1, v1, v3

    iput v0, v1, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->eComType:I

    goto/16 :goto_8

    .line 206
    :cond_12
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 207
    iget-object v0, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iput v1, v0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->u1Protocol:I

    .line 208
    iget-object v0, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    aget-object v0, v0, v1

    const/4 v1, 0x3

    iput v1, v0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->eComType:I

    goto/16 :goto_8

    .line 209
    :cond_13
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_5

    .line 212
    :cond_14
    iget-object v0, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v3, 0x0

    iput v3, v0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->u1Protocol:I

    .line 213
    iget-object v0, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    aget-object v0, v0, v1

    const/4 v3, 0x4

    iput v3, v0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->eComType:I

    .line 214
    iget-object v0, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    aget-object v0, v0, v1

    const/4 v1, 0x0

    iput v1, v0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->eMethod:I

    goto/16 :goto_8

    .line 210
    :cond_15
    :goto_5
    iget-object v0, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x4

    iput v1, v0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->u1Protocol:I

    goto/16 :goto_8

    :cond_16
    const-string v1, "Contact="

    .line 216
    invoke-virtual {v10, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1c

    const/16 v1, 0x8

    .line 217
    invoke-virtual {v10, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 218
    iget-object v10, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    iput v11, v10, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->eComType:I

    .line 219
    iget-object v10, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    const/16 v16, 0x1

    aget-object v10, v10, v16

    iput v11, v10, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->eComType:I

    .line 220
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 221
    iget-object v1, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    aget-object v1, v1, v11

    iput v0, v1, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->u1Protocol:I

    .line 222
    iget-object v1, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    aget-object v1, v1, v11

    const/4 v3, 0x1

    iput v3, v1, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->eComType:I

    .line 223
    iget-object v1, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    aget-object v1, v1, v3

    iput v3, v1, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->eComType:I

    .line 224
    iget-object v1, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    aget-object v1, v1, v3

    iput v0, v1, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->u1Protocol:I

    goto/16 :goto_8

    .line 225
    :cond_17
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 226
    iget-object v1, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    const/4 v4, 0x3

    iput v4, v1, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->u1Protocol:I

    .line 227
    iget-object v1, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    aget-object v1, v1, v3

    iput v0, v1, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->eComType:I

    .line 228
    iget-object v1, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    iput v0, v1, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->eComType:I

    .line 229
    iget-object v0, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    aget-object v0, v0, v3

    const/4 v1, 0x3

    iput v1, v0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->u1Protocol:I

    goto/16 :goto_8

    .line 230
    :cond_18
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 231
    iget-object v0, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v3, 0x1

    iput v3, v0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->u1Protocol:I

    .line 232
    iget-object v0, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    aget-object v0, v0, v1

    const/4 v1, 0x3

    iput v1, v0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->eComType:I

    .line 233
    iget-object v0, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    aget-object v0, v0, v3

    iput v1, v0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->eComType:I

    .line 234
    iget-object v0, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    aget-object v0, v0, v3

    iput v3, v0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->u1Protocol:I

    goto/16 :goto_8

    .line 235
    :cond_19
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_6

    .line 239
    :cond_1a
    iget-object v0, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput v1, v0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->u1Protocol:I

    .line 240
    iget-object v0, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    const/4 v3, 0x1

    aget-object v0, v0, v3

    iput v1, v0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->u1Protocol:I

    .line 241
    iget-object v0, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    aget-object v0, v0, v1

    const/4 v1, 0x4

    iput v1, v0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->eComType:I

    .line 242
    iget-object v0, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    const/4 v3, 0x1

    aget-object v0, v0, v3

    iput v1, v0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->eComType:I

    .line 243
    iget-object v0, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput v1, v0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->eMethod:I

    .line 244
    iget-object v0, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    const/4 v3, 0x1

    aget-object v0, v0, v3

    iput v1, v0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->eMethod:I

    goto/16 :goto_8

    .line 236
    :cond_1b
    :goto_6
    iget-object v0, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x4

    iput v1, v0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->u1Protocol:I

    .line 237
    iget-object v0, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    const/4 v3, 0x1

    aget-object v0, v0, v3

    iput v1, v0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->u1Protocol:I

    goto/16 :goto_8

    :cond_1c
    const-string v1, "History="

    .line 246
    invoke-virtual {v10, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_22

    const/16 v1, 0x8

    .line 247
    invoke-virtual {v10, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 248
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 249
    iget-object v1, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    aget-object v1, v1, v0

    iput v0, v1, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->u1Protocol:I

    .line 250
    iget-object v1, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    aget-object v0, v1, v0

    const/4 v1, 0x1

    iput v1, v0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->eComType:I

    goto/16 :goto_8

    .line 251
    :cond_1d
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 252
    iget-object v1, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    aget-object v1, v1, v0

    const/4 v3, 0x3

    iput v3, v1, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->u1Protocol:I

    .line 253
    iget-object v1, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    aget-object v1, v1, v0

    iput v0, v1, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->eComType:I

    goto/16 :goto_8

    .line 254
    :cond_1e
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 255
    iget-object v1, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    aget-object v1, v1, v0

    const/4 v3, 0x1

    iput v3, v1, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->u1Protocol:I

    .line 256
    iget-object v1, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    aget-object v0, v1, v0

    const/4 v1, 0x3

    iput v1, v0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->eComType:I

    goto/16 :goto_8

    .line 257
    :cond_1f
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    goto :goto_7

    .line 260
    :cond_20
    iget-object v1, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    aget-object v1, v1, v0

    const/4 v3, 0x0

    iput v3, v1, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->u1Protocol:I

    .line 261
    iget-object v1, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    aget-object v1, v1, v0

    const/4 v3, 0x4

    iput v3, v1, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->eComType:I

    .line 262
    iget-object v1, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    aget-object v0, v1, v0

    const/4 v1, 0x0

    iput v1, v0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->eMethod:I

    goto/16 :goto_8

    .line 258
    :cond_21
    :goto_7
    iget-object v1, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    aget-object v0, v1, v0

    const/4 v1, 0x4

    iput v1, v0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->u1Protocol:I

    goto/16 :goto_8

    :cond_22
    const-string v1, "PBContactCOM="

    .line 264
    invoke-virtual {v10, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_25

    const/16 v1, 0xd

    .line 265
    invoke-virtual {v10, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 266
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 267
    iget-object v0, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x1

    iput v1, v0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->eComType:I

    goto/16 :goto_8

    .line 268
    :cond_23
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 269
    iget-object v1, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    iput v0, v1, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->eComType:I

    goto/16 :goto_8

    .line 271
    :cond_24
    iget-object v0, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x4

    iput v1, v0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->eComType:I

    goto/16 :goto_8

    :cond_25
    const-string v1, "SIMContactCOM="

    .line 273
    invoke-virtual {v10, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_28

    const/16 v1, 0xe

    .line 274
    invoke-virtual {v10, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 275
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 276
    iget-object v0, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iput v1, v0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->eComType:I

    goto/16 :goto_8

    .line 277
    :cond_26
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 278
    iget-object v1, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    iput v0, v1, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->eComType:I

    goto/16 :goto_8

    .line 280
    :cond_27
    iget-object v0, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x4

    iput v1, v0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->eComType:I

    goto/16 :goto_8

    :cond_28
    const-string v1, "ContactCOM="

    .line 282
    invoke-virtual {v10, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_2b

    const/16 v1, 0xb

    .line 283
    invoke-virtual {v10, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 284
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 285
    iget-object v0, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x1

    iput v1, v0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->eComType:I

    .line 286
    iget-object v0, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    aget-object v0, v0, v1

    iput v1, v0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->eComType:I

    goto/16 :goto_8

    .line 287
    :cond_29
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 288
    iget-object v1, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    iput v0, v1, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->eComType:I

    .line 289
    iget-object v1, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    iput v0, v1, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->eComType:I

    goto/16 :goto_8

    .line 291
    :cond_2a
    iget-object v0, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x4

    iput v1, v0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->eComType:I

    .line 292
    iget-object v0, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    const/4 v3, 0x1

    aget-object v0, v0, v3

    iput v1, v0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->eComType:I

    goto/16 :goto_8

    :cond_2b
    const-string v1, "ContactMethod="

    .line 294
    invoke-virtual {v10, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v3, "ATCPROT"

    const-string v4, "SAMSUNGD"

    const-string v11, "MOTOV"

    const-string v12, "ATEOBEX"

    const-string v13, "ATTSSPCSDW"

    const-string v14, "ATMSYNC"

    const/4 v15, 0x5

    if-ltz v1, :cond_31

    const/16 v1, 0xe

    .line 295
    :try_start_2
    invoke-virtual {v10, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 296
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2c

    .line 297
    iget-object v0, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x1

    iput v1, v0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->eMethod:I

    .line 298
    iget-object v0, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    aget-object v0, v0, v1

    iput v1, v0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->eMethod:I

    goto/16 :goto_8

    .line 299
    :cond_2c
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2d

    .line 300
    iget-object v1, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    iput v0, v1, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->eMethod:I

    .line 301
    iget-object v1, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    iput v0, v1, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->eMethod:I

    goto/16 :goto_8

    .line 302
    :cond_2d
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 303
    iget-object v0, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x3

    iput v1, v0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->eMethod:I

    .line 304
    iget-object v0, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    const/4 v3, 0x1

    aget-object v0, v0, v3

    iput v1, v0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->eMethod:I

    goto/16 :goto_8

    .line 305
    :cond_2e
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 306
    iget-object v0, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput v15, v0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->eMethod:I

    .line 307
    iget-object v0, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iput v15, v0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->eMethod:I

    goto/16 :goto_8

    .line 308
    :cond_2f
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 309
    iget-object v0, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x6

    iput v1, v0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->eMethod:I

    .line 310
    iget-object v0, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    const/4 v3, 0x1

    aget-object v0, v0, v3

    iput v1, v0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->eMethod:I

    goto/16 :goto_8

    .line 311
    :cond_30
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 312
    iget-object v0, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x4

    iput v1, v0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->eMethod:I

    .line 313
    iget-object v0, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    const/4 v3, 0x1

    aget-object v0, v0, v3

    iput v1, v0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->eMethod:I

    goto/16 :goto_8

    :cond_31
    const-string v1, "PBContactMethod="

    .line 315
    invoke-virtual {v10, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_37

    const/16 v1, 0x10

    .line 316
    invoke-virtual {v10, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 317
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_32

    .line 318
    iget-object v0, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x1

    iput v1, v0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->eMethod:I

    goto/16 :goto_8

    .line 319
    :cond_32
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_33

    .line 320
    iget-object v1, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    iput v0, v1, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->eMethod:I

    goto/16 :goto_8

    .line 321
    :cond_33
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 322
    iget-object v0, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x3

    iput v1, v0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->eMethod:I

    goto/16 :goto_8

    .line 323
    :cond_34
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 324
    iget-object v0, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput v15, v0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->eMethod:I

    goto/16 :goto_8

    .line 325
    :cond_35
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 326
    iget-object v0, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x6

    iput v1, v0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->eMethod:I

    goto/16 :goto_8

    .line 327
    :cond_36
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 328
    iget-object v0, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x4

    iput v1, v0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->eMethod:I

    goto :goto_8

    :cond_37
    const-string v1, "SIMContactMethod="

    .line 330
    invoke-virtual {v10, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_3d

    const/16 v1, 0x11

    .line 331
    invoke-virtual {v10, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 332
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_38

    .line 333
    iget-object v0, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iput v1, v0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->eMethod:I

    goto :goto_8

    .line 334
    :cond_38
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_39

    .line 335
    iget-object v1, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    iput v0, v1, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->eMethod:I

    goto :goto_8

    .line 336
    :cond_39
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 337
    iget-object v0, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x3

    iput v1, v0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->eMethod:I

    goto :goto_8

    .line 338
    :cond_3a
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 339
    iget-object v0, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iput v15, v0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->eMethod:I

    goto :goto_8

    .line 340
    :cond_3b
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 341
    iget-object v0, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x6

    iput v1, v0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->eMethod:I

    goto :goto_8

    .line 342
    :cond_3c
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 343
    iget-object v0, v7, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x4

    iput v1, v0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->eMethod:I

    :cond_3d
    :goto_8
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v3, 0x1

    const/4 v4, 0x0

    goto/16 :goto_0

    .line 348
    :cond_3e
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V

    .line 349
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string v1, "read data error!"

    .line 352
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v1, 0x0

    return v1
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile;->mContext:Landroid/content/Context;

    return-void
.end method
