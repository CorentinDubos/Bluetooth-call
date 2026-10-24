.class public Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;
.super Ljava/lang/Object;
.source "TrackInfo.java"


# static fields
.field private static final MAXANGLETRACK_BENZ:I = 0x462

.field private static final MAXANGLETRACK_GM:I = 0x1e78

.field private static final MAXANGLETRACK_GM_XINBUS:I = 0x1

.field private static final MAXANGLETRACK_HIWORLD:I = 0x2

.field private static final MAXANGLETRACK_HONDA:I = 0x1200

.field private static final MAXANGLETRACK_HONDA_CRV_2012:I = 0x1400

.field private static final MAXANGLETRACK_JEEP:I = 0x11f8

.field private static final MAXANGLETRACK_NOT_CAN:I = 0x0

.field private static final MAXANGLETRACK_TOYOTA:I = 0x17c

.field private static final MAXANGLETRACK_VW:I = 0x258

.field private static final MAXANGLETRACK_VW_GOFT:I = 0x4b78

.field static mRadio:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;


# instance fields
.field private invalidVal:I

.field private isHaveInvalidVal:Z

.field private trackAngle:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;

    invoke-direct {v0}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;-><init>()V

    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->mRadio:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    .line 24
    iput-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->isHaveInvalidVal:Z

    .line 25
    iput v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->invalidVal:I

    return-void
.end method

.method private generalSetTackData(IBBZ)V
    .locals 1

    const/16 v0, 0x28

    .line 1174
    div-int/2addr p1, v0

    and-int/lit16 p3, p3, 0xff

    shl-int/lit8 p3, p3, 0x8

    and-int/lit16 p2, p2, 0xff

    or-int/2addr p2, p3

    int-to-short p2, p2

    if-eqz p4, :cond_0

    .line 1177
    div-int/2addr p2, p1

    iput p2, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_0

    :cond_0
    neg-int p2, p2

    .line 1179
    div-int/2addr p2, p1

    iput p2, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    .line 1181
    :goto_0
    iget p1, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-lt p1, v0, :cond_1

    .line 1182
    iput v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_1

    :cond_1
    const/16 p2, -0x28

    if-gt p1, p2, :cond_2

    .line 1184
    iput p2, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    :cond_2
    :goto_1
    return-void
.end method

.method private generalSetTackData_ChanganBinary(IIBB)V
    .locals 1

    const/16 v0, 0x28

    .line 1191
    div-int/2addr p1, v0

    .line 1192
    div-int/2addr p2, v0

    and-int/lit16 p4, p4, 0xff

    shl-int/lit8 p4, p4, 0x8

    and-int/lit16 p3, p3, 0xff

    or-int/2addr p3, p4

    if-ltz p3, :cond_0

    const/16 p4, 0x19c0

    if-gt p3, p4, :cond_0

    neg-int p2, p3

    .line 1197
    div-int/2addr p2, p1

    iput p2, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_0

    :cond_0
    const p1, 0xffff

    sub-int/2addr p1, p3

    .line 1200
    div-int/2addr p1, p2

    iput p1, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    .line 1202
    :goto_0
    iget p1, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-lt p1, v0, :cond_1

    .line 1203
    iput v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_1

    :cond_1
    const/16 p2, -0x28

    if-gt p1, p2, :cond_2

    .line 1205
    iput p2, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    :cond_2
    :goto_1
    return-void
.end method

.method private generalSetTackData_cheryRaise(IBBZ)V
    .locals 1

    const/16 p4, 0x28

    .line 1212
    div-int/2addr p1, p4

    and-int/lit16 p3, p3, 0xff

    shl-int/lit8 p3, p3, 0x8

    and-int/lit16 p2, p2, 0xff

    or-int/2addr p2, p3

    const p3, 0x8000

    const/16 v0, 0x5e00

    if-lt p2, v0, :cond_0

    if-ge p2, p3, :cond_0

    sub-int v0, p3, p2

    .line 1218
    div-int/2addr v0, p1

    iput v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_0

    :cond_0
    if-le p2, p3, :cond_1

    const v0, 0xa200

    if-gt p2, v0, :cond_1

    add-int/lit16 v0, p2, -0x8000

    neg-int v0, v0

    .line 1221
    div-int/2addr v0, p1

    iput v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    .line 1223
    :cond_1
    :goto_0
    iget p1, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-lt p1, p4, :cond_2

    .line 1224
    iput p4, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_1

    :cond_2
    const/16 p4, -0x28

    if-gt p1, p4, :cond_3

    .line 1226
    iput p4, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    :cond_3
    :goto_1
    if-ne p2, p3, :cond_4

    const/4 p1, 0x0

    .line 1230
    iput p1, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    :cond_4
    return-void
.end method

.method private generalSetTackData_one(IB)V
    .locals 4

    const/16 v0, 0x28

    .line 1235
    div-int/2addr p1, v0

    and-int/lit16 v1, p2, 0xff

    const/16 v2, -0x80

    if-le p2, v2, :cond_0

    const/16 v3, -0x4e

    if-gt p2, v3, :cond_0

    and-int/lit8 p2, p2, 0x7f

    .line 1241
    div-int/2addr p2, p1

    iput p2, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_0

    :cond_0
    if-lez p2, :cond_1

    const/16 v3, 0x32

    if-gt p2, v3, :cond_1

    neg-int p2, v1

    .line 1246
    div-int/2addr p2, p1

    iput p2, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_0

    :cond_1
    if-eq p2, v2, :cond_2

    if-nez p2, :cond_3

    :cond_2
    const/4 p1, 0x0

    .line 1250
    iput p1, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    .line 1252
    :cond_3
    :goto_0
    iget p1, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-lt p1, v0, :cond_4

    .line 1254
    iput v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_1

    :cond_4
    const/16 p2, -0x28

    if-gt p1, p2, :cond_5

    .line 1257
    iput p2, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    :cond_5
    :goto_1
    return-void
.end method

