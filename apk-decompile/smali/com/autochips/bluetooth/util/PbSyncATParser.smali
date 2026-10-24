.class public Lcom/autochips/bluetooth/util/PbSyncATParser;
.super Ljava/lang/Object;
.source "PbSyncATParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autochips/bluetooth/util/PbSyncATParser$PBMGRSPTCHARSET_T;,
        Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_PDU_PARAM_T;,
        Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_REC_PARAM_T;,
        Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_ADDREC_PARAM_T;,
        Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;
    }
.end annotation


# static fields
.field public static final AT_CMD_GET_CIMI:I = 0x8

.field public static final AT_CMD_GET_CUR_CHARSET:I = 0xe

.field public static final AT_CMD_GET_IMEI:I = 0x7

.field public static final AT_CMD_GET_MANUFACTOR:I = 0x4

.field public static final AT_CMD_GET_MODVER:I = 0x6

.field public static final AT_CMD_GET_PB_CUR_PATH:I = 0x13

.field public static final AT_CMD_GET_PB_IDXLIST_BYSPBR:I = 0x17

.field public static final AT_CMD_GET_PB_LISTSIZE:I = 0x14

.field public static final AT_CMD_GET_PB_RECORDS:I = 0x15

.field public static final AT_CMD_GET_PB_RECORDS_BYSPBR:I = 0x16

.field public static final AT_CMD_GET_PB_SPT_PATH:I = 0x12

.field public static final AT_CMD_GET_SERIAL:I = 0x5

.field public static final AT_CMD_GET_SMS_CUR_POS:I = 0x1e

.field public static final AT_CMD_GET_SMS_FORMAT:I = 0x1a

.field public static final AT_CMD_GET_SMS_LISTSZ:I = 0x20

.field public static final AT_CMD_GET_SMS_RECORDS:I = 0x24

.field public static final AT_CMD_GET_SMS_REC_BYTYPE:I = 0x22

.field public static final AT_CMD_GET_SMS_REC_IDXLIST:I = 0x21

.field public static final AT_CMD_GET_SMS_SERVICE_CENTER:I = 0x1c

.field public static final AT_CMD_GET_SMS_SPT_POS:I = 0x1d

.field public static final AT_CMD_GET_SMS_SPT_RECTYPE:I = 0x23

.field public static final AT_CMD_GET_SMS_SPT_SERVICES:I = 0x18

.field public static final AT_CMD_GET_SPT_CHARSET:I = 0xd

.field public static final AT_CMD_RESET:I = 0x1

.field public static final AT_CMD_SET_CMEEERROR:I = 0x3

.field public static final AT_CMD_SET_CUR_CHARSET:I = 0xf

.field public static final AT_CMD_SET_ECHO:I = 0x2

.field public static final AT_CMD_SET_PB_CUR_PATH:I = 0x11

.field public static final AT_CMD_SET_SMS_CNMI:I = 0x19

.field public static final AT_CMD_SET_SMS_CUR_POS:I = 0x1f

.field public static final AT_CMD_SET_SMS_FORMAT:I = 0x1b

.field public static final AT_CMD_UNKNOWN:I = 0x0

.field public static final BT_CHARSET_ASCII:I = 0x200

.field public static final BT_CHARSET_GSM:I = 0x4

.field public static final BT_CHARSET_HEX:I = 0x10

.field public static final BT_CHARSET_IRA:I = 0x8

.field public static final BT_CHARSET_NULL:I = 0x100

.field public static final BT_CHARSET_PCC437:I = 0x80

.field public static final BT_CHARSET_PCCP:I = 0x20

.field public static final BT_CHARSET_PCCP437:I = 0x400

.field public static final BT_CHARSET_PCDN:I = 0x40

.field public static final BT_CHARSET_UCS2:I = 0x2

.field public static final BT_CHARSET_UNKNOWN:I = 0x0

.field public static final BT_CHARSET_UTF8:I = 0x1

.field public static final BT_SMS_STORAGEIDX_LSDDEL:I = 0x0

.field public static final BT_SMS_STORAGEIDX_MAX:I = 0x3

.field public static final BT_SMS_STORAGEIDX_RECV:I = 0x2

.field public static final BT_SMS_STORAGEIDX_WRSD:I = 0x1

.field private static DEBUG:Z = false

.field public static final MAX_CNT_OF_BT_CHARSET:I = 0xb

.field public static final MAX_OF_SERVICE_CENTER_LEN:I = 0x20

.field public static final PBMGR_TEL_FAX:I = 0x3

.field public static final PBMGR_TEL_HOME:I = 0x0

.field public static final PBMGR_TEL_MOBILE:I = 0x2

.field public static final PBMGR_TEL_OTHER:I = 0x4

.field public static final PBMGR_TEL_UNKNOWN:I = 0x5

.field public static final PBMGR_TEL_WORK:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PbSyncATParser"


# instance fields
.field bUDHI:Z

.field private cur:I

.field private iSCLen:I

.field private mAddRecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_ADDREC_PARAM_T;",
            ">;"
        }
    .end annotation
.end field

