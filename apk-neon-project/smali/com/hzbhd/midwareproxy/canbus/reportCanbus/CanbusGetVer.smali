.class public Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanbusGetVer;
.super Ljava/lang/Object;
.source "CanbusGetVer.java"


# static fields
.field private static mCanVerGetCanbus:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanbusGetVer;


# instance fields
.field private strCanVersion:Ljava/lang/String;

.field private verCmdHead:B

.field private version:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "---"

    .line 14
    iput-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanbusGetVer;->strCanVersion:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanbusGetVer;
    .locals 2

    const-class v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanbusGetVer;

    monitor-enter v0

    .line 19
    :try_start_0
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanbusGetVer;->mCanVerGetCanbus:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanbusGetVer;

    if-nez v1, :cond_0

    .line 20
    new-instance v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanbusGetVer;

    invoke-direct {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanbusGetVer;-><init>()V

    sput-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanbusGetVer;->mCanVerGetCanbus:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanbusGetVer;

    .line 22
    :cond_0
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanbusGetVer;->mCanVerGetCanbus:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanbusGetVer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getCanbusInfo(Landroid/content/Context;[B)Ljava/lang/String;
    .locals 13

    const/4 v0, 0x0

    .line 27
    aget-byte v1, p2, v0

    const/16 v2, 0x55

    if-eq v1, v2, :cond_0

    .line 28
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanbusGetVer;->strCanVersion:Ljava/lang/String;

    return-object p1

    .line 31
    :cond_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isCanSupplySimple()Z

    move-result v1

    const/16 v3, 0xf

    const-string v4, "getCanbusInfo"

    const/4 v5, 0x6

    const/16 v6, 0x30

    const/4 v7, 0x1

    if-nez v1, :cond_5

    .line 32
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isCanSupplyBinary()Z

    move-result v1

    if-nez v1, :cond_5

    .line 33
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isCanSupplyRaise()Z

    move-result v1

    if-nez v1, :cond_5

    .line 34
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isCanSupplyXinbas()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 78
    :cond_1
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isCanSupplyHiworld()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, -0x10

    .line 79
    iput-byte v1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanbusGetVer;->verCmdHead:B

    goto :goto_1

    .line 81
    :cond_2
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanbusGetVer$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v8

    invoke-virtual {v8}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v8

    aget v1, v1, v8

    if-eq v1, v3, :cond_4

    const/16 v8, 0x10

    if-eq v1, v8, :cond_3

    goto :goto_1

    .line 87
    :cond_3
    iput-byte v6, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanbusGetVer;->verCmdHead:B

    goto :goto_1

    :cond_4
    const/16 v1, 0x73

    .line 83
    iput-byte v1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanbusGetVer;->verCmdHead:B

    goto :goto_1

    :cond_5
    :goto_0
    const-string/jumbo v1, "ver-------------------"

    .line 35
    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iput-byte v6, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanbusGetVer;->verCmdHead:B

    .line 37
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanbusGetVer$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v8

    invoke-virtual {v8}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v8

    aget v1, v1, v8

    const/16 v8, 0x7f

    packed-switch v1, :pswitch_data_0

    .line 71
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isCanSupplyXinbas()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 72
    iput-byte v8, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanbusGetVer;->verCmdHead:B

    goto :goto_1

    :pswitch_0
    const/4 v1, -0x1

    .line 68
    iput-byte v1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanbusGetVer;->verCmdHead:B

    goto :goto_1

    .line 65
    :pswitch_1
    iput-byte v5, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanbusGetVer;->verCmdHead:B

    goto :goto_1

    :pswitch_2
    const/16 v1, 0xd

    .line 62
    iput-byte v1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanbusGetVer;->verCmdHead:B

    goto :goto_1

    .line 59
    :pswitch_3
    iput-byte v6, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanbusGetVer;->verCmdHead:B

    goto :goto_1

    .line 54
    :pswitch_4
    iput-byte v8, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanbusGetVer;->verCmdHead:B

    goto :goto_1

    :pswitch_5
    const/16 v1, 0x71

    .line 41
    iput-byte v1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanbusGetVer;->verCmdHead:B

    move v1, v0

    goto :goto_2

    .line 74
    :cond_6
    iput-byte v6, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanbusGetVer;->verCmdHead:B

    :goto_1
    move v1, v7

    :goto_2
    const/4 v6, 0x2

    if-eqz v1, :cond_9

    .line 93
    aget-byte p1, p2, v0

    if-ne p1, v2, :cond_8

    aget-byte p1, p2, v7

    iget-byte v1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanbusGetVer;->verCmdHead:B

    if-ne p1, v1, :cond_8

    .line 94
    array-length p1, p2

    sub-int/2addr p1, v6

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanbusGetVer;->version:[B

    .line 95
    :goto_3
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanbusGetVer;->version:[B

    array-length v1, p1

    if-ge v0, v1, :cond_7

    add-int/lit8 v1, v0, 0x2

    .line 96
    aget-byte v1, p2, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 98
    :cond_7
    new-instance p1, Ljava/lang/String;

    iget-object p2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanbusGetVer;->version:[B

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>([B)V

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanbusGetVer;->strCanVersion:Ljava/lang/String;

    .line 100
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "ver-------------------strCanVersion="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanbusGetVer;->strCanVersion:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 102
    :cond_9
    aget-byte v1, p2, v7

    iget-byte v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanbusGetVer;->verCmdHead:B

    if-eq v1, v2, :cond_a

    .line 103
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanbusGetVer;->strCanVersion:Ljava/lang/String;

    return-object p1

    .line 105
    :cond_a
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanbusGetVer$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x5

    const/4 v4, 0x4

    const-string v8, "-"

    const/16 v9, 0xa

    const/16 v10, 0x9

    const/16 v11, 0x8

    if-eq v1, v7, :cond_11

    if-eq v1, v6, :cond_11

    const/4 v12, 0x3

    if-eq v1, v12, :cond_d

    if-eq v1, v3, :cond_b

    goto/16 :goto_6

    .line 137
    :cond_b
    array-length v1, p2

    sub-int/2addr v1, v6

    new-array v2, v1, [B

    :goto_4
    if-ge v0, v1, :cond_c

    add-int/lit8 v3, v0, 0x2

    .line 139
    aget-byte v3, p2, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 141
    :cond_c
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v2}, Ljava/lang/String;-><init>([B)V

    iput-object p2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanbusGetVer;->strCanVersion:Ljava/lang/String;

    .line 142
    new-instance p2, Landroid/content/Intent;

    const-string v0, "hzbhdrefreshCanVersion"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanbusGetVer;->strCanVersion:Ljava/lang/String;

    const-string v1, "refreshCanVersion"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 117
    :cond_d
    aget-byte p1, p2, v12

    const-string v0, "Compatible"

    if-eqz p1, :cond_10

    if-eq p1, v7, :cond_f

    if-eq p1, v6, :cond_e

    goto :goto_5

    :cond_e
    const-string v0, "Pundo"

    goto :goto_5

    :cond_f
    const-string v0, "Brave"

    .line 128
    :cond_10
    :goto_5
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x7

    .line 129
    aget-byte v1, p2, v1

    int-to-char v1, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 130
    aget-byte v1, p2, v11

    int-to-char v1, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 131
    aget-byte v1, p2, v10

    int-to-char v1, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 132
    aget-byte v1, p2, v9

    int-to-char v1, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FIAT-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-20"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v0, p2, v4

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byte2HexString(B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v0, p2, v2

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byte2HexString(B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte p2, p2, v5

    .line 134
    invoke-static {p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byte2HexString(B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanbusGetVer;->strCanVersion:Ljava/lang/String;

    goto :goto_6

    .line 108
    :cond_11
    new-instance p1, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PSA-V"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v1, p2, v11

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    aget-byte v1, p2, v10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    aget-byte v1, p2, v9

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v1, p2, v4

    .line 109
    invoke-static {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byte2HexString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v1, p2, v2

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byte2HexString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte p2, p2, v5

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byte2HexString(B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanbusGetVer;->strCanVersion:Ljava/lang/String;

    .line 148
    :goto_6
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanbusGetVer;->strCanVersion:Ljava/lang/String;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
