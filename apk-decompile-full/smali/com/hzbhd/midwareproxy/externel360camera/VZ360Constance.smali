.class public Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;
.super Ljava/lang/Object;
.source "VZ360Constance.java"


# static fields
.field public static CANCEL:I

.field public static DOWN:I

.field public static ENTER:I

.field public static FOCUS_add:I

.field public static FOCUS_minus:I

.field public static INFO:I

.field public static IRIS_add:I

.field public static IRIS_minus:I

.field public static LEFT:I

.field public static LOGIN:I

.field public static NEXT:I

.field public static PINP:I

.field public static PLAY:I

.field public static POWER:I

.field public static PREV:I

.field public static PTZAUTO:I

.field public static RECORD:I

.field public static RETURN:I

.field public static RIGHT:I

.field public static STOP:I

.field static TAG:Ljava/lang/String;

.field public static UP:I

.field public static ZOOM_add:I

.field public static ZOOM_minus:I

.field public static comds_0:I

.field public static comds_1:I

.field public static comds_2:I

.field public static comds_3:I

.field public static comds_4:I

.field public static comds_5:I

.field public static comds_6:I

.field public static comds_7:I

.field public static comds_8:I

.field public static comds_9:I

.field public static comds_add:I

.field public static comds_minus:I

.field public static headCode:I

.field public static mcu_protocol:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-class v0, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->TAG:Ljava/lang/String;

    const v0, 0xcc1d

    .line 15
    sput v0, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->headCode:I

    const/16 v0, 0xff

    .line 17
    sput v0, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->POWER:I

    const/16 v0, 0x1fe

    .line 18
    sput v0, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->LOGIN:I

    const/16 v0, 0x11ee

    .line 19
    sput v0, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->comds_1:I

    const/16 v0, 0x12ed

    .line 20
    sput v0, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->comds_2:I

    const/16 v0, 0x13ec

    .line 21
    sput v0, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->comds_3:I

    const/16 v0, 0x14eb

    .line 22
    sput v0, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->comds_4:I

    const/16 v0, 0x15ea

    .line 23
    sput v0, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->comds_5:I

    const/16 v0, 0x16e9

    .line 24
    sput v0, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->comds_6:I

    const/16 v0, 0x17e8

    .line 25
    sput v0, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->comds_7:I

    const/16 v0, 0x18e7

    .line 26
    sput v0, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->comds_8:I

    const/16 v0, 0x19e6

    .line 27
    sput v0, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->comds_9:I

    const/16 v0, 0x1be4

    .line 28
    sput v0, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->comds_0:I

    const/16 v0, 0x10ef

    .line 29
    sput v0, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->comds_add:I

    const/16 v0, 0x1ae5

    .line 30
    sput v0, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->comds_minus:I

    const/16 v0, 0x2fd

    .line 31
    sput v0, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->INFO:I

    const/16 v0, 0x3fc

    .line 32
    sput v0, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->PINP:I

    const/16 v0, 0x5fa

    .line 33
    sput v0, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->UP:I

    const/16 v0, 0x7f8

    .line 34
    sput v0, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->LEFT:I

    const/16 v0, 0x4fb

    .line 35
    sput v0, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->ENTER:I

    const/16 v0, 0x8f7

    .line 36
    sput v0, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->RIGHT:I

    const/16 v0, 0x6f9

    .line 37
    sput v0, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->DOWN:I

    const/16 v0, 0x9f6

    .line 38
    sput v0, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->RETURN:I

    const/16 v0, 0xaf5

    .line 39
    sput v0, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->CANCEL:I

    const/16 v0, 0x20df

    .line 40
    sput v0, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->PREV:I

    const/16 v0, 0x21de

    .line 41
    sput v0, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->PLAY:I

    const/16 v0, 0x22dd

    .line 42
    sput v0, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->NEXT:I

    const/16 v0, 0x23dc

    .line 43
    sput v0, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->RECORD:I

    const/16 v0, 0x24db

    .line 44
    sput v0, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->ZOOM_add:I

    const/16 v0, 0x25da

    .line 45
    sput v0, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->FOCUS_add:I

    const/16 v0, 0x26d9

    .line 46
    sput v0, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->IRIS_add:I

    const/16 v0, 0x27d8

    .line 47
    sput v0, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->STOP:I

    const/16 v0, 0x28d7

    .line 48
    sput v0, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->ZOOM_minus:I

    const/16 v0, 0x29d6

    .line 49
    sput v0, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->FOCUS_minus:I

    const/16 v0, 0x2ad5

    .line 50
    sput v0, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->IRIS_minus:I

    const/16 v0, 0x2bd4

    .line 51
    sput v0, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->PTZAUTO:I

    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 53
    fill-array-data v0, :array_0

    sput-object v0, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->mcu_protocol:[B

    return-void

    :array_0
    .array-data 1
        -0x38t
        0x6t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteMerger([B[B[B)[B
    .locals 5

    .line 79
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v1, v0, [B

    .line 80
    sget-object v2, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " , byteMerger : "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " , "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    array-length v0, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 82
    array-length v0, p0

    array-length v3, p1

    invoke-static {p1, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 83
    array-length p0, p0

    array-length p1, p1

    add-int/2addr p0, p1

    array-length p1, p2

    invoke-static {p2, v2, v1, p0, p1}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-object v1
.end method

.method public static getBytes(I)[B
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [B

    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v1, 0x1

    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static isVZ360Camera()Ljava/lang/Boolean;
    .locals 4

    .line 87
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->EXTERNAL_360_CAM:Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getSharedInt(Ljava/lang/String;)I

    move-result v0

    .line 88
    sget-object v1, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "external360CamType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 89
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static sendMDs(I)V
    .locals 3

    .line 61
    sget v0, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->headCode:I

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->getBytes(I)[B

    move-result-object v0

    .line 62
    invoke-static {p0}, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->getBytes(I)[B

    move-result-object p0

    .line 63
    sget-object v1, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->mcu_protocol:[B

    invoke-static {v1, v0, p0}, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->byteMerger([B[B[B)[B

    move-result-object p0

    .line 64
    sget-object v0, Lcom/hzbhd/midwareproxy/externel360camera/VZ360Constance;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendMDs : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p0

    invoke-static {p0, v2}, Lcom/hzbhd/misc/jni/FgeString;->bytes2HexString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reqMcuKey([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 68
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method
