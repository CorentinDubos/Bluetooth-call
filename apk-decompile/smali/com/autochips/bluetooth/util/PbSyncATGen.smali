.class public Lcom/autochips/bluetooth/util/PbSyncATGen;
.super Ljava/lang/Object;
.source "PbSyncATGen.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PbSyncATGen"


# instance fields
.field private mCurProfile:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/autochips/bluetooth/util/PbSyncATGen;->mCurProfile:I

    return-void
.end method

.method private convertPathInt2String(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_4

    const/16 v0, 0x20

    if-eq p1, v0, :cond_3

    const/16 v0, 0x40

    if-eq p1, v0, :cond_2

    const/16 v0, 0x80

    if-eq p1, v0, :cond_2

    const/16 v0, 0x100

    if-eq p1, v0, :cond_1

    const/16 v0, 0x200

    if-eq p1, v0, :cond_1

    const/16 v0, 0x400

    if-eq p1, v0, :cond_0

    const/16 v0, 0x800

    if-eq p1, v0, :cond_0

    const-string p1, "PbSyncATGen"

    const-string v0, "Unknown path operation"

    .line 203
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string p1, "MC"

    goto :goto_0

    :cond_1
    const-string p1, "DC"

    goto :goto_0

    :cond_2
    const-string p1, "RC"

    goto :goto_0

    :cond_3
    const-string p1, "SM"

    goto :goto_0

    :cond_4
    const-string p1, "ME"

    :goto_0
    return-object p1
.end method


# virtual methods
.method public GetATGetCurCharSet()Ljava/lang/String;
    .locals 2

    .line 81
    iget v0, p0, Lcom/autochips/bluetooth/util/PbSyncATGen;->mCurProfile:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    const-string v0, "AT+CSCS?"

    goto :goto_0

    :cond_0
    const-string v0, "AT+CSCS?\r"

    :goto_0
    return-object v0
.end method

.method public GetATGetIMEI()Ljava/lang/String;
    .locals 2

    .line 39
    iget v0, p0, Lcom/autochips/bluetooth/util/PbSyncATGen;->mCurProfile:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    const-string v0, "AT+CGSN"

    goto :goto_0

    :cond_0
    const-string v0, "AT+CGSN\r"

    :goto_0
    return-object v0
.end method

.method public GetATGetManufactor()Ljava/lang/String;
    .locals 3

    .line 49
    iget v0, p0, Lcom/autochips/bluetooth/util/PbSyncATGen;->mCurProfile:I

    const-string v1, "AT+CGMI"

    const/4 v2, 0x2

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    if-ne v2, v0, :cond_1

    const-string v1, "AT+GMI\r"

    :cond_1
    :goto_0
    return-object v1
.end method

.method public GetATGetSMSCurPos()Ljava/lang/String;
    .locals 2

    .line 262
    iget v0, p0, Lcom/autochips/bluetooth/util/PbSyncATGen;->mCurProfile:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    const-string v0, "AT+CPMS?"

    goto :goto_0

    :cond_0
    const-string v0, "AT+CPMS?\r"

    :goto_0
    return-object v0
.end method

.method public GetATGetSMSFormat()Ljava/lang/String;
    .locals 2

    .line 222
    iget v0, p0, Lcom/autochips/bluetooth/util/PbSyncATGen;->mCurProfile:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    const-string v0, "AT+CMGF?"

    goto :goto_0

    :cond_0
    const-string v0, "AT+CMGF?\r"

    :goto_0
    return-object v0
.end method

.method public GetATGetSMSRec(I)Ljava/lang/String;
    .locals 3

    .line 326
    iget v0, p0, Lcom/autochips/bluetooth/util/PbSyncATGen;->mCurProfile:I

    const-string v1, "AT+CMGR="

    const/4 v2, 0x2

    if-ne v2, v0, :cond_0

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 329
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\r"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public GetATGetSMSRecByType(I)Ljava/lang/String;
    .locals 3

    .line 295
    iget v0, p0, Lcom/autochips/bluetooth/util/PbSyncATGen;->mCurProfile:I

    const-string v1, "AT+CMGL="

    const/4 v2, 0x2

    if-ne v2, v0, :cond_0

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 298
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\r"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public GetATGetSMSSptPos()Ljava/lang/String;
    .locals 2

    .line 252
    iget v0, p0, Lcom/autochips/bluetooth/util/PbSyncATGen;->mCurProfile:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    const-string v0, "AT+CPMS=?"

    goto :goto_0

    :cond_0
    const-string v0, "AT+CPMS=?\r"

    :goto_0
    return-object v0
.end method

.method public GetATGetSMSSptRecType(I)Ljava/lang/String;
    .locals 1

    .line 305
    iget p1, p0, Lcom/autochips/bluetooth/util/PbSyncATGen;->mCurProfile:I

    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    const-string p1, "AT+CMGL=?"

    goto :goto_0

    :cond_0
    const-string p1, "AT+CMGL=?\r"

    :goto_0
    return-object p1
.end method

.method public GetATGetSMSSptService()Ljava/lang/String;
    .locals 2

    .line 212
    iget v0, p0, Lcom/autochips/bluetooth/util/PbSyncATGen;->mCurProfile:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    const-string v0, "AT+CSMS?"

    goto :goto_0

    :cond_0
    const-string v0, "AT+CSMS?\r"

    :goto_0
    return-object v0
.end method

.method public GetATGetSMSSrvCenter()Ljava/lang/String;
    .locals 2

    .line 242
    iget v0, p0, Lcom/autochips/bluetooth/util/PbSyncATGen;->mCurProfile:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    const-string v0, "AT+CSCA?"

    goto :goto_0

    :cond_0
    const-string v0, "AT+CSCA?\r"

    :goto_0
    return-object v0
.end method

.method public GetATGetSerial()Ljava/lang/String;
    .locals 2

    .line 61
    iget v0, p0, Lcom/autochips/bluetooth/util/PbSyncATGen;->mCurProfile:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    const-string v0, "AT+CGMM"

    goto :goto_0

    :cond_0
    const-string v0, "AT+CGMM\r"

    :goto_0
    return-object v0
.end method

.method public GetATGetSptCharSet()Ljava/lang/String;
    .locals 2

    .line 71
    iget v0, p0, Lcom/autochips/bluetooth/util/PbSyncATGen;->mCurProfile:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    const-string v0, "AT+CSCS=?"

    goto :goto_0

    :cond_0
    const-string v0, "AT+CSCS=?\r"

    :goto_0
    return-object v0
.end method

.method public GetATPBGetCurPath()Ljava/lang/String;
    .locals 2

    .line 112
    iget v0, p0, Lcom/autochips/bluetooth/util/PbSyncATGen;->mCurProfile:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    const-string v0, "AT+CPBS?"

    goto :goto_0

    :cond_0
    const-string v0, "AT+CPBS?\r"

    :goto_0
    return-object v0
.end method

.method public GetATPBGetIdxLstBySPBR()Ljava/lang/String;
    .locals 2

    .line 162
    iget v0, p0, Lcom/autochips/bluetooth/util/PbSyncATGen;->mCurProfile:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    const-string v0, "AT+INFO"

    goto :goto_0

    :cond_0
    const-string v0, "AT+INFO\r"

    :goto_0
    return-object v0
.end method

.method public GetATPBGetListSz()Ljava/lang/String;
    .locals 2

    .line 122
    iget v0, p0, Lcom/autochips/bluetooth/util/PbSyncATGen;->mCurProfile:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    const-string v0, "AT+CPBS?"

    goto :goto_0

    :cond_0
    const-string v0, "AT+CPBS?\r"

    :goto_0
    return-object v0
.end method

.method public GetATPBGetListSzByCPBR()Ljava/lang/String;
    .locals 2

    .line 132
    iget v0, p0, Lcom/autochips/bluetooth/util/PbSyncATGen;->mCurProfile:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    const-string v0, "AT+CPBR=?"

    goto :goto_0

    :cond_0
    const-string v0, "AT+CPBR=?\r"

    :goto_0
    return-object v0
.end method

.method public GetATPBGetRecs(II)Ljava/lang/String;
    .locals 4

    .line 142
    iget v0, p0, Lcom/autochips/bluetooth/util/PbSyncATGen;->mCurProfile:I

    const-string v1, ","

    const-string v2, "AT+CPBR="

    const/4 v3, 0x2

    if-ne v3, v0, :cond_0

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 145
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\r"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public GetATPBGetRecsBySPBR(I)Ljava/lang/String;
    .locals 3

    .line 152
    iget v0, p0, Lcom/autochips/bluetooth/util/PbSyncATGen;->mCurProfile:I

    const-string v1, "AT+SPBR="

    const/4 v2, 0x2

    if-ne v2, v0, :cond_0

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 155
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\r"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public GetATPBGetSptPath()Ljava/lang/String;
    .locals 2

    .line 172
    iget v0, p0, Lcom/autochips/bluetooth/util/PbSyncATGen;->mCurProfile:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    const-string v0, "AT+CPBS=?"

    goto :goto_0

    :cond_0
    const-string v0, "AT+CPBS=?\r"

    :goto_0
    return-object v0
.end method

.method public GetATPBSetPath(I)Ljava/lang/String;
    .locals 3

    .line 100
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/util/PbSyncATGen;->convertPathInt2String(I)Ljava/lang/String;

    move-result-object p1

    .line 102
    iget v0, p0, Lcom/autochips/bluetooth/util/PbSyncATGen;->mCurProfile:I

    const-string v1, "AT+CPBS=\""

    const/4 v2, 0x2

    if-ne v2, v0, :cond_0

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 105
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"\r"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public GetATResetAT()Ljava/lang/String;
    .locals 1

    const-string v0, "AT\r"

    return-object v0
.end method

.method public GetATSetCharSet(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 91
    iget v0, p0, Lcom/autochips/bluetooth/util/PbSyncATGen;->mCurProfile:I

    const-string v1, "AT+CSCS=\""

    const/4 v2, 0x2

    if-ne v2, v0, :cond_0

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 94
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"\r"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public GetATSetEcho(Z)Ljava/lang/String;
    .locals 2

    .line 25
    iget v0, p0, Lcom/autochips/bluetooth/util/PbSyncATGen;->mCurProfile:I

    const/4 v1, 0x3

    if-ne v1, v0, :cond_0

    const-string p1, "ATE\r"

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const-string p1, "ATE1\r"

    goto :goto_0

    :cond_1
    const-string p1, "ATE0\r"

    :goto_0
    return-object p1
.end method

.method public GetATSetSMSCNMI()Ljava/lang/String;
    .locals 2

    .line 272
    iget v0, p0, Lcom/autochips/bluetooth/util/PbSyncATGen;->mCurProfile:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    const-string v0, "AT+CNMI=2,1"

    goto :goto_0

    :cond_0
    const-string v0, "AT+CNMI=2,1\r"

    :goto_0
    return-object v0
.end method

.method public GetATSetSMSCurPos()Ljava/lang/String;
    .locals 2

    .line 284
    iget v0, p0, Lcom/autochips/bluetooth/util/PbSyncATGen;->mCurProfile:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    const-string v0, "AT+CPMS="

    goto :goto_0

    :cond_0
    const-string v0, "AT+CPMS=\r"

    :goto_0
    return-object v0
.end method

.method public GetATSetSMSFormat(I)Ljava/lang/String;
    .locals 3

    .line 232
    iget v0, p0, Lcom/autochips/bluetooth/util/PbSyncATGen;->mCurProfile:I

    const-string v1, "AT+CMGF="

    const/4 v2, 0x2

    if-ne v2, v0, :cond_0

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 235
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\r"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public GetATSetSMSRecLstByMMGL(I)Ljava/lang/String;
    .locals 3

    .line 315
    iget v0, p0, Lcom/autochips/bluetooth/util/PbSyncATGen;->mCurProfile:I

    const-string v1, "AT+MMGL="

    const/4 v2, 0x2

    if-ne v2, v0, :cond_0

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 318
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\r"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public SetCurProfile(I)V
    .locals 0

    .line 14
    iput p1, p0, Lcom/autochips/bluetooth/util/PbSyncATGen;->mCurProfile:I

    return-void
.end method