.field private mBTSmsRecType:[I

.field private mBtSmsStorageListRecCnt:[[Ljava/lang/String;

.field private mBtSmsStorageRecCnt:[[I

.field private mCharset:I

.field private mCurATCmd:I

.field private mCurIndex:I

.field mDcsCharSet:I

.field private mIndexList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLength:I

.field private mListInfoParam:Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;

.field private mOneSmsRec:Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_REC_PARAM_T;

.field private mPDUContent:Ljava/lang/String;

.field private mPDULength:I

.field private mParsePath:I

.field mPdu:Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_PDU_PARAM_T;

.field private mRespondString:Ljava/lang/String;

.field private mServiceCenter:Ljava/lang/String;

.field private mServicePhoneNoType:I

.field private mServiceSptType:[I

.field private mSmsFormat:[I

.field private mSmsRecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_REC_PARAM_T;",
            ">;"
        }
    .end annotation
.end field

.field private mSmsStorage:[Ljava/lang/String;

.field private m_sptCharset:Lcom/autochips/bluetooth/util/PbSyncATParser$PBMGRSPTCHARSET_T;

.field private rGetCurPath:Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    sget-boolean v0, Lcom/autochips/bluetooth/BtEmulatorDebug;->mDebugAll:Z

    sget-boolean v1, Lcom/autochips/bluetooth/BtEmulatorDebug;->mDebugPB:Z

    and-int/2addr v0, v1

    sput-boolean v0, Lcom/autochips/bluetooth/util/PbSyncATParser;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    new-instance v0, Lcom/autochips/bluetooth/util/PbSyncATParser$PBMGRSPTCHARSET_T;

    invoke-direct {v0}, Lcom/autochips/bluetooth/util/PbSyncATParser$PBMGRSPTCHARSET_T;-><init>()V

    iput-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->m_sptCharset:Lcom/autochips/bluetooth/util/PbSyncATParser$PBMGRSPTCHARSET_T;

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 164
    fill-array-data v1, :array_0

    const-class v2, Ljava/lang/String;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Ljava/lang/String;

    iput-object v1, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mBtSmsStorageListRecCnt:[[Ljava/lang/String;

    new-array v0, v0, [I

    .line 165
    fill-array-data v0, :array_1

    const-class v1, I

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mBtSmsStorageRecCnt:[[I

    const/4 v0, 0x0

    .line 170
    iput-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mServiceCenter:Ljava/lang/String;

    const/16 v1, 0x91

    .line 171
    iput v1, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mServicePhoneNoType:I

    const/4 v1, 0x3

    new-array v1, v1, [I

    .line 179
    iput-object v1, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mServiceSptType:[I

    const/4 v1, 0x5

    new-array v1, v1, [I

    .line 184
    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mBTSmsRecType:[I

    const/4 v1, 0x0

    .line 189
    iput v1, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mCurATCmd:I

    .line 194
    iput-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    .line 199
    iput v1, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mCharset:I

    .line 204
    iput v1, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mParsePath:I

    .line 219
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mIndexList:Ljava/util/ArrayList;

    .line 224
    new-instance v2, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;

    invoke-direct {v2}, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;-><init>()V

    iput-object v2, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->rGetCurPath:Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;

    .line 229
    new-instance v2, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;

    invoke-direct {v2}, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;-><init>()V

    iput-object v2, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mListInfoParam:Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;

    .line 234
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mAddRecs:Ljava/util/List;

    .line 239
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mSmsRecs:Ljava/util/List;

    .line 240
    new-instance v2, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_REC_PARAM_T;

    invoke-direct {v2}, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_REC_PARAM_T;-><init>()V

    iput-object v2, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mOneSmsRec:Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_REC_PARAM_T;

    .line 244
    iput v1, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mPDULength:I

    .line 245
    iput-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mPDUContent:Ljava/lang/String;

    .line 247
    iput v1, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->iSCLen:I

    .line 249
    new-instance v0, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_PDU_PARAM_T;

    invoke-direct {v0}, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_PDU_PARAM_T;-><init>()V

    iput-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mPdu:Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_PDU_PARAM_T;

    .line 251
    iput v1, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mLength:I

    const/4 v0, -0x1

    .line 253
    iput v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mCurIndex:I

    return-void

    nop

    :array_0
    .array-data 4
        0x3
        0x3
    .end array-data

    :array_1
    .array-data 4
        0x3
        0x2
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static DecodeCharset(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    const-string v1, "PbSyncATParser"

    const-string v2, ""

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    .line 786
    sget-boolean p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "not support"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v2

    :cond_1
    return-object p1

    .line 769
    :cond_2
    invoke-static {p1}, Lcom/autochips/bluetooth/util/PbSyncATParser;->DecodeUCS2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    if-nez p1, :cond_4

    return-object v2

    .line 775
    :cond_4
    invoke-static {p1}, Lcom/autochips/bluetooth/util/PbSyncATParser;->IsUTF8Plus(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 776
    sget-boolean p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->DEBUG:Z

    if-eqz p0, :cond_5

    const-string p0, "PbSyncATParser IsUTF8Plus = true"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    :cond_5
    invoke-static {p1}, Lcom/autochips/bluetooth/util/PbSyncATParser;->DecodeUTF8Plus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    return-object p1
.end method

.method private static DecodeUCS2(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, ""

    if-eqz p0, :cond_2

    .line 795
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    goto :goto_1

    .line 800
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    .line 801
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 802
    div-int/lit8 v3, v2, 0x2

    add-int/lit8 v4, v2, 0x2

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x10

    invoke-static {v2, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    move v2, v4

    goto :goto_0

    .line 808
    :cond_1
    :try_start_0
    new-instance p0, Ljava/lang/String;

    const-string v2, "UTF-16BE"

    invoke-direct {p0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 810
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static DecodeUTF8Plus(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "US-ASCII"

    .line 885
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 890
    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 891
    :goto_0
    array-length v4, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v3, v4, :cond_4

    add-int/lit8 v4, v3, 0x1

    .line 893
    :try_start_1
    aget-byte v3, v1, v3

    int-to-char v3, v3

    const/16 v5, 0x10

    invoke-static {v3, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    add-int/lit8 v6, v4, 0x1

    .line 894
    aget-byte v4, v1, v4

    int-to-char v4, v4

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    const/4 v5, -0x1

    if-eq v3, v5, :cond_3

    if-ne v4, v5, :cond_2

    goto :goto_1

    :cond_2
    shl-int/lit8 v3, v3, 0x4

    add-int/2addr v3, v4

    int-to-char v3, v3

    .line 899
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v3, v6

    goto :goto_0

    :cond_3
    :goto_1
    const/4 v2, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    .line 901
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    return-object p0

    :cond_4
    :goto_2
    if-eqz v2, :cond_5

    goto :goto_3

    .line 908
    :cond_5
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object p0, v1

    :goto_3
    return-object p0

    :catch_1
    move-exception v0

    .line 911
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object p0
.end method

.method public static IsUTF8Plus(Ljava/lang/String;)Z
    .locals 11

    const/4 v0, 0x0

    if-eqz p0, :cond_b

    .line 822
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    :try_start_0
    const-string v1, "US-ASCII"

    .line 826
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    move v2, v0

    .line 827
    :goto_0
    array-length v3, v1

    const/16 v4, 0x46

    const/16 v5, 0x39

    const/16 v6, 0x41

    const/4 v7, 0x2

    if-ge v2, v3, :cond_3

    .line 828
    array-length v3, v1

    if-le v3, v7, :cond_2

    array-length v3, v1

    sub-int/2addr v3, v7

    if-ge v2, v3, :cond_2

    const/16 v3, 0x45

    aget-byte v8, v1, v2

    if-ne v3, v8, :cond_2

    const/16 v3, 0x37

    add-int/lit8 v8, v2, 0x2

    aget-byte v9, v1, v8

    if-ge v3, v9, :cond_1

    aget-byte v3, v1, v8

    if-le v3, v5, :cond_3

    :cond_1
    aget-byte v3, v1, v8

    if-gt v6, v3, :cond_2

    aget-byte v3, v1, v8

    if-gt v3, v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    add-int/2addr v2, v7

    .line 838
    array-length v3, v1

    const/4 v8, 0x1

    if-ge v2, v3, :cond_5

    :cond_4
    move v0, v8

    goto :goto_3

    .line 844
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    rem-int/2addr v2, v7

    if-eqz v2, :cond_6

    return v0

    :cond_6
    move v2, v0

    .line 847
    :goto_2
    array-length v3, v1

    if-ge v2, v3, :cond_a

    .line 848
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v7, v2, 0x1

    .line 849
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x30

    if-lt v3, v9, :cond_a

    const/16 v10, 0x38

    if-ge v3, v10, :cond_a

    if-lt v7, v9, :cond_7

    if-le v7, v5, :cond_9

    :cond_7
    if-lt v7, v6, :cond_8

    if-le v7, v4, :cond_9

    :cond_8
    const/16 v3, 0x61

    if-lt v7, v3, :cond_a

    const/16 v3, 0x66

    if-gt v7, v3, :cond_a

    :cond_9
    add-int/lit8 v2, v2, 0x2

    goto :goto_2

    .line 860
    :cond_a
    array-length p0, v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, p0, :cond_b

    const/4 p0, 0x3

    if-ge v2, p0, :cond_4

    goto :goto_3

    :catch_0
    move-exception p0

    .line 869
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_b
    :goto_3
    return v0
.end method

.method private convertCharSetStr2Int(Ljava/lang/String;Ljava/util/Map;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const-string v0, "HEX"

    .line 701
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, "hex"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_a

    :cond_0
    const-string v0, "GSM"

    .line 705
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    const-string v1, "gsm"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_9

    :cond_1
    const-string v0, "IRA"

    .line 709
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    const-string v1, "ira"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_8

    :cond_2
    const-string v0, "UCS2"

    .line 713
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    if-nez v1, :cond_21

    const-string/jumbo v1, "ucs2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    const-string v1, "0055004300530032"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_7

    :cond_3
    const-string v0, "PCCP"

    .line 718
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    const-string v1, "pccp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto/16 :goto_6

    :cond_4
    const-string v0, "PCDN"

    .line 722
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    const-string v1, "pcdn"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto/16 :goto_5

    :cond_5
    const-string v0, "UTF8"

    .line 726
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_1b

    const-string/jumbo v1, "utf8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto/16 :goto_4

    :cond_6
    const-string v0, "UTF-8"

    .line 730
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string/jumbo v1, "utf-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto/16 :goto_3

    :cond_7
    const-string v1, "ASCII"

    .line 734
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    const-string v4, "ascii"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto/16 :goto_2

    :cond_8
    const-string v1, "PCC437"

    .line 738
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    const-string v4, "pcc437"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_1

    :cond_9
    const-string v1, "PCCP437"

    .line 742
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    const-string v4, "pccp437"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_0

    :cond_a
    const-string v1, "005500430053002D0032"

    .line 746
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    if-eqz p2, :cond_b

    .line 748
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "UCS-2"

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    return v2

    :cond_c
    const-string v1, "005500430053005F0032"

    .line 750
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    if-eqz p2, :cond_d

    .line 752
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "UCS_2"

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return v2

    :cond_e
    const-string v1, "005500540046002D0038"

    .line 754
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    if-eqz p2, :cond_f

    .line 756
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    return v3

    :cond_10
    const-string v0, "005500540046005F0038"

    .line 758
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    if-eqz p2, :cond_11

    .line 760
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "UTF_8"

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    return v3

    :cond_12
    const/4 p1, 0x0

    return p1

    :cond_13
    :goto_0
    const/16 p1, 0x400

    if-eqz p2, :cond_14

    .line 744
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    return p1

    :cond_15
    :goto_1
    const/16 p1, 0x80

    if-eqz p2, :cond_16

    .line 740
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    return p1

    :cond_17
    :goto_2
    const/16 p1, 0x200

    if-eqz p2, :cond_18

    .line 736
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    return p1

    :cond_19
    :goto_3
    if-eqz p2, :cond_1a

    .line 732
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    return v3

    :cond_1b
    :goto_4
    if-eqz p2, :cond_1c

    .line 728
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    return v3

    :cond_1d
    :goto_5
    const/16 p1, 0x40

    if-eqz p2, :cond_1e

    .line 724
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1e
    return p1

    :cond_1f
    :goto_6
    const/16 p1, 0x20

    if-eqz p2, :cond_20

    .line 720
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20
    return p1

    :cond_21
    :goto_7
    if-eqz p2, :cond_22

    .line 716
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22
    return v2

    :cond_23
    :goto_8
    const/16 p1, 0x8

    if-eqz p2, :cond_24

    .line 711
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_24
    return p1

    :cond_25
    :goto_9
    const/4 p1, 0x4

    if-eqz p2, :cond_26

    .line 707
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_26
    return p1

    :cond_27
    :goto_a
    const/16 p1, 0x10

    if-eqz p2, :cond_28

    .line 703
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_28
    return p1
.end method

.method private convertPathStr2Int(Ljava/lang/String;)I
    .locals 1

    const-string v0, "ME"

    .line 683
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "PM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SM"

    .line 685
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p1, 0x20

    return p1

    :cond_1
    const-string v0, "DC"

    .line 687
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 p1, 0x100

    return p1

    :cond_2
    const-string v0, "RC"

    .line 689
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 p1, 0x40

    return p1

    :cond_3
    const-string v0, "MC"

    .line 691
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 p1, 0x400

    return p1

    :cond_4
    const-string v0, "LD"

    .line 693
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    return p1

    :cond_5
    :goto_0
    const/16 p1, 0x10

    return p1
.end method


# virtual methods
.method public ParseCMGF()Z
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 969
    iput-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mSmsFormat:[I

    .line 972
    iget v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mCurATCmd:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x1a

    if-ne v3, v0, :cond_1

    .line 973
    iget-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    const-string v3, "("

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    return v1

    .line 977
    :cond_0
    iget-object v3, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 978
    iget-object v4, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mSmsFormat:[I

    iget-object v5, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    add-int/2addr v0, v2

    invoke-virtual {v5, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aput v0, v4, v1

    .line 981
    iget-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 982
    iget-object v4, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mSmsFormat:[I

    iget-object v5, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    add-int/2addr v3, v2

    invoke-virtual {v5, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aput v0, v4, v2

    :cond_1
    const/16 v0, 0x1b

    .line 985
    iget v3, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mCurATCmd:I

    if-ne v0, v3, :cond_3

    .line 986
    iget-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    const-string v3, "OK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2

    return v2

    :cond_2
    return v1

    :cond_3
    return v2
.end method

.method public ParseCMGL()Z
    .locals 14

    const/4 v0, 0x1

    .line 1128
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1131
    iget v2, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mCurATCmd:I

    const-string v3, ","

    const/4 v4, 0x0

    .line 1223
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "PbSyncATParser"

    const/4 v7, -0x1

    const/16 v8, 0x23

    if-ne v8, v2, :cond_e

    .line 1132
    iget-object v2, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move v8, v0

    .line 1133
    :goto_0
    array-length v9, v2

    if-ge v8, v9, :cond_e

    move v7, v4

    .line 1135
    :goto_1
    aget-object v9, v2, v8

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0x20

    if-ge v7, v9, :cond_1

    aget-object v9, v2, v8

    invoke-virtual {v9, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v10, v9, :cond_0

    const/16 v9, 0x28

    aget-object v11, v2, v8

    invoke-virtual {v11, v7}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v9, v11, :cond_1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    move v9, v7

    .line 1143
    :goto_2
    aget-object v11, v2, v8

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v9, v11, :cond_2

    const/16 v11, 0x5b

    aget-object v12, v2, v8

    invoke-virtual {v12, v9}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-eq v11, v12, :cond_2

    aget-object v11, v2, v8

    invoke-virtual {v11, v9}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-eq v10, v11, :cond_2

    const/16 v11, 0x29

    aget-object v12, v2, v8

    invoke-virtual {v12, v9}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-eq v11, v12, :cond_2

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1147
    :cond_2
    aget-object v10, v2, v8

    invoke-virtual {v10, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v10, "REC UNREAD"

    .line 1148
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d

    const-string v10, "0"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    goto/16 :goto_7

    :cond_3
    const-string v10, "REC READ"

    .line 1151
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c

    const-string v10, "1"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    goto :goto_6

    :cond_4
    const-string v10, "STO UNSENT"

    .line 1154
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    const-string v10, "2"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    goto :goto_5

    :cond_5
    const-string v10, "STO SENT"

    .line 1157
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    const-string v10, "3"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    goto :goto_4

    :cond_6
    const-string v10, "ALL"

    .line 1160
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    const-string v10, "4"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_3

    .line 1164
    :cond_7
    sget-boolean v0, Lcom/autochips/bluetooth/util/PbSyncATParser;->DEBUG:Z

    if-eqz v0, :cond_8

    const-string v0, "Not support type"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return v4

    .line 1162
    :cond_9
    :goto_3
    iget-object v7, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mBTSmsRecType:[I

    const/4 v10, 0x4

    aput v0, v7, v10

    goto :goto_8

    .line 1159
    :cond_a
    :goto_4
    iget-object v7, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mBTSmsRecType:[I

    const/4 v10, 0x3

    aput v0, v7, v10

    goto :goto_8

    .line 1156
    :cond_b
    :goto_5
    iget-object v7, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mBTSmsRecType:[I

    const/4 v10, 0x2

    aput v0, v7, v10

    goto :goto_8

    .line 1153
    :cond_c
    :goto_6
    iget-object v7, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mBTSmsRecType:[I

    aput v0, v7, v0

    goto :goto_8

    .line 1150
    :cond_d
    :goto_7
    iget-object v7, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mBTSmsRecType:[I

    aput v0, v7, v4

    :goto_8
    add-int/lit8 v8, v8, 0x1

    move v7, v9

    goto/16 :goto_0

    :cond_e
    const/16 v2, 0x22

    .line 1172
    iget v4, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mCurATCmd:I

    if-ne v2, v4, :cond_1e

    .line 1173
    sget-boolean v2, Lcom/autochips/bluetooth/util/PbSyncATParser;->DEBUG:Z

    if-eqz v2, :cond_f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "respondString is:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    :cond_f
    iget-object v2, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mSmsRecs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1176
    :goto_9
    iget-object v2, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    add-int/2addr v7, v0

    const-string v4, "+CMGL:"

    invoke-virtual {v2, v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-ltz v2, :cond_1b

    .line 1177
    new-instance v2, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_REC_PARAM_T;

    invoke-direct {v2}, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_REC_PARAM_T;-><init>()V

    .line 1178
    iget-object v4, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    const-string v8, ":"

    invoke-virtual {v4, v8, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 1179
    iget-object v7, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v7, v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    .line 1180
    sget-boolean v9, Lcom/autochips/bluetooth/util/PbSyncATParser;->DEBUG:Z

    const-string v10, " and iend value is:"

    const-string v11, "istart value is:"

    if-eqz v9, :cond_10

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    :cond_10
    iget-object v4, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    invoke-virtual {v4, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_REC_PARAM_T;->iIndex:I

    .line 1183
    sget-boolean v4, Lcom/autochips/bluetooth/util/PbSyncATParser;->DEBUG:Z

    if-eqz v4, :cond_11

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Record Index is:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v2, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_REC_PARAM_T;->iIndex:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    :cond_11
    iget-object v4, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    add-int/lit8 v8, v7, 0x1

    invoke-virtual {v4, v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 1187
    sget-boolean v9, Lcom/autochips/bluetooth/util/PbSyncATParser;->DEBUG:Z

    if-eqz v9, :cond_12

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    :cond_12
    iget-object v7, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    invoke-virtual {v7, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_REC_PARAM_T;->sType:Ljava/lang/String;

    .line 1189
    iget-object v7, v2, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_REC_PARAM_T;->sType:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1190
    sget-boolean v8, Lcom/autochips/bluetooth/util/PbSyncATParser;->DEBUG:Z

    if-eqz v8, :cond_13

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Record type is:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v2, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_REC_PARAM_T;->sType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    :cond_13
    iget-object v8, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v8, v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 1193
    iget-object v8, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    add-int/lit8 v9, v4, 0x1

    const-string v12, "\r\n"

    invoke-virtual {v8, v12, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    .line 1194
    sget-boolean v13, Lcom/autochips/bluetooth/util/PbSyncATParser;->DEBUG:Z

    if-eqz v13, :cond_14

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    :cond_14
    iget-object v4, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    invoke-virtual {v4, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mPDULength:I

    .line 1197
    sget-boolean v4, Lcom/autochips/bluetooth/util/PbSyncATParser;->DEBUG:Z

    if-eqz v4, :cond_15

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Pdu length is:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mPDULength:I

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    :cond_15
    iget-object v4, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v4, v12, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 1201
    sget-boolean v12, Lcom/autochips/bluetooth/util/PbSyncATParser;->DEBUG:Z

    if-eqz v12, :cond_16

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    :cond_16
    iget-object v8, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    invoke-virtual {v8, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mPDUContent:Ljava/lang/String;

    .line 1203
    sget-boolean v8, Lcom/autochips/bluetooth/util/PbSyncATParser;->DEBUG:Z

    if-eqz v8, :cond_17

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Pdu content is:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mPDUContent:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    :cond_17
    iget-object v8, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mPDUContent:Ljava/lang/String;

    invoke-virtual {p0, v8, v7}, Lcom/autochips/bluetooth/util/PbSyncATParser;->decodePdu(Ljava/lang/String;I)Z

    move-result v7

    .line 1209
    sget-boolean v8, Lcom/autochips/bluetooth/util/PbSyncATParser;->DEBUG:Z

    if-eqz v8, :cond_18

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "decode pdu is:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    if-eqz v7, :cond_1a

    .line 1211
    iget-object v7, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mPdu:Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_PDU_PARAM_T;

    iget-object v7, v7, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_PDU_PARAM_T;->sAddress:Ljava/lang/String;

    iput-object v7, v2, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_REC_PARAM_T;->sTelNum:Ljava/lang/String;

    .line 1212
    sget-boolean v7, Lcom/autochips/bluetooth/util/PbSyncATParser;->DEBUG:Z

    if-eqz v7, :cond_19

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "temSmsRec.sTelNum is: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_REC_PARAM_T;->sTelNum:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    :cond_19
    iget-object v7, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mPdu:Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_PDU_PARAM_T;

    iget-wide v7, v7, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_PDU_PARAM_T;->lSCTimeStamp:J

    iput-wide v7, v2, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_REC_PARAM_T;->lTimeMillis:J

    .line 1214
    iget-object v7, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mPdu:Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_PDU_PARAM_T;

    iget-object v7, v7, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_PDU_PARAM_T;->sUserData:Ljava/lang/String;

    iput-object v7, v2, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_REC_PARAM_T;->sContent:Ljava/lang/String;

    .line 1215
    iget-object v7, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mSmsRecs:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v7, v4

    goto/16 :goto_9

    .line 1217
    :cond_1a
    sget-boolean v0, Lcom/autochips/bluetooth/util/PbSyncATParser;->DEBUG:Z

    if-eqz v0, :cond_1c

    const-string v0, "decode pdu fail!"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 1221
    :cond_1b
    iget-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    const-string v2, "ERROR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1d

    .line 1222
    sget-boolean v0, Lcom/autochips/bluetooth/util/PbSyncATParser;->DEBUG:Z

    if-eqz v0, :cond_1c

    const-string v0, "abort,don\'t support this command"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    :goto_a
    move-object v1, v5

    goto :goto_b

    .line 1226
    :cond_1d
    sget-boolean v0, Lcom/autochips/bluetooth/util/PbSyncATParser;->DEBUG:Z

    if-eqz v0, :cond_1e

    const-string v0, "SMS record list over"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    :cond_1e
    :goto_b
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public ParseCMGR()Z
    .locals 12

    .line 1276
    sget-boolean v0, Lcom/autochips/bluetooth/util/PbSyncATParser;->DEBUG:Z

    const-string/jumbo v1, "respondString is:"

    const-string v2, "PbSyncATParser"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v0, 0x24

    .line 1280
    iget v3, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mCurATCmd:I

    const/4 v4, 0x1

    if-ne v0, v3, :cond_22

    .line 1281
    iget-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    const-string v3, "+CMGR"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x0

    if-ltz v0, :cond_1f

    .line 1282
    new-instance v0, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_REC_PARAM_T;

    invoke-direct {v0}, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_REC_PARAM_T;-><init>()V

    .line 1284
    iget v1, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mCurIndex:I

    iput v1, v0, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_REC_PARAM_T;->iIndex:I

    .line 1285
    sget-boolean v1, Lcom/autochips/bluetooth/util/PbSyncATParser;->DEBUG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "index is: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_REC_PARAM_T;->iIndex:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    :cond_1
    iget-object v1, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    const-string v5, ":"

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 1288
    iget-object v5, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    add-int/lit8 v6, v1, 0x1

    const-string v7, ","

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    if-ltz v1, :cond_1d

    if-gez v5, :cond_2

    goto/16 :goto_4

    .line 1293
    :cond_2
    sget-boolean v8, Lcom/autochips/bluetooth/util/PbSyncATParser;->DEBUG:Z

    const-string v9, " and iend value is:"

    const-string v10, "istart value is:"

    if-eqz v8, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    :cond_3
    iget-object v1, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1295
    invoke-virtual {p0, v1}, Lcom/autochips/bluetooth/util/PbSyncATParser;->isInteger(Ljava/lang/String;)Z

    move-result v6

    const-string v8, "\r\n"

    if-nez v6, :cond_e

    .line 1296
    invoke-virtual {p0, v1}, Lcom/autochips/bluetooth/util/PbSyncATParser;->checkSmsType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_REC_PARAM_T;->sType:Ljava/lang/String;

    .line 1298
    sget-boolean v6, Lcom/autochips/bluetooth/util/PbSyncATParser;->DEBUG:Z

    if-eqz v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Not PDU format,Text mode,SMS Type : "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_REC_PARAM_T;->sType:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string v6, "REC UNREAD"

    .line 1299
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "REC READ"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_0

    .line 1327
    :cond_5
    iget-object v1, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    add-int/lit8 v2, v5, 0x1

    invoke-virtual {v1, v7, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-gez v1, :cond_6

    return v3

    .line 1331
    :cond_6
    iget-object v2, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    add-int/lit8 v5, v5, 0x2

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_REC_PARAM_T;->sTelNum:Ljava/lang/String;

    .line 1333
    iget-object v2, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    add-int/2addr v1, v4

    invoke-virtual {v2, v8, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-gez v2, :cond_7

    return v3

    .line 1336
    :cond_7
    iget-object v3, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_REC_PARAM_T;->sContent:Ljava/lang/String;

    goto :goto_1

    .line 1304
    :cond_8
    :goto_0
    iget-object v1, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v1, v7, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-gez v1, :cond_9

    return v3

    .line 1308
    :cond_9
    iget-object v6, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    add-int/lit8 v5, v5, 0x2

    add-int/lit8 v9, v1, -0x1

    invoke-virtual {v6, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_REC_PARAM_T;->sTelNum:Ljava/lang/String;

    .line 1309
    iget-object v5, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v5, v7, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 1310
    iget-object v5, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    if-ltz v1, :cond_c

    if-gez v5, :cond_a

    goto :goto_2

    .line 1315
    :cond_a
    iget-object v1, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1316
    invoke-virtual {p0, v1}, Lcom/autochips/bluetooth/util/PbSyncATParser;->getTextSCTimestampMillis(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_REC_PARAM_T;->lTimeMillis:J

    .line 1318
    iget-object v1, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    add-int/2addr v5, v4

    invoke-virtual {v1, v8, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-gez v1, :cond_b

    return v3

    .line 1321
    :cond_b
    iget-object v2, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    invoke-virtual {v2, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_REC_PARAM_T;->sContent:Ljava/lang/String;

    .line 1338
    :goto_1
    iput-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mOneSmsRec:Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_REC_PARAM_T;

    return v4

    .line 1312
    :cond_c
    :goto_2
    sget-boolean v0, Lcom/autochips/bluetooth/util/PbSyncATParser;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "Respond format error, no correct date type"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    return v3

    .line 1342
    :cond_e
    iput-object v1, v0, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_REC_PARAM_T;->sType:Ljava/lang/String;

    .line 1343
    iget-object v1, v0, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_REC_PARAM_T;->sType:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1344
    sget-boolean v6, Lcom/autochips/bluetooth/util/PbSyncATParser;->DEBUG:Z

    if-eqz v6, :cond_f

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Record type is:"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_REC_PARAM_T;->sType:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    :cond_f
    iget-object v6, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    add-int/2addr v5, v4

    invoke-virtual {v6, v7, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .line 1348
    iget-object v6, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    if-ltz v5, :cond_1b

    if-gez v6, :cond_10

    goto/16 :goto_3

    .line 1353
    :cond_10
    sget-boolean v11, Lcom/autochips/bluetooth/util/PbSyncATParser;->DEBUG:Z

    if-eqz v11, :cond_11

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    :cond_11
    iget-object v5, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mPDULength:I

    .line 1355
    sget-boolean v5, Lcom/autochips/bluetooth/util/PbSyncATParser;->DEBUG:Z

    if-eqz v5, :cond_12

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Pdu length is:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mPDULength:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    :cond_12
    iget-object v5, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v5, v8, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    sub-int v8, v5, v6

    .line 1360
    iput v8, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mLength:I

    .line 1361
    sget-boolean v8, Lcom/autochips/bluetooth/util/PbSyncATParser;->DEBUG:Z

    if-eqz v8, :cond_13

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    if-gez v5, :cond_15

    .line 1363
    sget-boolean v0, Lcom/autochips/bluetooth/util/PbSyncATParser;->DEBUG:Z

    if-eqz v0, :cond_14

    const-string v0, "Respond format error, no PDU content"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    return v3

    .line 1366
    :cond_15
    iget-object v6, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mPDUContent:Ljava/lang/String;

    .line 1367
    sget-boolean v5, Lcom/autochips/bluetooth/util/PbSyncATParser;->DEBUG:Z

    if-eqz v5, :cond_16

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Pdu content is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mPDUContent:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    :cond_16
    iget-object v5, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mPDUContent:Ljava/lang/String;

    invoke-virtual {p0, v5, v1}, Lcom/autochips/bluetooth/util/PbSyncATParser;->decodePdu(Ljava/lang/String;I)Z

    move-result v1

    .line 1373
    sget-boolean v5, Lcom/autochips/bluetooth/util/PbSyncATParser;->DEBUG:Z

    if-eqz v5, :cond_17

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "decode pdu is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    if-eqz v1, :cond_19

    .line 1375
    iget-object v1, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mPdu:Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_PDU_PARAM_T;

    iget-object v1, v1, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_PDU_PARAM_T;->sAddress:Ljava/lang/String;

    iput-object v1, v0, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_REC_PARAM_T;->sTelNum:Ljava/lang/String;

    .line 1376
    sget-boolean v1, Lcom/autochips/bluetooth/util/PbSyncATParser;->DEBUG:Z

    if-eqz v1, :cond_18

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "temSmsRec.sTelNum is: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_REC_PARAM_T;->sTelNum:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    :cond_18
    iget-object v1, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mPdu:Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_PDU_PARAM_T;

    iget-wide v1, v1, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_PDU_PARAM_T;->lSCTimeStamp:J

    iput-wide v1, v0, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_REC_PARAM_T;->lTimeMillis:J

    .line 1378
    iget-object v1, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mPdu:Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_PDU_PARAM_T;

    iget-object v1, v1, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_PDU_PARAM_T;->sUserData:Ljava/lang/String;

    iput-object v1, v0, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_REC_PARAM_T;->sContent:Ljava/lang/String;

    .line 1379
    iput-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mOneSmsRec:Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_REC_PARAM_T;

    goto :goto_5

    .line 1381
    :cond_19
    sget-boolean v0, Lcom/autochips/bluetooth/util/PbSyncATParser;->DEBUG:Z

    if-eqz v0, :cond_1a

    const-string v0, "decode pdu fail!"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    return v3

    .line 1350
    :cond_1b
    :goto_3
    sget-boolean v0, Lcom/autochips/bluetooth/util/PbSyncATParser;->DEBUG:Z

    if-eqz v0, :cond_1c

    const-string v0, "Respond format error, no PDU Length"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    return v3

    .line 1290
    :cond_1d
    :goto_4
    sget-boolean v0, Lcom/autochips/bluetooth/util/PbSyncATParser;->DEBUG:Z

    if-eqz v0, :cond_1e

    const-string v0, "Respond format error, no correct type"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    return v3

    .line 1385
    :cond_1f
    sget-boolean v0, Lcom/autochips/bluetooth/util/PbSyncATParser;->DEBUG:Z

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    :cond_20
    sget-boolean v0, Lcom/autochips/bluetooth/util/PbSyncATParser;->DEBUG:Z

    if-eqz v0, :cond_21

    const-string v0, "Respond format error!"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    return v3

    :cond_22
    :goto_5
    return v4
.end method

.method public ParseCNMI()Z
    .locals 3

    .line 1109
    iget v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mCurATCmd:I

    const/4 v1, 0x1

    const/16 v2, 0x19

    if-ne v2, v0, :cond_2

    .line 1110
    sget-boolean v0, Lcom/autochips/bluetooth/util/PbSyncATParser;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "respondString is:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PbSyncATParser"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    const-string v2, "OK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    return v1
.end method

.method public ParseCSCS()Z
    .locals 11

    const/4 v0, 0x0

    .line 284
    iput v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mCharset:I

    .line 288
    iget v1, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mCurATCmd:I

    const/4 v2, 0x1

    const/16 v3, 0xf

    if-ne v3, v1, :cond_1

    .line 289
    iget-object v1, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    const-string v3, "OK"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    return v2

    :cond_0
    return v0

    :cond_1
    const/16 v3, 0xe

    if-ne v3, v1, :cond_3

    .line 295
    iget-object v1, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    const-string v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_2

    return v0

    .line 298
    :cond_2
    iget-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    add-int/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 299
    iget-object v3, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 300
    invoke-direct {p0, v0, v1}, Lcom/autochips/bluetooth/util/PbSyncATParser;->convertCharSetStr2Int(Ljava/lang/String;Ljava/util/Map;)I

    move-result v0

    iput v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mCharset:I

    return v2

    :cond_3
    const/16 v3, 0xd

    if-ne v3, v1, :cond_a

    .line 304
    iget-object v1, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->m_sptCharset:Lcom/autochips/bluetooth/util/PbSyncATParser$PBMGRSPTCHARSET_T;

    iput v0, v1, Lcom/autochips/bluetooth/util/PbSyncATParser$PBMGRSPTCHARSET_T;->iSptCnt:I

    .line 305
    iget-object v1, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->m_sptCharset:Lcom/autochips/bluetooth/util/PbSyncATParser$PBMGRSPTCHARSET_T;

    iput v0, v1, Lcom/autochips/bluetooth/util/PbSyncATParser$PBMGRSPTCHARSET_T;->iCharSet:I

    .line 306
    iget-object v1, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->m_sptCharset:Lcom/autochips/bluetooth/util/PbSyncATParser$PBMGRSPTCHARSET_T;

    iget-object v1, v1, Lcom/autochips/bluetooth/util/PbSyncATParser$PBMGRSPTCHARSET_T;->mapCharSet:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 307
    iget-object v1, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    const-string v3, ":|,"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move v3, v2

    .line 309
    :goto_0
    array-length v4, v1

    const-string v5, "PbSyncATParser"

    if-ge v3, v4, :cond_8

    move v4, v0

    .line 311
    :goto_1
    aget-object v6, v1, v3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x20

    const/16 v8, 0x22

    if-ge v4, v6, :cond_5

    aget-object v6, v1, v3

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v8, v6, :cond_4

    aget-object v6, v1, v3

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v7, v6, :cond_4

    const/16 v6, 0x28

    aget-object v9, v1, v3

    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v6, v9, :cond_5

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    move v6, v4

    .line 320
    :goto_2
    aget-object v9, v1, v3

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v6, v9, :cond_6

    aget-object v9, v1, v3

    invoke-virtual {v9, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v8, v9, :cond_6

    aget-object v9, v1, v3

    invoke-virtual {v9, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v7, v9, :cond_6

    const/16 v9, 0x29

    aget-object v10, v1, v3

    invoke-virtual {v10, v6}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-eq v9, v10, :cond_6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 325
    :cond_6
    aget-object v7, v1, v3

    invoke-virtual {v7, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 326
    sget-boolean v6, Lcom/autochips/bluetooth/util/PbSyncATParser;->DEBUG:Z

    if-eqz v6, :cond_7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[CSCS] sub: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_7
    iget-object v5, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->m_sptCharset:Lcom/autochips/bluetooth/util/PbSyncATParser$PBMGRSPTCHARSET_T;

    iget v6, v5, Lcom/autochips/bluetooth/util/PbSyncATParser$PBMGRSPTCHARSET_T;->iCharSet:I

    iget-object v7, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->m_sptCharset:Lcom/autochips/bluetooth/util/PbSyncATParser$PBMGRSPTCHARSET_T;

    iget-object v7, v7, Lcom/autochips/bluetooth/util/PbSyncATParser$PBMGRSPTCHARSET_T;->mapCharSet:Ljava/util/Map;

    invoke-direct {p0, v4, v7}, Lcom/autochips/bluetooth/util/PbSyncATParser;->convertCharSetStr2Int(Ljava/lang/String;Ljava/util/Map;)I

    move-result v4

    or-int/2addr v4, v6

    iput v4, v5, Lcom/autochips/bluetooth/util/PbSyncATParser$PBMGRSPTCHARSET_T;->iCharSet:I

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 329
    :cond_8
    iget-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->m_sptCharset:Lcom/autochips/bluetooth/util/PbSyncATParser$PBMGRSPTCHARSET_T;

    iget-object v1, v0, Lcom/autochips/bluetooth/util/PbSyncATParser$PBMGRSPTCHARSET_T;->mapCharSet:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iput v1, v0, Lcom/autochips/bluetooth/util/PbSyncATParser$PBMGRSPTCHARSET_T;->iSptCnt:I

    .line 330
    sget-boolean v0, Lcom/autochips/bluetooth/util/PbSyncATParser;->DEBUG:Z

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CSCS] support size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->m_sptCharset:Lcom/autochips/bluetooth/util/PbSyncATParser$PBMGRSPTCHARSET_T;

    iget v1, v1, Lcom/autochips/bluetooth/util/PbSyncATParser$PBMGRSPTCHARSET_T;->iSptCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return v2

    :cond_a
    return v0
.end method

.method public ParseCSMS()Z
    .locals 5

    .line 929
    iget v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mCurATCmd:I

    const/16 v1, 0x18

    if-ne v1, v0, :cond_0

    .line 930
    iget-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    .line 931
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 932
    iget-object v2, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mServiceSptType:[I

    add-int/lit8 v3, v1, -0x2

    aget-object v4, v0, v1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public ParseMMGL()Z
    .locals 7

    .line 1244
    iget-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mIndexList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1245
    iget v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mCurATCmd:I

    const/4 v1, 0x1

    const/16 v2, 0x21

    if-ne v2, v0, :cond_5

    .line 1246
    sget-boolean v0, Lcom/autochips/bluetooth/util/PbSyncATParser;->DEBUG:Z

    const-string v2, "PbSyncATParser"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "respondString is:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, -0x1

    .line 1249
    :goto_0
    iget-object v3, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    add-int/2addr v0, v1

    const-string v4, "+MMGL"

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-ltz v3, :cond_2

    .line 1250
    iget-object v3, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    const-string v4, ":"

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 1251
    iget-object v3, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    add-int/lit8 v4, v0, 0x1

    const-string v5, ","

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 1252
    sget-boolean v5, Lcom/autochips/bluetooth/util/PbSyncATParser;->DEBUG:Z

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "istart value is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " and iend value is:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    :cond_1
    iget-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1254
    iget-object v4, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mIndexList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v3

    goto :goto_0

    .line 1255
    :cond_2
    iget-object v3, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    const-string v4, "ERROR"

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_4

    .line 1256
    iget-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mIndexList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_5

    .line 1257
    sget-boolean v0, Lcom/autochips/bluetooth/util/PbSyncATParser;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "response is ERROR"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v0, 0x0

    return v0

    .line 1262
    :cond_4
    sget-boolean v0, Lcom/autochips/bluetooth/util/PbSyncATParser;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "SMS index list over"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v1
.end method

.method public ParserCSCA()Z
    .locals 5

    .line 945
    iget v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mCurATCmd:I

    const/4 v1, 0x1

    const/16 v2, 0x18

    if-ne v2, v0, :cond_2

    .line 946
    iget-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x0

    if-gez v0, :cond_0

    return v3

    .line 950
    :cond_0
    iget-object v4, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    add-int/2addr v0, v1

    invoke-virtual {v4, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 951
    iget-object v4, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    invoke-virtual {v4, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mServiceCenter:Ljava/lang/String;

    .line 953
    iget-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    return v3

    .line 957
    :cond_1
    iget-object v2, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x3

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mServicePhoneNoType:I

    :cond_2
    return v1
.end method

.method checkSmsType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "REC UNREAD"

    .line 1742
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "0"

    goto :goto_0

    :cond_0
    const-string v0, "REC READ"

    .line 1744
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "1"

    goto :goto_0

    :cond_1
    const-string v0, "STO UNSENT"

    .line 1746
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "2"

    goto :goto_0

    :cond_2
    const-string v0, "STO SENT"

    .line 1748
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "3"

    goto :goto_0

    :cond_3
    const-string v0, "ALL"

    .line 1750
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "4"

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method decodeGSMCharset(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7

    .line 1591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 p2, p2, 0x7

    .line 1593
    div-int/lit8 v1, p2, 0x8

    .line 1594
    rem-int/lit8 p2, p2, 0x8

    if-eqz p2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 1597
    :cond_0
    new-array p2, v1, [B

    .line 1598
    invoke-static {p1}, Lcom/autochips/bluetooth/util/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object p1

    const/4 p2, 0x0

    move v2, p2

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_2

    .line 1601
    rem-int/lit8 v4, v2, 0x7

    .line 1602
    aget-byte v5, p1, v2

    and-int/lit16 v5, v5, 0xff

    shl-int v6, v5, v4

    and-int/lit8 v6, v6, 0x7f

    or-int/2addr v3, v6

    int-to-char v3, v3

    .line 1604
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x6

    if-eq v3, v4, :cond_1

    rsub-int/lit8 v3, v4, 0x7

    shr-int v3, v5, v3

    and-int/lit8 v3, v3, 0x7f

    goto :goto_1

    :cond_1
    shr-int/lit8 v3, v5, 0x1

    and-int/lit8 v3, v3, 0x7f

    int-to-char v3, v3

    .line 1609
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v3, p2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1613
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public decodePdu(Ljava/lang/String;I)Z
    .locals 6

    const/4 v0, 0x0

    .line 1431
    iput v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->cur:I

    .line 1433
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/util/PbSyncATParser;->getSCAddress(Ljava/lang/String;)V

    .line 1434
    iget v1, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->iSCLen:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/4 v3, 0x2

    mul-int/2addr v1, v3

    iput v1, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->cur:I

    .line 1435
    sget-boolean v1, Lcom/autochips/bluetooth/util/PbSyncATParser;->DEBUG:Z

    const-string v4, "PbSyncATParser"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cur ="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->cur:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    :cond_0
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/util/PbSyncATParser;->getPduType(Ljava/lang/String;)V

    if-eq p2, v2, :cond_5

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    if-eq p2, v3, :cond_4

    const/4 v1, 0x3

    if-ne p2, v1, :cond_2

    goto :goto_0

    .line 1458
    :cond_2
    sget-boolean p1, Lcom/autochips/bluetooth/util/PbSyncATParser;->DEBUG:Z

    if-eqz p1, :cond_3

    const-string p1, "Unsupport SMS type"

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v0

    .line 1450
    :cond_4
    :goto_0
    iget p2, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->cur:I

    add-int/2addr p2, v3

    iput p2, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->cur:I

    .line 1451
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/util/PbSyncATParser;->getAddress(Ljava/lang/String;)V

    .line 1452
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/util/PbSyncATParser;->getDataCodingScheme(Ljava/lang/String;)V

    .line 1453
    iget-object p2, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mPdu:Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_PDU_PARAM_T;

    const-wide/16 v0, 0x0

    iput-wide v0, p2, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_PDU_PARAM_T;->lSCTimeStamp:J

    .line 1455
    iget p2, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->cur:I

    add-int/2addr p2, v3

    iput p2, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->cur:I

    .line 1456
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/util/PbSyncATParser;->getUserData(Ljava/lang/String;)V

    goto :goto_2

    .line 1441
    :cond_5
    :goto_1
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/util/PbSyncATParser;->getAddress(Ljava/lang/String;)V

    .line 1442
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/util/PbSyncATParser;->getDataCodingScheme(Ljava/lang/String;)V

    .line 1443
    iget p2, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->cur:I

    add-int/lit8 v0, p2, 0xe

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 1444
    iget v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->cur:I

    add-int/lit8 v0, v0, 0xe

    iput v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->cur:I

    .line 1445
    invoke-static {p2}, Lcom/autochips/bluetooth/util/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object p2

    .line 1446
    iget-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mPdu:Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_PDU_PARAM_T;

    invoke-virtual {p0, p2}, Lcom/autochips/bluetooth/util/PbSyncATParser;->getSCTimestampMillis([B)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_PDU_PARAM_T;->lSCTimeStamp:J

    .line 1447
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/util/PbSyncATParser;->getUserData(Ljava/lang/String;)V

    :goto_2
    return v2
.end method

.method getAddress(Ljava/lang/String;)V
    .locals 9

    .line 1488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1492
    iget v1, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->cur:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->cur:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->cur:I

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1493
    sget-boolean v2, Lcom/autochips/bluetooth/util/PbSyncATParser;->DEBUG:Z

    const-string v4, "PbSyncATParser"

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sAddrLen is:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    :cond_0
    invoke-static {v1}, Lcom/autochips/bluetooth/util/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 1495
    sget-boolean v5, Lcom/autochips/bluetooth/util/PbSyncATParser;->DEBUG:Z

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mAddrLen is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-nez v1, :cond_2

    .line 1498
    iget p1, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->cur:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->cur:I

    .line 1499
    iget-object p1, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mPdu:Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_PDU_PARAM_T;

    const-string v0, "00000"

    iput-object v0, p1, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_PDU_PARAM_T;->sAddress:Ljava/lang/String;

    goto/16 :goto_3

    .line 1502
    :cond_2
    rem-int/lit8 v5, v1, 0x2

    .line 1503
    iget v6, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->cur:I

    add-int/lit8 v7, v6, 0x2

    add-int/2addr v7, v1

    add-int/2addr v7, v5

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/autochips/bluetooth/util/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 1504
    iget v6, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->cur:I

    add-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v1

    add-int/2addr v6, v5

    iput v6, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->cur:I

    add-int/2addr v5, v1

    .line 1505
    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v3

    move v6, v3

    :goto_0
    if-ge v6, v5, :cond_6

    .line 1507
    aget-byte v7, p1, v6

    and-int/lit8 v7, v7, 0xf

    const/16 v8, 0xa

    if-ge v7, v8, :cond_3

    add-int/lit8 v7, v7, 0x30

    int-to-char v7, v7

    .line 1509
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    add-int/lit8 v7, v7, -0xa

    add-int/lit8 v7, v7, 0x41

    int-to-char v7, v7

    .line 1511
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/2addr v2, v3

    if-ge v2, v1, :cond_5

    .line 1515
    aget-byte v7, p1, v6

    shr-int/lit8 v7, v7, 0x4

    and-int/lit8 v7, v7, 0xf

    if-ge v7, v8, :cond_4

    add-int/lit8 v7, v7, 0x30

    int-to-char v7, v7

    .line 1517
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    add-int/lit8 v7, v7, -0xa

    add-int/lit8 v7, v7, 0x41

    int-to-char v7, v7

    .line 1519
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1524
    :cond_6
    iget-object p1, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mPdu:Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_PDU_PARAM_T;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_PDU_PARAM_T;->sAddress:Ljava/lang/String;

    .line 1525
    sget-boolean p1, Lcom/autochips/bluetooth/util/PbSyncATParser;->DEBUG:Z

    if-eqz p1, :cond_7

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Addr is:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mPdu:Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_PDU_PARAM_T;

    iget-object v0, v0, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_PDU_PARAM_T;->sAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_3
    return-void
.end method

.method public getCurATCmd()I
    .locals 1

    .line 260
    iget v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mCurATCmd:I

    return v0
.end method

.method public getCurCharSet()I
    .locals 1

    .line 341
    iget v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mCharset:I

    return v0
.end method

.method public getCurPath()Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;
    .locals 2

    .line 551
    sget-boolean v0, Lcom/autochips/bluetooth/util/PbSyncATParser;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CPBS() current count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->rGetCurPath:Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;

    iget v1, v1, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;->iRecCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", max count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->rGetCurPath:Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;

    iget v1, v1, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;->iMaxCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PbSyncATParser"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->rGetCurPath:Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;

    return-object v0
.end method

.method getDataCodingScheme(Ljava/lang/String;)V
    .locals 4

    .line 1531
    iget v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->cur:I

    add-int/lit8 v1, v0, 0x2

    const/4 v2, 0x4

    add-int/2addr v0, v2

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1532
    iget v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->cur:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->cur:I

    .line 1533
    sget-boolean v0, Lcom/autochips/bluetooth/util/PbSyncATParser;->DEBUG:Z

    const-string v1, "PbSyncATParser"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDcs is:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mPdu:Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_PDU_PARAM_T;

    invoke-static {p1}, Lcom/autochips/bluetooth/util/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v3, 0x0

    aget-byte p1, p1, v3

    iput-byte p1, v0, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_PDU_PARAM_T;->bDataCodingScheme:B

    .line 1535
    sget-boolean p1, Lcom/autochips/bluetooth/util/PbSyncATParser;->DEBUG:Z

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mDcs to bytes is:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mPdu:Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_PDU_PARAM_T;

    iget-byte v0, v0, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_PDU_PARAM_T;->bDataCodingScheme:B

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    :cond_1
    iget-object p1, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mPdu:Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_PDU_PARAM_T;

    iget-byte p1, p1, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_PDU_PARAM_T;->bDataCodingScheme:B

    if-lez p1, :cond_3

    .line 1539
    iget-object p1, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mPdu:Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_PDU_PARAM_T;

    iget-byte p1, p1, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_PDU_PARAM_T;->bDataCodingScheme:B

    xor-int/lit16 p1, p1, 0xf6

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 1540
    iput p1, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mDcsCharSet:I

    goto :goto_0

    :cond_2
    const/4 p1, 0x2

    .line 1542
    iput p1, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mDcsCharSet:I

    goto :goto_0

    .line 1544
    :cond_3
    iget-object p1, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mPdu:Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_PDU_PARAM_T;

    iget-byte p1, p1, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_PDU_PARAM_T;->bDataCodingScheme:B

    if-nez p1, :cond_4

    .line 1545
    iput v2, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mDcsCharSet:I

    goto :goto_0

    .line 1547
    :cond_4
    sget-boolean p1, Lcom/autochips/bluetooth/util/PbSyncATParser;->DEBUG:Z

    if-eqz p1, :cond_5

    const-string p1, "Unsupport Charset Type!"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    :cond_5
    iput v3, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mDcsCharSet:I

    :goto_0
    return-void
.end method

.method public getFormatDate(J)Ljava/lang/String;
    .locals 5

    .line 1682
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1683
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1684
    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p1, 0x1

    .line 1686
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    .line 1687
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "-"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x2

    .line 1689
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, p1

    const-string p1, "0"

    const/16 v3, 0x9

    if-gt v2, v3, :cond_0

    .line 1691
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1693
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    const/4 p2, 0x5

    .line 1697
    invoke-virtual {v1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    const-string v2, " "

    if-gt p2, v3, :cond_1

    .line 1699
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1701
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    const/16 p2, 0xb

    .line 1704
    invoke-virtual {v1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    const-string v2, ":"

    if-gt p2, v3, :cond_2

    .line 1706
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 1708
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    const/16 p2, 0xc

    .line 1711
    invoke-virtual {v1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    if-gt p2, v3, :cond_3

    .line 1713
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 1715
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_3
    const/16 p2, 0xd

    .line 1718
    invoke-virtual {v1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    if-gt p2, v3, :cond_4

    .line 1720
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 1722
    :cond_4
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1724
    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getListInfo()Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;
    .locals 1

    .line 675
    iget-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mListInfoParam:Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;

    return-object v0
.end method

.method public getOneSmsRec()Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_REC_PARAM_T;
    .locals 1

    .line 1411
    iget-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mOneSmsRec:Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_REC_PARAM_T;

    return-object v0
.end method

.method public getParsePath()I
    .locals 1

    .line 547
    iget v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mParsePath:I

    return v0
.end method

.method getPduType(Ljava/lang/String;)V
    .locals 4

    .line 1475
    iget v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->cur:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->cur:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->cur:I

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1476
    sget-boolean v0, Lcom/autochips/bluetooth/util/PbSyncATParser;->DEBUG:Z

    const-string v1, "PbSyncATParser"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sPduType is:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mPdu:Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_PDU_PARAM_T;

    invoke-static {p1}, Lcom/autochips/bluetooth/util/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v3, 0x0

    aget-byte p1, p1, v3

    iput-byte p1, v0, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_PDU_PARAM_T;->bPDUType:B

    .line 1478
    sget-boolean p1, Lcom/autochips/bluetooth/util/PbSyncATParser;->DEBUG:Z

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "pdu type is:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mPdu:Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_PDU_PARAM_T;

    iget-byte v0, v0, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_PDU_PARAM_T;->bPDUType:B

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    :cond_1
    iget-object p1, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mPdu:Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_PDU_PARAM_T;

    iget-byte p1, p1, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_PDU_PARAM_T;->bPDUType:B

    const/16 v0, 0x40

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_2

    .line 1481
    iput-boolean v2, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->bUDHI:Z

    goto :goto_0

    .line 1483
    :cond_2
    iput-boolean v3, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->bUDHI:Z

    :goto_0
    return-void
.end method

.method public getRecs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_ADDREC_PARAM_T;",
            ">;"
        }
    .end annotation

    .line 679
    iget-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mAddRecs:Ljava/util/List;

    return-object v0
.end method

.method public getRespondString()Ljava/lang/String;
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    return-object v0
.end method

.method getSCAddress(Ljava/lang/String;)V
    .locals 2

    .line 1466
    iget v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->cur:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->cur:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->cur:I

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 1467
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/util/PbSyncATParser;->isInteger(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1468
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->iSCLen:I

    .line 1469
    sget-boolean p1, Lcom/autochips/bluetooth/util/PbSyncATParser;->DEBUG:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SC length is:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->iSCLen:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PbSyncATParser"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method getSCTimestampMillis([B)J
    .locals 8

    const/4 v0, 0x0

    .line 1623
    aget-byte v0, p1, v0

    invoke-static {v0}, Lcom/autochips/bluetooth/util/IccUtils;->gsmBcdByteToInt(B)I

    move-result v0

    const/4 v1, 0x1

    .line 1624
    aget-byte v2, p1, v1

    invoke-static {v2}, Lcom/autochips/bluetooth/util/IccUtils;->gsmBcdByteToInt(B)I

    move-result v2

    const/4 v3, 0x2

    .line 1625
    aget-byte v3, p1, v3

    invoke-static {v3}, Lcom/autochips/bluetooth/util/IccUtils;->gsmBcdByteToInt(B)I

    move-result v3

    const/4 v4, 0x3

    .line 1626
    aget-byte v4, p1, v4

    invoke-static {v4}, Lcom/autochips/bluetooth/util/IccUtils;->gsmBcdByteToInt(B)I

    move-result v4

    const/4 v5, 0x4

    .line 1627
    aget-byte v5, p1, v5

    invoke-static {v5}, Lcom/autochips/bluetooth/util/IccUtils;->gsmBcdByteToInt(B)I

    move-result v5

    const/4 v6, 0x5

    .line 1628
    aget-byte v6, p1, v6

    invoke-static {v6}, Lcom/autochips/bluetooth/util/IccUtils;->gsmBcdByteToInt(B)I

    move-result v6

    const/4 v7, 0x6

    .line 1630
    aget-byte p1, p1, v7

    and-int/lit8 v7, p1, -0x9

    int-to-byte v7, v7

    .line 1633
    invoke-static {v7}, Lcom/autochips/bluetooth/util/IccUtils;->gsmBcdByteToInt(B)I

    and-int/lit8 p1, p1, 0x8

    .line 1637
    new-instance p1, Landroid/text/format/Time;

    const-string v7, "UTC"

    invoke-direct {p1, v7}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x5a

    if-lt v0, v7, :cond_0

    add-int/lit16 v0, v0, 0x76c

    goto :goto_0

    :cond_0
    add-int/lit16 v0, v0, 0x7d0

    .line 1640
    :goto_0
    iput v0, p1, Landroid/text/format/Time;->year:I

    sub-int/2addr v2, v1

    .line 1641
    iput v2, p1, Landroid/text/format/Time;->month:I

    .line 1642
    iput v3, p1, Landroid/text/format/Time;->monthDay:I

    .line 1643
    iput v4, p1, Landroid/text/format/Time;->hour:I

    .line 1644
    iput v5, p1, Landroid/text/format/Time;->minute:I

    .line 1645
    iput v6, p1, Landroid/text/format/Time;->second:I

    .line 1647
    invoke-virtual {p1, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSmsCount()I
    .locals 5

    .line 1417
    iget-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mBtSmsStorageListRecCnt:[[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/util/PbSyncATParser;->isInteger(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1418
    iget-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mBtSmsStorageListRecCnt:[[Ljava/lang/String;

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 1421
    sget-boolean v3, Lcom/autochips/bluetooth/util/PbSyncATParser;->DEBUG:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error format"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mBtSmsStorageListRecCnt:[[Ljava/lang/String;

    aget-object v1, v4, v1

    aget-object v1, v1, v2

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PbSyncATParser"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v0
.end method

.method public getSmsIndexList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1404
    iget-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mIndexList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSmsRecsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_REC_PARAM_T;",
            ">;"
        }
    .end annotation

    .line 1397
    iget-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mSmsRecs:Ljava/util/List;

    return-object v0
.end method

.method public getSptCharSet()Lcom/autochips/bluetooth/util/PbSyncATParser$PBMGRSPTCHARSET_T;
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->m_sptCharset:Lcom/autochips/bluetooth/util/PbSyncATParser$PBMGRSPTCHARSET_T;

    return-object v0
.end method

.method getTextSCTimestampMillis(Ljava/lang/String;)J
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x3

    .line 1658
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x4

    .line 1659
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x6

    .line 1660
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x7

    .line 1661
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v5, 0x8

    .line 1662
    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v6, 0x9

    .line 1663
    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 1665
    new-instance v5, Landroid/text/format/Time;

    const-string v6, "UTC"

    invoke-direct {v5, v6}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x5a

    if-lt v0, v6, :cond_0

    add-int/lit16 v0, v0, 0x76c

    goto :goto_0

    :cond_0
    add-int/lit16 v0, v0, 0x7d0

    .line 1668
    :goto_0
    iput v0, v5, Landroid/text/format/Time;->year:I

    const/4 v0, 0x1

    sub-int/2addr v2, v0

    .line 1669
    iput v2, v5, Landroid/text/format/Time;->month:I

    .line 1670
    iput v1, v5, Landroid/text/format/Time;->monthDay:I

    .line 1671
    iput v3, v5, Landroid/text/format/Time;->hour:I

    .line 1672
    iput v4, v5, Landroid/text/format/Time;->minute:I

    .line 1673
    iput p1, v5, Landroid/text/format/Time;->second:I

    .line 1675
    invoke-virtual {v5, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method getUserData(Ljava/lang/String;)V
    .locals 6

    .line 1555
    iget v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->cur:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->cur:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->cur:I

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1556
    sget-boolean v1, Lcom/autochips/bluetooth/util/PbSyncATParser;->DEBUG:Z

    const-string v2, "PbSyncATParser"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sUserDataLength is:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    :cond_0
    iget-object v1, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mPdu:Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_PDU_PARAM_T;

    invoke-static {v0}, Lcom/autochips/bluetooth/util/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v3, 0x0

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    iput v0, v1, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_PDU_PARAM_T;->iUserDataLength:I

    .line 1558
    sget-boolean v0, Lcom/autochips/bluetooth/util/PbSyncATParser;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User Data Length is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mPdu:Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_PDU_PARAM_T;

    iget v1, v1, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_PDU_PARAM_T;->iUserDataLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    :cond_1
    iget v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mDcsCharSet:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 1561
    iget-boolean v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->bUDHI:Z

    if-nez v0, :cond_3

    .line 1562
    iget v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->cur:I

    .line 1563
    iget v3, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mLength:I

    sub-int/2addr v3, v1

    .line 1564
    sget-boolean v1, Lcom/autochips/bluetooth/util/PbSyncATParser;->DEBUG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "istart value is:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " and iend value is:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    :cond_2
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1567
    :cond_3
    iget v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->cur:I

    add-int/lit8 v4, v0, 0x2

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1568
    sget-boolean v4, Lcom/autochips/bluetooth/util/PbSyncATParser;->DEBUG:Z

    if-eqz v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sUDHL is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    :cond_4
    invoke-static {v0}, Lcom/autochips/bluetooth/util/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    .line 1570
    sget-boolean v3, Lcom/autochips/bluetooth/util/PbSyncATParser;->DEBUG:Z

    if-eqz v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "iUDHLen is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    :cond_5
    iget v2, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->cur:I

    add-int/lit8 v3, v2, 0x2

    mul-int/2addr v0, v1

    add-int/2addr v3, v0

    .line 1572
    iget-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mPdu:Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_PDU_PARAM_T;

    iget v0, v0, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_PDU_PARAM_T;->iUserDataLength:I

    mul-int/2addr v0, v1

    add-int/2addr v2, v0

    .line 1573
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1575
    :goto_0
    iget-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mPdu:Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_PDU_PARAM_T;

    iget v1, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mDcsCharSet:I

    invoke-static {v1, p1}, Lcom/autochips/bluetooth/util/PbSyncATParser;->DecodeCharset(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_PDU_PARAM_T;->sUserData:Ljava/lang/String;

    goto :goto_1

    :cond_6
    const/4 v3, 0x4

    if-ne v0, v3, :cond_7

    .line 1577
    iget v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->cur:I

    iget v2, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->iSCLen:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mPDULength:I

    add-int/2addr v2, v3

    mul-int/2addr v2, v1

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1578
    iget-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mPdu:Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_PDU_PARAM_T;

    iget v1, v0, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_PDU_PARAM_T;->iUserDataLength:I

    invoke-virtual {p0, p1, v1}, Lcom/autochips/bluetooth/util/PbSyncATParser;->decodeGSMCharset(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_PDU_PARAM_T;->sUserData:Ljava/lang/String;

    goto :goto_1

    .line 1580
    :cond_7
    sget-boolean p1, Lcom/autochips/bluetooth/util/PbSyncATParser;->DEBUG:Z

    if-eqz p1, :cond_8

    const-string p1, "Unsupport charset!"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    :cond_8
    iget-object p1, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mPdu:Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_PDU_PARAM_T;

    const-string v0, "Cann\'t parse chareset!"

    iput-object v0, p1, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_PDU_PARAM_T;->sUserData:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method public isInteger(Ljava/lang/String;)Z
    .locals 0

    .line 1730
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public parseATE0()Z
    .locals 2

    .line 356
    iget-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public parseCGMI()Ljava/lang/String;
    .locals 6

    .line 417
    iget-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    const-string v3, "\r"

    if-ltz v0, :cond_2

    .line 422
    iget-object v2, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 424
    iget-object v1, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 427
    :cond_1
    iget-object v1, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 429
    :cond_2
    iget-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 431
    iget-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    .line 432
    sget-boolean v0, Lcom/autochips/bluetooth/util/PbSyncATParser;->DEBUG:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRespondString = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PbSyncATParser"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :cond_3
    iget-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 436
    iget-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 438
    :cond_4
    iget-object v1, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_5
    :goto_1
    return-object v1
.end method

.method public parseCGMM()Ljava/lang/String;
    .locals 6

    .line 385
    iget-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    const-string v3, "\r"

    if-ltz v0, :cond_2

    .line 390
    iget-object v2, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 392
    iget-object v1, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 395
    :cond_1
    iget-object v1, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 397
    :cond_2
    iget-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 399
    iget-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    .line 400
    sget-boolean v0, Lcom/autochips/bluetooth/util/PbSyncATParser;->DEBUG:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRespondString = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PbSyncATParser"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_3
    iget-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 404
    iget-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 406
    :cond_4
    iget-object v1, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_5
    :goto_1
    return-object v1
.end method

.method public parseCGSN()Ljava/lang/String;
    .locals 5

    .line 368
    iget-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, ""

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return-object v1

    .line 371
    :cond_0
    iget-object v3, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    const-string v4, "\r\n"

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_1

    return-object v1

    .line 375
    :cond_1
    iget-object v1, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parseCPBR()Z
    .locals 11

    .line 561
    iget-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mListInfoParam:Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;

    const/4 v1, 0x0

    iput v1, v0, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;->iStartIdx:I

    .line 562
    iget-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mListInfoParam:Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;

    iput v1, v0, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;->iMaxCnt:I

    .line 563
    iget-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mListInfoParam:Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;

    iput v1, v0, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;->iMissCnt:I

    .line 564
    iget-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mListInfoParam:Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;

    iput v1, v0, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;->iRecCnt:I

    .line 568
    iget v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mCurATCmd:I

    const/4 v2, 0x1

    const/16 v3, 0x14

    if-ne v3, v0, :cond_7

    .line 569
    iget-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    const-string v3, "("

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    return v1

    .line 573
    :cond_0
    iget-object v3, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_1

    return v1

    .line 577
    :cond_1
    iget-object v4, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    add-int/2addr v0, v2

    invoke-virtual {v4, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v3, "-"

    .line 578
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_2

    .line 579
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 580
    iget-object v3, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mListInfoParam:Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;

    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;->iStartIdx:I

    .line 581
    iget-object v3, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mListInfoParam:Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v3, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;->iMaxCnt:I

    goto :goto_0

    .line 583
    :cond_2
    iget-object v3, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mListInfoParam:Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v3, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;->iStartIdx:I

    .line 585
    :goto_0
    iget-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mListInfoParam:Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;

    iget v0, v0, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;->iMaxCnt:I

    if-nez v0, :cond_4

    .line 586
    iget-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mListInfoParam:Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;

    iget v0, v0, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;->iStartIdx:I

    if-le v0, v2, :cond_3

    .line 587
    iget-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mListInfoParam:Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;

    iget v1, v0, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;->iStartIdx:I

    iput v1, v0, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;->iMaxCnt:I

    .line 588
    iget-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mListInfoParam:Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;

    iput v2, v0, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;->iStartIdx:I

    goto :goto_1

    .line 590
    :cond_3
    iget-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mListInfoParam:Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;

    iput v1, v0, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;->iStartIdx:I

    .line 591
    iget-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mListInfoParam:Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;

    iput v1, v0, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;->iMaxCnt:I

    goto :goto_1

    .line 593
    :cond_4
    iget-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mListInfoParam:Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;

    iget v0, v0, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;->iStartIdx:I

    iget-object v3, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mListInfoParam:Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;

    iget v3, v3, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;->iMaxCnt:I

    if-ge v0, v3, :cond_5

    goto :goto_1

    .line 596
    :cond_5
    iget-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mListInfoParam:Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;

    iget v0, v0, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;->iStartIdx:I

    iget-object v3, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mListInfoParam:Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;

    iget v3, v3, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;->iMaxCnt:I

    if-ne v0, v3, :cond_6

    iget-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mListInfoParam:Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;

    iget v0, v0, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;->iStartIdx:I

    if-eq v0, v2, :cond_6

    .line 597
    iget-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mListInfoParam:Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;

    iput v1, v0, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;->iStartIdx:I

    .line 598
    iget-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mListInfoParam:Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;

    iput v1, v0, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;->iMaxCnt:I

    :cond_6
    :goto_1
    return v2

    :cond_7
    const/16 v3, 0x15

    if-ne v3, v0, :cond_11

    .line 609
    iget-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mAddRecs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, -0x1

    .line 612
    :goto_2
    iget-object v3, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    add-int/2addr v0, v2

    const-string v4, "+CPBR:"

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-ltz v3, :cond_10

    .line 613
    new-instance v3, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_ADDREC_PARAM_T;

    invoke-direct {v3}, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_ADDREC_PARAM_T;-><init>()V

    .line 614
    iget-object v5, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    invoke-virtual {v5, v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_8

    return v1

    .line 617
    :cond_8
    iget-object v4, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    add-int/lit8 v5, v0, 0x1

    const-string v6, "\r"

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    if-gez v4, :cond_9

    return v1

    .line 621
    :cond_9
    iget-object v5, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x6

    invoke-virtual {v5, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v5, ","

    .line 622
    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 624
    aget-object v5, v0, v1

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_ADDREC_PARAM_T;->iIndex:I

    .line 626
    aget-object v5, v0, v2

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v7, 0x2

    const-string v8, ""

    if-ltz v5, :cond_b

    .line 627
    aget-object v5, v0, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 628
    array-length v9, v5

    if-lt v9, v7, :cond_a

    .line 629
    aget-object v5, v5, v2

    iput-object v5, v3, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_ADDREC_PARAM_T;->sNumber:Ljava/lang/String;

    goto :goto_3

    .line 631
    :cond_a
    iput-object v8, v3, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_ADDREC_PARAM_T;->sNumber:Ljava/lang/String;

    goto :goto_3

    .line 634
    :cond_b
    aget-object v5, v0, v2

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_ADDREC_PARAM_T;->sNumber:Ljava/lang/String;

    .line 636
    :goto_3
    iget-object v5, v3, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_ADDREC_PARAM_T;->sNumber:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v9, 0x3

    if-lt v5, v9, :cond_c

    iget-object v5, v3, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_ADDREC_PARAM_T;->sNumber:Ljava/lang/String;

    invoke-virtual {v5, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v10, "+86"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 637
    iget-object v5, v3, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_ADDREC_PARAM_T;->sNumber:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_ADDREC_PARAM_T;->sNumber:Ljava/lang/String;

    .line 640
    :cond_c
    array-length v5, v0

    const/4 v10, 0x4

    if-lt v5, v10, :cond_f

    .line 641
    aget-object v5, v0, v9

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_e

    .line 642
    aget-object v0, v0, v9

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 643
    array-length v5, v0

    if-lt v5, v7, :cond_d

    .line 644
    aget-object v0, v0, v2

    iput-object v0, v3, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_ADDREC_PARAM_T;->sName:Ljava/lang/String;

    goto :goto_4

    .line 646
    :cond_d
    iput-object v8, v3, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_ADDREC_PARAM_T;->sName:Ljava/lang/String;

    goto :goto_4

    .line 648
    :cond_e
    aget-object v0, v0, v9

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_ADDREC_PARAM_T;->sName:Ljava/lang/String;

    goto :goto_4

    .line 651
    :cond_f
    iput-object v8, v3, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_ADDREC_PARAM_T;->sName:Ljava/lang/String;

    .line 662
    :goto_4
    iget-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mAddRecs:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v4

    goto/16 :goto_2

    :cond_10
    return v2

    :cond_11
    return v1
.end method

.method public parseCPBS()Z
    .locals 7

    .line 454
    iget v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mCurATCmd:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x11

    if-ne v3, v0, :cond_1

    .line 455
    iget-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    const-string v3, "OK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    return v2

    :cond_0
    return v1

    .line 461
    :cond_1
    iget-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    const-string v3, "+CPBS"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_2

    return v1

    :cond_2
    const/16 v0, 0x13

    .line 467
    iget v3, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mCurATCmd:I

    const-string v4, "\""

    if-ne v0, v3, :cond_c

    .line 468
    iget-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->rGetCurPath:Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;

    iput v1, v0, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;->iRecCnt:I

    .line 469
    iget-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->rGetCurPath:Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;

    iput v1, v0, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;->iMaxCnt:I

    .line 471
    iget-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_4

    .line 473
    iget-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_3

    return v1

    :cond_3
    move v3, v2

    goto :goto_0

    :cond_4
    move v3, v1

    :goto_0
    const-string v5, ","

    if-eqz v3, :cond_5

    .line 479
    iget-object v1, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-gez v1, :cond_7

    .line 481
    iget-object v1, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_1

    .line 483
    :cond_5
    iget-object v3, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-gez v3, :cond_6

    return v1

    :cond_6
    move v1, v3

    .line 487
    :cond_7
    :goto_1
    iget-object v3, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    add-int/2addr v0, v2

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 488
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/util/PbSyncATParser;->convertPathStr2Int(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mParsePath:I

    .line 489
    iget-object v1, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->rGetCurPath:Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;

    iput v0, v1, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;->ePath:I

    .line 490
    iget-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_8

    return v2

    .line 493
    :cond_8
    iget-object v1, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    add-int/2addr v0, v2

    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-gez v1, :cond_9

    return v2

    .line 496
    :cond_9
    iget-object v3, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->rGetCurPath:Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;

    iget-object v4, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v3, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;->iRecCnt:I

    .line 499
    iget-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    add-int/2addr v1, v2

    const-string v3, "\r"

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_a

    .line 502
    iget-object v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :cond_a
    if-gez v0, :cond_b

    return v2

    .line 506
    :cond_b
    iget-object v3, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->rGetCurPath:Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;

    iget-object v4, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    invoke-virtual {v4, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v3, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;->iMaxCnt:I

    return v2

    :cond_c
    const/16 v0, 0x12

    if-ne v0, v3, :cond_12

    const/4 v0, -0x1

    move v3, v1

    .line 516
    :goto_2
    iget-object v5, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    add-int/2addr v0, v2

    invoke-virtual {v5, v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_10

    if-eqz v3, :cond_f

    .line 528
    iget v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mParsePath:I

    and-int/lit8 v3, v0, 0x30

    if-nez v3, :cond_d

    or-int/lit8 v0, v0, 0x10

    .line 530
    iput v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mParsePath:I

    goto :goto_3

    :cond_d
    and-int/lit8 v3, v0, 0x10

    if-nez v3, :cond_e

    or-int/lit8 v0, v0, 0x10

    .line 532
    iput v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mParsePath:I

    and-int/lit8 v0, v0, -0x21

    .line 533
    iput v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mParsePath:I

    goto :goto_3

    :cond_e
    and-int/lit8 v3, v0, 0x20

    if-nez v3, :cond_f

    or-int/lit8 v0, v0, 0x10

    .line 535
    iput v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mParsePath:I

    .line 539
    :cond_f
    :goto_3
    iget v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mParsePath:I

    if-eqz v0, :cond_12

    return v2

    .line 520
    :cond_10
    iget-object v5, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v5, v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .line 521
    iget-object v6, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    invoke-virtual {v6, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v6, "MT"

    .line 522
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    move v3, v2

    .line 524
    :cond_11
    iget v6, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mParsePath:I

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/util/PbSyncATParser;->convertPathStr2Int(Ljava/lang/String;)I

    move-result v0

    or-int/2addr v0, v6

    iput v0, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mParsePath:I

    move v0, v5

    goto :goto_2

    :cond_12
    return v1
.end method

.method public parseCPMS()Z
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    .line 1003
    iput-object v1, v0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mSmsStorage:[Ljava/lang/String;

    .line 1008
    iget v1, v0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mCurATCmd:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x1d

    if-ne v5, v1, :cond_3

    .line 1010
    iget-object v1, v0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    const-string v5, "("

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_0

    return v3

    .line 1014
    :cond_0
    iget-object v6, v0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 1015
    iget-object v8, v0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mSmsStorage:[Ljava/lang/String;

    iget-object v9, v0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    add-int/2addr v1, v4

    invoke-virtual {v9, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v3

    .line 1018
    iget-object v1, v0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    add-int/2addr v6, v4

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-gez v1, :cond_1

    return v3

    .line 1022
    :cond_1
    iget-object v6, v0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 1023
    iget-object v8, v0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mSmsStorage:[Ljava/lang/String;

    iget-object v9, v0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    add-int/2addr v1, v4

    invoke-virtual {v9, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v4

    .line 1026
    iget-object v1, v0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    add-int/2addr v6, v4

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-gez v1, :cond_2

    return v3

    .line 1030
    :cond_2
    iget-object v5, v0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 1031
    iget-object v6, v0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mSmsStorage:[Ljava/lang/String;

    iget-object v7, v0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    add-int/2addr v1, v4

    invoke-virtual {v7, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v2

    :cond_3
    const/16 v1, 0x1e

    .line 1037
    iget v5, v0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mCurATCmd:I

    const/16 v6, 0x29

    const/16 v7, 0x5b

    const/16 v8, 0x28

    const-string v9, ","

    const/16 v10, 0x20

    if-eq v1, v5, :cond_4

    if-ne v10, v5, :cond_c

    .line 1040
    :cond_4
    iget-object v1, v0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move v5, v3

    .line 1041
    :goto_0
    array-length v11, v1

    if-ge v5, v11, :cond_c

    if-nez v5, :cond_6

    .line 1044
    iget-object v11, v0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-gez v11, :cond_5

    return v3

    :cond_5
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_6
    move v11, v3

    .line 1052
    :goto_2
    aget-object v12, v1, v5

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v11, v12, :cond_7

    aget-object v12, v1, v5

    invoke-virtual {v12, v11}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-eq v10, v12, :cond_5

    aget-object v12, v1, v5

    invoke-virtual {v12, v11}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-ne v8, v12, :cond_7

    goto :goto_1

    :cond_7
    add-int/lit8 v12, v11, 0x1

    .line 1060
    :goto_3
    aget-object v13, v1, v5

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v12, v13, :cond_8

    aget-object v13, v1, v5

    invoke-virtual {v13, v12}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-eq v7, v13, :cond_8

    aget-object v13, v1, v5

    invoke-virtual {v13, v12}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-eq v10, v13, :cond_8

    aget-object v13, v1, v5

    invoke-virtual {v13, v12}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-eq v6, v13, :cond_8

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 1064
    :cond_8
    div-int/lit8 v13, v5, 0x3

    .line 1065
    rem-int/lit8 v14, v5, 0x3

    .line 1066
    aget-object v15, v1, v5

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    const-string v4, "PbSyncATParser"

    if-eq v11, v15, :cond_a

    .line 1067
    iget-object v15, v0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mBtSmsStorageListRecCnt:[[Ljava/lang/String;

    aget-object v15, v15, v13

    aget-object v2, v1, v5

    invoke-virtual {v2, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v15, v14

    .line 1068
    sget-boolean v2, Lcom/autochips/bluetooth/util/PbSyncATParser;->DEBUG:Z

    if-eqz v2, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Array["

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "]["

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "] = "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mBtSmsStorageListRecCnt:[[Ljava/lang/String;

    aget-object v11, v11, v13

    aget-object v11, v11, v14

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    add-int/lit8 v5, v5, 0x1

    const/4 v2, 0x2

    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1070
    :cond_a
    sget-boolean v1, Lcom/autochips/bluetooth/util/PbSyncATParser;->DEBUG:Z

    if-eqz v1, :cond_b

    const-string v1, "not parse CPMS"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return v3

    :cond_c
    const/16 v1, 0x1f

    .line 1078
    iget v2, v0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mCurATCmd:I

    if-ne v1, v2, :cond_10

    .line 1079
    iget-object v1, v0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 1081
    :goto_4
    array-length v4, v1

    if-ge v2, v4, :cond_10

    move v4, v3

    .line 1083
    :goto_5
    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_e

    aget-object v5, v1, v2

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v10, v5, :cond_d

    aget-object v5, v1, v2

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v8, v5, :cond_e

    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_e
    move v5, v4

    .line 1091
    :goto_6
    aget-object v9, v1, v2

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v5, v9, :cond_f

    aget-object v9, v1, v2

    invoke-virtual {v9, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v7, v9, :cond_f

    aget-object v9, v1, v2

    invoke-virtual {v9, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v10, v9, :cond_f

    aget-object v9, v1, v2

    invoke-virtual {v9, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v6, v9, :cond_f

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_f
    add-int/lit8 v9, v2, -0x1

    .line 1095
    div-int/lit8 v11, v9, 0x3

    const/4 v12, 0x2

    .line 1096
    rem-int/2addr v9, v12

    .line 1097
    iget-object v13, v0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mBtSmsStorageRecCnt:[[I

    aget-object v11, v13, v11

    aget-object v13, v1, v2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v13, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v11, v9

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_10
    const/4 v1, 0x1

    return v1
.end method

.method public setCurATCmd(I)V
    .locals 0

    .line 256
    iput p1, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mCurATCmd:I

    return-void
.end method

.method public setCurIndex(I)V
    .locals 0

    .line 272
    iput p1, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mCurIndex:I

    return-void
.end method

.method public setRespondString(Ljava/lang/String;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/autochips/bluetooth/util/PbSyncATParser;->mRespondString:Ljava/lang/String;

    return-void
.end method
