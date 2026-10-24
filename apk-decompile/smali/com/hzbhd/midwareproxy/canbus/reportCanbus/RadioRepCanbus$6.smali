.class Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;
.super Ljava/lang/Thread;
.source "RadioRepCanbus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->reportCanbusInfo(ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

.field final synthetic val$currBand:Ljava/lang/String;

.field final synthetic val$currClickPresetIndex:I


# direct methods
.method constructor <init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;Ljava/lang/String;I)V
    .locals 0

    .line 1263
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    iput-object p2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->val$currBand:Ljava/lang/String;

    iput p3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->val$currClickPresetIndex:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    move-object/from16 v1, p0

    const-string v2, "FM1"

    const-string v3, "AM2"

    .line 1267
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object v4

    sget-object v5, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {v4, v5}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v4

    sget-object v5, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->FM:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-eq v4, v5, :cond_0

    .line 1268
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object v4

    sget-object v5, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    invoke-virtual {v4, v5}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getCurrentValidSource(Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;)Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v4

    sget-object v5, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->BTPHONE:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    if-eq v4, v5, :cond_0

    return-void

    .line 1269
    :cond_0
    iget-object v4, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    invoke-static {v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->access$200(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "SourceSwitchRepCanbus_device"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    return-void

    .line 1270
    :cond_1
    iget-object v4, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    invoke-static {v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->access$200(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "hzbhd_LCD_isFloatView"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_2

    return-void

    :cond_2
    const-string v4, ""

    const/16 v7, 0x8

    new-array v8, v7, [B

    .line 1274
    iget-object v9, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->val$currBand:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v10, "LCD_RADIO_DOT"

    const-string v11, "LW"

    const-string v12, "MW"

    const-string v13, "AM1"

    const-string v15, "-"

    const-string v14, "."

    const-string v7, "  "

    const-string v5, " "

    if-nez v9, :cond_1b

    :try_start_1
    iget-object v9, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->val$currBand:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1b

    iget-object v9, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->val$currBand:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1b

    iget-object v9, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->val$currBand:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto/16 :goto_e

    .line 1354
    :cond_3
    iget-object v3, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->val$currBand:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v9, "OIRT"

    const-string v11, "FM3"

    const-string v12, "FM2"

    if-nez v3, :cond_4

    :try_start_2
    iget-object v3, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->val$currBand:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->val$currBand:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->val$currBand:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 1355
    :cond_4
    iget-object v3, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    invoke-static {v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->access$300(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    return-void

    .line 1356
    :cond_5
    iget-object v3, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    invoke-static {v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->access$300(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)Ljava/lang/String;

    move-result-object v3

    iget-object v13, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    invoke-static {v13}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->access$300(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v3, v6, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1357
    iget-object v13, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    invoke-static {v13}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->access$300(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)Ljava/lang/String;

    move-result-object v13

    iget-object v6, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    invoke-static {v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->access$300(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/16 v16, 0x1

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v17, v4

    iget-object v4, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    invoke-static {v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->access$300(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v13, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1358
    sget-object v6, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$8;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$Util$SingleSpinMachine:[I

    iget-object v13, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    invoke-static {v13}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->access$200(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isYHT(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    move-result-object v13

    invoke-virtual {v13}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->ordinal()I

    move-result v13

    aget v6, v6, v13

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_6

    .line 1396
    :pswitch_0
    iget-object v3, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->val$currBand:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    const/4 v2, 0x1

    goto :goto_1

    .line 1397
    :cond_7
    iget-object v2, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->val$currBand:Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x2

    goto :goto_1

    .line 1398
    :cond_8
    iget-object v2, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->val$currBand:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :goto_0
    const/4 v2, 0x3

    goto :goto_1

    .line 1399
    :cond_9
    iget-object v2, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->val$currBand:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_0

    .line 1400
    :goto_1
    iget-object v3, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    invoke-static {v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->access$300(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    invoke-static {v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->access$300(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1401
    iget-object v4, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    invoke-static {v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->access$300(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    invoke-static {v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->access$300(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x1

    add-int/2addr v6, v7

    iget-object v9, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    invoke-static {v9}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->access$300(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v7

    invoke-virtual {v4, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1403
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_a

    .line 1404
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "F"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->val$currClickPresetIndex:I

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1405
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_b

    return-void

    .line 1407
    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "F"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->val$currClickPresetIndex:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1408
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_b

    return-void

    .line 1410
    :cond_b
    iget-object v3, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    invoke-static {v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->access$200(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "KT_LCD_RADIO_FREQ"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-object v4, v2

    goto/16 :goto_7

    .line 1375
    :pswitch_1
    iget-object v6, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->val$currBand:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v6, "FM"

    if-eqz v2, :cond_c

    :goto_2
    move-object v7, v6

    goto :goto_3

    .line 1377
    :cond_c
    :try_start_3
    iget-object v2, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->val$currBand:Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_2

    .line 1379
    :cond_d
    iget-object v2, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->val$currBand:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_2

    .line 1381
    :cond_e
    iget-object v2, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->val$currBand:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_2

    .line 1384
    :cond_f
    :goto_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v6, 0x2

    if-ne v2, v6, :cond_11

    .line 1385
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v6, 0x7

    if-eq v2, v6, :cond_10

    return-void

    .line 1386
    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x0

    invoke-static {v2, v4, v8, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_4

    .line 1388
    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v5, 0x7

    if-eq v2, v5, :cond_12

    return-void

    .line 1389
    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x0

    invoke-static {v2, v4, v8, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1391
    :goto_4
    iget-object v2, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    invoke-static {v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->access$200(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v8}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_lcdPrintfString(Landroid/content/Context;[B)[B

    goto/16 :goto_6

    .line 1364
    :pswitch_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v6, 0x2

    if-ne v2, v6, :cond_14

    .line 1365
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->val$currBand:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v6, 0x8

    if-eq v2, v6, :cond_13

    return-void

    .line 1366
    :cond_13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->val$currBand:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->val$currBand:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x0

    invoke-static {v2, v4, v8, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_5

    .line 1368
    :cond_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->val$currBand:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v5, 0x8

    if-eq v2, v5, :cond_15

    return-void

    .line 1369
    :cond_15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->val$currBand:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->val$currBand:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x0

    invoke-static {v2, v4, v8, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1371
    :goto_5
    iget-object v2, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    invoke-static {v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->access$200(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v8}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_lcdPrintfString(Landroid/content/Context;[B)[B

    :goto_6
    move-object/from16 v4, v17

    .line 1413
    :goto_7
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$8;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$Util$SingleSpinMachine:[I

    iget-object v3, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    invoke-static {v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->access$200(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isYHT(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_d

    .line 1427
    :pswitch_3
    iget-object v2, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    invoke-static {v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->access$200(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;->E_ICON_DOT:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;

    const/4 v5, 0x1

    invoke-static {v2, v3, v5}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;Z)[B

    goto/16 :goto_d

    .line 1439
    :pswitch_4
    iget-object v2, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    invoke-static {v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->access$200(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2$ht2_icons;->E_ICON_DOT:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2$ht2_icons;

    const/4 v5, 0x1

    invoke-static {v2, v3, v5}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2$ht2_icons;Z)[B

    goto/16 :goto_d

    .line 1436
    :pswitch_5
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;->getIntance()Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;->setIconDot(Z)V

    goto/16 :goto_d

    .line 1418
    :pswitch_6
    iget-object v2, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    invoke-static {v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->access$200(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;->E_ICON_DOT:Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;

    const/4 v5, 0x1

    invoke-static {v2, v3, v5}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;Z)[B

    .line 1419
    iget-object v2, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    invoke-static {v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->access$200(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;->E_ICON_PTY:Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;

    iget-object v5, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    invoke-static {v5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->access$200(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;->E_ICON_PTY:Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;

    invoke-virtual {v6}, Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_16

    const/4 v5, 0x1

    goto :goto_8

    :cond_16
    const/4 v5, 0x0

    :goto_8
    invoke-static {v2, v3, v5}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;Z)[B

    .line 1420
    iget-object v2, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    invoke-static {v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->access$200(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;->E_ICON_AF:Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;

    iget-object v5, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    invoke-static {v5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->access$200(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;->E_ICON_AF:Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;

    invoke-virtual {v6}, Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_17

    const/4 v5, 0x1

    goto :goto_9

    :cond_17
    const/4 v5, 0x0

    :goto_9
    invoke-static {v2, v3, v5}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;Z)[B

    .line 1421
    iget-object v2, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    invoke-static {v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->access$200(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;->E_ICON_TP:Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;

    iget-object v5, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    invoke-static {v5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->access$200(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;->E_ICON_TP:Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;

    invoke-virtual {v6}, Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_18

    const/4 v5, 0x1

    goto :goto_a

    :cond_18
    const/4 v5, 0x0

    :goto_a
    invoke-static {v2, v3, v5}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;Z)[B

    .line 1422
    iget-object v2, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    invoke-static {v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->access$200(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;->E_ICON_TA:Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;

    iget-object v5, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    invoke-static {v5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->access$200(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;->E_ICON_TA:Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;

    invoke-virtual {v6}, Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_19

    const/4 v5, 0x1

    goto :goto_b

    :cond_19
    const/4 v5, 0x0

    :goto_b
    invoke-static {v2, v3, v5}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;Z)[B

    .line 1423
    iget-object v2, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    invoke-static {v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->access$200(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;->E_ICON_ST:Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;

    iget-object v5, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    invoke-static {v5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->access$200(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;->E_ICON_ST:Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;

    invoke-virtual {v6}, Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1a

    const/4 v6, 0x1

    goto :goto_c

    :cond_1a
    const/4 v6, 0x0

    :goto_c
    invoke-static {v2, v3, v6}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;Z)[B

    goto :goto_d

    .line 1415
    :pswitch_7
    iget-object v2, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    invoke-static {v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->access$200(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/lcd/YHTMap$yht_icons;->E_ICON_DOT:Lcom/hzbhd/midwareproxy/canbus/lcd/YHTMap$yht_icons;

    const/4 v5, 0x1

    invoke-static {v2, v3, v5}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/YHTMap$yht_icons;Z)[B

    goto :goto_d

    .line 1430
    :pswitch_8
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;->getIntance()Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;->setIconDot(Z)V

    goto :goto_d

    .line 1433
    :pswitch_9
    iget-object v2, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    invoke-static {v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->access$200(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap$icons;->E_ICON_DOT:Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap$icons;

    const/4 v5, 0x1

    invoke-static {v2, v3, v5}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap$icons;Z)[B

    .line 1442
    :goto_d
    iget-object v2, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    invoke-static {v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->access$200(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v6, 0x1

    invoke-static {v2, v10, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_18

    :cond_1b
    :goto_e
    move-object/from16 v17, v4

    const/4 v6, 0x1

    .line 1276
    iget-object v2, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    invoke-static {v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->access$300(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1c

    return-void

    .line 1278
    :cond_1c
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$8;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$Util$SingleSpinMachine:[I

    iget-object v4, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    invoke-static {v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->access$200(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isYHT(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_2

    goto/16 :goto_14

    .line 1317
    :pswitch_a
    iget-object v2, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->val$currBand:Ljava/lang/String;

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    goto :goto_10

    .line 1318
    :cond_1d
    iget-object v2, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->val$currBand:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    :goto_f
    const/4 v6, 0x2

    goto :goto_10

    .line 1319
    :cond_1e
    iget-object v2, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->val$currBand:Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    goto :goto_f

    .line 1320
    :cond_1f
    iget-object v2, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->val$currBand:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    goto :goto_f

    .line 1321
    :cond_20
    :goto_10
    iget-object v2, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    invoke-static {v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->access$300(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v3, "A"

    const/4 v4, 0x3

    if-ne v2, v4, :cond_21

    .line 1322
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->val$currClickPresetIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    invoke-static {v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->access$300(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1323
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_22

    return-void

    .line 1325
    :cond_21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->val$currClickPresetIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    invoke-static {v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->access$300(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1326
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_22

    return-void

    .line 1328
    :cond_22
    iget-object v3, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    invoke-static {v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->access$200(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "KT_LCD_RADIO_FREQ"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-object v4, v2

    goto/16 :goto_15

    .line 1295
    :pswitch_b
    iget-object v2, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->val$currBand:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string v3, "AM"

    if-eqz v2, :cond_23

    goto :goto_11

    .line 1297
    :cond_23
    :try_start_5
    iget-object v2, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->val$currBand:Ljava/lang/String;

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    goto :goto_11

    .line 1299
    :cond_24
    iget-object v2, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->val$currBand:Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    goto :goto_11

    .line 1301
    :cond_25
    iget-object v2, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->val$currBand:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    goto :goto_11

    :cond_26
    move-object v3, v7

    .line 1305
    :goto_11
    iget-object v2, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    invoke-static {v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->access$300(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_28

    .line 1306
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    invoke-static {v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->access$300(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x7

    if-eq v2, v4, :cond_27

    return-void

    .line 1307
    :cond_27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    invoke-static {v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->access$300(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    invoke-static {v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->access$300(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x0

    invoke-static {v2, v4, v8, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_12

    .line 1309
    :cond_28
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    invoke-static {v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->access$300(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x7

    if-eq v2, v4, :cond_29

    return-void

    .line 1310
    :cond_29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    invoke-static {v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->access$300(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    invoke-static {v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->access$300(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x0

    invoke-static {v2, v4, v8, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1312
    :goto_12
    iget-object v2, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    invoke-static {v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->access$200(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v8}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_lcdPrintfString(Landroid/content/Context;[B)[B

    goto/16 :goto_14

    .line 1284
    :pswitch_c
    iget-object v2, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    invoke-static {v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->access$300(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2b

    .line 1285
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->val$currBand:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    invoke-static {v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->access$300(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_2a

    return-void

    .line 1286
    :cond_2a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->val$currBand:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    invoke-static {v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->access$300(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->val$currBand:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    invoke-static {v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->access$300(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x0

    invoke-static {v2, v4, v8, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_13

    .line 1288
    :cond_2b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->val$currBand:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    invoke-static {v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->access$300(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_2c

    return-void

    .line 1289
    :cond_2c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->val$currBand:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    invoke-static {v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->access$300(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->val$currBand:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    invoke-static {v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->access$300(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x0

    invoke-static {v2, v4, v8, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1291
    :goto_13
    iget-object v2, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    invoke-static {v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->access$200(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v8}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_lcdPrintfString(Landroid/content/Context;[B)[B

    :goto_14
    move-object/from16 v4, v17

    .line 1331
    :goto_15
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$8;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$Util$SingleSpinMachine:[I

    iget-object v3, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    invoke-static {v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->access$200(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isYHT(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_3

    goto :goto_17

    .line 1339
    :pswitch_d
    iget-object v2, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    invoke-static {v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->access$200(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;->E_ICON_DOT:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;

    const/4 v5, 0x0

    invoke-static {v2, v3, v5}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;Z)[B

    goto :goto_17

    .line 1348
    :pswitch_e
    iget-object v2, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    invoke-static {v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->access$200(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2$ht2_icons;->E_ICON_DOT:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2$ht2_icons;

    const/4 v5, 0x0

    invoke-static {v2, v3, v5}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2$ht2_icons;Z)[B

    goto :goto_16

    .line 1345
    :pswitch_f
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;->getIntance()Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;->setIconDot(Z)V

    goto :goto_17

    .line 1336
    :pswitch_10
    iget-object v2, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    invoke-static {v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->access$200(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;->E_ICON_DOT:Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;

    const/4 v5, 0x0

    invoke-static {v2, v3, v5}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;Z)[B

    goto :goto_17

    .line 1333
    :pswitch_11
    iget-object v2, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    invoke-static {v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->access$200(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/lcd/YHTMap$yht_icons;->E_ICON_DOT:Lcom/hzbhd/midwareproxy/canbus/lcd/YHTMap$yht_icons;

    const/4 v5, 0x0

    invoke-static {v2, v3, v5}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/YHTMap$yht_icons;Z)[B

    goto :goto_17

    .line 1350
    :goto_16
    :pswitch_12
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;->getIntance()Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;->setIconDot(Z)V

    goto :goto_17

    .line 1342
    :pswitch_13
    iget-object v2, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    invoke-static {v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->access$200(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap$icons;->E_ICON_DOT:Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap$icons;

    const/4 v5, 0x0

    invoke-static {v2, v3, v5}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap$icons;Z)[B

    .line 1353
    :goto_17
    iget-object v2, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    invoke-static {v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->access$200(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v10, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1445
    :cond_2d
    :goto_18
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$8;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$Util$SingleSpinMachine:[I

    iget-object v3, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    invoke-static {v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->access$200(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isYHT(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_4

    goto/16 :goto_19

    .line 1447
    :pswitch_14
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    .line 1448
    iget-object v2, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    invoke-static {v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->access$200(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v8}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_lcdPrintfString(Landroid/content/Context;[B)[B

    .line 1449
    iget-object v2, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    invoke-static {v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->access$200(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->reportLcdInfor(Landroid/content/Context;)V

    goto/16 :goto_19

    .line 1460
    :pswitch_15
    iget v2, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->val$currClickPresetIndex:I

    if-nez v2, :cond_2e

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->getInstance()Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;

    move-result-object v2

    iget-object v3, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    invoke-static {v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->access$200(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x20

    invoke-static {v3, v4}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_8_lcdPrintfString(Landroid/content/Context;I)[B

    move-result-object v3

    iget-object v4, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    invoke-static {v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->access$200(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v2, v3, v4, v5}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->reportLcdInfor([BLandroid/content/Context;I)V

    goto :goto_19

    .line 1461
    :cond_2e
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->getInstance()Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;

    move-result-object v2

    iget-object v3, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    invoke-static {v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->access$200(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)Landroid/content/Context;

    move-result-object v3

    iget v4, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->val$currClickPresetIndex:I

    invoke-static {v3, v4}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_8_lcdPrintfString(Landroid/content/Context;I)[B

    move-result-object v3

    iget-object v4, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    invoke-static {v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->access$200(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v2, v3, v4, v5}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->reportLcdInfor([BLandroid/content/Context;I)V

    goto :goto_19

    .line 1456
    :pswitch_16
    iget v2, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->val$currClickPresetIndex:I

    if-nez v2, :cond_2f

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->getInstance()Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;

    move-result-object v2

    iget-object v3, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    invoke-static {v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->access$200(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x20

    invoke-static {v3, v4}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_9_lcdPrintfString(Landroid/content/Context;I)[B

    move-result-object v3

    iget-object v4, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    invoke-static {v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->access$200(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v2, v3, v4, v5}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->reportLcdInfor([BLandroid/content/Context;I)V

    goto :goto_19

    .line 1457
    :cond_2f
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->getInstance()Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;

    move-result-object v2

    iget-object v3, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    invoke-static {v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->access$200(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)Landroid/content/Context;

    move-result-object v3

    iget v4, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->val$currClickPresetIndex:I

    invoke-static {v3, v4}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_9_lcdPrintfString(Landroid/content/Context;I)[B

    move-result-object v3

    iget-object v4, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    invoke-static {v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->access$200(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v2, v3, v4, v5}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->reportLcdInfor([BLandroid/content/Context;I)V

    :goto_19
    const-string v2, "LCDLCD"

    .line 1465
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LCD:radioChars"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v8}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    iget-object v2, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    invoke-static {v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->access$200(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "LCD_RADIO_FREQ"

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v8}, Ljava/lang/String;-><init>([B)V

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1467
    iget-object v2, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    invoke-static {v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->access$200(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "LCD_RADIO_PRESET"

    iget v4, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->val$currClickPresetIndex:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1469
    iget-object v2, v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    invoke-static {v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->access$200(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "LcdLog"

    const-string v4, "RadioRepCanbus|SUCCEED"

    invoke-static {v2, v3, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->WLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1a

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 1471
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1a
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_15
        :pswitch_14
    .end packed-switch
.end method