.method private generalSetTackOneByte(IBZ)V
    .locals 1

    const/16 v0, 0x28

    .line 1336
    div-int/2addr p1, v0

    and-int/lit16 p2, p2, 0xff

    if-eqz p3, :cond_0

    add-int/lit8 p2, p2, -0x80

    .line 1339
    div-int/2addr p2, p1

    iput p2, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_0

    :cond_0
    rsub-int p2, p2, 0x80

    .line 1341
    div-int/2addr p2, p1

    iput p2, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    .line 1343
    :goto_0
    iget p1, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    const/16 p2, -0x28

    if-gt p1, p2, :cond_1

    .line 1344
    iput p2, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_1

    :cond_1
    if-lt p1, v0, :cond_2

    .line 1346
    iput v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    :cond_2
    :goto_1
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;
    .locals 2

    const-class v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;

    monitor-enter v0

    .line 28
    :try_start_0
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->mRadio:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;

    if-nez v1, :cond_0

    .line 29
    new-instance v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;

    invoke-direct {v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;-><init>()V

    sput-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->mRadio:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;

    .line 31
    :cond_0
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->mRadio:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private setHondaAccord7Data(IBB)V
    .locals 1

    const/16 v0, 0x28

    .line 1449
    div-int/2addr p1, v0

    and-int/lit8 p3, p3, 0xf

    shl-int/lit8 p3, p3, 0x8

    and-int/lit16 p2, p2, 0xff

    or-int/2addr p2, p3

    and-int/lit16 p3, p2, 0x800

    if-nez p3, :cond_0

    neg-int p2, p2

    .line 1452
    div-int/2addr p2, p1

    iput p2, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_0

    :cond_0
    add-int/lit16 p2, p2, -0x800

    .line 1454
    div-int/2addr p2, p1

    iput p2, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    .line 1456
    :goto_0
    iget p1, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-lt p1, v0, :cond_1

    .line 1457
    iput v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_1

    :cond_1
    const/16 p2, -0x28

    if-gt p1, p2, :cond_2

    .line 1459
    iput p2, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    :cond_2
    :goto_1
    return-void
.end method

.method private setTackBmwE90(B)V
    .locals 5

    and-int/lit16 p1, p1, 0xff

    .line 1318
    iput p1, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    const/16 v0, 0x29

    const/16 v1, 0x28

    if-eqz p1, :cond_3

    const/16 v2, 0x80

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v3, 0x32

    if-lez p1, :cond_1

    if-gt p1, v3, :cond_1

    mul-int/2addr p1, v1

    .line 1322
    div-int/2addr p1, v3

    iput p1, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_1

    .line 1323
    :cond_1
    iget p1, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-le p1, v2, :cond_2

    const/16 v4, 0xb2

    if-gt p1, v4, :cond_2

    sub-int/2addr p1, v2

    mul-int/2addr p1, v1

    .line 1324
    div-int/2addr p1, v3

    neg-int p1, p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_1

    .line 1326
    :cond_2
    iput v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 1320
    iput p1, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    .line 1328
    :goto_1
    iget p1, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    const/16 v2, -0x28

    if-lt p1, v2, :cond_4

    if-gt p1, v1, :cond_4

    neg-int p1, p1

    .line 1329
    iput p1, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_2

    .line 1331
    :cond_4
    iput v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    :goto_2
    return-void
.end method

.method private setTackDataBy12Bit(IBBZ)V
    .locals 1

    const/16 p4, 0x28

    .line 1265
    div-int/2addr p1, p4

    and-int/lit8 p3, p3, 0xf

    shl-int/lit8 p3, p3, 0x8

    and-int/lit16 p2, p2, 0xff

    or-int/2addr p2, p3

    .line 1268
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "trackData12Bit="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string/jumbo v0, "setTackDataBy12Bit"

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit16 p3, p2, 0x800

    if-nez p3, :cond_0

    neg-int p2, p2

    .line 1270
    div-int/2addr p2, p1

    iput p2, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_0

    :cond_0
    rsub-int p2, p2, 0xfff

    .line 1272
    div-int/2addr p2, p1

    iput p2, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    .line 1274
    :goto_0
    iget p1, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    const/16 p2, -0x28

    if-ge p1, p2, :cond_1

    .line 1275
    iput p2, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_1

    :cond_1
    if-le p1, p4, :cond_2

    .line 1277
    iput p4, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    :cond_2
    :goto_1
    return-void
.end method

.method private setTackDataBy15Bit(IBBZ)V
    .locals 2

    const/16 p4, 0x28

    .line 1282
    div-int/2addr p1, p4

    and-int/lit8 v0, p3, 0x7f

    shl-int/lit8 v0, v0, 0x8

    and-int/lit16 p2, p2, 0xff

    or-int/2addr p2, v0

    .line 1285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "trackData12Bit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setTackDataBy12Bit"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    invoke-static {p3}, Lcom/hzbhd/midwareproxy/utils/DataHandleUtils;->getBoolBit7(I)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, -0x1

    :goto_0
    mul-int/2addr p3, p2

    div-int/2addr p3, p1

    iput p3, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    const/16 p1, -0x28

    if-ge p3, p1, :cond_1

    .line 1293
    iput p1, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_1

    :cond_1
    if-le p3, p4, :cond_2

    .line 1295
    iput p4, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    :cond_2
    :goto_1
    return-void
.end method

.method private setTackDataBy16Bit(IBBZ)V
    .locals 1

    const/16 p4, 0x28

    .line 1300
    div-int/2addr p1, p4

    and-int/lit16 p3, p3, 0xff

    shl-int/lit8 p3, p3, 0x8

    and-int/lit16 p2, p2, 0xff

    or-int/2addr p2, p3

    .line 1302
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "trackData12Bit="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string/jumbo v0, "setTackDataBy12Bit"

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const p3, 0x8000

    and-int/2addr p3, p2

    if-eqz p3, :cond_0

    const-string/jumbo p3, "trackData12Bit & 0x800) != 0"

    .line 1304
    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const p3, 0xffff

    sub-int/2addr p2, p3

    .line 1305
    div-int/2addr p2, p1

    iput p2, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_0

    .line 1307
    :cond_0
    div-int/2addr p2, p1

    iput p2, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    .line 1309
    :goto_0
    iget p1, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    const/16 p2, -0x28

    if-ge p1, p2, :cond_1

    .line 1310
    iput p2, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_1

    :cond_1
    if-le p1, p4, :cond_2

    .line 1312
    iput p4, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    :cond_2
    :goto_1
    return-void
.end method

.method private setTackDataBy2Byte(IBBZ)V
    .locals 1

    .line 1359
    div-int/lit8 p1, p1, 0x28

    and-int/lit8 v0, p3, 0x7f

    shl-int/lit8 v0, v0, 0x8

    and-int/lit16 p2, p2, 0xff

    or-int/2addr p2, v0

    const/4 v0, 0x7

    .line 1361
    invoke-static {p3, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntByteWithBit(BI)Z

    move-result p3

    if-eqz p4, :cond_0

    xor-int/lit8 p3, p3, 0x1

    :cond_0
    if-eqz p3, :cond_1

    neg-int p2, p2

    .line 1366
    div-int/2addr p2, p1

    iput p2, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_0

    .line 1368
    :cond_1
    div-int/2addr p2, p1

    iput p2, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    :goto_0
    return-void
.end method

.method private setTackWithMidVal(IIIIZ)V
    .locals 0

    .line 1406
    div-int/lit8 p5, p1, 0x28

    and-int/lit16 p4, p4, 0xff

    shl-int/lit8 p4, p4, 0x8

    and-int/lit16 p3, p3, 0xff

    or-int/2addr p3, p4

    sub-int p4, p2, p1

    if-lt p3, p4, :cond_0

    if-gt p3, p2, :cond_0

    sub-int p1, p2, p3

    .line 1411
    div-int/2addr p1, p5

    iput p1, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_0

    :cond_0
    if-le p3, p2, :cond_1

    add-int/2addr p1, p2

    if-gt p3, p1, :cond_1

    sub-int p1, p3, p2

    neg-int p1, p1

    .line 1414
    div-int/2addr p1, p5

    iput p1, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    .line 1416
    :cond_1
    :goto_0
    iget p1, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    const/16 p4, 0x28

    if-lt p1, p4, :cond_2

    .line 1417
    iput p4, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_1

    :cond_2
    const/16 p4, -0x28

    if-gt p1, p4, :cond_3

    .line 1419
    iput p4, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    :cond_3
    :goto_1
    if-ne p3, p2, :cond_4

    const/4 p1, 0x0

    .line 1423
    iput p1, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    :cond_4
    return-void
.end method

.method private setTrackDataLeftMidRight(IIIII)V
    .locals 2

    sub-int v0, p5, p4

    const/16 v1, 0x28

    .line 1465
    div-int/2addr v0, v1

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x8

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, p2

    if-lt p1, p3, :cond_0

    if-ge p1, p4, :cond_0

    sub-int/2addr p4, p1

    neg-int p1, p4

    .line 1470
    div-int/2addr p1, v0

    iput p1, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_0

    :cond_0
    if-le p1, p4, :cond_1

    if-gt p1, p5, :cond_1

    sub-int/2addr p1, p4

    .line 1473
    div-int/2addr p1, v0

    iput p1, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1475
    iput p1, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    .line 1477
    :goto_0
    iget p1, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-lt p1, v1, :cond_2

    .line 1478
    iput v1, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_1

    :cond_2
    const/16 p2, -0x28

    if-gt p1, p2, :cond_3

    .line 1480
    iput p2, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    :cond_3
    :goto_1
    return-void
.end method

.method private setTrackDataLeftMidRightForDongFeng(IIIII)V
    .locals 2

    sub-int v0, p5, p4

    const/16 v1, 0x28

    .line 1520
    div-int/2addr v0, v1

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x8

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, p2

    if-gt p1, p3, :cond_0

    if-le p1, p4, :cond_0

    sub-int/2addr p4, p1

    neg-int p1, p4

    .line 1526
    div-int/2addr p1, v0

    iput p1, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_0

    :cond_0
    if-ge p1, p4, :cond_1

    if-lt p1, p5, :cond_1

    sub-int/2addr p1, p4

    .line 1529
    div-int/2addr p1, v0

    iput p1, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    if-ne p1, p4, :cond_2

    .line 1531
    iput p2, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    .line 1533
    iput p2, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    .line 1535
    :cond_3
    :goto_0
    iget p1, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-lt p1, v1, :cond_4

    .line 1536
    iput v1, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_1

    :cond_4
    const/16 p2, -0x28

    if-gt p1, p2, :cond_5

    .line 1538
    iput p2, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    :cond_5
    :goto_1
    return-void
.end method

.method private setTrackDataLeftMidRightNew(ZIIIII)V
    .locals 2

    sub-int v0, p6, p5

    const/16 v1, 0x28

    .line 1486
    div-int/2addr v0, v1

    and-int/lit16 p3, p3, 0xff

    shl-int/lit8 p3, p3, 0x8

    and-int/lit16 p2, p2, 0xff

    or-int/2addr p2, p3

    const/4 p3, 0x0

    if-eqz p1, :cond_2

    if-gt p2, p4, :cond_0

    if-le p2, p5, :cond_0

    sub-int/2addr p5, p2

    neg-int p1, p5

    .line 1492
    div-int/2addr p1, v0

    iput p1, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_0

    :cond_0
    if-ge p2, p5, :cond_1

    if-lt p2, p6, :cond_1

    sub-int/2addr p2, p5

    .line 1495
    div-int/2addr p2, v0

    iput p2, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_0

    :cond_1
    if-ne p2, p5, :cond_5

    .line 1497
    iput p3, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_0

    :cond_2
    if-lt p2, p4, :cond_3

    if-ge p2, p5, :cond_3

    sub-int/2addr p5, p2

    .line 1502
    div-int/2addr p5, v0

    iput p5, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_0

    :cond_3
    if-le p2, p5, :cond_4

    if-gt p2, p6, :cond_4

    sub-int/2addr p2, p5

    neg-int p1, p2

    .line 1505
    div-int/2addr p1, v0

    iput p1, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_0

    :cond_4
    if-ne p2, p5, :cond_5

    .line 1507
    iput p3, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    .line 1510
    :cond_5
    :goto_0
    iget p1, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-lt p1, v1, :cond_6

    .line 1511
    iput v1, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_1

    :cond_6
    const/16 p2, -0x28

    if-gt p1, p2, :cond_7

    .line 1513
    iput p2, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    :cond_7
    :goto_1
    return-void
.end method

.method private setTrackGeely(IIIZ)V
    .locals 2

    mul-int/lit16 v0, p3, 0x100

    add-int/2addr v0, p2

    const/16 p2, 0x28

    .line 1379
    div-int/2addr p1, p2

    const/4 v1, 0x7

    .line 1380
    invoke-static {p3, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntByteWithBit(II)Z

    move-result p3

    if-eqz p3, :cond_1

    const p3, 0xffff

    sub-int/2addr p3, v0

    if-eqz p4, :cond_0

    .line 1384
    div-int/2addr p3, p1

    iput p3, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_0

    :cond_0
    neg-int p3, p3

    .line 1386
    div-int/2addr p3, p1

    iput p3, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_2

    neg-int p3, v0

    .line 1389
    div-int/2addr p3, p1

    iput p3, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_0

    .line 1391
    :cond_2
    div-int p1, v0, p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    .line 1393
    :goto_0
    iget p1, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-lt p1, p2, :cond_3

    .line 1394
    iput p2, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_1

    :cond_3
    const/16 p2, -0x28

    if-gt p1, p2, :cond_4

    .line 1396
    iput p2, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    .line 1398
    :cond_4
    :goto_1
    iget-boolean p1, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->isHaveInvalidVal:Z

    if-eqz p1, :cond_5

    .line 1399
    iget p1, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->invalidVal:I

    if-ne p1, v0, :cond_5

    const/16 p1, 0x3e7

    .line 1400
    iput p1, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    :cond_5
    return-void
.end method

.method private setVolvoData(III)V
    .locals 3

    and-int/lit8 v0, p3, 0xf

    mul-int/lit16 v0, v0, 0x100

    add-int/2addr v0, p2

    const/16 p2, 0x28

    .line 1430
    div-int/2addr p1, p2

    const/4 v1, 0x7

    const/4 v2, 0x1

    .line 1431
    invoke-static {p3, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getBooleanFromByteWithBit(III)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_0

    rsub-int v0, v0, 0x1000

    .line 1434
    div-int p1, v0, p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_0

    :cond_0
    neg-int p3, v0

    .line 1436
    div-int/2addr p3, p1

    iput p3, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    .line 1438
    :goto_0
    iget p1, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-lt p1, p2, :cond_1

    .line 1439
    iput p2, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_1

    :cond_1
    const/16 p2, -0x28

    if-gt p1, p2, :cond_2

    .line 1441
    iput p2, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    const/16 p1, 0x1000

    if-ne v0, p1, :cond_4

    :cond_3
    const/4 p1, 0x0

    .line 1444
    iput p1, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    :cond_4
    return-void
.end method


# virtual methods
.method public getMaxAngleTrack()I
    .locals 3

    const/4 v0, 0x0

    .line 1093
    :try_start_0
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v2

    aget v1, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x3e

    if-eq v1, v2, :cond_0

    const/16 v2, 0x3f

    if-eq v1, v2, :cond_0

    const/16 v2, 0x90

    if-eq v1, v2, :cond_0

    const/16 v2, 0x91

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x1400

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x1200

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x17c

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x4b78

    goto :goto_0

    :pswitch_5
    const/16 v0, 0x1e78

    goto :goto_0

    :pswitch_6
    const/16 v0, 0x258

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :catch_0
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x72
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public refreshTrackInfo(Landroid/content/Context;[B)I
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    .line 38
    array-length v0, v8

    new-array v0, v0, [I

    const/4 v9, 0x0

    move v1, v9

    .line 39
    :goto_0
    array-length v2, v8

    const/16 v10, 0x80

    if-ge v1, v2, :cond_1

    .line 41
    aget-byte v2, v8, v1

    and-int/2addr v2, v10

    if-nez v2, :cond_0

    .line 42
    aget-byte v2, v8, v1

    aput v2, v0, v1

    goto :goto_1

    .line 44
    :cond_0
    aget-byte v2, v8, v1

    and-int/lit16 v2, v2, 0xff

    aput v2, v0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 48
    :cond_1
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isCanbusCmdPorting(Landroid/content/Context;)Z

    move-result v1

    const/16 v2, 0x21c

    const/16 v12, 0x20

    const/4 v3, 0x6

    const/16 v13, 0x29

    const/4 v4, 0x3

    const/4 v14, 0x2

    const/16 v15, -0x28

    const/16 v6, 0x28

    const/4 v5, 0x1

    if-eqz v1, :cond_7

    .line 49
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v16

    aget v1, v1, v16

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_4

    .line 172
    :pswitch_0
    aget-byte v1, v8, v5

    if-ne v1, v13, :cond_7

    .line 173
    aget-byte v1, v8, v4

    aget-byte v11, v8, v14

    invoke-direct {v7, v2, v1, v11, v5}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->setTackDataBy16Bit(IBBZ)V

    goto/16 :goto_4

    .line 167
    :pswitch_1
    aget-byte v1, v8, v5

    const/16 v11, 0x26

    if-ne v1, v11, :cond_7

    const/16 v1, 0x2710

    .line 168
    aget-byte v11, v8, v14

    aget-byte v2, v8, v4

    invoke-direct {v7, v1, v11, v2, v9}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->setTackDataBy16Bit(IBBZ)V

    goto/16 :goto_4

    .line 161
    :pswitch_2
    aget-byte v1, v8, v5

    const/16 v2, 0x35

    if-ne v1, v2, :cond_7

    const/16 v1, 0x2710

    .line 162
    aget-byte v2, v8, v14

    aget-byte v11, v8, v4

    invoke-direct {v7, v1, v2, v11, v9}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->setTackDataBy16Bit(IBBZ)V

    goto/16 :goto_4

    .line 152
    :pswitch_3
    aget-byte v1, v8, v5

    if-ne v1, v13, :cond_7

    const/16 v1, 0x154a

    .line 153
    aget-byte v2, v8, v14

    aget-byte v11, v8, v4

    invoke-direct {v7, v1, v2, v11, v9}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->generalSetTackData(IBBZ)V

    goto/16 :goto_4

    .line 141
    :pswitch_4
    aget-byte v1, v8, v5

    const/16 v2, 0x24

    if-ne v1, v2, :cond_7

    .line 142
    aget-byte v1, v8, v14

    invoke-direct {v7, v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->setTackBmwE90(B)V

    goto/16 :goto_4

    .line 122
    :pswitch_5
    aget-byte v1, v8, v5

    const/16 v2, 0x10

    if-ne v1, v2, :cond_7

    .line 123
    aget-byte v1, v8, v14

    and-int/lit16 v1, v1, 0xff

    iput v1, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-eqz v1, :cond_5

    if-ne v1, v10, :cond_2

    goto :goto_2

    :cond_2
    if-lez v1, :cond_3

    if-gt v1, v12, :cond_3

    mul-int/2addr v1, v6

    .line 127
    div-int/2addr v1, v12

    iput v1, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_3

    .line 128
    :cond_3
    iget v1, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-le v1, v10, :cond_4

    iget v1, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    const/16 v2, 0xa0

    if-gt v1, v2, :cond_4

    .line 129
    iget v1, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    sub-int/2addr v1, v10

    mul-int/2addr v1, v6

    div-int/2addr v1, v12

    neg-int v1, v1

    iput v1, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_3

    .line 131
    :cond_4
    iput v13, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_3

    .line 125
    :cond_5
    :goto_2
    iput v9, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    .line 133
    :goto_3
    iget v1, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-lt v1, v15, :cond_6

    iget v1, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-gt v1, v6, :cond_6

    .line 134
    iget v1, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    neg-int v1, v1

    iput v1, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto/16 :goto_4

    .line 136
    :cond_6
    iput v13, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto/16 :goto_4

    .line 116
    :pswitch_6
    aget-byte v1, v8, v5

    if-ne v1, v3, :cond_7

    .line 117
    aget-byte v1, v8, v14

    aget-byte v2, v8, v4

    const/16 v11, 0x1200

    invoke-direct {v7, v11, v1, v2, v5}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->setTackDataBy16Bit(IBBZ)V

    goto/16 :goto_4

    .line 111
    :pswitch_7
    aget-byte v1, v8, v5

    const/4 v2, 0x5

    if-ne v1, v2, :cond_7

    .line 112
    aget-byte v1, v8, v14

    aget-byte v2, v8, v4

    const/16 v11, 0x1200

    invoke-direct {v7, v11, v1, v2, v5}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->setTackDataBy16Bit(IBBZ)V

    goto/16 :goto_4

    .line 105
    :pswitch_8
    aget-byte v1, v8, v5

    if-ne v1, v3, :cond_7

    .line 106
    aget-byte v1, v8, v4

    aget-byte v2, v8, v14

    const/16 v11, 0x1200

    invoke-direct {v7, v11, v1, v2, v5}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->setTackDataBy16Bit(IBBZ)V

    goto :goto_4

    .line 100
    :pswitch_9
    aget-byte v1, v8, v5

    if-ne v1, v13, :cond_7

    const/16 v1, 0x1400

    .line 101
    aget-byte v2, v8, v14

    aget-byte v11, v8, v4

    invoke-direct {v7, v1, v2, v11, v5}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->setTackDataBy16Bit(IBBZ)V

    goto :goto_4

    .line 95
    :pswitch_a
    aget-byte v1, v8, v5

    if-ne v1, v13, :cond_7

    .line 96
    aget-byte v1, v8, v14

    aget-byte v2, v8, v4

    const/16 v11, 0x1200

    invoke-direct {v7, v11, v1, v2, v5}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->setTackDataBy16Bit(IBBZ)V

    goto :goto_4

    .line 85
    :pswitch_b
    aget-byte v1, v8, v5

    if-ne v1, v13, :cond_7

    const/16 v1, 0x17c

    .line 86
    aget-byte v2, v8, v14

    aget-byte v11, v8, v4

    invoke-direct {v7, v1, v2, v11, v9}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->setTackDataBy12Bit(IBBZ)V

    goto :goto_4

    .line 79
    :pswitch_c
    aget-byte v1, v8, v5

    if-ne v1, v13, :cond_7

    const/16 v1, 0x17c

    .line 80
    aget-byte v2, v8, v14

    aget-byte v11, v8, v4

    invoke-direct {v7, v1, v2, v11, v9}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->setTackDataBy12Bit(IBBZ)V

    goto :goto_4

    .line 71
    :pswitch_d
    aget-byte v1, v8, v5

    if-ne v1, v13, :cond_7

    const/16 v1, 0x4b78

    .line 72
    aget-byte v2, v8, v14

    aget-byte v11, v8, v4

    invoke-direct {v7, v1, v2, v11, v5}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->generalSetTackData(IBBZ)V

    goto :goto_4

    .line 65
    :pswitch_e
    aget-byte v1, v8, v5

    const/16 v2, 0x26

    if-ne v1, v2, :cond_7

    const/16 v1, 0x1e78

    .line 66
    aget-byte v2, v8, v14

    aget-byte v11, v8, v4

    invoke-direct {v7, v1, v2, v11, v9}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->generalSetTackData(IBBZ)V

    goto :goto_4

    .line 52
    :pswitch_f
    aget-byte v1, v8, v5

    const/16 v2, 0x26

    if-ne v1, v2, :cond_7

    const/16 v1, 0x258

    .line 53
    aget-byte v2, v8, v14

    aget-byte v11, v8, v4

    invoke-direct {v7, v1, v2, v11, v9}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->generalSetTackData(IBBZ)V

    .line 195
    :cond_7
    :goto_4
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    const/16 v6, 0x30

    const/4 v2, 0x7

    const/16 v12, 0x11

    const/16 v10, 0x9

    packed-switch v1, :pswitch_data_2

    .line 970
    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isCanbusCmdPorting(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    move v12, v5

    move v5, v9

    const/16 v11, 0x28

    goto/16 :goto_1c

    :cond_8
    :goto_5
    move v12, v5

    const/16 v11, 0x28

    goto/16 :goto_1b

    .line 965
    :pswitch_10
    aget-byte v0, v8, v5

    if-ne v0, v6, :cond_8

    const/16 v0, 0x15e0

    .line 966
    aget-byte v1, v8, v14

    aget-byte v2, v8, v4

    invoke-direct {v7, v0, v1, v2, v9}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->generalSetTackData(IBBZ)V

    goto :goto_5

    .line 960
    :pswitch_11
    aget-byte v0, v8, v5

    if-ne v0, v13, :cond_8

    const/16 v0, 0x1518

    .line 961
    aget-byte v1, v8, v4

    aget-byte v2, v8, v14

    invoke-direct {v7, v0, v1, v2, v9}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->generalSetTackData(IBBZ)V

    goto :goto_5

    .line 955
    :pswitch_12
    aget-byte v0, v8, v5

    if-ne v0, v13, :cond_8

    const/16 v0, 0x1518

    .line 956
    aget-byte v1, v8, v4

    aget-byte v2, v8, v14

    invoke-direct {v7, v0, v1, v2, v9}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->generalSetTackData(IBBZ)V

    goto :goto_5

    :pswitch_13
    const-string v0, "fzy"

    .line 948
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mazda rause:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v2, v8, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    aget-byte v0, v8, v5

    if-ne v0, v13, :cond_9

    const/4 v1, 0x1

    .line 950
    aget-byte v2, v8, v14

    aget-byte v3, v8, v4

    const/16 v4, 0x3470

    const/16 v6, 0x1e40

    const/16 v10, 0x810

    move-object/from16 v0, p0

    move v12, v5

    move v5, v6

    const/16 v11, 0x28

    move v6, v10

    invoke-direct/range {v0 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->setTrackDataLeftMidRightNew(ZIIIII)V

    goto/16 :goto_1b

    :cond_9
    const/16 v11, 0x28

    goto/16 :goto_14

    :pswitch_14
    move v12, v5

    const/16 v11, 0x28

    .line 942
    aget-byte v0, v8, v12

    if-ne v0, v13, :cond_5b

    const/4 v1, 0x1

    .line 943
    aget-byte v2, v8, v14

    aget-byte v3, v8, v4

    const/16 v4, 0x3470

    const/16 v5, 0x1e40

    const/16 v6, 0x810

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->setTrackDataLeftMidRightNew(ZIIIII)V

    goto/16 :goto_1b

    :pswitch_15
    move v12, v5

    const/16 v11, 0x28

    .line 931
    aget-byte v0, v8, v12

    const/16 v1, 0x24

    if-ne v0, v1, :cond_5b

    .line 933
    aget-byte v0, v8, v14

    invoke-static {v0, v9, v3}, Lcom/hzbhd/midwareproxy/utils/DataHandleUtils;->getIntFromByteWithBit(III)I

    move-result v0

    .line 934
    aget-byte v1, v8, v14

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/utils/DataHandleUtils;->getBoolBit7(I)Z

    move-result v1

    if-eqz v1, :cond_a

    move v5, v12

    goto :goto_6

    :cond_a
    const/4 v5, -0x1

    .line 935
    :goto_6
    div-int/2addr v0, v12

    mul-int/2addr v0, v5

    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-le v0, v11, :cond_b

    .line 936
    iput v11, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto/16 :goto_1b

    :cond_b
    if-ge v0, v15, :cond_5b

    .line 937
    iput v15, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto/16 :goto_1b

    :pswitch_16
    move v12, v5

    const/16 v11, 0x28

    .line 925
    aget-byte v0, v8, v12

    if-ne v0, v13, :cond_5b

    const/4 v1, 0x0

    .line 926
    aget-byte v2, v8, v14

    aget-byte v3, v8, v4

    const/16 v4, 0x774

    const/16 v5, 0x1e00

    const/16 v6, 0x358c

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->setTrackDataLeftMidRightNew(ZIIIII)V

    goto/16 :goto_1b

    :pswitch_17
    move v12, v5

    const/16 v11, 0x28

    .line 918
    aget-byte v0, v8, v12

    if-ne v0, v13, :cond_5b

    const/4 v1, 0x0

    .line 919
    aget-byte v2, v8, v14

    aget-byte v3, v8, v4

    const/16 v4, 0xb00

    const/16 v5, 0x1f00

    const/16 v6, 0x32ff

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->setTrackDataLeftMidRightNew(ZIIIII)V

    goto/16 :goto_1b

    :pswitch_18
    move v12, v5

    const/16 v11, 0x28

    .line 913
    aget-byte v0, v8, v12

    const/16 v1, 0x7d

    if-ne v0, v1, :cond_5b

    aget-byte v0, v8, v14

    const/16 v1, 0x8

    if-ne v0, v1, :cond_5b

    .line 914
    aget-byte v0, v8, v4

    const/4 v1, 0x4

    aget-byte v1, v8, v1

    const/16 v2, 0x21c

    invoke-direct {v7, v2, v0, v1, v12}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->generalSetTackData(IBBZ)V

    goto/16 :goto_1b

    :pswitch_19
    move v12, v5

    const/16 v11, 0x28

    .line 895
    aget-byte v0, v8, v12

    if-ne v0, v6, :cond_5b

    .line 897
    aget-byte v0, v8, v14

    and-int/lit8 v0, v0, 0x7f

    const/16 v1, 0x8

    shl-int/2addr v0, v1

    aget-byte v1, v8, v4

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 898
    aget-byte v1, v8, v14

    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntByteWithBit(BI)Z

    move-result v1

    xor-int/2addr v1, v12

    if-eqz v1, :cond_c

    neg-int v0, v0

    .line 903
    div-int/lit8 v0, v0, 0xd

    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_7

    .line 905
    :cond_c
    div-int/lit8 v0, v0, 0xd

    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    .line 907
    :goto_7
    iget v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    div-int/lit8 v0, v0, 0xa

    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-le v0, v11, :cond_d

    .line 908
    iput v11, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto/16 :goto_1b

    :cond_d
    if-ge v0, v15, :cond_5b

    .line 909
    iput v15, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto/16 :goto_1b

    :pswitch_1a
    move v12, v5

    const/16 v11, 0x28

    .line 889
    aget-byte v0, v8, v12

    const/16 v1, 0x31

    if-ne v0, v1, :cond_5b

    .line 890
    aget-byte v1, v8, v4

    aget-byte v2, v8, v14

    const/16 v3, 0xb00

    const/16 v4, 0x1e00

    const/16 v5, 0x3100

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->setTrackDataLeftMidRight(IIIII)V

    goto/16 :goto_1b

    :pswitch_1b
    move v6, v5

    const/16 v11, 0x28

    .line 872
    aget-byte v0, v8, v6

    if-ne v0, v12, :cond_f

    const/16 v0, 0x8

    .line 874
    aget-byte v1, v8, v0

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v0

    aget-byte v0, v8, v10

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    .line 876
    div-int/lit8 v0, v0, 0xd

    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    .line 880
    div-int/lit8 v0, v0, 0xa

    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-lt v0, v11, :cond_e

    .line 882
    iput v11, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto/16 :goto_8

    :cond_e
    if-gt v0, v15, :cond_f

    .line 884
    iput v15, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto/16 :goto_8

    :pswitch_1c
    move v6, v5

    const/16 v11, 0x28

    .line 867
    aget-byte v0, v8, v6

    if-ne v0, v13, :cond_f

    .line 868
    aget-byte v0, v8, v14

    aget-byte v1, v8, v4

    const/16 v2, 0x1200

    invoke-direct {v7, v2, v0, v1, v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->setTackDataBy16Bit(IBBZ)V

    goto :goto_8

    :pswitch_1d
    move v6, v5

    const/16 v11, 0x28

    .line 861
    aget-byte v1, v8, v6

    if-ne v1, v12, :cond_f

    .line 862
    iput-boolean v6, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->isHaveInvalidVal:Z

    .line 863
    aget v1, v0, v10

    const/16 v2, 0x8

    aget v0, v0, v2

    const/16 v2, 0x21c

    invoke-direct {v7, v2, v1, v0, v9}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->setTrackGeely(IIIZ)V

    goto :goto_8

    :pswitch_1e
    move v6, v5

    const/16 v11, 0x28

    .line 852
    aget-byte v0, v8, v6

    const/16 v1, 0x26

    if-ne v0, v1, :cond_f

    const/16 v0, 0x17c

    .line 853
    aget-byte v1, v8, v14

    aget-byte v2, v8, v4

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->setHondaAccord7Data(IBB)V

    goto :goto_8

    :pswitch_1f
    move v6, v5

    const/16 v11, 0x28

    .line 846
    aget-byte v0, v8, v6

    if-ne v0, v13, :cond_f

    const/16 v0, 0x168

    .line 847
    aget-byte v1, v8, v14

    aget-byte v2, v8, v4

    invoke-direct {v7, v0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->setVolvoData(III)V

    goto :goto_8

    :pswitch_20
    move v6, v5

    const/16 v11, 0x28

    .line 839
    aget-byte v0, v8, v6

    if-ne v0, v13, :cond_f

    const/16 v1, 0x1eda

    const v2, 0x8000

    .line 840
    aget-byte v3, v8, v4

    aget-byte v4, v8, v14

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->setTackWithMidVal(IIIIZ)V

    goto :goto_8

    :pswitch_21
    move v6, v5

    const/16 v11, 0x28

    .line 832
    aget-byte v0, v8, v6

    if-ne v0, v13, :cond_f

    const/16 v0, 0x546

    .line 833
    aget-byte v1, v8, v14

    aget-byte v2, v8, v4

    invoke-direct {v7, v0, v1, v2, v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->generalSetTackData(IBBZ)V

    :cond_f
    :goto_8
    move v12, v6

    goto/16 :goto_1b

    :pswitch_22
    move v10, v5

    const/16 v11, 0x28

    .line 825
    aget-byte v1, v8, v10

    if-ne v1, v6, :cond_16

    const/16 v1, 0x1545

    .line 826
    aget v2, v0, v4

    aget v0, v0, v14

    invoke-direct {v7, v1, v2, v0, v10}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->setTrackGeely(IIIZ)V

    goto/16 :goto_9

    :pswitch_23
    move v10, v5

    const/16 v11, 0x28

    .line 818
    aget-byte v0, v8, v10

    if-ne v0, v6, :cond_16

    const/16 v0, 0x1518

    .line 819
    aget-byte v1, v8, v4

    aget-byte v2, v8, v14

    invoke-direct {v7, v0, v1, v2, v10}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->setTackDataBy2Byte(IBBZ)V

    goto/16 :goto_9

    :pswitch_24
    move v10, v5

    const/16 v11, 0x28

    .line 812
    aget-byte v0, v8, v10

    if-ne v0, v13, :cond_16

    const/16 v0, 0x1400

    .line 813
    aget-byte v1, v8, v14

    aget-byte v2, v8, v4

    invoke-direct {v7, v0, v1, v2, v10}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->setTackDataBy16Bit(IBBZ)V

    goto/16 :goto_9

    :pswitch_25
    move v10, v5

    const/16 v11, 0x28

    .line 807
    aget-byte v0, v8, v10

    if-ne v0, v13, :cond_16

    .line 808
    aget-byte v0, v8, v14

    aget-byte v1, v8, v4

    const/16 v2, 0x1200

    invoke-direct {v7, v2, v0, v1, v10}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->setTackDataBy16Bit(IBBZ)V

    goto/16 :goto_9

    :pswitch_26
    move v10, v5

    const/16 v11, 0x28

    .line 799
    aget-byte v0, v8, v10

    const/4 v1, 0x5

    if-ne v0, v1, :cond_16

    .line 800
    aget-byte v0, v8, v3

    const/16 v1, 0x80

    invoke-direct {v7, v1, v0, v10}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->generalSetTackOneByte(IBZ)V

    goto/16 :goto_9

    :pswitch_27
    move v10, v5

    const/16 v11, 0x28

    .line 782
    aget-byte v0, v8, v9

    const/16 v1, 0x55

    if-ne v0, v1, :cond_16

    aget-byte v0, v8, v10

    if-ne v0, v13, :cond_16

    .line 783
    aget-byte v0, v8, v14

    and-int/lit8 v0, v0, 0x7f

    const/16 v1, 0x8

    shl-int/2addr v0, v1

    aget-byte v1, v8, v4

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 784
    aget-byte v1, v8, v14

    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntByteWithBit(BI)Z

    move-result v1

    if-nez v1, :cond_10

    neg-int v0, v0

    .line 788
    :cond_10
    div-int/lit8 v0, v0, 0xd

    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-lt v0, v11, :cond_11

    .line 790
    iput v11, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto/16 :goto_9

    :cond_11
    if-gt v0, v15, :cond_16

    .line 792
    iput v15, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto/16 :goto_9

    :pswitch_28
    move v10, v5

    const/16 v11, 0x28

    .line 776
    aget-byte v0, v8, v9

    const/16 v1, 0x55

    if-ne v0, v1, :cond_16

    aget-byte v0, v8, v10

    if-ne v0, v13, :cond_16

    const/16 v0, 0x168

    .line 777
    aget-byte v1, v8, v14

    aget-byte v2, v8, v4

    invoke-direct {v7, v0, v1, v2, v9}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->setTackDataBy12Bit(IBBZ)V

    goto/16 :goto_9

    :pswitch_29
    move v10, v5

    const/16 v11, 0x28

    .line 771
    aget-byte v0, v8, v9

    const/16 v1, 0x55

    if-eq v0, v1, :cond_12

    aget-byte v0, v8, v10

    const/16 v1, 0x26

    if-ne v0, v1, :cond_16

    .line 773
    :cond_12
    aget-byte v0, v8, v4

    aget-byte v1, v8, v14

    const/16 v2, 0x21c

    invoke-direct {v7, v2, v0, v1, v9}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->setTackDataBy15Bit(IBBZ)V

    goto/16 :goto_9

    :pswitch_2a
    move v10, v5

    const/16 v11, 0x28

    .line 767
    aget-byte v0, v8, v9

    const/16 v1, 0x55

    if-eq v0, v1, :cond_13

    aget-byte v0, v8, v10

    if-ne v0, v6, :cond_16

    .line 768
    :cond_13
    aget-byte v1, v8, v4

    aget-byte v2, v8, v14

    const/16 v3, 0x359f

    const/16 v4, 0x1e68

    const/16 v5, 0x731

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->setTrackDataLeftMidRightForDongFeng(IIIII)V

    goto :goto_9

    :pswitch_2b
    move v10, v5

    const/16 v11, 0x28

    .line 763
    aget-byte v0, v8, v9

    const/16 v1, 0x55

    if-eq v0, v1, :cond_14

    aget-byte v0, v8, v10

    if-ne v0, v13, :cond_16

    :cond_14
    const/16 v0, 0x16cd

    .line 764
    aget-byte v1, v8, v4

    aget-byte v2, v8, v14

    invoke-direct {v7, v0, v1, v2, v9}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->generalSetTackData(IBBZ)V

    goto :goto_9

    :pswitch_2c
    move v10, v5

    const/16 v11, 0x28

    .line 759
    aget-byte v0, v8, v9

    const/16 v1, 0x55

    if-eq v0, v1, :cond_15

    aget-byte v0, v8, v10

    if-ne v0, v13, :cond_16

    :cond_15
    const/4 v1, 0x1

    .line 760
    aget-byte v2, v8, v4

    aget-byte v3, v8, v14

    const/16 v4, 0x3489

    const/16 v5, 0x1e40

    const/16 v6, 0x7f7

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->setTrackDataLeftMidRightNew(ZIIIII)V

    goto :goto_9

    :pswitch_2d
    move v10, v5

    const/16 v11, 0x28

    .line 752
    aget-byte v0, v8, v10

    if-ne v0, v13, :cond_16

    const/16 v0, 0x19c0

    const/16 v1, 0x19cf

    .line 753
    aget-byte v2, v8, v14

    aget-byte v3, v8, v4

    invoke-direct {v7, v0, v1, v2, v3}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->generalSetTackData_ChanganBinary(IIBB)V

    goto :goto_9

    :pswitch_2e
    move v10, v5

    const/16 v11, 0x28

    .line 746
    aget-byte v0, v8, v10

    if-ne v0, v2, :cond_16

    .line 747
    aget-byte v0, v8, v14

    aget-byte v1, v8, v4

    const/16 v2, 0x1200

    invoke-direct {v7, v2, v0, v1, v10}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->generalSetTackData(IBBZ)V

    :cond_16
    :goto_9
    move v12, v10

    goto/16 :goto_1b

    :pswitch_2f
    const/16 v11, 0x28

    .line 740
    aget-byte v0, v8, v5

    if-ne v0, v12, :cond_47

    .line 741
    aget-byte v0, v8, v10

    const/16 v1, 0x8

    aget-byte v2, v8, v1

    const/16 v1, 0x21c

    invoke-direct {v7, v1, v0, v2, v5}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->generalSetTackData(IBBZ)V

    goto/16 :goto_14

    :pswitch_30
    const/16 v11, 0x28

    .line 735
    aget-byte v0, v8, v5

    if-ne v0, v13, :cond_47

    const/16 v0, 0x2200

    .line 736
    aget-byte v1, v8, v14

    aget-byte v2, v8, v4

    invoke-direct {v7, v0, v1, v2, v5}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->generalSetTackData_cheryRaise(IBBZ)V

    goto/16 :goto_14

    :pswitch_31
    const/16 v11, 0x28

    .line 730
    aget-byte v0, v8, v5

    if-ne v0, v12, :cond_47

    const/16 v0, 0x2710

    .line 731
    aget-byte v1, v8, v10

    const/16 v2, 0x8

    aget-byte v3, v8, v2

    invoke-direct {v7, v0, v1, v3, v5}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->generalSetTackData(IBBZ)V

    goto/16 :goto_14

    :pswitch_32
    const/16 v11, 0x28

    .line 725
    aget-byte v0, v8, v5

    const/16 v1, 0x26

    if-ne v0, v1, :cond_47

    .line 726
    aget-byte v0, v8, v14

    aget-byte v1, v8, v4

    const/16 v2, 0x21c

    invoke-direct {v7, v2, v0, v1, v9}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->generalSetTackData(IBBZ)V

    goto/16 :goto_14

    :pswitch_33
    const/16 v11, 0x28

    .line 719
    aget-byte v0, v8, v5

    const/4 v1, 0x5

    if-ne v0, v1, :cond_47

    .line 720
    aget-byte v0, v8, v14

    const/16 v1, 0x32

    invoke-direct {v7, v1, v0}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->generalSetTackData_one(IB)V

    goto/16 :goto_14

    :pswitch_34
    const/16 v11, 0x28

    .line 694
    aget-byte v0, v8, v5

    if-ne v0, v13, :cond_47

    .line 701
    aget-byte v0, v8, v4

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x8

    shl-int/2addr v0, v1

    aget-byte v1, v8, v14

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    rsub-int v0, v0, 0x1e40

    const/16 v1, -0x1630

    if-ge v0, v1, :cond_17

    const/16 v0, -0x1e40

    goto :goto_a

    :cond_17
    const/16 v1, 0x1630

    if-le v0, v1, :cond_18

    const/16 v0, 0x1630

    .line 708
    :cond_18
    :goto_a
    div-int/lit16 v0, v0, 0x8e

    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-lt v0, v11, :cond_19

    .line 710
    iput v11, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto/16 :goto_14

    :cond_19
    if-gt v0, v15, :cond_47

    .line 712
    iput v15, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto/16 :goto_14

    :pswitch_35
    const/16 v11, 0x28

    .line 675
    aget-byte v0, v8, v5

    if-ne v0, v12, :cond_47

    const/16 v0, 0x8

    .line 678
    aget-byte v1, v8, v0

    and-int/lit8 v1, v1, 0x7f

    mul-int/lit16 v1, v1, 0x100

    aget-byte v3, v8, v10

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v1, v3

    .line 679
    aget-byte v3, v8, v0

    invoke-static {v3, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntByteWithBit(BI)Z

    move-result v0

    if-nez v0, :cond_1a

    neg-int v1, v1

    .line 682
    :cond_1a
    div-int/lit16 v1, v1, 0x87

    iput v1, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-le v1, v15, :cond_1b

    if-ge v1, v11, :cond_1b

    .line 684
    iput v1, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto/16 :goto_14

    .line 685
    :cond_1b
    iget v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-lt v0, v11, :cond_1c

    .line 686
    iput v11, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto/16 :goto_14

    .line 687
    :cond_1c
    iget v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-gt v0, v15, :cond_47

    .line 688
    iput v15, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto/16 :goto_14

    :pswitch_36
    const/16 v11, 0x28

    .line 658
    aget-byte v0, v8, v5

    if-ne v0, v12, :cond_47

    const/16 v0, 0x8

    .line 661
    aget-byte v1, v8, v0

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v0

    aget-byte v0, v8, v10

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    .line 662
    div-int/lit8 v0, v0, 0xd

    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-le v0, v15, :cond_1d

    if-ge v0, v11, :cond_1d

    .line 665
    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto/16 :goto_14

    .line 666
    :cond_1d
    iget v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-lt v0, v11, :cond_1e

    .line 667
    iput v11, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto/16 :goto_14

    .line 668
    :cond_1e
    iget v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-gt v0, v15, :cond_47

    .line 669
    iput v15, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto/16 :goto_14

    :pswitch_37
    const/16 v11, 0x28

    .line 640
    aget-byte v0, v8, v5

    if-ne v0, v12, :cond_47

    const/16 v0, 0x8

    .line 643
    aget-byte v1, v8, v0

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v0

    aget-byte v0, v8, v10

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    .line 644
    div-int/lit8 v0, v0, 0xd

    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-le v0, v15, :cond_1f

    if-ge v0, v11, :cond_1f

    .line 647
    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto/16 :goto_14

    .line 648
    :cond_1f
    iget v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-lt v0, v11, :cond_20

    .line 649
    iput v11, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto/16 :goto_14

    .line 650
    :cond_20
    iget v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-gt v0, v15, :cond_47

    .line 651
    iput v15, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto/16 :goto_14

    :pswitch_38
    const/16 v11, 0x28

    .line 624
    aget-byte v0, v8, v4

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x8

    shl-int/2addr v0, v1

    aget-byte v1, v8, v14

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_21

    const v1, 0xffff

    sub-int/2addr v0, v1

    .line 627
    div-int/lit16 v0, v0, 0x88

    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_b

    .line 629
    :cond_21
    div-int/lit16 v0, v0, 0x88

    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    .line 631
    :goto_b
    iget v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-lt v0, v11, :cond_22

    .line 632
    iput v11, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_c

    .line 633
    :cond_22
    iget v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-gt v0, v15, :cond_23

    .line 634
    iput v15, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    .line 636
    :cond_23
    :goto_c
    iget v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    neg-int v0, v0

    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto/16 :goto_14

    :pswitch_39
    const/16 v0, 0x8

    const/16 v11, 0x28

    .line 610
    aget-byte v1, v8, v0

    and-int/lit8 v1, v1, 0x7f

    shl-int/2addr v1, v0

    aget-byte v0, v8, v10

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    .line 612
    div-int/lit8 v0, v0, 0x7d

    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-lt v0, v11, :cond_24

    .line 614
    iput v11, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_d

    :cond_24
    if-gt v0, v15, :cond_25

    .line 616
    iput v15, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    :cond_25
    :goto_d
    const/16 v0, 0x8

    .line 618
    aget-byte v1, v8, v0

    const/16 v0, 0x80

    and-int/2addr v1, v0

    if-nez v1, :cond_47

    .line 619
    iget v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    neg-int v0, v0

    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto/16 :goto_14

    :pswitch_3a
    const/16 v11, 0x28

    .line 600
    aget-byte v0, v8, v5

    if-ne v0, v12, :cond_47

    const/16 v0, 0x8

    .line 601
    aget-byte v1, v8, v0

    .line 602
    aget-byte v0, v8, v10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_26

    move v1, v9

    :cond_26
    const/16 v2, 0x21c

    .line 606
    invoke-direct {v7, v2, v0, v1, v5}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->generalSetTackData(IBBZ)V

    goto/16 :goto_14

    :pswitch_3b
    const/16 v11, 0x28

    .line 594
    aget-byte v0, v8, v5

    if-ne v0, v12, :cond_47

    .line 595
    aget-byte v0, v8, v10

    const/16 v1, 0x8

    aget-byte v2, v8, v1

    const/16 v3, 0x21c

    invoke-direct {v7, v3, v0, v2, v5}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->generalSetTackData(IBBZ)V

    goto/16 :goto_14

    :pswitch_3c
    const/16 v1, 0x8

    const/16 v11, 0x28

    .line 573
    aget-byte v0, v8, v1

    and-int/lit8 v0, v0, 0x7f

    shl-int/2addr v0, v1

    aget-byte v1, v8, v10

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 575
    div-int/lit16 v0, v0, 0x82

    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-lt v0, v11, :cond_27

    .line 577
    iput v11, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_e

    :cond_27
    if-gt v0, v15, :cond_28

    .line 579
    iput v15, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    :cond_28
    :goto_e
    const/16 v0, 0x8

    .line 581
    aget-byte v1, v8, v0

    const/16 v0, 0x80

    and-int/2addr v1, v0

    if-eqz v1, :cond_47

    .line 582
    iget v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    neg-int v0, v0

    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto/16 :goto_14

    :pswitch_3d
    const/16 v11, 0x28

    .line 537
    aget-byte v0, v8, v3

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x8

    shl-int/2addr v0, v1

    aget-byte v1, v8, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_29

    const v1, 0xffff

    sub-int/2addr v0, v1

    .line 540
    div-int/lit8 v0, v0, 0xf

    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_f

    .line 542
    :cond_29
    div-int/lit8 v0, v0, 0xf

    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    .line 544
    :goto_f
    iget v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-lt v0, v11, :cond_2a

    .line 545
    iput v11, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto/16 :goto_14

    .line 546
    :cond_2a
    iget v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-gt v0, v15, :cond_47

    .line 547
    iput v15, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto/16 :goto_14

    :pswitch_3e
    const/16 v11, 0x28

    .line 532
    aget-byte v0, v8, v5

    if-ne v0, v6, :cond_47

    const/16 v0, 0x1900

    .line 533
    aget-byte v1, v8, v4

    aget-byte v2, v8, v14

    invoke-direct {v7, v0, v1, v2, v9}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->generalSetTackData(IBBZ)V

    goto/16 :goto_14

    :pswitch_3f
    const/16 v11, 0x28

    .line 515
    aget-byte v0, v8, v5

    and-int/lit16 v0, v0, 0xff

    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-eqz v0, :cond_2e

    const/16 v1, 0x80

    if-ne v0, v1, :cond_2b

    goto :goto_10

    :cond_2b
    if-lez v0, :cond_2c

    const/16 v1, 0x32

    if-gt v0, v1, :cond_2c

    mul-int/2addr v0, v11

    .line 519
    div-int/2addr v0, v1

    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_11

    .line 520
    :cond_2c
    iget v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    const/16 v1, 0x80

    if-le v0, v1, :cond_2d

    iget v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    const/16 v2, 0xb2

    if-gt v0, v2, :cond_2d

    .line 521
    iget v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    sub-int/2addr v0, v1

    mul-int/2addr v0, v11

    const/16 v1, 0x32

    div-int/2addr v0, v1

    neg-int v0, v0

    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_11

    .line 523
    :cond_2d
    iput v13, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_11

    .line 517
    :cond_2e
    :goto_10
    iput v9, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    .line 525
    :goto_11
    iget v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-lt v0, v15, :cond_2f

    iget v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-gt v0, v11, :cond_2f

    .line 526
    iget v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    neg-int v0, v0

    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto/16 :goto_14

    .line 528
    :cond_2f
    iput v13, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto/16 :goto_14

    :pswitch_40
    const/16 v11, 0x28

    .line 483
    aget-byte v0, v8, v3

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x8

    shl-int/2addr v0, v1

    aget-byte v1, v8, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    mul-int/2addr v0, v11

    .line 485
    div-int/lit16 v0, v0, 0x1f4

    int-to-byte v0, v0

    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-lt v0, v11, :cond_30

    .line 488
    iput v11, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto/16 :goto_14

    :cond_30
    if-gt v0, v15, :cond_47

    .line 490
    iput v15, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto/16 :goto_14

    :pswitch_41
    const/16 v11, 0x28

    .line 465
    aget-byte v0, v8, v9

    const/16 v1, 0x55

    if-ne v0, v1, :cond_47

    aget-byte v0, v8, v5

    if-ne v0, v13, :cond_47

    .line 466
    aget-byte v0, v8, v14

    and-int/lit8 v0, v0, 0x7f

    const/16 v1, 0x8

    shl-int/2addr v0, v1

    aget-byte v1, v8, v4

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 467
    aget-byte v1, v8, v14

    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntByteWithBit(BI)Z

    move-result v1

    if-nez v1, :cond_31

    neg-int v0, v0

    .line 471
    :cond_31
    div-int/lit8 v0, v0, 0xd

    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-lt v0, v11, :cond_32

    .line 473
    iput v11, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto/16 :goto_14

    :cond_32
    if-gt v0, v15, :cond_47

    .line 475
    iput v15, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto/16 :goto_14

    :pswitch_42
    const/16 v11, 0x28

    .line 450
    aget-byte v0, v8, v5

    if-ne v0, v13, :cond_47

    .line 451
    aget-byte v0, v8, v4

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x8

    shl-int/2addr v0, v1

    aget-byte v1, v8, v14

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    .line 453
    div-int/lit16 v0, v0, 0x91

    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-lt v0, v11, :cond_33

    .line 455
    iput v11, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto/16 :goto_14

    :cond_33
    if-gt v0, v15, :cond_47

    .line 457
    iput v15, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto/16 :goto_14

    :pswitch_43
    const/16 v11, 0x28

    .line 437
    aget-byte v0, v8, v5

    if-ne v0, v13, :cond_47

    .line 439
    aget-byte v0, v8, v4

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x8

    shl-int/2addr v0, v1

    aget-byte v1, v8, v14

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    .line 441
    div-int/lit16 v0, v0, 0xd4

    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-lt v0, v11, :cond_34

    .line 443
    iput v11, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto/16 :goto_14

    :cond_34
    if-gt v0, v15, :cond_47

    .line 445
    iput v15, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto/16 :goto_14

    :pswitch_44
    const/16 v11, 0x28

    .line 420
    aget-byte v0, v8, v5

    if-ne v0, v12, :cond_47

    const/16 v0, 0x8

    .line 422
    aget-byte v1, v8, v0

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v0

    aget-byte v0, v8, v10

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    .line 423
    div-int/lit8 v0, v0, 0xd

    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-le v0, v15, :cond_35

    if-ge v0, v11, :cond_35

    .line 426
    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto/16 :goto_14

    .line 427
    :cond_35
    iget v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-lt v0, v11, :cond_36

    .line 428
    iput v11, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto/16 :goto_14

    .line 429
    :cond_36
    iget v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-gt v0, v15, :cond_47

    .line 430
    iput v15, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto/16 :goto_14

    :pswitch_45
    const/16 v11, 0x28

    .line 402
    aget-byte v0, v8, v5

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_47

    const/16 v0, 0x8

    .line 404
    aget-byte v1, v8, v0

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v0

    aget-byte v0, v8, v10

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    .line 405
    div-int/lit8 v0, v0, 0xd

    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-le v0, v15, :cond_37

    if-ge v0, v11, :cond_37

    .line 408
    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto/16 :goto_14

    .line 409
    :cond_37
    iget v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-lt v0, v11, :cond_38

    .line 410
    iput v11, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto/16 :goto_14

    .line 411
    :cond_38
    iget v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-gt v0, v15, :cond_47

    .line 412
    iput v15, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto/16 :goto_14

    :pswitch_46
    const/16 v11, 0x28

    .line 384
    aget-byte v0, v8, v5

    if-ne v0, v12, :cond_47

    const/16 v0, 0x8

    .line 386
    aget-byte v1, v8, v0

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v0

    aget-byte v0, v8, v10

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    .line 387
    div-int/lit8 v0, v0, 0xd

    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-le v0, v15, :cond_39

    if-ge v0, v11, :cond_39

    .line 390
    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto/16 :goto_14

    .line 391
    :cond_39
    iget v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-lt v0, v11, :cond_3a

    .line 392
    iput v11, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto/16 :goto_14

    .line 393
    :cond_3a
    iget v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-gt v0, v15, :cond_47

    .line 394
    iput v15, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto/16 :goto_14

    :pswitch_47
    const/16 v11, 0x28

    .line 359
    aget-byte v0, v8, v5

    const/16 v1, 0x72

    if-ne v0, v1, :cond_47

    .line 362
    aget-byte v0, v8, v3

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    .line 363
    aget-byte v1, v8, v2

    and-int/lit16 v1, v1, 0xff

    int-to-short v1, v1

    if-lez v0, :cond_3b

    if-nez v1, :cond_3b

    .line 365
    div-int/2addr v0, v4

    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_12

    :cond_3b
    if-nez v0, :cond_3c

    if-lez v1, :cond_3c

    .line 368
    div-int/2addr v1, v4

    neg-int v0, v1

    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_12

    :cond_3c
    if-nez v0, :cond_3d

    if-nez v1, :cond_3d

    .line 370
    iput v9, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    .line 372
    :cond_3d
    :goto_12
    iget v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-le v0, v15, :cond_3e

    iget v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-ge v0, v11, :cond_3e

    .line 373
    iget v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    neg-int v0, v0

    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto/16 :goto_14

    .line 374
    :cond_3e
    iget v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-lt v0, v11, :cond_3f

    .line 375
    iput v15, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto/16 :goto_14

    .line 376
    :cond_3f
    iget v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-gt v0, v15, :cond_47

    .line 377
    iput v11, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto/16 :goto_14

    :pswitch_48
    const/16 v11, 0x28

    .line 334
    aget-byte v0, v8, v5

    const/16 v1, 0x72

    if-ne v0, v1, :cond_47

    .line 338
    aget-byte v0, v8, v3

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    .line 339
    aget-byte v1, v8, v2

    and-int/lit16 v1, v1, 0xff

    int-to-short v1, v1

    if-lez v0, :cond_40

    if-nez v1, :cond_40

    .line 341
    div-int/2addr v0, v3

    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_13

    :cond_40
    if-nez v0, :cond_41

    if-lez v1, :cond_41

    .line 344
    div-int/2addr v1, v3

    neg-int v0, v1

    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_13

    :cond_41
    if-nez v0, :cond_42

    if-nez v1, :cond_42

    .line 346
    iput v9, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    .line 348
    :cond_42
    :goto_13
    iget v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-le v0, v15, :cond_43

    iget v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-ge v0, v11, :cond_43

    .line 349
    iget v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    neg-int v0, v0

    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_14

    .line 350
    :cond_43
    iget v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-lt v0, v11, :cond_44

    .line 351
    iput v15, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_14

    .line 352
    :cond_44
    iget v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-gt v0, v15, :cond_47

    .line 353
    iput v11, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_14

    :pswitch_49
    const/16 v11, 0x28

    .line 313
    aget-byte v0, v8, v5

    const/16 v1, 0x72

    if-ne v0, v1, :cond_47

    .line 315
    aget-byte v0, v8, v3

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x8

    shl-int/2addr v0, v1

    aget-byte v1, v8, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    .line 316
    div-int/lit8 v0, v0, 0xd

    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-le v0, v15, :cond_45

    if-ge v0, v11, :cond_45

    .line 319
    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_14

    .line 320
    :cond_45
    iget v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-lt v0, v11, :cond_46

    .line 321
    iput v11, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_14

    .line 322
    :cond_46
    iget v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-gt v0, v15, :cond_47

    .line 323
    iput v15, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_14

    :pswitch_4a
    const/16 v11, 0x28

    .line 291
    aget-byte v0, v8, v5

    if-ne v0, v10, :cond_47

    const/4 v1, 0x1

    .line 309
    aget-byte v2, v8, v4

    aget-byte v3, v8, v14

    const/16 v4, 0xbaf

    const/16 v6, 0x700

    const/16 v10, 0x258

    move-object/from16 v0, p0

    move v12, v5

    move v5, v6

    move v6, v10

    invoke-direct/range {v0 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->setTrackDataLeftMidRightNew(ZIIIII)V

    goto/16 :goto_1b

    :cond_47
    :goto_14
    move v12, v5

    goto/16 :goto_1b

    :pswitch_4b
    move v12, v5

    const/16 v11, 0x28

    .line 259
    aget-byte v0, v8, v12

    if-ne v0, v10, :cond_5b

    .line 261
    aget-byte v0, v8, v14

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x8

    shl-int/2addr v0, v1

    aget-byte v1, v8, v4

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    .line 262
    div-int/lit8 v0, v0, 0xd

    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-le v0, v15, :cond_48

    if-ge v0, v11, :cond_48

    neg-int v0, v0

    .line 264
    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto/16 :goto_1b

    .line 265
    :cond_48
    iget v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-lt v0, v11, :cond_49

    .line 266
    iput v15, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto/16 :goto_1b

    .line 267
    :cond_49
    iget v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-gt v0, v15, :cond_5b

    .line 268
    iput v11, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto/16 :goto_1b

    :pswitch_4c
    move v12, v5

    const/16 v11, 0x28

    .line 243
    aget-byte v0, v8, v12

    const/16 v1, 0xa

    if-ne v0, v1, :cond_5b

    .line 245
    aget-byte v0, v8, v14

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x8

    shl-int/2addr v0, v1

    aget-byte v1, v8, v4

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    .line 246
    div-int/lit8 v0, v0, 0xd

    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-lt v0, v11, :cond_4a

    .line 248
    iput v11, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_15

    :cond_4a
    if-gt v0, v15, :cond_4b

    .line 250
    iput v15, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    .line 252
    :cond_4b
    :goto_15
    iget v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    neg-int v0, v0

    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto/16 :goto_1b

    :pswitch_4d
    move v12, v5

    const/16 v11, 0x28

    .line 229
    aget-byte v0, v8, v12

    if-ne v0, v13, :cond_5b

    .line 231
    aget-byte v0, v8, v4

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x8

    shl-int/2addr v0, v1

    aget-byte v1, v8, v14

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    .line 232
    div-int/lit8 v0, v0, 0x73

    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-lt v0, v11, :cond_4c

    .line 234
    iput v11, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto/16 :goto_1b

    :cond_4c
    if-gt v0, v15, :cond_5b

    .line 236
    iput v15, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto/16 :goto_1b

    :pswitch_4e
    move v12, v5

    const/16 v11, 0x28

    .line 209
    aget-byte v0, v8, v12

    if-ne v0, v13, :cond_5b

    .line 210
    aget-byte v0, v8, v4

    and-int/lit8 v0, v0, 0xf

    const/16 v1, 0x8

    shl-int/2addr v0, v1

    aget-byte v1, v8, v14

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_4d

    add-int/lit16 v0, v0, -0xfff

    .line 213
    div-int/lit8 v0, v0, 0xa

    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_16

    .line 215
    :cond_4d
    div-int/lit8 v0, v0, 0xa

    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    .line 217
    :goto_16
    iget v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-le v0, v15, :cond_4e

    iget v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-ge v0, v11, :cond_4e

    .line 218
    iget v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    neg-int v0, v0

    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto/16 :goto_1b

    .line 219
    :cond_4e
    iget v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-lt v0, v11, :cond_4f

    .line 220
    iput v15, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto/16 :goto_1b

    .line 221
    :cond_4f
    iget v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-gt v0, v15, :cond_5b

    .line 222
    iput v11, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto/16 :goto_1b

    :pswitch_4f
    move v12, v5

    const/16 v11, 0x28

    .line 197
    aget-byte v0, v8, v12

    if-ne v0, v13, :cond_5b

    .line 199
    aget-byte v0, v8, v4

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x8

    shl-int/2addr v0, v1

    aget-byte v1, v8, v14

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    .line 200
    div-int/lit8 v0, v0, 0x16

    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-lt v0, v11, :cond_50

    .line 202
    iput v11, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto/16 :goto_1b

    :cond_50
    if-gt v0, v15, :cond_5b

    .line 204
    iput v15, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto/16 :goto_1b

    :pswitch_50
    move v12, v5

    move v11, v6

    .line 552
    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isCanbusCmdPorting(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 553
    iget v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    return v0

    .line 555
    :cond_51
    aget-byte v0, v8, v14

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x8

    shl-int/2addr v0, v1

    aget-byte v1, v8, v12

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_52

    const v1, 0xffff

    sub-int/2addr v0, v1

    .line 558
    div-int/lit16 v0, v0, 0x88

    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_17

    .line 560
    :cond_52
    div-int/lit16 v0, v0, 0x88

    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    .line 562
    :goto_17
    iget v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-lt v0, v11, :cond_53

    .line 563
    iput v11, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_18

    .line 564
    :cond_53
    iget v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-gt v0, v15, :cond_54

    .line 565
    iput v15, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    .line 567
    :cond_54
    :goto_18
    iget v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    neg-int v0, v0

    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_1b

    :pswitch_51
    move v12, v5

    move v11, v6

    .line 495
    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isCanbusCmdPorting(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 496
    iget v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    return v0

    .line 498
    :cond_55
    aget-byte v0, v8, v12

    and-int/lit16 v0, v0, 0xff

    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-eqz v0, :cond_59

    const/16 v1, 0x80

    if-ne v0, v1, :cond_56

    goto :goto_19

    :cond_56
    if-lez v0, :cond_57

    const/16 v1, 0x32

    if-gt v0, v1, :cond_57

    mul-int/2addr v0, v11

    .line 502
    div-int/2addr v0, v1

    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_1a

    .line 503
    :cond_57
    iget v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    const/16 v1, 0x80

    if-le v0, v1, :cond_58

    iget v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    const/16 v2, 0xb2

    if-gt v0, v2, :cond_58

    .line 504
    iget v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    sub-int/2addr v0, v1

    mul-int/2addr v0, v11

    const/16 v1, 0x32

    div-int/2addr v0, v1

    neg-int v0, v0

    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_1a

    .line 506
    :cond_58
    iput v13, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_1a

    .line 500
    :cond_59
    :goto_19
    iput v9, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    .line 508
    :goto_1a
    iget v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-lt v0, v15, :cond_5a

    iget v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-gt v0, v11, :cond_5a

    .line 509
    iget v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    neg-int v0, v0

    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_1b

    .line 511
    :cond_5a
    iput v13, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    :cond_5b
    :goto_1b
    move v5, v12

    :goto_1c
    if-eqz v5, :cond_5c

    .line 977
    iget v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    return v0

    .line 980
    :cond_5c
    invoke-virtual/range {p0 .. p0}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->getMaxAngleTrack()I

    move-result v0

    .line 981
    invoke-virtual/range {p0 .. p0}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->getMaxAngleTrack()I

    move-result v1

    if-nez v1, :cond_5d

    .line 982
    iput v13, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto/16 :goto_23

    :cond_5d
    if-ne v0, v12, :cond_63

    .line 984
    aget-byte v0, v8, v12

    and-int/lit16 v0, v0, 0xff

    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-eqz v0, :cond_61

    const/16 v1, 0x80

    if-ne v0, v1, :cond_5e

    goto :goto_1d

    :cond_5e
    if-lez v0, :cond_5f

    const/16 v1, 0x20

    if-gt v0, v1, :cond_5f

    mul-int/2addr v0, v11

    .line 988
    div-int/2addr v0, v1

    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_1e

    .line 989
    :cond_5f
    iget v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    const/16 v1, 0x80

    if-le v0, v1, :cond_60

    iget v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    const/16 v2, 0xa0

    if-gt v0, v2, :cond_60

    .line 990
    iget v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    sub-int/2addr v0, v1

    mul-int/2addr v0, v11

    const/16 v1, 0x20

    div-int/2addr v0, v1

    neg-int v0, v0

    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_1e

    .line 992
    :cond_60
    iput v13, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_1e

    .line 986
    :cond_61
    :goto_1d
    iput v9, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    .line 994
    :goto_1e
    iget v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-lt v0, v15, :cond_62

    iget v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-gt v0, v11, :cond_62

    .line 995
    iget v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    neg-int v0, v0

    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto/16 :goto_23

    .line 997
    :cond_62
    iput v13, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto/16 :goto_23

    :cond_63
    if-ne v0, v12, :cond_69

    .line 1001
    aget-byte v0, v8, v12

    and-int/lit16 v0, v0, 0xff

    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-eqz v0, :cond_67

    const/16 v1, 0x80

    if-ne v0, v1, :cond_64

    goto :goto_1f

    :cond_64
    if-lez v0, :cond_65

    const/16 v1, 0x20

    if-gt v0, v1, :cond_65

    mul-int/2addr v0, v11

    .line 1005
    div-int/2addr v0, v1

    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_20

    .line 1006
    :cond_65
    iget v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    const/16 v1, 0x80

    if-le v0, v1, :cond_66

    iget v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    const/16 v2, 0xa0

    if-gt v0, v2, :cond_66

    .line 1007
    iget v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    sub-int/2addr v0, v1

    mul-int/2addr v0, v11

    const/16 v1, 0x20

    div-int/2addr v0, v1

    neg-int v0, v0

    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_20

    .line 1009
    :cond_66
    iput v13, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_20

    .line 1003
    :cond_67
    :goto_1f
    iput v9, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    .line 1011
    :goto_20
    iget v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-lt v0, v15, :cond_68

    iget v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-gt v0, v11, :cond_68

    .line 1012
    iget v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    neg-int v0, v0

    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto/16 :goto_23

    .line 1014
    :cond_68
    iput v13, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto/16 :goto_23

    :cond_69
    if-ne v0, v14, :cond_6d

    .line 1017
    aget-byte v0, v8, v12

    and-int/lit16 v0, v0, 0xff

    .line 1018
    aget-byte v1, v8, v14

    and-int/lit16 v1, v1, 0xff

    if-nez v0, :cond_6a

    if-nez v1, :cond_6a

    .line 1020
    iput v9, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto/16 :goto_23

    :cond_6a
    if-eqz v0, :cond_6b

    if-nez v1, :cond_6b

    .line 1022
    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto/16 :goto_23

    :cond_6b
    if-nez v0, :cond_6c

    if-eqz v1, :cond_6c

    neg-int v0, v1

    .line 1024
    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto/16 :goto_23

    .line 1026
    :cond_6c
    iput v13, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto/16 :goto_23

    .line 1029
    :cond_6d
    aget-byte v1, v8, v14

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x8

    shl-int/2addr v1, v2

    aget-byte v2, v8, v12

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    .line 1030
    div-int/lit8 v2, v0, 0x28

    const/16 v3, 0x17c

    if-eq v0, v3, :cond_73

    const/16 v3, 0x258

    if-eq v0, v3, :cond_71

    const/16 v3, 0x462

    if-eq v0, v3, :cond_71

    const/16 v3, 0x1200

    if-eq v0, v3, :cond_6f

    const/16 v3, 0x1400

    if-eq v0, v3, :cond_6f

    const/16 v3, 0x1e78

    if-eq v0, v3, :cond_71

    const/16 v3, 0x4b78

    if-eq v0, v3, :cond_6f

    const v0, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_6e

    const v0, 0xffff

    sub-int/2addr v1, v0

    .line 1068
    div-int/2addr v1, v2

    iput v1, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_22

    .line 1070
    :cond_6e
    div-int/2addr v1, v2

    iput v1, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_22

    :cond_6f
    const v0, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_70

    const v0, 0xffff

    sub-int/2addr v1, v0

    .line 1048
    div-int/2addr v1, v2

    iput v1, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_21

    .line 1050
    :cond_70
    div-int/2addr v1, v2

    iput v1, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    .line 1052
    :goto_21
    iget v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    neg-int v0, v0

    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_22

    :cond_71
    const v0, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_72

    const v0, 0xffff

    sub-int/2addr v1, v0

    .line 1037
    div-int/2addr v1, v2

    iput v1, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_22

    .line 1039
    :cond_72
    div-int/2addr v1, v2

    iput v1, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_22

    .line 1057
    :cond_73
    aget-byte v0, v8, v14

    and-int/lit8 v0, v0, 0xf

    const/16 v1, 0x8

    shl-int/2addr v0, v1

    aget-byte v1, v8, v12

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_74

    add-int/lit16 v0, v0, -0xfff

    .line 1059
    div-int/2addr v0, v2

    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_22

    .line 1061
    :cond_74
    div-int/2addr v0, v2

    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    .line 1075
    :goto_22
    iget v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-le v0, v15, :cond_75

    iget v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-ge v0, v11, :cond_75

    .line 1076
    iget v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    neg-int v0, v0

    iput v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_23

    .line 1077
    :cond_75
    iget v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-lt v0, v11, :cond_76

    .line 1078
    iput v15, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    goto :goto_23

    .line 1079
    :cond_76
    iget v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    if-gt v0, v15, :cond_77

    .line 1080
    iput v11, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1087
    :catch_0
    :cond_77
    :goto_23
    iget v0, v7, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/TrackInfo;->trackAngle:I

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x21
        :pswitch_51
        :pswitch_50
        :pswitch_50
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2c
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
        :pswitch_4b
        :pswitch_4b
        :pswitch_4b
        :pswitch_4b
        :pswitch_4a
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method
