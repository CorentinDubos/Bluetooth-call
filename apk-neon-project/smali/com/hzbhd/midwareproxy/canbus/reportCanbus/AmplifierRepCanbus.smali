.class public Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;
.super Ljava/lang/Object;
.source "AmplifierRepCanbus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$AmplifierBean;,
        Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$Bean;
    }
.end annotation


# static fields
.field static mRadio:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;


# instance fields
.field private amplifier_bass:B

.field private amplifier_effect:B

.field private amplifier_front_rear:B

.field private amplifier_left_right:B

.field private amplifier_middle:B

.field private amplifier_treble:B

.field private balaceFix:B

.field cmdList:[[B

.field isHaveAmp:Z

.field private mKey:Ljava/lang/String;

.field private mValue:I

.field public recBal:I

.field public recBass:I

.field public recFad:I

.field public recMid:I

.field public recTre:I

.field private trebFix:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;

    invoke-direct {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;-><init>()V

    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->mRadio:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->trebFix:B

    .line 24
    iput-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->balaceFix:B

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x2

    new-array v2, v2, [B

    .line 1095
    fill-array-data v2, :array_0

    aput-object v2, v1, v0

    iput-object v1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->cmdList:[[B

    .line 1096
    iput-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->isHaveAmp:Z

    return-void

    :array_0
    .array-data 1
        0x1t
        0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;)Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;)I
    .locals 0

    .line 20
    iget p0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->mValue:I

    return p0
.end method

.method private getAllInitDatas(Landroid/content/Context;)V
    .locals 1

    .line 1265
    invoke-direct {p0, p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->getCanbusAmpBal(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->recBal:I

    .line 1266
    invoke-direct {p0, p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->getCanbusAmpFad(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->recFad:I

    .line 1267
    invoke-direct {p0, p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->getCanbusAmpBass(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->recBass:I

    .line 1268
    invoke-direct {p0, p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->getCanbusAmpMid(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->recMid:I

    .line 1269
    invoke-direct {p0, p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->getCanbusAmpTre(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->recTre:I

    return-void
.end method

.method private getAmpCmd(Ljava/lang/String;)B
    .locals 1

    const-string v0, "amplifier_bass"

    .line 1484
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1485
    iget-byte p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_bass:B

    return p1

    :cond_0
    const-string v0, "amplifier_middle"

    .line 1486
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1487
    iget-byte p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_middle:B

    return p1

    :cond_1
    const-string v0, "amplifier_treble"

    .line 1488
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1489
    iget-byte p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_treble:B

    return p1

    :cond_2
    const-string v0, "amplifier_left_right"

    .line 1490
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1491
    iget-byte p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_left_right:B

    return p1

    :cond_3
    const-string v0, "amplifier_front_rear"

    .line 1492
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1493
    iget-byte p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_front_rear:B

    return p1

    :cond_4
    const-string v0, "amplifier_effect"

    .line 1494
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1495
    iget-byte p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_effect:B

    return p1

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method private getAmpInitCmdList()[[B
    .locals 14

    .line 1099
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$3;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x8

    const/4 v2, 0x7

    const/16 v3, -0x60

    const/16 v4, -0x53

    const/16 v5, -0x7c

    const/4 v6, 0x6

    const/4 v7, 0x5

    const/16 v8, 0x16

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x3

    const/4 v12, 0x1

    const/4 v13, 0x4

    packed-switch v0, :pswitch_data_0

    .line 1259
    :pswitch_0
    iput-boolean v9, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->isHaveAmp:Z

    .line 1260
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->cmdList:[[B

    return-object v0

    .line 1248
    :pswitch_1
    iput-boolean v12, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->isHaveAmp:Z

    new-array v0, v6, [[B

    new-array v1, v13, [B

    .line 1249
    fill-array-data v1, :array_0

    aput-object v1, v0, v9

    new-array v1, v13, [B

    aput-byte v8, v1, v9

    aput-byte v5, v1, v12

    aput-byte v11, v1, v10

    iget v3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->recFad:I

    int-to-byte v3, v3

    aput-byte v3, v1, v11

    aput-object v1, v0, v12

    new-array v1, v13, [B

    aput-byte v8, v1, v9

    aput-byte v5, v1, v12

    aput-byte v13, v1, v10

    iget v3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->recBal:I

    int-to-byte v3, v3

    aput-byte v3, v1, v11

    aput-object v1, v0, v10

    new-array v1, v13, [B

    aput-byte v8, v1, v9

    aput-byte v5, v1, v12

    aput-byte v7, v1, v10

    iget v3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->recBass:I

    int-to-byte v3, v3

    aput-byte v3, v1, v11

    aput-object v1, v0, v11

    new-array v1, v13, [B

    aput-byte v8, v1, v9

    aput-byte v5, v1, v12

    aput-byte v6, v1, v10

    iget v3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->recTre:I

    int-to-byte v3, v3

    aput-byte v3, v1, v11

    aput-object v1, v0, v13

    new-array v1, v13, [B

    aput-byte v8, v1, v9

    aput-byte v5, v1, v12

    aput-byte v2, v1, v10

    iget v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->recMid:I

    int-to-byte v2, v2

    aput-byte v2, v1, v11

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->cmdList:[[B

    return-object v0

    .line 1217
    :pswitch_2
    iput-boolean v12, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->isHaveAmp:Z

    new-array v0, v6, [[B

    new-array v1, v13, [B

    .line 1218
    fill-array-data v1, :array_1

    aput-object v1, v0, v9

    new-array v1, v13, [B

    aput-byte v8, v1, v9

    aput-byte v4, v1, v12

    aput-byte v10, v1, v10

    iget v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->recBal:I

    int-to-byte v2, v2

    aput-byte v2, v1, v11

    aput-object v1, v0, v12

    new-array v1, v13, [B

    aput-byte v8, v1, v9

    aput-byte v4, v1, v12

    aput-byte v11, v1, v10

    iget v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->recFad:I

    int-to-byte v2, v2

    aput-byte v2, v1, v11

    aput-object v1, v0, v10

    new-array v1, v13, [B

    aput-byte v8, v1, v9

    aput-byte v4, v1, v12

    aput-byte v13, v1, v10

    iget v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->recBass:I

    int-to-byte v2, v2

    aput-byte v2, v1, v11

    aput-object v1, v0, v11

    new-array v1, v13, [B

    aput-byte v8, v1, v9

    aput-byte v4, v1, v12

    aput-byte v7, v1, v10

    iget v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->recMid:I

    int-to-byte v2, v2

    aput-byte v2, v1, v11

    aput-object v1, v0, v13

    new-array v1, v13, [B

    aput-byte v8, v1, v9

    aput-byte v4, v1, v12

    aput-byte v6, v1, v10

    iget v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->recTre:I

    int-to-byte v2, v2

    aput-byte v2, v1, v11

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->cmdList:[[B

    return-object v0

    .line 1120
    :pswitch_3
    iput-boolean v12, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->isHaveAmp:Z

    new-array v0, v6, [[B

    new-array v1, v13, [B

    aput-byte v8, v1, v9

    aput-byte v4, v1, v12

    aput-byte v10, v1, v10

    .line 1121
    iget v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->recBal:I

    int-to-byte v2, v2

    aput-byte v2, v1, v11

    aput-object v1, v0, v9

    new-array v1, v13, [B

    aput-byte v8, v1, v9

    aput-byte v4, v1, v12

    aput-byte v11, v1, v10

    iget v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->recFad:I

    int-to-byte v2, v2

    aput-byte v2, v1, v11

    aput-object v1, v0, v12

    new-array v1, v13, [B

    aput-byte v8, v1, v9

    aput-byte v4, v1, v12

    aput-byte v13, v1, v10

    iget v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->recBass:I

    int-to-byte v2, v2

    aput-byte v2, v1, v11

    aput-object v1, v0, v10

    new-array v1, v13, [B

    aput-byte v8, v1, v9

    aput-byte v4, v1, v12

    aput-byte v7, v1, v10

    iget v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->recMid:I

    int-to-byte v2, v2

    aput-byte v2, v1, v11

    aput-object v1, v0, v11

    new-array v1, v13, [B

    aput-byte v8, v1, v9

    aput-byte v4, v1, v12

    aput-byte v6, v1, v10

    iget v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->recTre:I

    int-to-byte v2, v2

    aput-byte v2, v1, v11

    aput-object v1, v0, v13

    new-array v1, v13, [B

    fill-array-data v1, :array_2

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->cmdList:[[B

    return-object v0

    .line 1154
    :pswitch_4
    iput-boolean v12, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->isHaveAmp:Z

    new-array v0, v12, [[B

    new-array v1, v2, [B

    aput-byte v8, v1, v9

    const/16 v2, -0x7b

    aput-byte v2, v1, v12

    .line 1155
    iget v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->recFad:I

    int-to-byte v2, v2

    aput-byte v2, v1, v10

    iget v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->recBal:I

    int-to-byte v2, v2

    aput-byte v2, v1, v11

    iget v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->recTre:I

    int-to-byte v2, v2

    aput-byte v2, v1, v13

    iget v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->recMid:I

    int-to-byte v2, v2

    aput-byte v2, v1, v7

    iget v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->recBass:I

    int-to-byte v2, v2

    aput-byte v2, v1, v6

    aput-object v1, v0, v9

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->cmdList:[[B

    return-object v0

    .line 1141
    :pswitch_5
    iput-boolean v12, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->isHaveAmp:Z

    new-array v0, v12, [[B

    new-array v1, v1, [B

    aput-byte v8, v1, v9

    const/16 v3, -0x39

    aput-byte v3, v1, v12

    aput-byte v9, v1, v10

    .line 1142
    iget v3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->recFad:I

    int-to-byte v3, v3

    aput-byte v3, v1, v11

    iget v3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->recBal:I

    int-to-byte v3, v3

    aput-byte v3, v1, v13

    iget v3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->recTre:I

    int-to-byte v3, v3

    aput-byte v3, v1, v7

    iget v3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->recMid:I

    int-to-byte v3, v3

    aput-byte v3, v1, v6

    iget v3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->recBass:I

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    aput-object v1, v0, v9

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->cmdList:[[B

    return-object v0

    .line 1146
    :pswitch_6
    iput-boolean v12, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->isHaveAmp:Z

    new-array v0, v11, [[B

    new-array v3, v11, [B

    .line 1147
    fill-array-data v3, :array_3

    aput-object v3, v0, v9

    new-array v3, v13, [B

    aput-byte v8, v3, v9

    aput-byte v2, v3, v12

    iget v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->recFad:I

    int-to-byte v2, v2

    aput-byte v2, v3, v10

    iget v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->recBal:I

    int-to-byte v2, v2

    aput-byte v2, v3, v11

    aput-object v3, v0, v12

    new-array v2, v7, [B

    aput-byte v8, v2, v9

    aput-byte v1, v2, v12

    iget v1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->recBass:I

    int-to-byte v1, v1

    aput-byte v1, v2, v10

    iget v1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->recMid:I

    int-to-byte v1, v1

    aput-byte v1, v2, v11

    iget v1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->recTre:I

    int-to-byte v1, v1

    aput-byte v1, v2, v13

    aput-object v2, v0, v10

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->cmdList:[[B

    return-object v0

    .line 1194
    :pswitch_7
    iput-boolean v12, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->isHaveAmp:Z

    new-array v0, v12, [[B

    const/16 v3, 0x9

    new-array v3, v3, [B

    aput-byte v8, v3, v9

    const/16 v4, -0x7d

    aput-byte v4, v3, v12

    const/16 v4, 0x14

    aput-byte v4, v3, v10

    .line 1195
    iget v4, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->recBass:I

    int-to-byte v4, v4

    aput-byte v4, v3, v11

    iget v4, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->recMid:I

    int-to-byte v4, v4

    aput-byte v4, v3, v13

    iget v4, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->recTre:I

    int-to-byte v4, v4

    aput-byte v4, v3, v7

    iget v4, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->recBal:I

    int-to-byte v4, v4

    aput-byte v4, v3, v6

    iget v4, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->recFad:I

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    aput-byte v9, v3, v1

    aput-object v3, v0, v9

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->cmdList:[[B

    return-object v0

    .line 1227
    :pswitch_8
    iput-boolean v12, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->isHaveAmp:Z

    new-array v0, v6, [[B

    new-array v1, v13, [B

    .line 1228
    fill-array-data v1, :array_4

    aput-object v1, v0, v9

    new-array v1, v13, [B

    aput-byte v8, v1, v9

    aput-byte v3, v1, v12

    aput-byte v12, v1, v10

    iget v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->recBal:I

    int-to-byte v2, v2

    aput-byte v2, v1, v11

    aput-object v1, v0, v12

    new-array v1, v13, [B

    aput-byte v8, v1, v9

    aput-byte v3, v1, v12

    aput-byte v10, v1, v10

    iget v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->recFad:I

    int-to-byte v2, v2

    aput-byte v2, v1, v11

    aput-object v1, v0, v10

    new-array v1, v13, [B

    aput-byte v8, v1, v9

    aput-byte v3, v1, v12

    aput-byte v11, v1, v10

    iget v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->recBass:I

    int-to-byte v2, v2

    aput-byte v2, v1, v11

    aput-object v1, v0, v11

    new-array v1, v13, [B

    aput-byte v8, v1, v9

    aput-byte v3, v1, v12

    aput-byte v13, v1, v10

    iget v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->recTre:I

    int-to-byte v2, v2

    aput-byte v2, v1, v11

    aput-object v1, v0, v13

    new-array v1, v13, [B

    aput-byte v8, v1, v9

    aput-byte v3, v1, v12

    aput-byte v7, v1, v10

    iget v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->recMid:I

    int-to-byte v2, v2

    aput-byte v2, v1, v11

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->cmdList:[[B

    return-object v0

    .line 1237
    :pswitch_9
    iput-boolean v12, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->isHaveAmp:Z

    new-array v0, v6, [[B

    new-array v1, v13, [B

    .line 1238
    fill-array-data v1, :array_5

    aput-object v1, v0, v9

    new-array v1, v13, [B

    aput-byte v8, v1, v9

    aput-byte v3, v1, v12

    aput-byte v12, v1, v10

    iget v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->recBal:I

    int-to-byte v2, v2

    aput-byte v2, v1, v11

    aput-object v1, v0, v12

    new-array v1, v13, [B

    aput-byte v8, v1, v9

    aput-byte v3, v1, v12

    aput-byte v10, v1, v10

    iget v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->recFad:I

    int-to-byte v2, v2

    aput-byte v2, v1, v11

    aput-object v1, v0, v10

    new-array v1, v13, [B

    aput-byte v8, v1, v9

    aput-byte v3, v1, v12

    aput-byte v11, v1, v10

    iget v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->recBass:I

    int-to-byte v2, v2

    aput-byte v2, v1, v11

    aput-object v1, v0, v11

    new-array v1, v13, [B

    aput-byte v8, v1, v9

    aput-byte v3, v1, v12

    aput-byte v13, v1, v10

    iget v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->recMid:I

    int-to-byte v2, v2

    aput-byte v2, v1, v11

    aput-object v1, v0, v13

    new-array v1, v13, [B

    aput-byte v8, v1, v9

    aput-byte v3, v1, v12

    aput-byte v7, v1, v10

    iget v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->recTre:I

    int-to-byte v2, v2

    aput-byte v2, v1, v11

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->cmdList:[[B

    return-object v0

    .line 1111
    :pswitch_a
    iput-boolean v12, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->isHaveAmp:Z

    new-array v0, v7, [[B

    new-array v1, v13, [B

    aput-byte v8, v1, v9

    aput-byte v4, v1, v12

    aput-byte v10, v1, v10

    .line 1112
    iget v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->recBal:I

    int-to-byte v2, v2

    aput-byte v2, v1, v11

    aput-object v1, v0, v9

    new-array v1, v13, [B

    aput-byte v8, v1, v9

    aput-byte v4, v1, v12

    aput-byte v11, v1, v10

    iget v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->recFad:I

    int-to-byte v2, v2

    aput-byte v2, v1, v11

    aput-object v1, v0, v12

    new-array v1, v13, [B

    aput-byte v8, v1, v9

    aput-byte v4, v1, v12

    aput-byte v13, v1, v10

    iget v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->recBass:I

    int-to-byte v2, v2

    aput-byte v2, v1, v11

    aput-object v1, v0, v10

    new-array v1, v13, [B

    aput-byte v8, v1, v9

    aput-byte v4, v1, v12

    aput-byte v7, v1, v10

    iget v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->recMid:I

    int-to-byte v2, v2

    aput-byte v2, v1, v11

    aput-object v1, v0, v11

    new-array v1, v13, [B

    aput-byte v8, v1, v9

    aput-byte v4, v1, v12

    aput-byte v6, v1, v10

    iget v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->recTre:I

    int-to-byte v2, v2

    aput-byte v2, v1, v11

    aput-object v1, v0, v13

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->cmdList:[[B

    return-object v0

    .line 1181
    :pswitch_b
    iput-boolean v12, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->isHaveAmp:Z

    new-array v0, v2, [[B

    new-array v1, v13, [B

    .line 1182
    fill-array-data v1, :array_6

    aput-object v1, v0, v9

    new-array v1, v13, [B

    fill-array-data v1, :array_7

    aput-object v1, v0, v12

    new-array v1, v13, [B

    aput-byte v8, v1, v9

    aput-byte v5, v1, v12

    aput-byte v11, v1, v10

    iget v3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->recFad:I

    int-to-byte v3, v3

    aput-byte v3, v1, v11

    aput-object v1, v0, v10

    new-array v1, v13, [B

    aput-byte v8, v1, v9

    aput-byte v5, v1, v12

    aput-byte v13, v1, v10

    iget v3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->recBal:I

    int-to-byte v3, v3

    aput-byte v3, v1, v11

    aput-object v1, v0, v11

    new-array v1, v13, [B

    aput-byte v8, v1, v9

    aput-byte v5, v1, v12

    aput-byte v7, v1, v10

    iget v3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->recBass:I

    int-to-byte v3, v3

    aput-byte v3, v1, v11

    aput-object v1, v0, v13

    new-array v1, v13, [B

    aput-byte v8, v1, v9

    aput-byte v5, v1, v12

    aput-byte v6, v1, v10

    iget v3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->recTre:I

    int-to-byte v3, v3

    aput-byte v3, v1, v11

    aput-object v1, v0, v7

    new-array v1, v13, [B

    aput-byte v8, v1, v9

    aput-byte v5, v1, v12

    aput-byte v2, v1, v10

    iget v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->recMid:I

    int-to-byte v2, v2

    aput-byte v2, v1, v11

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->cmdList:[[B

    return-object v0

    .line 1204
    :pswitch_c
    iput-boolean v12, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->isHaveAmp:Z

    new-array v0, v1, [[B

    new-array v1, v13, [B

    .line 1205
    fill-array-data v1, :array_8

    aput-object v1, v0, v9

    new-array v1, v13, [B

    aput-byte v8, v1, v9

    const/16 v3, -0x6d

    aput-byte v3, v1, v12

    aput-byte v10, v1, v10

    iget v4, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->recBal:I

    int-to-byte v4, v4

    aput-byte v4, v1, v11

    aput-object v1, v0, v12

    new-array v1, v13, [B

    aput-byte v8, v1, v9

    aput-byte v3, v1, v12

    aput-byte v11, v1, v10

    iget v4, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->recFad:I

    int-to-byte v4, v4

    aput-byte v4, v1, v11

    aput-object v1, v0, v10

    new-array v1, v13, [B

    aput-byte v8, v1, v9

    aput-byte v3, v1, v12

    aput-byte v13, v1, v10

    iget v4, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->recBass:I

    int-to-byte v4, v4

    aput-byte v4, v1, v11

    aput-object v1, v0, v11

    new-array v1, v13, [B

    aput-byte v8, v1, v9

    aput-byte v3, v1, v12

    aput-byte v7, v1, v10

    iget v4, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->recMid:I

    int-to-byte v4, v4

    aput-byte v4, v1, v11

    aput-object v1, v0, v13

    new-array v1, v13, [B

    aput-byte v8, v1, v9

    aput-byte v3, v1, v12

    aput-byte v6, v1, v10

    iget v3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->recTre:I

    int-to-byte v3, v3

    aput-byte v3, v1, v11

    aput-object v1, v0, v7

    new-array v1, v13, [B

    fill-array-data v1, :array_9

    aput-object v1, v0, v6

    new-array v1, v13, [B

    fill-array-data v1, :array_a

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->cmdList:[[B

    return-object v0

    .line 1166
    :pswitch_d
    iput-boolean v12, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->isHaveAmp:Z

    new-array v0, v2, [[B

    new-array v1, v13, [B

    aput-byte v8, v1, v9

    aput-byte v5, v1, v12

    aput-byte v12, v1, v10

    .line 1167
    iget v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->recFad:I

    int-to-byte v2, v2

    aput-byte v2, v1, v11

    aput-object v1, v0, v9

    new-array v1, v13, [B

    aput-byte v8, v1, v9

    aput-byte v5, v1, v12

    aput-byte v10, v1, v10

    iget v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->recBal:I

    int-to-byte v2, v2

    aput-byte v2, v1, v11

    aput-object v1, v0, v12

    new-array v1, v13, [B

    aput-byte v8, v1, v9

    aput-byte v5, v1, v12

    aput-byte v13, v1, v10

    iget v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->recBass:I

    int-to-byte v2, v2

    aput-byte v2, v1, v11

    aput-object v1, v0, v10

    new-array v1, v13, [B

    aput-byte v8, v1, v9

    aput-byte v5, v1, v12

    aput-byte v7, v1, v10

    iget v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->recTre:I

    int-to-byte v2, v2

    aput-byte v2, v1, v11

    aput-object v1, v0, v11

    new-array v1, v13, [B

    aput-byte v8, v1, v9

    aput-byte v5, v1, v12

    aput-byte v6, v1, v10

    iget v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->recMid:I

    int-to-byte v2, v2

    aput-byte v2, v1, v11

    aput-object v1, v0, v13

    new-array v1, v13, [B

    fill-array-data v1, :array_b

    aput-object v1, v0, v7

    new-array v1, v13, [B

    fill-array-data v1, :array_c

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->cmdList:[[B

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_0
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_c
        :pswitch_a
        :pswitch_7
        :pswitch_7
        :pswitch_7
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
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_a
        :pswitch_0
        :pswitch_a
        :pswitch_3
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_b
    .end packed-switch

    :array_0
    .array-data 1
        0x16t
        -0x7ct
        0x1t
        0x1t
    .end array-data

    :array_1
    .array-data 1
        0x16t
        -0x53t
        0x1t
        0x20t
    .end array-data

    :array_2
    .array-data 1
        0x16t
        -0x53t
        0x1t
        0x12t
    .end array-data

    :array_3
    .array-data 1
        0x16t
        0x5t
        0x1ct
    .end array-data

    :array_4
    .array-data 1
        0x16t
        -0x60t
        0x0t
        0x14t
    .end array-data

    :array_5
    .array-data 1
        0x16t
        -0x60t
        0x0t
        0x1ct
    .end array-data

    :array_6
    .array-data 1
        0x16t
        -0x7ct
        0x1t
        0x1t
    .end array-data

    :array_7
    .array-data 1
        0x16t
        -0x7ct
        0x2t
        0x14t
    .end array-data

    :array_8
    .array-data 1
        0x16t
        -0x6dt
        0x1t
        0x13t
    .end array-data

    :array_9
    .array-data 1
        0x16t
        -0x6dt
        0xat
        0x1t
    .end array-data

    :array_a
    .array-data 1
        0x16t
        -0x6dt
        0xbt
        0x1t
    .end array-data

    :array_b
    .array-data 1
        0x16t
        -0x7ct
        0x7t
        0x36t
    .end array-data

    :array_c
    .array-data 1
        0x16t
        -0x7ct
        0x8t
        0x1t
    .end array-data
.end method

.method private getCanbusAmpBal(Landroid/content/Context;)I
    .locals 2

    .line 1368
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->CANBUS_AMP_VAL_BAL:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->getMidBalVal()B

    move-result v1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method private getCanbusAmpBass(Landroid/content/Context;)I
    .locals 2

    .line 1378
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->CANBUS_AMP_VAL_BASS:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->getMidTreVal()B

    move-result v1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method private getCanbusAmpFad(Landroid/content/Context;)I
    .locals 2

    .line 1373
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->CANBUS_AMP_VAL_FAD:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->getMidBalVal()B

    move-result v1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method private getCanbusAmpMid(Landroid/content/Context;)I
    .locals 2

    .line 1383
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->CANBUS_AMP_VAL_MID:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->getMidTreVal()B

    move-result v1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method private getCanbusAmpTre(Landroid/content/Context;)I
    .locals 2

    .line 1388
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->CANBUS_AMP_VAL_TRE:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->getMidTreVal()B

    move-result v1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public static declared-synchronized getInstance()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;
    .locals 2

    const-class v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;

    monitor-enter v0

    .line 41
    :try_start_0
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->mRadio:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;

    if-nez v1, :cond_0

    .line 42
    new-instance v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;

    invoke-direct {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;-><init>()V

    sput-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->mRadio:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;

    .line 44
    :cond_0
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->mRadio:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private initCanbusAmpCmd()V
    .locals 2

    .line 1398
    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->getAmpInitCmdList()[[B

    .line 1399
    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$2;

    invoke-direct {v0, p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$2;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;)V

    .line 1413
    iget-boolean v1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->isHaveAmp:Z

    if-eqz v1, :cond_0

    .line 1414
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method private saveAmpCmdVals(Landroid/content/Context;Ljava/lang/String;B)V
    .locals 6

    .line 1343
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "amplifier_front_rear"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v5

    goto :goto_1

    :sswitch_1
    const-string v0, "amplifier_treble"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v2

    goto :goto_1

    :sswitch_2
    const-string v0, "amplifier_middle"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v3

    goto :goto_1

    :sswitch_3
    const-string v0, "amplifier_effect"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v1

    goto :goto_1

    :sswitch_4
    const-string v0, "amplifier_bass"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v4

    goto :goto_1

    :sswitch_5
    const-string v0, "amplifier_left_right"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p2, -0x1

    :goto_1
    if-eqz p2, :cond_6

    if-eq p2, v5, :cond_5

    if-eq p2, v4, :cond_4

    if-eq p2, v3, :cond_3

    if-eq p2, v2, :cond_2

    if-eq p2, v1, :cond_1

    goto :goto_2

    .line 1361
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->CANBUS_AMP_VAL_EFFECT:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 1358
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->CANBUS_AMP_VAL_TRE:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 1355
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->CANBUS_AMP_VAL_MID:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 1351
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " amplifier_bass value="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "saveAmpCmdVals"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->CANBUS_AMP_VAL_BASS:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 1348
    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->CANBUS_AMP_VAL_FAD:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 1345
    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->CANBUS_AMP_VAL_BAL:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5227998e -> :sswitch_5
        -0x27737413 -> :sswitch_4
        -0x1307cce1 -> :sswitch_3
        -0x537acdd -> :sswitch_2
        0x7397fe2 -> :sswitch_1
        0x7eca888 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public getMidBalVal()B
    .locals 2

    .line 1031
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$3;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    const/16 v0, 0x10

    return v0

    :pswitch_2
    const/16 v0, 0x9

    return v0

    :pswitch_3
    const/16 v0, 0xa

    return v0

    :pswitch_4
    const/16 v0, 0xb

    return v0

    :pswitch_5
    const/4 v0, 0x7

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
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
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public getMidTreVal()B
    .locals 2

    .line 965
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$3;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    const/16 v0, 0x10

    return v0

    :pswitch_2
    const/16 v0, 0x9

    return v0

    :pswitch_3
    const/4 v0, 0x6

    return v0

    :pswitch_4
    const/16 v0, 0xa

    return v0

    :pswitch_5
    const/4 v0, 0x7

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public getPowerBean()[Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$Bean;
    .locals 22

    const/4 v0, 0x7

    new-array v1, v0, [Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$Bean;

    .line 48
    new-instance v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$Bean;

    const-string v4, "eq_type_flat"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$Bean;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;Ljava/lang/String;III)V

    const/4 v2, 0x0

    aput-object v8, v1, v2

    new-instance v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$Bean;

    const-string v11, "eq_type_pop"

    const/4 v12, 0x4

    const/4 v13, -0x2

    const/4 v14, 0x5

    move-object v9, v3

    move-object/from16 v10, p0

    invoke-direct/range {v9 .. v14}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$Bean;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;Ljava/lang/String;III)V

    const/4 v4, 0x1

    aput-object v3, v1, v4

    new-instance v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$Bean;

    const-string v7, "eq_type_techno"

    const/4 v8, 0x5

    const/4 v9, 0x0

    const/4 v10, 0x3

    move-object v5, v3

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v10}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$Bean;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;Ljava/lang/String;III)V

    const/4 v5, 0x2

    aput-object v3, v1, v5

    new-instance v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$Bean;

    const-string v8, "eq_type_rock"

    const/4 v9, 0x5

    const/4 v10, 0x0

    const/4 v11, 0x5

    move-object v6, v3

    move-object/from16 v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$Bean;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;Ljava/lang/String;III)V

    const/4 v6, 0x3

    aput-object v3, v1, v6

    new-instance v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$Bean;

    const-string v9, "eq_type_classic"

    const/4 v10, 0x4

    const/4 v11, -0x1

    move-object v7, v3

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$Bean;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;Ljava/lang/String;III)V

    const/4 v7, 0x4

    aput-object v3, v1, v7

    new-instance v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$Bean;

    const-string v10, "eq_type_jazz"

    const/4 v11, 0x5

    const/4 v12, 0x1

    const/4 v13, 0x4

    move-object v8, v3

    move-object/from16 v9, p0

    invoke-direct/range {v8 .. v13}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$Bean;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;Ljava/lang/String;III)V

    const/4 v8, 0x5

    aput-object v3, v1, v8

    new-instance v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$Bean;

    const-string v11, "eq_type_user"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v9, v3

    move-object/from16 v10, p0

    invoke-direct/range {v9 .. v14}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$Bean;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;Ljava/lang/String;III)V

    const/4 v9, 0x6

    aput-object v3, v1, v9

    .line 55
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$3;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v10

    invoke-virtual {v10}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v10

    aget v3, v3, v10

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    new-array v1, v0, [Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$Bean;

    .line 125
    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$Bean;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v12, "eq_type_flat"

    move-object v10, v0

    move-object/from16 v11, p0

    invoke-direct/range {v10 .. v15}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$Bean;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;Ljava/lang/String;III)V

    aput-object v0, v1, v2

    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$Bean;

    const/16 v19, 0x6

    const/16 v20, -0x2

    const/16 v21, 0x4

    const-string v18, "eq_type_pop"

    move-object/from16 v16, v0

    move-object/from16 v17, p0

    invoke-direct/range {v16 .. v21}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$Bean;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;Ljava/lang/String;III)V

    aput-object v0, v1, v4

    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$Bean;

    const/4 v13, 0x3

    const/4 v15, 0x5

    const-string v12, "eq_type_techno"

    move-object v10, v0

    invoke-direct/range {v10 .. v15}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$Bean;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;Ljava/lang/String;III)V

    aput-object v0, v1, v5

    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$Bean;

    const/16 v20, 0x0

    const/16 v21, 0x6

    const-string v18, "eq_type_rock"

    move-object/from16 v16, v0

    invoke-direct/range {v16 .. v21}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$Bean;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;Ljava/lang/String;III)V

    aput-object v0, v1, v6

    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$Bean;

    const/4 v13, 0x4

    const/4 v14, -0x1

    const/4 v15, 0x4

    const-string v12, "eq_type_classic"

    move-object v10, v0

    invoke-direct/range {v10 .. v15}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$Bean;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;Ljava/lang/String;III)V

    aput-object v0, v1, v7

    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$Bean;

    const/16 v19, 0x4

    const/16 v20, 0x1

    const-string v18, "eq_type_jazz"

    move-object/from16 v16, v0

    invoke-direct/range {v16 .. v21}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$Bean;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;Ljava/lang/String;III)V

    aput-object v0, v1, v8

    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$Bean;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v4, "eq_type_user"

    move-object v2, v0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$Bean;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;Ljava/lang/String;III)V

    aput-object v0, v1, v9

    goto/16 :goto_0

    :pswitch_1
    new-array v1, v0, [Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$Bean;

    .line 97
    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$Bean;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v12, "eq_type_flat"

    move-object v10, v0

    move-object/from16 v11, p0

    invoke-direct/range {v10 .. v15}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$Bean;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;Ljava/lang/String;III)V

    aput-object v0, v1, v2

    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$Bean;

    const/16 v19, 0x6

    const/16 v20, -0x2

    const/16 v21, 0x4

    const-string v18, "eq_type_pop"

    move-object/from16 v16, v0

    move-object/from16 v17, p0

    invoke-direct/range {v16 .. v21}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$Bean;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;Ljava/lang/String;III)V

    aput-object v0, v1, v4

    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$Bean;

    const/4 v13, 0x3

    const/4 v15, 0x5

    const-string v12, "eq_type_techno"

    move-object v10, v0

    invoke-direct/range {v10 .. v15}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$Bean;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;Ljava/lang/String;III)V

    aput-object v0, v1, v5

    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$Bean;

    const/16 v20, 0x0

    const/16 v21, 0x6

    const-string v18, "eq_type_rock"

    move-object/from16 v16, v0

    invoke-direct/range {v16 .. v21}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$Bean;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;Ljava/lang/String;III)V

    aput-object v0, v1, v6

    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$Bean;

    const/4 v13, 0x4

    const/4 v14, -0x1

    const/4 v15, 0x4

    const-string v12, "eq_type_classic"

    move-object v10, v0

    invoke-direct/range {v10 .. v15}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$Bean;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;Ljava/lang/String;III)V

    aput-object v0, v1, v7

    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$Bean;

    const/16 v19, 0x4

    const/16 v20, 0x1

    const-string v18, "eq_type_jazz"

    move-object/from16 v16, v0

    invoke-direct/range {v16 .. v21}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$Bean;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;Ljava/lang/String;III)V

    aput-object v0, v1, v8

    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$Bean;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v4, "eq_type_user"

    move-object v2, v0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$Bean;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;Ljava/lang/String;III)V

    aput-object v0, v1, v9

    goto/16 :goto_0

    :pswitch_2
    const-string/jumbo v1, "yyy"

    const-string v3, "mRadioIds"

    .line 67
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-array v1, v0, [Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$Bean;

    .line 68
    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$Bean;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v12, "eq_type_flat"

    move-object v10, v0

    move-object/from16 v11, p0

    invoke-direct/range {v10 .. v15}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$Bean;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;Ljava/lang/String;III)V

    aput-object v0, v1, v2

    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$Bean;

    const/16 v19, 0x4

    const/16 v20, -0x2

    const/16 v21, 0x5

    const-string v18, "eq_type_pop"

    move-object/from16 v16, v0

    move-object/from16 v17, p0

    invoke-direct/range {v16 .. v21}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$Bean;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;Ljava/lang/String;III)V

    aput-object v0, v1, v4

    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$Bean;

    const/4 v13, 0x5

    const/4 v15, 0x3

    const-string v12, "eq_type_techno"

    move-object v10, v0

    invoke-direct/range {v10 .. v15}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$Bean;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;Ljava/lang/String;III)V

    aput-object v0, v1, v5

    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$Bean;

    const/16 v19, 0x5

    const/16 v20, 0x0

    const-string v18, "eq_type_rock"

    move-object/from16 v16, v0

    invoke-direct/range {v16 .. v21}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$Bean;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;Ljava/lang/String;III)V

    aput-object v0, v1, v6

    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$Bean;

    const/4 v13, 0x4

    const/4 v14, -0x1

    const/4 v15, 0x4

    const-string v12, "eq_type_classic"

    move-object v10, v0

    invoke-direct/range {v10 .. v15}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$Bean;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;Ljava/lang/String;III)V

    aput-object v0, v1, v7

    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$Bean;

    const/16 v20, 0x1

    const/16 v21, 0x4

    const-string v18, "eq_type_jazz"

    move-object/from16 v16, v0

    invoke-direct/range {v16 .. v21}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$Bean;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;Ljava/lang/String;III)V

    aput-object v0, v1, v8

    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$Bean;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v4, "eq_type_user"

    move-object v2, v0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$Bean;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;Ljava/lang/String;III)V

    aput-object v0, v1, v9

    :goto_0
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getPowerMax(Ljava/lang/String;)I
    .locals 13

    .line 149
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$3;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x12

    const/16 v3, 0x14

    const/16 v4, 0xe

    const/4 v5, 0x6

    const/4 v6, 0x5

    const/16 v7, 0x9

    const/16 v8, 0xa

    const-string v9, "amplifier_middle"

    const-string v10, "amplifier_bass"

    const-string v11, "amplifier_treble"

    const-string v12, "amplifier_balance"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_d

    .line 281
    :pswitch_0
    invoke-virtual {v11, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 282
    invoke-virtual {v10, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 283
    invoke-virtual {v9, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 284
    :cond_0
    invoke-virtual {v12, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    return v4

    :cond_1
    :goto_0
    const/4 p1, 0x7

    return p1

    .line 268
    :pswitch_1
    invoke-virtual {v11, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 269
    invoke-virtual {v10, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 270
    invoke-virtual {v9, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 271
    :cond_2
    invoke-virtual {v12, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    return v1

    :cond_3
    :goto_1
    return v5

    .line 215
    :pswitch_2
    invoke-virtual {v11, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 216
    invoke-virtual {v10, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 217
    invoke-virtual {v9, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    .line 218
    :cond_4
    invoke-virtual {v12, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    return v3

    :cond_5
    :goto_2
    return v8

    .line 168
    :pswitch_3
    invoke-virtual {v11, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 169
    invoke-virtual {v10, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 170
    invoke-virtual {v9, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_3

    .line 171
    :cond_6
    invoke-virtual {v12, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    return v8

    :cond_7
    :goto_3
    return v6

    .line 234
    :pswitch_4
    invoke-virtual {v11, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 235
    invoke-virtual {v10, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 236
    invoke-virtual {v9, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_4

    .line 237
    :cond_8
    invoke-virtual {v12, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    return v3

    :cond_9
    :goto_4
    return v8

    .line 274
    :pswitch_5
    invoke-virtual {v11, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 275
    invoke-virtual {v10, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 276
    invoke-virtual {v9, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_5

    .line 277
    :cond_a
    invoke-virtual {v12, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    return v4

    :cond_b
    :goto_5
    return v8

    .line 202
    :pswitch_6
    invoke-virtual {v11, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 203
    invoke-virtual {v10, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 204
    invoke-virtual {v9, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_6

    .line 205
    :cond_c
    invoke-virtual {v12, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    return v3

    :cond_d
    :goto_6
    return v8

    .line 248
    :pswitch_7
    invoke-virtual {v11, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 249
    invoke-virtual {v10, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 250
    invoke-virtual {v9, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_7

    .line 251
    :cond_e
    invoke-virtual {v12, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    const-string p1, "amplifier_balance 16"

    .line 252
    invoke-static {v12, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_f
    :goto_7
    return v5

    .line 241
    :pswitch_8
    invoke-virtual {v11, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 242
    invoke-virtual {v10, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 243
    invoke-virtual {v9, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_8

    .line 244
    :cond_10
    invoke-virtual {v12, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    return v2

    :cond_11
    :goto_8
    return v5

    .line 193
    :pswitch_9
    invoke-virtual {v11, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 194
    invoke-virtual {v10, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 195
    invoke-virtual {v9, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_9

    .line 196
    :cond_12
    invoke-virtual {v12, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    const/16 p1, 0x13

    return p1

    :cond_13
    :goto_9
    return v7

    .line 187
    :pswitch_a
    invoke-virtual {v11, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 188
    invoke-virtual {v10, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 189
    invoke-virtual {v9, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_a

    .line 190
    :cond_14
    invoke-virtual {v12, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    return v2

    :cond_15
    :goto_a
    return v7

    .line 208
    :pswitch_b
    invoke-virtual {v11, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 209
    invoke-virtual {v10, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 210
    invoke-virtual {v9, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_b

    .line 211
    :cond_16
    invoke-virtual {v12, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    const/16 p1, 0x16

    return p1

    :cond_17
    :goto_b
    return v6

    :pswitch_c
    const-string/jumbo v0, "yyy"

    const-string/jumbo v1, "return 14"

    .line 160
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-virtual {v11, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 162
    invoke-virtual {v10, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 163
    invoke-virtual {v9, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_c

    .line 164
    :cond_18
    invoke-virtual {v12, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    return v4

    :cond_19
    :goto_c
    return v6

    :cond_1a
    :goto_d
    return v7

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_7
        :pswitch_a
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_c
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_7
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public initCanbusAmp(Landroid/content/Context;)V
    .locals 0

    .line 1393
    invoke-direct {p0, p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->getAllInitDatas(Landroid/content/Context;)V

    .line 1394
    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->initCanbusAmpCmd()V

    return-void
.end method

.method public isBalAndFade(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "amplifier_left_right"

    .line 940
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "amplifier_front_rear"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    or-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isHaveAmpItem()Z
    .locals 2

    .line 1419
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$3;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public isNoMid()Z
    .locals 2

    .line 954
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$3;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_0

    const/16 v1, 0x37

    if-eq v0, v1, :cond_0

    const/16 v1, 0x38

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isNotReturnValue()Z
    .locals 2

    .line 292
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$3;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x1

    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isTrebMidBass(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "amplifier_middle"

    .line 947
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "amplifier_treble"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "amplifier_bass"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public reportCanbusInfo(Ljava/lang/String;ILandroid/content/Context;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 320
    invoke-virtual/range {p0 .. p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->setValFix()V

    .line 321
    invoke-virtual/range {p0 .. p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->isTrebMidBass(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 322
    iget-byte v3, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->trebFix:B

    :goto_0
    add-int v3, p2, v3

    goto :goto_1

    .line 323
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->isBalAndFade(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 324
    iget-byte v3, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->balaceFix:B

    goto :goto_0

    :cond_1
    move/from16 v3, p2

    .line 327
    :goto_1
    iput-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->mKey:Ljava/lang/String;

    .line 328
    iput v3, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->mValue:I

    .line 330
    new-instance v4, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$1;

    invoke-direct {v4, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$1;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;)V

    invoke-static {v2, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface;->sendMsg(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface$CallBack;)V

    .line 337
    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$3;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x7

    const/4 v6, 0x6

    const/4 v7, 0x5

    const/4 v8, 0x1

    const/4 v9, 0x3

    const/4 v10, 0x4

    const/4 v11, 0x2

    const/4 v12, 0x0

    packed-switch v4, :pswitch_data_0

    return-void

    .line 491
    :pswitch_0
    iput-byte v10, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_left_right:B

    .line 492
    iput-byte v9, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_front_rear:B

    .line 493
    iput-byte v7, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_bass:B

    .line 494
    iput-byte v5, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_middle:B

    .line 495
    iput-byte v6, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_treble:B

    const/16 v4, 0x9

    .line 496
    iput-byte v4, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_effect:B

    goto/16 :goto_2

    .line 469
    :pswitch_1
    iput-byte v10, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_left_right:B

    .line 470
    iput-byte v9, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_front_rear:B

    .line 471
    iput-byte v11, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_bass:B

    .line 472
    iput-byte v8, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_middle:B

    .line 473
    iput-byte v12, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_treble:B

    goto/16 :goto_2

    :pswitch_2
    const/16 v4, 0x24

    .line 455
    iput-byte v4, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_left_right:B

    const/16 v4, 0x25

    .line 456
    iput-byte v4, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_front_rear:B

    const/16 v4, 0x22

    .line 457
    iput-byte v4, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_bass:B

    .line 458
    iput-byte v7, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_middle:B

    const/16 v4, 0x23

    .line 459
    iput-byte v4, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_treble:B

    goto/16 :goto_2

    .line 430
    :pswitch_3
    iput-byte v9, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_front_rear:B

    .line 431
    iput-byte v10, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_left_right:B

    .line 432
    iput-byte v7, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_bass:B

    .line 433
    iput-byte v6, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_treble:B

    .line 434
    iput-byte v5, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_middle:B

    goto/16 :goto_2

    .line 387
    :pswitch_4
    iput-byte v8, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_front_rear:B

    .line 388
    iput-byte v11, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_left_right:B

    .line 389
    iput-byte v10, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_bass:B

    .line 390
    iput-byte v7, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_treble:B

    .line 391
    iput-byte v6, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_middle:B

    goto/16 :goto_2

    .line 394
    :pswitch_5
    iput-byte v9, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_front_rear:B

    .line 395
    iput-byte v11, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_left_right:B

    .line 396
    iput-byte v10, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_bass:B

    .line 397
    iput-byte v6, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_treble:B

    .line 398
    iput-byte v7, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_middle:B

    goto/16 :goto_2

    .line 463
    :pswitch_6
    iput-byte v8, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_front_rear:B

    .line 464
    iput-byte v11, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_left_right:B

    .line 465
    iput-byte v10, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_bass:B

    .line 466
    iput-byte v7, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_treble:B

    goto/16 :goto_2

    .line 476
    :pswitch_7
    iput-byte v8, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_left_right:B

    .line 477
    iput-byte v11, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_front_rear:B

    .line 478
    iput-byte v9, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_bass:B

    .line 479
    iput-byte v10, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_treble:B

    .line 480
    iput-byte v7, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_middle:B

    goto :goto_2

    .line 483
    :pswitch_8
    iput-byte v8, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_left_right:B

    .line 484
    iput-byte v11, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_front_rear:B

    .line 485
    iput-byte v9, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_bass:B

    .line 486
    iput-byte v10, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_middle:B

    .line 487
    iput-byte v7, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_treble:B

    goto :goto_2

    .line 448
    :pswitch_9
    iput-byte v11, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_left_right:B

    .line 449
    iput-byte v9, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_front_rear:B

    .line 450
    iput-byte v10, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_bass:B

    .line 451
    iput-byte v7, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_middle:B

    .line 452
    iput-byte v6, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_treble:B

    goto :goto_2

    .line 362
    :pswitch_a
    iput-byte v11, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_left_right:B

    .line 363
    iput-byte v9, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_front_rear:B

    .line 364
    iput-byte v10, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_bass:B

    .line 365
    iput-byte v7, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_middle:B

    .line 366
    iput-byte v6, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_treble:B

    goto :goto_2

    .line 343
    :pswitch_b
    iput-byte v9, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_front_rear:B

    .line 344
    iput-byte v10, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_left_right:B

    .line 345
    iput-byte v7, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_bass:B

    .line 346
    iput-byte v6, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_treble:B

    .line 347
    iput-byte v5, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_middle:B

    goto :goto_2

    .line 355
    :pswitch_c
    iput-byte v9, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_front_rear:B

    .line 356
    iput-byte v11, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_left_right:B

    .line 357
    iput-byte v10, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_bass:B

    .line 358
    iput-byte v7, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_middle:B

    .line 359
    iput-byte v6, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_treble:B

    goto :goto_2

    .line 401
    :pswitch_d
    invoke-static/range {p3 .. p3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isCanbusCmdPorting(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 402
    iput-byte v8, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_front_rear:B

    .line 403
    iput-byte v11, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_left_right:B

    .line 404
    iput-byte v10, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_bass:B

    .line 405
    iput-byte v7, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_treble:B

    .line 406
    iput-byte v6, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_middle:B

    goto :goto_2

    .line 408
    :cond_2
    iput-byte v9, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_front_rear:B

    .line 409
    iput-byte v10, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_left_right:B

    .line 410
    iput-byte v7, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_bass:B

    .line 411
    iput-byte v6, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_treble:B

    .line 412
    iput-byte v5, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_middle:B

    goto :goto_2

    :pswitch_e
    const-string/jumbo v4, "yyy"

    const-string/jumbo v13, "tamplifier_front_rear = (byte) 0x01;"

    .line 377
    invoke-static {v4, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iput-byte v8, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_front_rear:B

    .line 379
    iput-byte v11, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_left_right:B

    .line 380
    iput-byte v10, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_bass:B

    .line 381
    iput-byte v7, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_treble:B

    .line 382
    iput-byte v6, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_middle:B

    .line 502
    :goto_2
    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$3;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v13

    invoke-virtual {v13}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v13

    aget v4, v4, v13

    const-string v15, "amplifier_treble"

    const-string v5, "amplifier_middle"

    const-string v13, "amplifier_bass"

    const-string v14, "amplifier_front_rear"

    const-string v11, "amplifier_left_right"

    const/16 v16, -0x7c

    const/16 v17, -0x53

    const/16 v18, 0x16

    packed-switch v4, :pswitch_data_1

    :pswitch_f
    goto/16 :goto_10

    :pswitch_10
    const-string v4, "amplifier_effect"

    .line 893
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    if-eq v3, v8, :cond_6

    if-eq v3, v9, :cond_6

    if-eq v3, v10, :cond_5

    if-eq v3, v7, :cond_4

    if-eq v3, v6, :cond_3

    const/4 v3, -0x1

    goto :goto_3

    :cond_3
    move v3, v12

    goto :goto_3

    :cond_4
    move v3, v10

    goto :goto_3

    :cond_5
    const/4 v3, 0x2

    goto :goto_3

    :cond_6
    move v3, v8

    .line 913
    :cond_7
    :goto_3
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v4

    new-array v5, v10, [B

    aput-byte v18, v5, v12

    aput-byte v16, v5, v8

    .line 914
    invoke-direct/range {p0 .. p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->getAmpCmd(Ljava/lang/String;)B

    move-result v6

    const/4 v7, 0x2

    aput-byte v6, v5, v7

    int-to-byte v6, v3

    aput-byte v6, v5, v9

    .line 913
    invoke-virtual {v4, v5}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_10

    .line 851
    :pswitch_11
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 852
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v4

    new-array v5, v10, [B

    aput-byte v18, v5, v12

    const/16 v6, -0x3d

    aput-byte v6, v5, v8

    iget-byte v6, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_bass:B

    const/4 v7, 0x2

    aput-byte v6, v5, v7

    int-to-byte v6, v3

    aput-byte v6, v5, v9

    invoke-virtual {v4, v5}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_10

    .line 854
    :cond_8
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 855
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v4

    new-array v5, v10, [B

    aput-byte v18, v5, v12

    const/16 v6, -0x3d

    aput-byte v6, v5, v8

    iget-byte v6, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_middle:B

    const/4 v7, 0x2

    aput-byte v6, v5, v7

    int-to-byte v6, v3

    aput-byte v6, v5, v9

    invoke-virtual {v4, v5}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_10

    .line 857
    :cond_9
    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 858
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v4

    new-array v5, v10, [B

    aput-byte v18, v5, v12

    aput-byte v16, v5, v8

    iget-byte v6, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_treble:B

    const/4 v7, 0x2

    aput-byte v6, v5, v7

    int-to-byte v6, v3

    aput-byte v6, v5, v9

    invoke-virtual {v4, v5}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_10

    .line 860
    :cond_a
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 861
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v4

    new-array v5, v10, [B

    aput-byte v18, v5, v12

    const/16 v6, -0x3d

    aput-byte v6, v5, v8

    iget-byte v6, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_left_right:B

    const/4 v7, 0x2

    aput-byte v6, v5, v7

    int-to-byte v6, v3

    aput-byte v6, v5, v9

    invoke-virtual {v4, v5}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_10

    .line 863
    :cond_b
    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 864
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v4

    new-array v5, v10, [B

    aput-byte v18, v5, v12

    const/16 v6, -0x3d

    aput-byte v6, v5, v8

    iget-byte v6, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_front_rear:B

    const/4 v7, 0x2

    aput-byte v6, v5, v7

    int-to-byte v6, v3

    aput-byte v6, v5, v9

    invoke-virtual {v4, v5}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_10

    .line 521
    :pswitch_12
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 522
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v4

    new-array v5, v10, [B

    aput-byte v18, v5, v12

    aput-byte v17, v5, v8

    iget-byte v6, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_left_right:B

    const/4 v7, 0x2

    aput-byte v6, v5, v7

    int-to-byte v6, v3

    aput-byte v6, v5, v9

    invoke-virtual {v4, v5}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_10

    .line 523
    :cond_c
    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 524
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v4

    new-array v5, v10, [B

    aput-byte v18, v5, v12

    aput-byte v17, v5, v8

    iget-byte v6, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_front_rear:B

    const/4 v7, 0x2

    aput-byte v6, v5, v7

    int-to-byte v6, v3

    aput-byte v6, v5, v9

    invoke-virtual {v4, v5}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_10

    .line 547
    :pswitch_13
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 548
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v4

    new-array v5, v10, [B

    aput-byte v18, v5, v12

    aput-byte v17, v5, v8

    iget-byte v6, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_bass:B

    const/4 v7, 0x2

    aput-byte v6, v5, v7

    const/4 v6, -0x5

    aput-byte v6, v5, v9

    invoke-virtual {v4, v5}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_10

    :cond_d
    const/4 v6, -0x5

    const/4 v7, 0x2

    .line 549
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 550
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v4

    new-array v5, v10, [B

    aput-byte v18, v5, v12

    aput-byte v17, v5, v8

    iget-byte v8, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_middle:B

    aput-byte v8, v5, v7

    aput-byte v6, v5, v9

    invoke-virtual {v4, v5}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_10

    .line 551
    :cond_e
    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 552
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v4

    new-array v5, v10, [B

    aput-byte v18, v5, v12

    aput-byte v17, v5, v8

    iget-byte v8, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_treble:B

    aput-byte v8, v5, v7

    aput-byte v6, v5, v9

    invoke-virtual {v4, v5}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_10

    .line 553
    :cond_f
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 554
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v4

    new-array v5, v10, [B

    aput-byte v18, v5, v12

    aput-byte v17, v5, v8

    iget-byte v8, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_left_right:B

    aput-byte v8, v5, v7

    aput-byte v6, v5, v9

    invoke-virtual {v4, v5}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_10

    .line 555
    :cond_10
    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 556
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v4

    new-array v5, v10, [B

    aput-byte v18, v5, v12

    aput-byte v17, v5, v8

    iget-byte v8, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_front_rear:B

    aput-byte v8, v5, v7

    aput-byte v6, v5, v9

    invoke-virtual {v4, v5}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_10

    .line 560
    :pswitch_14
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 561
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v4

    new-array v5, v10, [B

    aput-byte v18, v5, v12

    const/16 v6, -0x7d

    aput-byte v6, v5, v8

    iget-byte v6, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_bass:B

    const/4 v7, 0x2

    aput-byte v6, v5, v7

    const/4 v6, -0x5

    aput-byte v6, v5, v9

    invoke-virtual {v4, v5}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_10

    .line 562
    :cond_11
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    goto/16 :goto_10

    .line 564
    :cond_12
    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 565
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v4

    new-array v5, v10, [B

    aput-byte v18, v5, v12

    const/16 v6, -0x7d

    aput-byte v6, v5, v8

    iget-byte v6, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_treble:B

    const/4 v7, 0x2

    aput-byte v6, v5, v7

    const/4 v13, -0x5

    aput-byte v13, v5, v9

    invoke-virtual {v4, v5}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_10

    :cond_13
    const/16 v6, -0x7d

    const/4 v7, 0x2

    const/4 v13, -0x5

    .line 566
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 567
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v4

    new-array v5, v10, [B

    aput-byte v18, v5, v12

    aput-byte v6, v5, v8

    iget-byte v6, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_left_right:B

    aput-byte v6, v5, v7

    aput-byte v13, v5, v9

    invoke-virtual {v4, v5}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_10

    .line 568
    :cond_14
    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 569
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v4

    new-array v5, v10, [B

    aput-byte v18, v5, v12

    aput-byte v6, v5, v8

    iget-byte v6, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_front_rear:B

    aput-byte v6, v5, v7

    aput-byte v13, v5, v9

    invoke-virtual {v4, v5}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_10

    :pswitch_15
    const/16 v4, 0xff

    if-ne v3, v4, :cond_15

    goto/16 :goto_10

    .line 507
    :cond_15
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 508
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v4

    new-array v5, v10, [B

    aput-byte v18, v5, v12

    aput-byte v17, v5, v8

    iget-byte v6, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_bass:B

    const/4 v7, 0x2

    aput-byte v6, v5, v7

    int-to-byte v6, v3

    aput-byte v6, v5, v9

    invoke-virtual {v4, v5}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_10

    .line 509
    :cond_16
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 510
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v4

    new-array v5, v10, [B

    aput-byte v18, v5, v12

    aput-byte v17, v5, v8

    iget-byte v6, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_middle:B

    const/4 v7, 0x2

    aput-byte v6, v5, v7

    int-to-byte v6, v3

    aput-byte v6, v5, v9

    invoke-virtual {v4, v5}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_10

    .line 511
    :cond_17
    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 512
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v4

    new-array v5, v10, [B

    aput-byte v18, v5, v12

    aput-byte v17, v5, v8

    iget-byte v6, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_treble:B

    const/4 v7, 0x2

    aput-byte v6, v5, v7

    int-to-byte v6, v3

    aput-byte v6, v5, v9

    invoke-virtual {v4, v5}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_10

    .line 513
    :cond_18
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 514
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v4

    new-array v5, v10, [B

    aput-byte v18, v5, v12

    aput-byte v17, v5, v8

    iget-byte v6, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_left_right:B

    const/4 v7, 0x2

    aput-byte v6, v5, v7

    int-to-byte v6, v3

    aput-byte v6, v5, v9

    invoke-virtual {v4, v5}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_10

    .line 515
    :cond_19
    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 516
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v4

    new-array v5, v10, [B

    aput-byte v18, v5, v12

    aput-byte v17, v5, v8

    iget-byte v6, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_front_rear:B

    const/4 v7, 0x2

    aput-byte v6, v5, v7

    int-to-byte v6, v3

    aput-byte v6, v5, v9

    invoke-virtual {v4, v5}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_10

    .line 637
    :pswitch_16
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "kia_xinbus_power"

    invoke-static {v4, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1a

    const/4 v4, 0x7

    new-array v8, v4, [B

    .line 638
    fill-array-data v8, :array_0

    .line 639
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 640
    invoke-static {v8, v12}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v9

    const-string v6, "kia_xinbus_power"

    .line 639
    invoke-static {v4, v6, v9}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_4

    .line 642
    :cond_1a
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "kia_xinbus_power"

    invoke-static {v4, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v12}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v8

    .line 644
    :goto_4
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "kia_raise_bal"

    invoke-static {v4, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1b

    new-array v4, v10, [B

    .line 645
    fill-array-data v4, :array_1

    .line 646
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 647
    invoke-static {v4, v12}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v9

    const-string v10, "kia_raise_bal"

    .line 646
    invoke-static {v6, v10, v9}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_5

    .line 649
    :cond_1b
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "kia_raise_bal"

    invoke-static {v4, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v12}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    .line 651
    :goto_5
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "kia_raise_eq"

    invoke-static {v6, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1c

    new-array v6, v7, [B

    .line 652
    fill-array-data v6, :array_2

    .line 653
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 654
    invoke-static {v6, v12}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v10

    const-string v7, "kia_raise_eq"

    .line 653
    invoke-static {v9, v7, v10}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_6

    .line 656
    :cond_1c
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "kia_raise_eq"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v12}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    .line 659
    :goto_6
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "kia_xinbas_eq"

    invoke-static {v7, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1d

    const/16 v7, 0x8

    new-array v7, v7, [B

    .line 660
    fill-array-data v7, :array_3

    .line 661
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 662
    invoke-static {v7, v12}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v10

    const-string v12, "kia_xinbas_eq"

    .line 661
    invoke-static {v9, v12, v10}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_7

    .line 664
    :cond_1d
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "kia_xinbas_eq"

    invoke-static {v7, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v7

    .line 667
    :goto_7
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1f

    int-to-byte v5, v3

    const/4 v9, 0x6

    .line 668
    aput-byte v5, v8, v9

    const/4 v9, 0x2

    .line 669
    aput-byte v5, v6, v9

    const/4 v10, 0x5

    .line 670
    aput-byte v5, v7, v10

    :cond_1e
    :goto_8
    const/4 v9, 0x2

    goto :goto_9

    :cond_1f
    const/4 v9, 0x6

    const/4 v10, 0x5

    .line 671
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    int-to-byte v5, v3

    .line 672
    aput-byte v5, v8, v10

    const/4 v10, 0x3

    .line 673
    aput-byte v5, v6, v10

    .line 674
    aput-byte v5, v7, v9

    goto :goto_8

    .line 675
    :cond_20
    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    int-to-byte v5, v3

    const/4 v9, 0x4

    .line 676
    aput-byte v5, v8, v9

    .line 677
    aput-byte v5, v6, v9

    const/4 v9, 0x7

    .line 678
    aput-byte v5, v7, v9

    goto :goto_8

    .line 679
    :cond_21
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    int-to-byte v5, v3

    const/4 v9, 0x3

    .line 680
    aput-byte v5, v8, v9

    .line 681
    aput-byte v5, v4, v9

    .line 682
    aput-byte v5, v7, v9

    goto :goto_8

    .line 683
    :cond_22
    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    int-to-byte v5, v3

    const/4 v9, 0x2

    .line 684
    aput-byte v5, v8, v9

    .line 685
    aput-byte v5, v4, v9

    const/4 v10, 0x4

    .line 686
    aput-byte v5, v7, v10

    .line 688
    :goto_9
    invoke-static/range {p3 .. p3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isCanbusCmdPorting(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_23

    const/16 v5, -0x39

    const/4 v10, 0x0

    .line 689
    aput-byte v5, v8, v10

    goto :goto_a

    :cond_23
    const/4 v10, 0x0

    .line 691
    aput-byte v9, v8, v10

    :goto_a
    const/4 v5, 0x1

    .line 693
    aput-byte v10, v8, v5

    .line 694
    invoke-static/range {p3 .. p3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isCanbusCmdPorting(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_26

    .line 695
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isCanSupplySimple()Z

    move-result v9

    if-eqz v9, :cond_24

    .line 696
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v9

    new-array v5, v5, [B

    aput-byte v18, v5, v10

    invoke-static {v5, v8}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v5

    invoke-virtual {v9, v5}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto :goto_b

    .line 697
    :cond_24
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isCanSupplyRaise()Z

    move-result v5

    if-eqz v5, :cond_25

    .line 698
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    const-wide/16 v9, 0x32

    .line 699
    invoke-static {v9, v10}, Landroid/os/SystemClock;->sleep(J)V

    .line 700
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto :goto_b

    .line 702
    :cond_25
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto :goto_b

    .line 705
    :cond_26
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    .line 707
    :goto_b
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v8

    const-string v10, "kia_xinbus_power"

    invoke-static {v5, v10, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 708
    invoke-static/range {p3 .. p3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isCanbusCmdPorting(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_52

    .line 709
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v4, v9}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    const-string v8, "kia_raise_bal"

    invoke-static {v5, v8, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 710
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v6, v9}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    const-string v6, "kia_raise_eq"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 711
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v7, v9}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    const-string v6, "kia_xinbas_eq"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_10

    .line 718
    :pswitch_17
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "jeep_xinbus_power"

    invoke-static {v4, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_27

    .line 719
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/16 v7, 0x9

    new-array v7, v7, [B

    fill-array-data v7, :array_4

    const/4 v8, 0x0

    .line 720
    invoke-static {v7, v8}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v7

    .line 719
    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_c

    :cond_27
    const/4 v8, 0x0

    .line 725
    :goto_c
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v8}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    .line 726
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_29

    int-to-byte v5, v3

    const/4 v7, 0x3

    .line 727
    aput-byte v5, v4, v7

    :cond_28
    :goto_d
    const/4 v7, 0x0

    goto :goto_e

    .line 728
    :cond_29
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    int-to-byte v5, v3

    const/4 v7, 0x4

    .line 729
    aput-byte v5, v4, v7

    goto :goto_d

    .line 730
    :cond_2a
    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    int-to-byte v5, v3

    const/4 v7, 0x5

    .line 731
    aput-byte v5, v4, v7

    goto :goto_d

    .line 732
    :cond_2b
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    int-to-byte v5, v3

    const/4 v7, 0x6

    .line 733
    aput-byte v5, v4, v7

    goto :goto_d

    .line 734
    :cond_2c
    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    int-to-byte v5, v3

    const/4 v7, 0x7

    .line 735
    aput-byte v5, v4, v7

    goto :goto_d

    .line 737
    :goto_e
    aput-byte v18, v4, v7

    const/16 v5, -0x7d

    const/4 v8, 0x1

    .line 738
    aput-byte v5, v4, v8

    const/16 v5, 0x1c

    const/4 v8, 0x2

    .line 739
    aput-byte v5, v4, v8

    .line 740
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    .line 741
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v4, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_10

    :pswitch_18
    move v7, v12

    .line 869
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 870
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [B

    aput-byte v18, v5, v7

    const/4 v6, 0x1

    aput-byte v17, v5, v6

    iget-byte v6, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_bass:B

    const/4 v7, 0x2

    aput-byte v6, v5, v7

    int-to-byte v6, v3

    const/4 v7, 0x3

    aput-byte v6, v5, v7

    invoke-virtual {v4, v5}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_10

    .line 872
    :cond_2d
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 873
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [B

    const/4 v6, 0x0

    aput-byte v18, v5, v6

    const/4 v6, 0x1

    aput-byte v17, v5, v6

    iget-byte v6, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_middle:B

    const/4 v7, 0x2

    aput-byte v6, v5, v7

    int-to-byte v6, v3

    const/4 v7, 0x3

    aput-byte v6, v5, v7

    invoke-virtual {v4, v5}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_10

    .line 875
    :cond_2e
    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 876
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [B

    const/4 v6, 0x0

    aput-byte v18, v5, v6

    const/4 v6, 0x1

    aput-byte v17, v5, v6

    iget-byte v6, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_treble:B

    const/4 v7, 0x2

    aput-byte v6, v5, v7

    int-to-byte v6, v3

    const/4 v7, 0x3

    aput-byte v6, v5, v7

    invoke-virtual {v4, v5}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_10

    .line 878
    :cond_2f
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 879
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [B

    const/4 v6, 0x0

    aput-byte v18, v5, v6

    const/4 v6, 0x1

    aput-byte v17, v5, v6

    iget-byte v6, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_left_right:B

    const/4 v7, 0x2

    aput-byte v6, v5, v7

    int-to-byte v6, v3

    const/4 v7, 0x3

    aput-byte v6, v5, v7

    invoke-virtual {v4, v5}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_10

    .line 881
    :cond_30
    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 882
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [B

    const/4 v6, 0x0

    aput-byte v18, v5, v6

    const/4 v6, 0x1

    aput-byte v17, v5, v6

    iget-byte v6, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_front_rear:B

    const/4 v7, 0x2

    aput-byte v6, v5, v7

    int-to-byte v6, v3

    const/4 v7, 0x3

    aput-byte v6, v5, v7

    invoke-virtual {v4, v5}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_10

    .line 833
    :pswitch_19
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 834
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [B

    const/4 v6, 0x0

    aput-byte v18, v5, v6

    const/4 v6, 0x1

    aput-byte v16, v5, v6

    iget-byte v6, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_bass:B

    const/4 v7, 0x2

    aput-byte v6, v5, v7

    int-to-byte v6, v3

    const/4 v7, 0x3

    aput-byte v6, v5, v7

    invoke-virtual {v4, v5}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_10

    .line 836
    :cond_31
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 837
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [B

    const/4 v6, 0x0

    aput-byte v18, v5, v6

    const/4 v6, 0x1

    aput-byte v16, v5, v6

    iget-byte v6, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_middle:B

    const/4 v7, 0x2

    aput-byte v6, v5, v7

    int-to-byte v6, v3

    const/4 v7, 0x3

    aput-byte v6, v5, v7

    invoke-virtual {v4, v5}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_10

    .line 839
    :cond_32
    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 840
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [B

    const/4 v6, 0x0

    aput-byte v18, v5, v6

    const/4 v6, 0x1

    aput-byte v16, v5, v6

    iget-byte v6, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_treble:B

    const/4 v7, 0x2

    aput-byte v6, v5, v7

    int-to-byte v6, v3

    const/4 v7, 0x3

    aput-byte v6, v5, v7

    invoke-virtual {v4, v5}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_10

    .line 842
    :cond_33
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 843
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [B

    const/4 v6, 0x0

    aput-byte v18, v5, v6

    const/4 v6, 0x1

    aput-byte v16, v5, v6

    iget-byte v6, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_left_right:B

    const/4 v7, 0x2

    aput-byte v6, v5, v7

    int-to-byte v6, v3

    const/4 v7, 0x3

    aput-byte v6, v5, v7

    invoke-virtual {v4, v5}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_10

    .line 845
    :cond_34
    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 846
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [B

    const/4 v6, 0x0

    aput-byte v18, v5, v6

    const/4 v6, 0x1

    aput-byte v16, v5, v6

    iget-byte v6, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_front_rear:B

    const/4 v7, 0x2

    aput-byte v6, v5, v7

    int-to-byte v6, v3

    const/4 v7, 0x3

    aput-byte v6, v5, v7

    invoke-virtual {v4, v5}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_10

    :pswitch_1a
    move v5, v10

    move v6, v12

    .line 888
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v4

    new-array v5, v5, [B

    aput-byte v18, v5, v6

    const/16 v6, -0x60

    const/4 v7, 0x1

    aput-byte v6, v5, v7

    .line 889
    invoke-direct/range {p0 .. p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->getAmpCmd(Ljava/lang/String;)B

    move-result v6

    const/4 v7, 0x2

    aput-byte v6, v5, v7

    int-to-byte v6, v3

    const/4 v7, 0x3

    aput-byte v6, v5, v7

    .line 888
    invoke-virtual {v4, v5}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_10

    .line 787
    :pswitch_1b
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 788
    iget-byte v4, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_bass:B

    goto :goto_f

    .line 789
    :cond_35
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 790
    iget-byte v4, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_middle:B

    goto :goto_f

    .line 791
    :cond_36
    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 792
    iget-byte v4, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_treble:B

    goto :goto_f

    .line 793
    :cond_37
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 794
    iget-byte v4, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_left_right:B

    goto :goto_f

    .line 795
    :cond_38
    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 796
    iget-byte v4, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_front_rear:B

    goto :goto_f

    :cond_39
    const/4 v4, 0x0

    .line 798
    :goto_f
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v5

    const/4 v6, 0x4

    new-array v6, v6, [B

    const/4 v7, 0x0

    aput-byte v18, v6, v7

    const/4 v8, 0x1

    aput-byte v17, v6, v8

    const/4 v7, 0x2

    aput-byte v4, v6, v7

    int-to-byte v4, v3

    const/4 v7, 0x3

    aput-byte v4, v6, v7

    invoke-virtual {v5, v6}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_10

    :pswitch_1c
    move v6, v10

    move v7, v12

    .line 578
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 579
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v4

    new-array v5, v6, [B

    aput-byte v18, v5, v7

    aput-byte v17, v5, v8

    iget-byte v6, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_bass:B

    const/4 v7, 0x2

    aput-byte v6, v5, v7

    int-to-byte v6, v3

    const/4 v7, 0x3

    aput-byte v6, v5, v7

    invoke-virtual {v4, v5}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_10

    .line 580
    :cond_3a
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 581
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [B

    const/4 v6, 0x0

    aput-byte v18, v5, v6

    const/4 v6, 0x1

    aput-byte v17, v5, v6

    iget-byte v6, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_middle:B

    const/4 v7, 0x2

    aput-byte v6, v5, v7

    int-to-byte v6, v3

    const/4 v7, 0x3

    aput-byte v6, v5, v7

    invoke-virtual {v4, v5}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_10

    .line 582
    :cond_3b
    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 583
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [B

    const/4 v6, 0x0

    aput-byte v18, v5, v6

    const/4 v6, 0x1

    aput-byte v17, v5, v6

    iget-byte v6, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_treble:B

    const/4 v7, 0x2

    aput-byte v6, v5, v7

    int-to-byte v6, v3

    const/4 v7, 0x3

    aput-byte v6, v5, v7

    invoke-virtual {v4, v5}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_10

    .line 584
    :cond_3c
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 585
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [B

    const/4 v6, 0x0

    aput-byte v18, v5, v6

    const/4 v6, 0x1

    aput-byte v17, v5, v6

    iget-byte v6, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_left_right:B

    const/4 v7, 0x2

    aput-byte v6, v5, v7

    int-to-byte v6, v3

    const/4 v7, 0x3

    aput-byte v6, v5, v7

    invoke-virtual {v4, v5}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_10

    .line 586
    :cond_3d
    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 587
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [B

    const/4 v6, 0x0

    aput-byte v18, v5, v6

    const/4 v6, 0x1

    aput-byte v17, v5, v6

    iget-byte v6, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_front_rear:B

    const/4 v7, 0x2

    aput-byte v6, v5, v7

    int-to-byte v6, v3

    const/4 v7, 0x3

    aput-byte v6, v5, v7

    invoke-virtual {v4, v5}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_10

    .line 767
    :pswitch_1d
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 768
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [B

    const/4 v6, 0x0

    aput-byte v18, v5, v6

    const/4 v6, 0x1

    aput-byte v17, v5, v6

    iget-byte v6, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_bass:B

    const/4 v7, 0x2

    aput-byte v6, v5, v7

    int-to-byte v6, v3

    const/4 v7, 0x3

    aput-byte v6, v5, v7

    invoke-virtual {v4, v5}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_10

    .line 770
    :cond_3e
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 771
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [B

    const/4 v6, 0x0

    aput-byte v18, v5, v6

    const/4 v6, 0x1

    aput-byte v17, v5, v6

    iget-byte v6, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_middle:B

    const/4 v7, 0x2

    aput-byte v6, v5, v7

    int-to-byte v6, v3

    const/4 v7, 0x3

    aput-byte v6, v5, v7

    invoke-virtual {v4, v5}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_10

    .line 773
    :cond_3f
    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 774
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [B

    const/4 v6, 0x0

    aput-byte v18, v5, v6

    const/4 v6, 0x1

    aput-byte v17, v5, v6

    iget-byte v6, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_treble:B

    const/4 v7, 0x2

    aput-byte v6, v5, v7

    int-to-byte v6, v3

    const/4 v7, 0x3

    aput-byte v6, v5, v7

    invoke-virtual {v4, v5}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_10

    .line 776
    :cond_40
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 777
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [B

    const/4 v6, 0x0

    aput-byte v18, v5, v6

    const/4 v6, 0x1

    aput-byte v17, v5, v6

    iget-byte v6, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_left_right:B

    const/4 v7, 0x2

    aput-byte v6, v5, v7

    int-to-byte v6, v3

    const/4 v7, 0x3

    aput-byte v6, v5, v7

    invoke-virtual {v4, v5}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_10

    .line 779
    :cond_41
    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 780
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [B

    const/4 v6, 0x0

    aput-byte v18, v5, v6

    const/4 v6, 0x1

    aput-byte v17, v5, v6

    iget-byte v6, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_front_rear:B

    const/4 v7, 0x2

    aput-byte v6, v5, v7

    int-to-byte v6, v3

    const/4 v7, 0x3

    aput-byte v6, v5, v7

    invoke-virtual {v4, v5}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_10

    .line 595
    :pswitch_1e
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 596
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [B

    const/4 v6, 0x0

    aput-byte v18, v5, v6

    const/4 v6, 0x1

    aput-byte v16, v5, v6

    iget-byte v6, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_bass:B

    const/4 v7, 0x2

    aput-byte v6, v5, v7

    int-to-byte v6, v3

    const/4 v7, 0x3

    aput-byte v6, v5, v7

    invoke-virtual {v4, v5}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_10

    .line 598
    :cond_42
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 599
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [B

    const/4 v6, 0x0

    aput-byte v18, v5, v6

    const/4 v6, 0x1

    aput-byte v16, v5, v6

    iget-byte v6, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_middle:B

    const/4 v7, 0x2

    aput-byte v6, v5, v7

    int-to-byte v6, v3

    const/4 v7, 0x3

    aput-byte v6, v5, v7

    invoke-virtual {v4, v5}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_10

    .line 601
    :cond_43
    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 602
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [B

    const/4 v6, 0x0

    aput-byte v18, v5, v6

    const/4 v6, 0x1

    aput-byte v16, v5, v6

    iget-byte v6, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_treble:B

    const/4 v7, 0x2

    aput-byte v6, v5, v7

    int-to-byte v6, v3

    const/4 v7, 0x3

    aput-byte v6, v5, v7

    invoke-virtual {v4, v5}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_10

    .line 604
    :cond_44
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 605
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [B

    const/4 v6, 0x0

    aput-byte v18, v5, v6

    const/4 v6, 0x1

    aput-byte v16, v5, v6

    iget-byte v6, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_left_right:B

    const/4 v7, 0x2

    aput-byte v6, v5, v7

    int-to-byte v6, v3

    const/4 v7, 0x3

    aput-byte v6, v5, v7

    invoke-virtual {v4, v5}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_10

    .line 607
    :cond_45
    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 608
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [B

    const/4 v6, 0x0

    aput-byte v18, v5, v6

    const/4 v6, 0x1

    aput-byte v16, v5, v6

    iget-byte v6, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_front_rear:B

    const/4 v7, 0x2

    aput-byte v6, v5, v7

    int-to-byte v6, v3

    const/4 v7, 0x3

    aput-byte v6, v5, v7

    invoke-virtual {v4, v5}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_10

    .line 749
    :pswitch_1f
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/16 v6, -0x6d

    if-eqz v4, :cond_46

    .line 750
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [B

    const/4 v7, 0x0

    aput-byte v18, v5, v7

    const/4 v7, 0x1

    aput-byte v6, v5, v7

    iget-byte v6, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_bass:B

    const/4 v7, 0x2

    aput-byte v6, v5, v7

    int-to-byte v6, v3

    const/4 v7, 0x3

    aput-byte v6, v5, v7

    invoke-virtual {v4, v5}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_10

    .line 752
    :cond_46
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 753
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [B

    const/4 v7, 0x0

    aput-byte v18, v5, v7

    const/4 v7, 0x1

    aput-byte v6, v5, v7

    iget-byte v6, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_middle:B

    const/4 v7, 0x2

    aput-byte v6, v5, v7

    int-to-byte v6, v3

    const/4 v7, 0x3

    aput-byte v6, v5, v7

    invoke-virtual {v4, v5}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_10

    .line 755
    :cond_47
    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 756
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [B

    const/4 v7, 0x0

    aput-byte v18, v5, v7

    const/4 v7, 0x1

    aput-byte v6, v5, v7

    iget-byte v6, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_treble:B

    const/4 v7, 0x2

    aput-byte v6, v5, v7

    int-to-byte v6, v3

    const/4 v7, 0x3

    aput-byte v6, v5, v7

    invoke-virtual {v4, v5}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_10

    .line 758
    :cond_48
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_49

    .line 759
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [B

    const/4 v7, 0x0

    aput-byte v18, v5, v7

    const/4 v7, 0x1

    aput-byte v6, v5, v7

    iget-byte v6, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_left_right:B

    const/4 v7, 0x2

    aput-byte v6, v5, v7

    int-to-byte v6, v3

    const/4 v7, 0x3

    aput-byte v6, v5, v7

    invoke-virtual {v4, v5}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_10

    .line 761
    :cond_49
    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 762
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [B

    const/4 v7, 0x0

    aput-byte v18, v5, v7

    const/4 v7, 0x1

    aput-byte v6, v5, v7

    iget-byte v6, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_front_rear:B

    const/4 v7, 0x2

    aput-byte v6, v5, v7

    int-to-byte v6, v3

    const/4 v7, 0x3

    aput-byte v6, v5, v7

    invoke-virtual {v4, v5}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_10

    :pswitch_20
    move v7, v9

    .line 528
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/16 v6, 0x15

    if-eqz v4, :cond_4a

    new-array v4, v7, [B

    const/4 v8, 0x0

    aput-byte v6, v4, v8

    .line 529
    iget-byte v5, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_bass:B

    const/4 v9, 0x1

    aput-byte v5, v4, v9

    int-to-byte v6, v3

    const/4 v10, 0x2

    aput-byte v6, v4, v10

    const/4 v11, 0x4

    new-array v11, v11, [B

    aput-byte v18, v11, v8

    aput-byte v16, v11, v9

    aput-byte v5, v11, v10

    aput-byte v6, v11, v7

    invoke-static {v4, v11, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportMcuDataTwoArray([B[BLandroid/content/Context;)V

    goto/16 :goto_10

    :cond_4a
    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x2

    .line 531
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4b

    new-array v4, v7, [B

    aput-byte v6, v4, v8

    .line 532
    iget-byte v5, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_middle:B

    aput-byte v5, v4, v9

    int-to-byte v6, v3

    aput-byte v6, v4, v10

    const/4 v11, 0x4

    new-array v11, v11, [B

    aput-byte v18, v11, v8

    aput-byte v16, v11, v9

    aput-byte v5, v11, v10

    aput-byte v6, v11, v7

    invoke-static {v4, v11, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportMcuDataTwoArray([B[BLandroid/content/Context;)V

    goto/16 :goto_10

    .line 534
    :cond_4b
    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4c

    new-array v4, v7, [B

    aput-byte v6, v4, v8

    .line 535
    iget-byte v5, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_treble:B

    aput-byte v5, v4, v9

    int-to-byte v6, v3

    aput-byte v6, v4, v10

    const/4 v11, 0x4

    new-array v11, v11, [B

    aput-byte v18, v11, v8

    aput-byte v16, v11, v9

    aput-byte v5, v11, v10

    aput-byte v6, v11, v7

    invoke-static {v4, v11, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportMcuDataTwoArray([B[BLandroid/content/Context;)V

    goto/16 :goto_10

    .line 537
    :cond_4c
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4d

    new-array v4, v7, [B

    aput-byte v6, v4, v8

    .line 538
    iget-byte v5, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_left_right:B

    aput-byte v5, v4, v9

    int-to-byte v6, v3

    aput-byte v6, v4, v10

    const/4 v11, 0x4

    new-array v11, v11, [B

    aput-byte v18, v11, v8

    aput-byte v16, v11, v9

    aput-byte v5, v11, v10

    aput-byte v6, v11, v7

    invoke-static {v4, v11, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportMcuDataTwoArray([B[BLandroid/content/Context;)V

    goto/16 :goto_10

    .line 540
    :cond_4d
    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_52

    new-array v4, v7, [B

    aput-byte v6, v4, v8

    .line 541
    iget-byte v5, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_front_rear:B

    aput-byte v5, v4, v9

    int-to-byte v6, v3

    aput-byte v6, v4, v10

    const/4 v11, 0x4

    new-array v11, v11, [B

    aput-byte v18, v11, v8

    aput-byte v16, v11, v9

    aput-byte v5, v11, v10

    aput-byte v6, v11, v7

    invoke-static {v4, v11, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportMcuDataTwoArray([B[BLandroid/content/Context;)V

    goto/16 :goto_10

    .line 809
    :pswitch_21
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v6, "TOYOTA_BINARY"

    if-eqz v4, :cond_4e

    .line 810
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SettingManager.getInstance().reportCanbusInfo_amplifier_bass"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v5, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_bass:B

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [B

    const/4 v6, 0x0

    aput-byte v18, v5, v6

    const/4 v6, 0x1

    aput-byte v16, v5, v6

    iget-byte v6, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_bass:B

    const/4 v7, 0x2

    aput-byte v6, v5, v7

    int-to-byte v6, v3

    const/4 v7, 0x3

    aput-byte v6, v5, v7

    invoke-virtual {v4, v5}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_10

    .line 813
    :cond_4e
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 814
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SettingManager.getInstance().reportCanbusInfo_amplifier_middle"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-byte v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v4

    const/4 v6, 0x4

    new-array v6, v6, [B

    const/4 v7, 0x0

    aput-byte v18, v6, v7

    const/4 v7, 0x1

    aput-byte v16, v6, v7

    iget-byte v7, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_middle:B

    const/4 v8, 0x2

    aput-byte v7, v6, v8

    const/4 v7, 0x3

    aput-byte v5, v6, v7

    invoke-virtual {v4, v6}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_10

    .line 817
    :cond_4f
    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 818
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SettingManager.getInstance().reportCanbusInfo_amplifier_treble"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-byte v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v4

    const/4 v6, 0x4

    new-array v6, v6, [B

    const/4 v7, 0x0

    aput-byte v18, v6, v7

    const/4 v7, 0x1

    aput-byte v16, v6, v7

    iget-byte v7, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_treble:B

    const/4 v8, 0x2

    aput-byte v7, v6, v8

    const/4 v7, 0x3

    aput-byte v5, v6, v7

    invoke-virtual {v4, v6}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto :goto_10

    .line 821
    :cond_50
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_51

    .line 822
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SettingManager.getInstance().reportCanbusInfo_amplifier_left_right"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-byte v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v4

    const/4 v6, 0x4

    new-array v6, v6, [B

    const/4 v7, 0x0

    aput-byte v18, v6, v7

    const/4 v7, 0x1

    aput-byte v16, v6, v7

    iget-byte v7, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_left_right:B

    const/4 v8, 0x2

    aput-byte v7, v6, v8

    const/4 v7, 0x3

    aput-byte v5, v6, v7

    invoke-virtual {v4, v6}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto :goto_10

    .line 825
    :cond_51
    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 826
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SettingManager.getInstance().reportCanbusInfo_amplifier_front_rear"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-byte v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v4

    const/4 v6, 0x4

    new-array v6, v6, [B

    const/4 v7, 0x0

    aput-byte v18, v6, v7

    const/4 v7, 0x1

    aput-byte v16, v6, v7

    iget-byte v7, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->amplifier_front_rear:B

    const/4 v8, 0x2

    aput-byte v7, v6, v8

    const/4 v7, 0x3

    aput-byte v5, v6, v7

    invoke-virtual {v4, v6}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    :cond_52
    :goto_10
    int-to-byte v3, v3

    .line 917
    invoke-direct {v0, v2, v1, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->saveAmpCmdVals(Landroid/content/Context;Ljava/lang/String;B)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_c
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_6
        :pswitch_1
        :pswitch_9
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_f
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1f
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1d
        :pswitch_1c
        :pswitch_1c
        :pswitch_1b
        :pswitch_1b
        :pswitch_1a
        :pswitch_1a
        :pswitch_19
        :pswitch_1f
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_12
        :pswitch_19
        :pswitch_11
        :pswitch_1c
        :pswitch_1c
        :pswitch_10
        :pswitch_10
        :pswitch_1e
    .end packed-switch

    :array_0
    .array-data 1
        0x2t
        0x0t
        0xat
        0xat
        0xat
        0xat
        0xat
    .end array-data

    :array_1
    .array-data 1
        0x16t
        0x7t
        0xat
        0xat
    .end array-data

    :array_2
    .array-data 1
        0x16t
        0x8t
        0xat
        0xat
        0xat
    .end array-data

    nop

    :array_3
    .array-data 1
        0x16t
        -0x7bt
        0x1et
        0xat
        0xat
        0xat
        0xat
        0xat
    .end array-data

    :array_4
    .array-data 1
        0x16t
        -0x7dt
        0x1ct
        0xat
        0xat
        0xat
        0xat
        0xat
        0x0t
    .end array-data
.end method

.method public reportDestroy(Landroid/content/Context;)V
    .locals 0

    .line 1502
    invoke-static {p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface;->unbindService(Landroid/content/Context;)V

    return-void
.end method

.method public reportEQInfo(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 927
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$3;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x4

    const/4 v1, 0x2

    if-ne p1, v0, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    return-void

    .line 934
    :cond_2
    :goto_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v2

    const/4 v3, 0x6

    new-array v3, v3, [B

    const/16 v4, 0x16

    const/4 v5, 0x0

    aput-byte v4, v3, v5

    const/4 v4, 0x1

    const/16 v6, 0x9

    aput-byte v6, v3, v4

    const/16 v4, 0x12

    aput-byte v4, v3, v1

    const/4 v1, 0x3

    int-to-byte p1, p1

    aput-byte p1, v3, v1

    aput-byte v5, v3, v0

    const/4 p1, 0x5

    aput-byte v5, v3, p1

    invoke-virtual {v2, v3}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    :goto_1
    return-void
.end method

.method public reportLoud(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 920
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$3;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 922
    :cond_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/16 v3, 0x16

    aput-byte v3, v1, v2

    const/4 v2, 0x1

    const/16 v3, 0x9

    aput-byte v3, v1, v2

    const/4 v2, 0x2

    const/16 v3, 0x11

    aput-byte v3, v1, v2

    const/4 v2, 0x3

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    :goto_0
    return-void
.end method

.method public setValFix()V
    .locals 7

    .line 1274
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus$3;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_1

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1

    const/16 v5, 0x35

    const/16 v6, 0x8

    if-eq v0, v5, :cond_0

    packed-switch v0, :pswitch_data_0

    const/16 v1, 0xa

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    .line 1335
    iput-byte v3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->balaceFix:B

    .line 1336
    iput-byte v3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->trebFix:B

    goto :goto_0

    .line 1327
    :pswitch_0
    iput-byte v4, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->trebFix:B

    .line 1328
    iput-byte v4, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->balaceFix:B

    goto :goto_0

    .line 1315
    :pswitch_1
    iput-byte v1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->trebFix:B

    .line 1316
    iput-byte v1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->balaceFix:B

    goto :goto_0

    .line 1331
    :pswitch_2
    iput-byte v1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->trebFix:B

    .line 1332
    iput-byte v6, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->balaceFix:B

    goto :goto_0

    :pswitch_3
    const/16 v0, -0x9

    .line 1322
    iput-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->trebFix:B

    .line 1323
    iput-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->balaceFix:B

    goto :goto_0

    .line 1291
    :pswitch_4
    iput-byte v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->trebFix:B

    .line 1292
    iput-byte v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->balaceFix:B

    goto :goto_0

    .line 1276
    :pswitch_5
    iput-byte v1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->trebFix:B

    .line 1277
    iput-byte v3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->balaceFix:B

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    .line 1311
    iput-byte v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->trebFix:B

    .line 1312
    iput-byte v6, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->balaceFix:B

    goto :goto_0

    .line 1307
    :cond_1
    :pswitch_6
    iput-byte v1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->trebFix:B

    .line 1308
    iput-byte v3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/AmplifierRepCanbus;->balaceFix:B

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x17
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x39
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
