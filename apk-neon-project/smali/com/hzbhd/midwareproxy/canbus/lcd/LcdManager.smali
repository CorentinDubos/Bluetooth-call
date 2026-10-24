.class public Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;
.super Ljava/lang/Object;
.source "LcdManager.java"


# static fields
.field static manager:Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;


# instance fields
.field count_time:J

.field mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 174
    iput-wide v0, p0, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->count_time:J

    return-void
.end method

.method private clearDot(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap$icons;)V
    .locals 1

    const/4 v0, 0x0

    .line 237
    :try_start_0
    invoke-static {p1, p2, v0}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap$icons;Z)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private clearDot(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;)V
    .locals 1

    const/4 v0, 0x0

    .line 273
    :try_start_0
    invoke-static {p1, p2, v0}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;Z)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 275
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private clearDot(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap2$HTT2_icons;)V
    .locals 1

    const/4 v0, 0x0

    .line 282
    :try_start_0
    invoke-static {p1, p2, v0}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap2$HTT2_icons;Z)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 284
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private clearDot(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;)V
    .locals 1

    const/4 v0, 0x0

    .line 255
    :try_start_0
    invoke-static {p1, p2, v0}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;Z)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 257
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private clearDot(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2$ht2_icons;)V
    .locals 1

    const/4 v0, 0x0

    .line 291
    :try_start_0
    invoke-static {p1, p2, v0}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2$ht2_icons;Z)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 293
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private clearDot(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/LKMap$LK_icons;)V
    .locals 1

    const/4 v0, 0x0

    .line 264
    :try_start_0
    invoke-static {p1, p2, v0}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/LKMap$LK_icons;Z)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 266
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private clearDot(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/YHTMap$yht_icons;)V
    .locals 1

    const/4 v0, 0x0

    .line 246
    :try_start_0
    invoke-static {p1, p2, v0}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/YHTMap$yht_icons;Z)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 248
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private clearString(Landroid/content/Context;)V
    .locals 2

    .line 299
    invoke-static {p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isYHT(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->KT:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x20

    .line 301
    :try_start_0
    invoke-static {p1, v0}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_9_lcdPrintfString(Landroid/content/Context;I)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 303
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static getCurrentTimeString(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 631
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "time_12_24"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "24"

    .line 633
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 634
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "HH"

    goto :goto_0

    :cond_0
    const-string p0, "hh"

    :goto_0
    return-object p0
.end method

.method public static declared-synchronized getInstance()Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;
    .locals 2

    const-class v0, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->manager:Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;

    if-nez v1, :cond_0

    .line 27
    new-instance v1, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;

    invoke-direct {v1}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;-><init>()V

    sput-object v1, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->manager:Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;

    .line 29
    :cond_0
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->manager:Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private refreshBysource(Landroid/content/Context;Z)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "LCD_MEDIA_SOURCE_ID"

    .line 380
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 381
    invoke-static {}, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->values()[Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v6

    aget-object v4, v6, v4

    if-nez p2, :cond_0

    .line 383
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "LCD_DISC_STATE"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "isExistDisc"

    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 384
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "hzbhd_LCD_isFloatView"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 386
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "PhoneState"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 387
    sget-object v7, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager$2;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$Util$SingleSpinMachine:[I

    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isYHT(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    move-result-object v8

    invoke-virtual {v8}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->ordinal()I

    move-result v8

    aget v7, v7, v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-wide/16 v9, 0x12c

    const-string v11, "PowerIsOff"

    const-string v12, "SourceSwitchRepCanbus_device"

    const/4 v13, 0x3

    const-string v14, "LCD_RADIO_DOT"

    const/4 v15, 0x1

    packed-switch v7, :pswitch_data_0

    goto/16 :goto_16

    :pswitch_0
    if-ne v6, v15, :cond_2

    .line 395
    :try_start_1
    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isYHT(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    move-result-object v3

    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->YHT:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    if-ne v3, v4, :cond_1

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->YHT:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    invoke-virtual {v1, v2, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->clearAllPriIcont(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;)V

    :cond_1
    const-string v3, "INCOMING"

    .line 396
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_lcdPrintfString(Landroid/content/Context;[B)[B

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->reportTempLcdInfor([BLandroid/content/Context;)V

    goto/16 :goto_16

    :cond_2
    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    .line 398
    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isYHT(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    move-result-object v3

    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->YHT:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    if-ne v3, v4, :cond_3

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->YHT:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    invoke-virtual {v1, v2, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->clearAllPriIcont(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;)V

    :cond_3
    const-string v3, " DIALING"

    .line 399
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_lcdPrintfString(Landroid/content/Context;[B)[B

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->reportTempLcdInfor([BLandroid/content/Context;)V

    goto/16 :goto_16

    :cond_4
    if-ne v6, v13, :cond_6

    .line 401
    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isYHT(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    move-result-object v3

    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->YHT:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    if-ne v3, v4, :cond_5

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->YHT:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    invoke-virtual {v1, v2, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->clearAllPriIcont(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;)V

    :cond_5
    const-string v3, " CALLING"

    .line 402
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_lcdPrintfString(Landroid/content/Context;[B)[B

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->reportTempLcdInfor([BLandroid/content/Context;)V

    goto/16 :goto_16

    .line 403
    :cond_6
    sget-object v6, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->CAMERA:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    invoke-virtual {v6}, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->ordinal()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v6, v3, :cond_8

    .line 404
    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isYHT(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    move-result-object v3

    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->YHT:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    if-ne v3, v4, :cond_7

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->YHT:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    invoke-virtual {v1, v2, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->clearAllPriIcont(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;)V

    :cond_7
    const-string v3, " REVERSE"

    .line 405
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_lcdPrintfString(Landroid/content/Context;[B)[B

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->reportTempLcdInfor([BLandroid/content/Context;)V

    goto/16 :goto_16

    .line 406
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v12, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v15, :cond_a

    .line 407
    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isYHT(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    move-result-object v3

    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->YHT:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    if-ne v3, v4, :cond_9

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->YHT:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    invoke-virtual {v1, v2, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->clearAllPriIcont(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;)V

    :cond_9
    const-string v3, "  MEDIA "

    .line 408
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_lcdPrintfString(Landroid/content/Context;[B)[B

    move-result-object v3

    const/16 v4, 0xd

    invoke-virtual {v1, v3, v2, v4}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->reportLcdInfor([BLandroid/content/Context;I)V

    goto/16 :goto_16

    :cond_a
    if-nez p2, :cond_b

    .line 410
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v11, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v15, :cond_b

    return-void

    :cond_b
    const-string v3, "LcdLog"

    .line 411
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mMEDIA_SOURCE_ID ="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager$2;->$SwitchMap$com$hzbhd$midware$constant$channelManagerDef$MEDIA_SOURCE_ID:[I

    invoke-virtual {v4}, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/16 v4, 0x18

    packed-switch v3, :pswitch_data_1

    :pswitch_1
    goto/16 :goto_16

    .line 509
    :pswitch_2
    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isYHT(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    move-result-object v3

    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->YHT:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    if-ne v3, v5, :cond_c

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->YHT:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    invoke-virtual {v1, v2, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->clearAllPriIcont(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 511
    :cond_c
    :try_start_2
    invoke-static {v9, v10}, Lcom/hzbhd/midwareproxy/utils/ThreadUtils;->sleep(J)V

    const-string v3, "NO MEDIA"

    .line 512
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_lcdPrintfString(Landroid/content/Context;[B)[B

    move-result-object v3

    invoke-virtual {v1, v3, v2, v4}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->reportLcdInfor([BLandroid/content/Context;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_16

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 514
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_16

    .line 505
    :pswitch_3
    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isYHT(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    move-result-object v3

    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->YHT:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    if-ne v3, v5, :cond_d

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->YHT:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    invoke-virtual {v1, v2, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->clearAllPriIcont(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;)V

    :cond_d
    const-string v3, "  VIDEO "

    .line 506
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_lcdPrintfString(Landroid/content/Context;[B)[B

    move-result-object v3

    invoke-virtual {v1, v3, v2, v4}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->reportLcdInfor([BLandroid/content/Context;I)V

    goto/16 :goto_16

    .line 439
    :pswitch_4
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager$2;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$Util$SingleSpinMachine:[I

    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isYHT(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->ordinal()I

    move-result v4

    aget v3, v3, v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    const/16 v4, 0xf

    const-string v6, "LCD_RADIO_FREQ"

    const/16 v8, 0x20

    const-string v9, "LCD_RADIO_PRESET"

    if-eq v3, v7, :cond_1f

    if-eq v3, v13, :cond_1c

    const/4 v7, 0x4

    if-eq v3, v7, :cond_14

    const/4 v7, 0x5

    if-eq v3, v7, :cond_11

    const/4 v7, 0x6

    if-eq v3, v7, :cond_e

    goto/16 :goto_16

    .line 485
    :cond_e
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v9, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_f

    invoke-static {v2, v8}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_9_lcdPrintfString(Landroid/content/Context;I)[B

    goto :goto_0

    .line 486
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v9, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_9_lcdPrintfString(Landroid/content/Context;I)[B

    .line 487
    :goto_0
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap$icons;->E_ICON_DOT:Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap$icons;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7, v14, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v15, :cond_10

    move v5, v15

    :cond_10
    invoke-static {v2, v3, v5}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap$icons;Z)[B

    .line 488
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3c

    .line 490
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_lcdPrintfString(Landroid/content/Context;[B)[B

    move-result-object v3

    invoke-virtual {v1, v3, v2, v4}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->reportLcdInfor([BLandroid/content/Context;I)V

    goto/16 :goto_16

    .line 473
    :cond_11
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->HTT2:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    invoke-virtual {v1, v2, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->clearAllPriIcont(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;)V

    .line 474
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v9, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_12

    invoke-static {v2, v8}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_9_lcdPrintfString(Landroid/content/Context;I)[B

    goto :goto_1

    .line 475
    :cond_12
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v9, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_9_lcdPrintfString(Landroid/content/Context;I)[B

    .line 477
    :goto_1
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;->getIntance()Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7, v14, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v15, :cond_13

    move v5, v15

    :cond_13
    invoke-virtual {v3, v5}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;->setIconDot(Z)V

    .line 478
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3c

    .line 480
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_lcdPrintfString(Landroid/content/Context;[B)[B

    move-result-object v3

    invoke-virtual {v1, v3, v2, v4}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->reportLcdInfor([BLandroid/content/Context;I)V

    goto/16 :goto_16

    .line 458
    :cond_14
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->HONG:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    invoke-virtual {v1, v2, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->clearAllPriIcont(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;)V

    .line 459
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v9, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_15

    invoke-static {v2, v8}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_9_lcdPrintfString(Landroid/content/Context;I)[B

    goto :goto_2

    .line 460
    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v9, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_9_lcdPrintfString(Landroid/content/Context;I)[B

    .line 461
    :goto_2
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;->E_ICON_PTY:Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;->E_ICON_PTY:Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;

    invoke-virtual {v8}, Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v15, :cond_16

    move v7, v15

    goto :goto_3

    :cond_16
    move v7, v5

    :goto_3
    invoke-static {v2, v3, v7}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;Z)[B

    .line 462
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;->E_ICON_AF:Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;->E_ICON_AF:Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;

    invoke-virtual {v8}, Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v15, :cond_17

    move v7, v15

    goto :goto_4

    :cond_17
    move v7, v5

    :goto_4
    invoke-static {v2, v3, v7}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;Z)[B

    .line 463
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;->E_ICON_TP:Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;->E_ICON_TP:Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;

    invoke-virtual {v8}, Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v15, :cond_18

    move v7, v15

    goto :goto_5

    :cond_18
    move v7, v5

    :goto_5
    invoke-static {v2, v3, v7}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;Z)[B

    .line 464
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;->E_ICON_TA:Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;->E_ICON_TA:Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;

    invoke-virtual {v8}, Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v15, :cond_19

    move v7, v15

    goto :goto_6

    :cond_19
    move v7, v5

    :goto_6
    invoke-static {v2, v3, v7}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;Z)[B

    .line 465
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;->E_ICON_ST:Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;->E_ICON_ST:Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;

    invoke-virtual {v8}, Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v15, :cond_1a

    move v7, v15

    goto :goto_7

    :cond_1a
    move v7, v5

    :goto_7
    invoke-static {v2, v3, v7}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;Z)[B

    .line 466
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;->E_ICON_DOT:Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7, v14, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v15, :cond_1b

    move v5, v15

    :cond_1b
    invoke-static {v2, v3, v5}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;Z)[B

    .line 467
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3c

    .line 469
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_lcdPrintfString(Landroid/content/Context;[B)[B

    move-result-object v3

    invoke-virtual {v1, v3, v2, v4}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->reportLcdInfor([BLandroid/content/Context;I)V

    goto/16 :goto_16

    .line 494
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v9, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1d

    invoke-static {v2, v8}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_9_lcdPrintfString(Landroid/content/Context;I)[B

    goto :goto_8

    .line 495
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v9, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_9_lcdPrintfString(Landroid/content/Context;I)[B

    .line 496
    :goto_8
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;->getIntance()Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7, v14, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v15, :cond_1e

    move v5, v15

    :cond_1e
    invoke-virtual {v3, v5}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;->setIconDot(Z)V

    .line 497
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3c

    .line 499
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_lcdPrintfString(Landroid/content/Context;[B)[B

    move-result-object v3

    invoke-virtual {v1, v3, v2, v4}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->reportLcdInfor([BLandroid/content/Context;I)V

    goto/16 :goto_16

    .line 441
    :cond_1f
    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isYHT(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    move-result-object v3

    sget-object v7, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->YHT:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    if-ne v3, v7, :cond_20

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->YHT:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    invoke-virtual {v1, v2, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->clearAllPriIcont(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;)V

    .line 442
    :cond_20
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v9, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_21

    invoke-static {v2, v8}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_9_lcdPrintfString(Landroid/content/Context;I)[B

    goto :goto_9

    .line 443
    :cond_21
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v9, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_9_lcdPrintfString(Landroid/content/Context;I)[B

    .line 444
    :goto_9
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/lcd/YHTMap$yht_icons;->E_ICON_PTY:Lcom/hzbhd/midwareproxy/canbus/lcd/YHTMap$yht_icons;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/hzbhd/midwareproxy/canbus/lcd/YHTMap$yht_icons;->E_ICON_PTY:Lcom/hzbhd/midwareproxy/canbus/lcd/YHTMap$yht_icons;

    invoke-virtual {v8}, Lcom/hzbhd/midwareproxy/canbus/lcd/YHTMap$yht_icons;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v15, :cond_22

    move v7, v15

    goto :goto_a

    :cond_22
    move v7, v5

    :goto_a
    invoke-static {v2, v3, v7}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/YHTMap$yht_icons;Z)[B

    .line 445
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/lcd/YHTMap$yht_icons;->E_ICON_AF:Lcom/hzbhd/midwareproxy/canbus/lcd/YHTMap$yht_icons;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/hzbhd/midwareproxy/canbus/lcd/YHTMap$yht_icons;->E_ICON_AF:Lcom/hzbhd/midwareproxy/canbus/lcd/YHTMap$yht_icons;

    invoke-virtual {v8}, Lcom/hzbhd/midwareproxy/canbus/lcd/YHTMap$yht_icons;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v15, :cond_23

    move v7, v15

    goto :goto_b

    :cond_23
    move v7, v5

    :goto_b
    invoke-static {v2, v3, v7}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/YHTMap$yht_icons;Z)[B

    .line 446
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/lcd/YHTMap$yht_icons;->E_ICON_TP:Lcom/hzbhd/midwareproxy/canbus/lcd/YHTMap$yht_icons;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/hzbhd/midwareproxy/canbus/lcd/YHTMap$yht_icons;->E_ICON_TP:Lcom/hzbhd/midwareproxy/canbus/lcd/YHTMap$yht_icons;

    invoke-virtual {v8}, Lcom/hzbhd/midwareproxy/canbus/lcd/YHTMap$yht_icons;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v15, :cond_24

    move v7, v15

    goto :goto_c

    :cond_24
    move v7, v5

    :goto_c
    invoke-static {v2, v3, v7}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/YHTMap$yht_icons;Z)[B

    .line 447
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/lcd/YHTMap$yht_icons;->E_ICON_TA:Lcom/hzbhd/midwareproxy/canbus/lcd/YHTMap$yht_icons;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/hzbhd/midwareproxy/canbus/lcd/YHTMap$yht_icons;->E_ICON_TA:Lcom/hzbhd/midwareproxy/canbus/lcd/YHTMap$yht_icons;

    invoke-virtual {v8}, Lcom/hzbhd/midwareproxy/canbus/lcd/YHTMap$yht_icons;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v15, :cond_25

    move v7, v15

    goto :goto_d

    :cond_25
    move v7, v5

    :goto_d
    invoke-static {v2, v3, v7}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/YHTMap$yht_icons;Z)[B

    .line 448
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/lcd/YHTMap$yht_icons;->E_ICON_ST:Lcom/hzbhd/midwareproxy/canbus/lcd/YHTMap$yht_icons;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/hzbhd/midwareproxy/canbus/lcd/YHTMap$yht_icons;->E_ICON_ST:Lcom/hzbhd/midwareproxy/canbus/lcd/YHTMap$yht_icons;

    invoke-virtual {v8}, Lcom/hzbhd/midwareproxy/canbus/lcd/YHTMap$yht_icons;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v15, :cond_26

    move v7, v15

    goto :goto_e

    :cond_26
    move v7, v5

    :goto_e
    invoke-static {v2, v3, v7}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/YHTMap$yht_icons;Z)[B

    .line 449
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/lcd/YHTMap$yht_icons;->E_ICON_DOT:Lcom/hzbhd/midwareproxy/canbus/lcd/YHTMap$yht_icons;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7, v14, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v15, :cond_27

    move v5, v15

    :cond_27
    invoke-static {v2, v3, v5}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/YHTMap$yht_icons;Z)[B

    .line 450
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3c

    .line 453
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 454
    invoke-static {v2, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_lcdPrintfString(Landroid/content/Context;[B)[B

    move-result-object v3

    invoke-virtual {v1, v3, v2, v4}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->reportLcdInfor([BLandroid/content/Context;I)V

    goto/16 :goto_16

    .line 434
    :pswitch_5
    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isYHT(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    move-result-object v3

    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->YHT:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    if-ne v3, v5, :cond_28

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->YHT:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    invoke-virtual {v1, v2, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->clearAllPriIcont(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;)V

    :cond_28
    const-string v3, "  MUSIC "

    .line 435
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_lcdPrintfString(Landroid/content/Context;[B)[B

    move-result-object v3

    invoke-virtual {v1, v3, v2, v4}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->reportLcdInfor([BLandroid/content/Context;I)V

    goto/16 :goto_16

    .line 430
    :pswitch_6
    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isYHT(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    move-result-object v3

    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->YHT:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    if-ne v3, v5, :cond_29

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->YHT:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    invoke-virtual {v1, v2, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->clearAllPriIcont(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;)V

    :cond_29
    const-string v3, "   ATV  "

    .line 431
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_lcdPrintfString(Landroid/content/Context;[B)[B

    move-result-object v3

    invoke-virtual {v1, v3, v2, v4}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->reportLcdInfor([BLandroid/content/Context;I)V

    goto/16 :goto_16

    .line 426
    :pswitch_7
    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isYHT(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    move-result-object v3

    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->YHT:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    if-ne v3, v5, :cond_2a

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->YHT:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    invoke-virtual {v1, v2, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->clearAllPriIcont(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;)V

    :cond_2a
    const-string v3, "   DTV  "

    .line 427
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_lcdPrintfString(Landroid/content/Context;[B)[B

    move-result-object v3

    invoke-virtual {v1, v3, v2, v4}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->reportLcdInfor([BLandroid/content/Context;I)V

    goto/16 :goto_16

    .line 422
    :pswitch_8
    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isYHT(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    move-result-object v3

    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->YHT:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    if-ne v3, v5, :cond_2b

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->YHT:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    invoke-virtual {v1, v2, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->clearAllPriIcont(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;)V

    :cond_2b
    const-string v3, "BT MUSIC"

    .line 423
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_lcdPrintfString(Landroid/content/Context;[B)[B

    move-result-object v3

    invoke-virtual {v1, v3, v2, v4}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->reportLcdInfor([BLandroid/content/Context;I)V

    goto/16 :goto_16

    .line 418
    :pswitch_9
    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isYHT(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    move-result-object v3

    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->YHT:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    if-ne v3, v5, :cond_2c

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->YHT:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    invoke-virtual {v1, v2, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->clearAllPriIcont(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;)V

    :cond_2c
    const-string v3, "   AUX  "

    .line 419
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_lcdPrintfString(Landroid/content/Context;[B)[B

    move-result-object v3

    invoke-virtual {v1, v3, v2, v4}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->reportLcdInfor([BLandroid/content/Context;I)V

    goto/16 :goto_16

    .line 414
    :pswitch_a
    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isYHT(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    move-result-object v3

    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->YHT:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    if-ne v3, v4, :cond_2d

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->YHT:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    invoke-virtual {v1, v2, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->clearAllPriIcont(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;)V

    :cond_2d
    const-string v3, "  DISC  "

    .line 415
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_lcdPrintfString(Landroid/content/Context;[B)[B

    move-result-object v3

    const/16 v4, 0x11

    invoke-virtual {v1, v3, v2, v4}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->reportLcdInfor([BLandroid/content/Context;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_16

    :pswitch_b
    const-string v7, "mm"

    const-string v8, "LCD_START_TIMER"

    if-eqz v6, :cond_2e

    .line 522
    :try_start_5
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->KT:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    invoke-virtual {v1, v2, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->clearAllPriIcont(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;)V

    .line 523
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v8, v15}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 524
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->getCurrentTimeString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " BT "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_lcdPrintfString(Landroid/content/Context;[B)[B

    goto/16 :goto_15

    .line 525
    :cond_2e
    sget-object v6, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->CAMERA:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    invoke-virtual {v6}, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->ordinal()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-static {v9, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v6, v3, :cond_2f

    .line 526
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->KT:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    invoke-virtual {v1, v2, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->clearAllPriIcont(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;)V

    .line 527
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v8, v15}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 528
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->getCurrentTimeString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "REVE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_lcdPrintfString(Landroid/content/Context;[B)[B

    goto/16 :goto_15

    .line 529
    :cond_2f
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v12, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    const-string v6, "MODE"

    if-ne v3, v15, :cond_30

    .line 530
    :try_start_6
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->KT:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    invoke-virtual {v1, v2, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->clearAllPriIcont(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;)V

    .line 531
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v8, v15}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 532
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->getCurrentTimeString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_lcdPrintfString(Landroid/content/Context;[B)[B

    goto/16 :goto_15

    :cond_30
    if-nez p2, :cond_31

    .line 534
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v11, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v15, :cond_31

    return-void

    .line 535
    :cond_31
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager$2;->$SwitchMap$com$hzbhd$midware$constant$channelManagerDef$MEDIA_SOURCE_ID:[I

    invoke-virtual {v4}, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_2

    :pswitch_c
    goto/16 :goto_15

    .line 566
    :pswitch_d
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;->E_ICON_EQ:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;

    invoke-static {v2, v3, v15}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;Z)[B

    .line 567
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;->E_ICON_POP:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;

    invoke-static {v2, v3, v5}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;Z)[B

    .line 568
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;->E_ICON_ROCK:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;

    invoke-static {v2, v3, v5}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;Z)[B

    .line 569
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;->E_ICON_CLASS:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;

    invoke-static {v2, v3, v5}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;Z)[B

    .line 570
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;->E_ICON_LOUD:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;

    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getLoudness()Z

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;Z)[B

    .line 571
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getEQType()I

    move-result v3

    if-eq v3, v15, :cond_34

    if-eq v3, v13, :cond_33

    const/4 v4, 0x4

    if-eq v3, v4, :cond_32

    goto/16 :goto_15

    .line 579
    :cond_32
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;->E_ICON_CLASS:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;

    invoke-static {v2, v3, v15}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;Z)[B

    goto/16 :goto_15

    .line 576
    :cond_33
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;->E_ICON_ROCK:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;

    invoke-static {v2, v3, v15}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;Z)[B

    goto/16 :goto_15

    .line 573
    :cond_34
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;->E_ICON_POP:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;

    invoke-static {v2, v3, v15}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;Z)[B

    goto/16 :goto_15

    .line 537
    :pswitch_e
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->KT:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    invoke-virtual {v1, v2, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->clearAllPriIcont(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;)V

    .line 538
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v8, v15}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    const-wide/16 v3, 0x12c

    .line 540
    :try_start_7
    invoke-static {v3, v4}, Lcom/hzbhd/midwareproxy/utils/ThreadUtils;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_f

    :catch_1
    move-exception v0

    move-object v3, v0

    .line 542
    :try_start_8
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 544
    :goto_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->getCurrentTimeString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "OFF "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_lcdPrintfString(Landroid/content/Context;[B)[B

    move-result-object v3

    const/16 v4, 0x65

    .line 545
    invoke-virtual {v1, v3, v2, v4}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->reportLcdInfor([BLandroid/content/Context;I)V

    goto/16 :goto_15

    .line 614
    :pswitch_f
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->KT:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    invoke-virtual {v1, v2, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->clearAllPriIcont(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;)V

    .line 615
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v8, v15}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 616
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->getCurrentTimeString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_lcdPrintfString(Landroid/content/Context;[B)[B

    goto/16 :goto_15

    .line 548
    :pswitch_10
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->KT:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    invoke-virtual {v1, v2, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->clearAllPriIcont(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;)V

    .line 549
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v8, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 551
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "KT_LCD_RADIO_FREQ"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_35

    const-string v3, ""

    .line 555
    :cond_35
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_lcdPrintfString(Landroid/content/Context;[B)[B

    .line 556
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;->E_ICON_RDS:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;

    invoke-static {v2, v3, v15}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;Z)[B

    .line 557
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;->E_ICON_PTY:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v6, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;->E_ICON_PTY:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;

    invoke-virtual {v6}, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v15, :cond_36

    move v4, v15

    goto :goto_10

    :cond_36
    move v4, v5

    :goto_10
    invoke-static {v2, v3, v4}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;Z)[B

    .line 558
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;->E_ICON_AF:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v6, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;->E_ICON_AF:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;

    invoke-virtual {v6}, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v15, :cond_37

    move v4, v15

    goto :goto_11

    :cond_37
    move v4, v5

    :goto_11
    invoke-static {v2, v3, v4}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;Z)[B

    .line 559
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;->E_ICON_TP:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v6, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;->E_ICON_TP:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;

    invoke-virtual {v6}, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v15, :cond_38

    move v4, v15

    goto :goto_12

    :cond_38
    move v4, v5

    :goto_12
    invoke-static {v2, v3, v4}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;Z)[B

    .line 560
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;->E_ICON_TA:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v6, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;->E_ICON_TA:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;

    invoke-virtual {v6}, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v15, :cond_39

    move v4, v15

    goto :goto_13

    :cond_39
    move v4, v5

    :goto_13
    invoke-static {v2, v3, v4}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;Z)[B

    .line 561
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;->E_ICON_ST:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v6, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;->E_ICON_ST:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;

    invoke-virtual {v6}, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v15, :cond_3a

    move v4, v15

    goto :goto_14

    :cond_3a
    move v4, v5

    :goto_14
    invoke-static {v2, v3, v4}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;Z)[B

    .line 562
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;->E_ICON_DOT:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v14, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v15, :cond_3b

    move v5, v15

    :cond_3b
    invoke-static {v2, v3, v5}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;Z)[B

    .line 563
    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->reportLcdInfor(Landroid/content/Context;)V

    goto/16 :goto_15

    .line 609
    :pswitch_11
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->KT:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    invoke-virtual {v1, v2, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->clearAllPriIcont(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;)V

    .line 610
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v8, v15}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 611
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->getCurrentTimeString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_lcdPrintfString(Landroid/content/Context;[B)[B

    goto/16 :goto_15

    .line 604
    :pswitch_12
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->KT:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    invoke-virtual {v1, v2, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->clearAllPriIcont(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;)V

    .line 605
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v8, v15}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 606
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->getCurrentTimeString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "ATV "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_lcdPrintfString(Landroid/content/Context;[B)[B

    goto/16 :goto_15

    .line 599
    :pswitch_13
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->KT:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    invoke-virtual {v1, v2, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->clearAllPriIcont(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;)V

    .line 600
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v8, v15}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 601
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->getCurrentTimeString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "DTV "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_lcdPrintfString(Landroid/content/Context;[B)[B

    goto/16 :goto_15

    .line 594
    :pswitch_14
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->KT:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    invoke-virtual {v1, v2, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->clearAllPriIcont(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;)V

    .line 595
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v8, v15}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 596
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->getCurrentTimeString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "A2DP"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_lcdPrintfString(Landroid/content/Context;[B)[B

    goto/16 :goto_15

    .line 589
    :pswitch_15
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->KT:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    invoke-virtual {v1, v2, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->clearAllPriIcont(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;)V

    .line 590
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v8, v15}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 591
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->getCurrentTimeString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "AUX "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_lcdPrintfString(Landroid/content/Context;[B)[B

    goto :goto_15

    .line 584
    :pswitch_16
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->KT:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    invoke-virtual {v1, v2, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->clearAllPriIcont(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;)V

    .line 585
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v8, v15}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 586
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->getCurrentTimeString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "DISC"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_lcdPrintfString(Landroid/content/Context;[B)[B

    .line 620
    :goto_15
    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->reportLcdInfor(Landroid/content/Context;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_16

    :catch_2
    move-exception v0

    move-object v2, v0

    .line 624
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3c
    :goto_16
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_c
        :pswitch_e
        :pswitch_d
    .end packed-switch
.end method


# virtual methods
.method public declared-synchronized LCDSourceSwitch(Landroid/content/Context;Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "LcdLog"

    const-string v1, "LCDSourceSwitch|reportLcdInforByeSource"

    .line 202
    invoke-static {p1, v0, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->WLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager$2;->$SwitchMap$com$hzbhd$midware$constant$channelManagerDef$MEDIA_SOURCE_ID:[I

    invoke-virtual {p2}, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 214
    :pswitch_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "LCD_MEDIA_SOURCE_ID"

    invoke-virtual {p2}, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->ordinal()I

    move-result p2

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    const/4 p2, 0x0

    .line 217
    invoke-direct {p0, p1, p2}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->refreshBysource(Landroid/content/Context;Z)V

    .line 218
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "hzbhd_LCD_IS_SOURCE_CHANGED"

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
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

.method public clearAllPriIcont(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;)V
    .locals 3

    .line 309
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "LCD_MEDIA_SOURCE_ID"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 311
    :try_start_0
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager$2;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$Util$SingleSpinMachine:[I

    invoke-virtual {p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->ordinal()I

    move-result p2

    aget p2, v1, p2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/4 v0, 0x7

    if-eq p2, v0, :cond_0

    goto/16 :goto_0

    .line 355
    :cond_0
    sget-object p2, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2$ht2_icons;->E_ICON_PTY:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2$ht2_icons;

    invoke-static {p1, p2, v2}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2$ht2_icons;Z)[B

    .line 356
    sget-object p2, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2$ht2_icons;->E_ICON_AF:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2$ht2_icons;

    invoke-static {p1, p2, v2}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2$ht2_icons;Z)[B

    .line 357
    sget-object p2, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2$ht2_icons;->E_ICON_TA:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2$ht2_icons;

    invoke-static {p1, p2, v2}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2$ht2_icons;Z)[B

    .line 358
    sget-object p2, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2$ht2_icons;->E_ICON_TP:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2$ht2_icons;

    invoke-static {p1, p2, v2}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2$ht2_icons;Z)[B

    .line 359
    sget-object p2, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2$ht2_icons;->E_ICON_ST:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2$ht2_icons;

    invoke-static {p1, p2, v2}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2$ht2_icons;Z)[B

    goto/16 :goto_0

    .line 363
    :cond_1
    sget-object p2, Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;->E_ICON_PTY:Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;

    invoke-static {p1, p2, v2}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;Z)[B

    .line 364
    sget-object p2, Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;->E_ICON_EON:Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;

    invoke-static {p1, p2, v2}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;Z)[B

    .line 365
    sget-object p2, Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;->E_ICON_AF:Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;

    invoke-static {p1, p2, v2}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;Z)[B

    .line 366
    sget-object p2, Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;->E_ICON_TA:Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;

    invoke-static {p1, p2, v2}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;Z)[B

    .line 367
    sget-object p2, Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;->E_ICON_TP:Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;

    invoke-static {p1, p2, v2}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;Z)[B

    .line 368
    sget-object p2, Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;->E_ICON_ST:Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;

    invoke-static {p1, p2, v2}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;Z)[B

    goto/16 :goto_0

    .line 346
    :cond_2
    sget-object p2, Lcom/hzbhd/midwareproxy/canbus/lcd/YHTMap$yht_icons;->E_ICON_PTY:Lcom/hzbhd/midwareproxy/canbus/lcd/YHTMap$yht_icons;

    invoke-static {p1, p2, v2}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/YHTMap$yht_icons;Z)[B

    .line 347
    sget-object p2, Lcom/hzbhd/midwareproxy/canbus/lcd/YHTMap$yht_icons;->E_ICON_EON:Lcom/hzbhd/midwareproxy/canbus/lcd/YHTMap$yht_icons;

    invoke-static {p1, p2, v2}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/YHTMap$yht_icons;Z)[B

    .line 348
    sget-object p2, Lcom/hzbhd/midwareproxy/canbus/lcd/YHTMap$yht_icons;->E_ICON_AF:Lcom/hzbhd/midwareproxy/canbus/lcd/YHTMap$yht_icons;

    invoke-static {p1, p2, v2}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/YHTMap$yht_icons;Z)[B

    .line 349
    sget-object p2, Lcom/hzbhd/midwareproxy/canbus/lcd/YHTMap$yht_icons;->E_ICON_TP:Lcom/hzbhd/midwareproxy/canbus/lcd/YHTMap$yht_icons;

    invoke-static {p1, p2, v2}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/YHTMap$yht_icons;Z)[B

    .line 350
    sget-object p2, Lcom/hzbhd/midwareproxy/canbus/lcd/YHTMap$yht_icons;->E_ICON_TA:Lcom/hzbhd/midwareproxy/canbus/lcd/YHTMap$yht_icons;

    invoke-static {p1, p2, v2}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/YHTMap$yht_icons;Z)[B

    .line 351
    sget-object p2, Lcom/hzbhd/midwareproxy/canbus/lcd/YHTMap$yht_icons;->E_ICON_ST:Lcom/hzbhd/midwareproxy/canbus/lcd/YHTMap$yht_icons;

    invoke-static {p1, p2, v2}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/YHTMap$yht_icons;Z)[B

    goto :goto_0

    .line 314
    :cond_3
    sget-object p2, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->EQ:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    invoke-virtual {p2}, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->ordinal()I

    move-result p2

    if-eq v0, p2, :cond_4

    .line 315
    sget-object p2, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;->E_ICON_EQ:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;

    invoke-static {p1, p2, v2}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;Z)[B

    .line 316
    sget-object p2, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;->E_ICON_POP:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;

    invoke-static {p1, p2, v2}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;Z)[B

    .line 317
    sget-object p2, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;->E_ICON_ROCK:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;

    invoke-static {p1, p2, v2}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;Z)[B

    .line 318
    sget-object p2, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;->E_ICON_CLASS:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;

    invoke-static {p1, p2, v2}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;Z)[B

    .line 319
    sget-object p2, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;->E_ICON_LOUD:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;

    invoke-static {p1, p2, v2}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;Z)[B

    .line 322
    :cond_4
    sget-object p2, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;->E_ICON_RDS:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;

    invoke-static {p1, p2, v2}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;Z)[B

    .line 323
    sget-object p2, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;->E_ICON_PTY:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;

    invoke-static {p1, p2, v2}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;Z)[B

    .line 324
    sget-object p2, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;->E_ICON_EON:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;

    invoke-static {p1, p2, v2}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;Z)[B

    .line 325
    sget-object p2, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;->E_ICON_AF:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;

    invoke-static {p1, p2, v2}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;Z)[B

    .line 326
    sget-object p2, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;->E_ICON_TP:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;

    invoke-static {p1, p2, v2}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;Z)[B

    .line 327
    sget-object p2, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;->E_ICON_TA:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;

    invoke-static {p1, p2, v2}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;Z)[B

    .line 328
    sget-object p2, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;->E_ICON_ST:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;

    invoke-static {p1, p2, v2}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;Z)[B

    .line 331
    sget-object p2, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;->E_ICON_SHUFFLE:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;

    invoke-static {p1, p2, v2}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;Z)[B

    .line 332
    sget-object p2, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;->E_ICON_REPEAT:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;

    invoke-static {p1, p2, v2}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;Z)[B

    .line 333
    sget-object p2, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;->E_ICON_ORDER:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;

    invoke-static {p1, p2, v2}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;Z)[B

    .line 336
    sget-object p2, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;->E_ICON_COLON:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;

    invoke-static {p1, p2, v2}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;Z)[B

    .line 339
    sget-object p2, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->MPEG:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    invoke-virtual {p2}, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->ordinal()I

    move-result p2

    if-eq v0, p2, :cond_5

    sget-object p2, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;->E_ICON_T1:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;

    invoke-static {p1, p2, v2}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;Z)[B

    .line 340
    :cond_5
    sget-object p2, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;->E_ICON_DOT:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;

    invoke-static {p1, p2, v2}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;Z)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 374
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public declared-synchronized reportLcdInfor([BLandroid/content/Context;I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string p3, "LcdLog"

    const-string v0, "LcdManager|reportLcdInfor"

    .line 33
    invoke-static {p2, p3, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->WLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-static {p1, p2}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->refreshData([BLandroid/content/Context;)V

    .line 35
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p3, "LCD_MEDIA_SOURCE_ID"

    const/4 v0, 0x0

    invoke-static {p1, p3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 36
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const-string v1, "SourceSwitchRepCanbus_device"

    invoke-static {p3, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p3

    const/4 v1, 0x1

    if-ne p3, v1, :cond_5

    .line 37
    sget-object p3, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager$2;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$Util$SingleSpinMachine:[I

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isYHT(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->ordinal()I

    move-result v2

    aget p3, p3, v2

    if-eq p3, v1, :cond_4

    const/4 v2, 0x2

    if-eq p3, v2, :cond_3

    const/4 v2, 0x3

    if-eq p3, v2, :cond_2

    const/4 v2, 0x4

    if-eq p3, v2, :cond_1

    const/4 v2, 0x5

    if-eq p3, v2, :cond_0

    .line 67
    sget-object p3, Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap$icons;->E_ICON_DOT:Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap$icons;

    invoke-direct {p0, p2, p3}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->clearDot(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap$icons;)V

    .line 68
    invoke-direct {p0, p2}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->clearString(Landroid/content/Context;)V

    goto :goto_0

    .line 61
    :cond_0
    sget-object p3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->HTT2:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    invoke-virtual {p0, p2, p3}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->clearAllPriIcont(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;)V

    .line 62
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;->getIntance()Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;

    move-result-object p3

    invoke-virtual {p3, v0}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;->setIconDot(Z)V

    .line 63
    invoke-direct {p0, p2}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->clearString(Landroid/content/Context;)V

    goto :goto_0

    .line 54
    :cond_1
    sget-object p3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->HONG:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    invoke-virtual {p0, p2, p3}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->clearAllPriIcont(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;)V

    .line 55
    sget-object p3, Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;->E_ICON_DOT:Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;

    invoke-direct {p0, p2, p3}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->clearDot(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;)V

    .line 56
    sget-object p3, Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;->E_ICON_COLON:Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;

    invoke-direct {p0, p2, p3}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->clearDot(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;)V

    .line 57
    invoke-direct {p0, p2}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->clearString(Landroid/content/Context;)V

    goto :goto_0

    .line 49
    :cond_2
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;->getIntance()Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;

    move-result-object p3

    invoke-virtual {p3, v0}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;->setIconDot(Z)V

    .line 50
    invoke-direct {p0, p2}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->clearString(Landroid/content/Context;)V

    goto :goto_0

    .line 43
    :cond_3
    sget-object p3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->YHT:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    invoke-virtual {p0, p2, p3}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->clearAllPriIcont(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;)V

    .line 44
    sget-object p3, Lcom/hzbhd/midwareproxy/canbus/lcd/YHTMap$yht_icons;->E_ICON_DOT:Lcom/hzbhd/midwareproxy/canbus/lcd/YHTMap$yht_icons;

    invoke-direct {p0, p2, p3}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->clearDot(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/YHTMap$yht_icons;)V

    .line 45
    invoke-direct {p0, p2}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->clearString(Landroid/content/Context;)V

    goto :goto_0

    .line 39
    :cond_4
    sget-object p3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->KT:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    invoke-virtual {p0, p2, p3}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->clearAllPriIcont(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;)V

    .line 40
    sget-object p3, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;->E_ICON_DOT:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;

    invoke-direct {p0, p2, p3}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->clearDot(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;)V

    .line 72
    :cond_5
    :goto_0
    sget-object p3, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->FM:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    invoke-virtual {p3}, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->ordinal()I

    move-result p3

    if-eq p1, p3, :cond_6

    .line 73
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager$2;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$Util$SingleSpinMachine:[I

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isYHT(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    move-result-object p3

    invoke-virtual {p3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->ordinal()I

    move-result p3

    aget p1, p1, p3

    packed-switch p1, :pswitch_data_0

    .line 102
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap$icons;->E_ICON_DOT:Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap$icons;

    goto :goto_1

    .line 90
    :pswitch_0
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2$ht2_icons;->E_ICON_DOT:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2$ht2_icons;

    invoke-direct {p0, p2, p1}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->clearDot(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2$ht2_icons;)V

    goto :goto_2

    .line 75
    :pswitch_1
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap$icons;->E_ICON_DOT:Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap$icons;

    invoke-direct {p0, p2, p1}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->clearDot(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap$icons;)V

    .line 76
    invoke-direct {p0, p2}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->clearString(Landroid/content/Context;)V

    goto :goto_2

    .line 97
    :pswitch_2
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;->getIntance()Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;->setIconDot(Z)V

    .line 98
    invoke-direct {p0, p2}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->clearString(Landroid/content/Context;)V

    goto :goto_2

    .line 93
    :pswitch_3
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;->E_ICON_DOT:Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;

    invoke-direct {p0, p2, p1}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->clearDot(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;)V

    .line 94
    invoke-direct {p0, p2}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->clearString(Landroid/content/Context;)V

    goto :goto_2

    .line 79
    :pswitch_4
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;->getIntance()Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;->setIconDot(Z)V

    .line 80
    invoke-direct {p0, p2}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->clearString(Landroid/content/Context;)V

    goto :goto_2

    .line 83
    :pswitch_5
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/lcd/YHTMap$yht_icons;->E_ICON_DOT:Lcom/hzbhd/midwareproxy/canbus/lcd/YHTMap$yht_icons;

    invoke-direct {p0, p2, p1}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->clearDot(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/YHTMap$yht_icons;)V

    .line 84
    invoke-direct {p0, p2}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->clearString(Landroid/content/Context;)V

    goto :goto_2

    .line 87
    :pswitch_6
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;->E_ICON_DOT:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;

    invoke-direct {p0, p2, p1}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->clearDot(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;)V

    goto :goto_2

    .line 102
    :goto_1
    invoke-direct {p0, p2, p1}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->clearDot(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap$icons;)V

    .line 103
    invoke-direct {p0, p2}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->clearString(Landroid/content/Context;)V

    .line 107
    :cond_6
    :goto_2
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p3, "hzbhd_LCD_isFloatView"

    invoke-static {p1, p3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_7

    .line 110
    :try_start_1
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    new-array p3, v1, [B

    const/16 v1, 0x9

    aput-byte v1, p3, v0

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->getCurrentBytes(Landroid/content/Context;)[B

    move-result-object p2

    invoke-static {p3, p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reporTestMcuInfor([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 112
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    :cond_7
    :goto_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public reportLcdInforByeSource(Landroid/content/Context;J)V
    .locals 3

    const-string v0, "LcdLog"

    const-string v1, "LcdManager|reportLcdInforByeSource"

    .line 222
    invoke-static {p1, v0, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->WLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    sget-object v1, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->SMALL_LCD_FUNCTION:Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/app/DefaultSharedUtil;->getBool(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 225
    :cond_0
    :try_start_0
    invoke-static {p2, p3}, Lcom/hzbhd/midwareproxy/utils/ThreadUtils;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 227
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 229
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "|LCDSourceSwitch ="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const-string v1, "PowerIsOff"

    const/4 v2, 0x0

    invoke-static {p3, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->WLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string p3, "hzbhd_LCD_isFloatView"

    invoke-static {p2, p3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p2, 0x1

    .line 231
    invoke-direct {p0, p1, p2}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->refreshBysource(Landroid/content/Context;Z)V

    return-void
.end method

.method public reportTempLcdInfor([BLandroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    .line 122
    invoke-virtual {p0, p1, p2, v0}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->reportTempLcdInfor([BLandroid/content/Context;Z)V

    return-void
.end method

.method public reportTempLcdInfor([BLandroid/content/Context;Ljava/lang/Long;)V
    .locals 2

    .line 176
    invoke-virtual {p0, p1, p2}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->reportTempLcdInfor([BLandroid/content/Context;)V

    const-wide/16 v0, 0x0

    .line 177
    iput-wide v0, p0, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->count_time:J

    .line 178
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->mThread:Ljava/lang/Thread;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Thread;->isAlive()Z

    move-result p1

    if-nez p1, :cond_1

    .line 179
    :cond_0
    new-instance p1, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager$1;

    invoke-direct {p1, p0, p2, p3}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager$1;-><init>(Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;Landroid/content/Context;Ljava/lang/Long;)V

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->mThread:Ljava/lang/Thread;

    .line 195
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method

.method public reportTempLcdInfor([BLandroid/content/Context;Z)V
    .locals 2

    const-string p1, "LcdLog"

    const-string v0, "70 09 reportTempLcdInfor|reportTempLcdInfor"

    .line 128
    invoke-static {p2, p1, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->WLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager$2;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$Util$SingleSpinMachine:[I

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isYHT(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 160
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap$icons;->E_ICON_DOT:Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap$icons;

    invoke-direct {p0, p2, p1}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->clearDot(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap$icons;)V

    .line 161
    invoke-direct {p0, p2}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->clearString(Landroid/content/Context;)V

    goto :goto_0

    .line 131
    :pswitch_0
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap$icons;->E_ICON_DOT:Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap$icons;

    invoke-direct {p0, p2, p1}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->clearDot(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap$icons;)V

    .line 132
    invoke-direct {p0, p2}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->clearString(Landroid/content/Context;)V

    goto :goto_0

    .line 156
    :pswitch_1
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;->getIntance()Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;->setIconDot(Z)V

    .line 157
    invoke-direct {p0, p2}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->clearString(Landroid/content/Context;)V

    goto :goto_0

    .line 147
    :pswitch_2
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->HONG:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    invoke-virtual {p0, p2, p1}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->clearAllPriIcont(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;)V

    .line 148
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;->E_ICON_DOT:Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;

    invoke-direct {p0, p2, p1}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->clearDot(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;)V

    if-eqz p3, :cond_0

    .line 150
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;->E_ICON_COLON:Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;

    invoke-direct {p0, p2, p1}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->clearDot(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;)V

    .line 152
    :cond_0
    invoke-direct {p0, p2}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->clearString(Landroid/content/Context;)V

    goto :goto_0

    .line 135
    :pswitch_3
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;->getIntance()Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;->setIconDot(Z)V

    .line 136
    invoke-direct {p0, p2}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->clearString(Landroid/content/Context;)V

    goto :goto_0

    .line 139
    :pswitch_4
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->YHT:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    invoke-virtual {p0, p2, p1}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->clearAllPriIcont(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;)V

    .line 140
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/lcd/YHTMap$yht_icons;->E_ICON_DOT:Lcom/hzbhd/midwareproxy/canbus/lcd/YHTMap$yht_icons;

    invoke-direct {p0, p2, p1}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->clearDot(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/YHTMap$yht_icons;)V

    .line 141
    invoke-direct {p0, p2}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->clearString(Landroid/content/Context;)V

    goto :goto_0

    .line 144
    :pswitch_5
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;->E_ICON_DOT:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;

    invoke-direct {p0, p2, p1}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->clearDot(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;)V

    .line 165
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p3, "hzbhd_LCD_isFloatView"

    const/4 v1, 0x1

    invoke-static {p1, p3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 166
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    new-array p3, v1, [B

    const/16 v1, 0x9

    aput-byte v1, p3, v0

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->getCurrentBytes(Landroid/content/Context;)[B

    move-result-object p2

    invoke-static {p3, p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reporTestMcuInfor([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
