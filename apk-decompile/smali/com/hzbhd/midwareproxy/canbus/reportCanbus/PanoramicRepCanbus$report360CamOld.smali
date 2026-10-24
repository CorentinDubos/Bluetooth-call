.class public Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360CamOld;
.super Ljava/lang/Object;
.source "PanoramicRepCanbus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "report360CamOld"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;


# direct methods
.method public constructor <init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;)V
    .locals 0

    .line 368
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360CamOld;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reportCanbusInfo(Landroid/view/MotionEvent;Landroid/content/Context;)Z
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    const-string/jumbo v1, "reportCanbusInfo"

    const-string/jumbo v2, "report360CamOld"

    .line 370
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    .line 373
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->values()[Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v1

    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getFactoryCanType()I

    move-result v2

    aget-object v1, v1, v2

    .line 376
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "isBackCamera"

    invoke-static {v2, v3, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v10, 0x1

    if-ne v2, v10, :cond_0

    move v11, v10

    goto :goto_0

    :cond_0
    move v11, v9

    .line 377
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "isParkPanoramic"

    invoke-static {v2, v3, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v10, :cond_1

    move v2, v10

    goto :goto_1

    :cond_1
    move v2, v9

    :goto_1
    const-string v3, "panoramic"

    .line 378
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "reportCanbusInfo: isBackCamera = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "panoramic"

    .line 379
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "reportCanbusInfo: isParkPanoramic = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->TOYOTA_SIMPLE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    const/16 v4, 0x21b

    const/16 v6, 0x1ef

    const/16 v17, 0x21

    const/4 v14, 0x4

    const/4 v15, 0x3

    const/4 v13, 0x2

    if-eq v1, v3, :cond_23

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->TOYOTA_RAISE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    if-ne v1, v3, :cond_2

    goto/16 :goto_9

    .line 403
    :cond_2
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->TOYOTA_PRADO_2014_SIMPLE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    if-eq v1, v3, :cond_1e

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->TOYOTA_PRADO_2014_RAISE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    if-ne v1, v3, :cond_3

    goto/16 :goto_8

    .line 427
    :cond_3
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->TOYOTA_XINBAS:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    const/4 v12, 0x5

    if-eq v1, v3, :cond_18

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->TOYOTA_PRADO_2014_XINBAS:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    if-ne v1, v3, :cond_4

    goto/16 :goto_7

    .line 442
    :cond_4
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->TOYOTA_BINARY:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    const/16 v5, 0xff

    const/16 v18, 0x16

    if-ne v1, v3, :cond_a

    const-string/jumbo v1, "toyota_binary_cartype"

    .line 443
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TOYOTA_BINARY"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v6, "toyota_binary_cartype"

    invoke-static {v4, v6, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "toyota_binary_cartype"

    invoke-static {v1, v3, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/16 v16, -0x7d

    if-nez v1, :cond_5

    .line 446
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v10, :cond_28

    .line 447
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360CamOld;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;

    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;->LEFT_BOTTOM:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;

    const/4 v5, 0x0

    new-array v6, v14, [B

    aput-byte v18, v6, v9

    aput-byte v16, v6, v10

    aput-byte v17, v6, v13

    aput-byte v13, v6, v15

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    invoke-static/range {v1 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->access$000(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;Landroid/content/Context;Landroid/view/MotionEvent;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;B[B)V

    .line 448
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360CamOld;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;

    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;->RIGHT_BOTTOM:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;

    const/4 v5, 0x0

    new-array v6, v14, [B

    aput-byte v18, v6, v9

    aput-byte v16, v6, v10

    aput-byte v17, v6, v13

    aput-byte v15, v6, v15

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    invoke-static/range {v1 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->access$000(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;Landroid/content/Context;Landroid/view/MotionEvent;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;B[B)V

    .line 449
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360CamOld;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;

    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;->RIGHT_BOTTOM_MID:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;

    const/4 v5, 0x0

    new-array v6, v14, [B

    aput-byte v18, v6, v9

    aput-byte v16, v6, v10

    aput-byte v17, v6, v13

    const/4 v2, 0x7

    aput-byte v2, v6, v15

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    invoke-static/range {v1 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->access$000(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;Landroid/content/Context;Landroid/view/MotionEvent;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;B[B)V

    goto/16 :goto_a

    .line 451
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "toyota_binary_cartype"

    invoke-static {v1, v3, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/16 v3, 0xa

    if-ne v1, v3, :cond_7

    if-eqz v11, :cond_6

    .line 454
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360CamOld;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;

    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;->RIGHT_BOTTOM:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;

    const/4 v5, 0x0

    new-array v6, v14, [B

    aput-byte v18, v6, v9

    aput-byte v16, v6, v10

    aput-byte v17, v6, v13

    aput-byte v15, v6, v15

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    invoke-static/range {v1 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->access$000(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;Landroid/content/Context;Landroid/view/MotionEvent;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;B[B)V

    .line 455
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360CamOld;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;

    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;->LEFT_BOTTOM:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;

    const/4 v5, 0x0

    new-array v6, v14, [B

    aput-byte v18, v6, v9

    aput-byte v16, v6, v10

    aput-byte v17, v6, v13

    aput-byte v14, v6, v15

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    invoke-static/range {v1 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->access$000(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;Landroid/content/Context;Landroid/view/MotionEvent;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;B[B)V

    goto/16 :goto_a

    :cond_6
    if-eqz v2, :cond_28

    .line 457
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360CamOld;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;

    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;->LEFT_TOP:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;

    const/4 v5, 0x0

    new-array v6, v14, [B

    aput-byte v18, v6, v9

    aput-byte v16, v6, v10

    aput-byte v17, v6, v13

    aput-byte v10, v6, v15

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    invoke-static/range {v1 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->access$000(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;Landroid/content/Context;Landroid/view/MotionEvent;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;B[B)V

    .line 458
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360CamOld;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;

    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;->LEFT_BOTTOM:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;

    const/4 v5, 0x0

    new-array v6, v14, [B

    aput-byte v18, v6, v9

    aput-byte v16, v6, v10

    aput-byte v17, v6, v13

    aput-byte v13, v6, v15

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    invoke-static/range {v1 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->access$000(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;Landroid/content/Context;Landroid/view/MotionEvent;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;B[B)V

    .line 459
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360CamOld;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;

    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;->RIGHT_BOTTOM:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;

    const/4 v5, 0x0

    new-array v6, v14, [B

    aput-byte v18, v6, v9

    aput-byte v16, v6, v10

    aput-byte v17, v6, v13

    aput-byte v12, v6, v15

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    invoke-static/range {v1 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->access$000(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;Landroid/content/Context;Landroid/view/MotionEvent;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;B[B)V

    .line 460
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360CamOld;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;

    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;->RIGHT_TOP:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;

    const/4 v5, 0x0

    new-array v6, v14, [B

    aput-byte v18, v6, v9

    aput-byte v16, v6, v10

    aput-byte v17, v6, v13

    const/4 v2, 0x6

    aput-byte v2, v6, v15

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    invoke-static/range {v1 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->access$000(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;Landroid/content/Context;Landroid/view/MotionEvent;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;B[B)V

    goto/16 :goto_a

    .line 463
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v10, :cond_9

    if-eqz v11, :cond_8

    .line 465
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360CamOld;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;

    new-array v2, v13, [B

    aput-byte v18, v2, v9

    const/16 v3, -0x7b

    aput-byte v3, v2, v10

    invoke-static {v1, v8, v7, v5, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->access$100(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;Landroid/content/Context;Landroid/view/MotionEvent;I[B)V

    goto/16 :goto_2

    :cond_8
    if-eqz v2, :cond_9

    .line 467
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360CamOld;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;

    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;->LEFT_TOP:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;

    const/4 v6, 0x0

    new-array v12, v14, [B

    aput-byte v18, v12, v9

    aput-byte v16, v12, v10

    aput-byte v17, v12, v13

    aput-byte v10, v12, v15

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    move v5, v6

    move-object v6, v12

    invoke-static/range {v1 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->access$000(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;Landroid/content/Context;Landroid/view/MotionEvent;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;B[B)V

    .line 468
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360CamOld;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;

    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;->LEFT_BOTTOM:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;

    const/4 v5, 0x0

    new-array v6, v14, [B

    aput-byte v18, v6, v9

    aput-byte v16, v6, v10

    aput-byte v17, v6, v13

    aput-byte v13, v6, v15

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    invoke-static/range {v1 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->access$000(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;Landroid/content/Context;Landroid/view/MotionEvent;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;B[B)V

    .line 469
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360CamOld;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;

    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;->RIGHT_BOTTOM:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;

    const/4 v5, 0x0

    new-array v6, v14, [B

    aput-byte v18, v6, v9

    aput-byte v16, v6, v10

    aput-byte v17, v6, v13

    aput-byte v15, v6, v15

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    invoke-static/range {v1 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->access$000(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;Landroid/content/Context;Landroid/view/MotionEvent;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;B[B)V

    .line 470
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360CamOld;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;

    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;->RIGHT_TOP:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;

    const/4 v5, 0x0

    new-array v6, v14, [B

    aput-byte v18, v6, v9

    aput-byte v16, v6, v10

    aput-byte v17, v6, v13

    aput-byte v14, v6, v15

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    invoke-static/range {v1 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->access$000(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;Landroid/content/Context;Landroid/view/MotionEvent;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;B[B)V

    .line 471
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360CamOld;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;

    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;->RIGHT_BOTTOM_MID:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;

    const/4 v5, 0x0

    new-array v6, v14, [B

    aput-byte v18, v6, v9

    aput-byte v16, v6, v10

    aput-byte v17, v6, v13

    const/4 v2, 0x7

    aput-byte v2, v6, v15

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    invoke-static/range {v1 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->access$000(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;Landroid/content/Context;Landroid/view/MotionEvent;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;B[B)V

    .line 474
    :cond_9
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_28

    if-eqz v11, :cond_28

    .line 476
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360CamOld;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;

    new-array v2, v13, [B

    aput-byte v18, v2, v9

    const/16 v3, -0x7b

    aput-byte v3, v2, v10

    const/16 v3, 0xff

    invoke-static {v1, v8, v7, v3, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->access$100(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;Landroid/content/Context;Landroid/view/MotionEvent;I[B)V

    goto/16 :goto_a

    :cond_a
    move v3, v5

    .line 481
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->NEW_TOYOTA_HIWORLD:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    const/16 v5, 0x8

    const/4 v11, -0x6

    if-ne v1, v2, :cond_11

    .line 482
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "camry_hiword_cartype"

    invoke-static {v1, v2, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_e

    .line 484
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v10, :cond_28

    .line 485
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 486
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 488
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/hzbhd/midware/proxy/R$dimen;->dp1024:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    const/16 v4, 0x321

    if-ge v3, v4, :cond_b

    const/16 v4, 0x1e0

    const/16 v5, 0x78

    const/16 v6, 0x50

    goto :goto_3

    :cond_b
    const/16 v4, 0x258

    const/16 v5, 0x8c

    const/16 v6, 0x64

    :goto_3
    mul-int/lit8 v7, v3, 0x3

    .line 499
    div-int/2addr v7, v14

    sub-int/2addr v7, v5

    add-int/lit8 v7, v7, -0x14

    sub-int/2addr v3, v5

    const-string v8, "cam_360"

    .line 501
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "y="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v8, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "cam_360"

    .line 502
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "maxHight-btn_height="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int v6, v4, v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v8, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "cam_360"

    .line 503
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "maxHight="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v8, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lt v2, v6, :cond_28

    if-gt v2, v4, :cond_28

    const-string v2, "cam_360"

    const-string v4, "bbb"

    .line 505
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v1, :cond_c

    add-int/lit8 v2, v5, 0x0

    if-gt v1, v2, :cond_c

    const-string v2, "cam_360"

    const-string v4, "aaa"

    .line 507
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v2

    new-array v4, v12, [B

    aput-byte v18, v4, v9

    aput-byte v11, v4, v10

    aput-byte v9, v4, v13

    const/4 v6, 0x3

    aput-byte v10, v4, v6

    const/4 v6, 0x4

    aput-byte v10, v4, v6

    invoke-virtual {v2, v4}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    .line 509
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v2

    new-array v4, v12, [B

    aput-byte v18, v4, v9

    aput-byte v11, v4, v10

    aput-byte v9, v4, v13

    const/4 v6, 0x3

    aput-byte v10, v4, v6

    const/4 v6, 0x4

    aput-byte v9, v4, v6

    invoke-virtual {v2, v4}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    .line 510
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->playBeep()V

    :cond_c
    if-lt v1, v7, :cond_d

    add-int/2addr v7, v5

    if-gt v1, v7, :cond_d

    .line 513
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v2

    new-array v4, v12, [B

    aput-byte v18, v4, v9

    aput-byte v11, v4, v10

    aput-byte v9, v4, v13

    const/4 v6, 0x3

    aput-byte v6, v4, v6

    const/4 v6, 0x4

    aput-byte v10, v4, v6

    invoke-virtual {v2, v4}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    .line 514
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v2

    new-array v4, v12, [B

    aput-byte v18, v4, v9

    aput-byte v11, v4, v10

    aput-byte v9, v4, v13

    const/4 v6, 0x3

    aput-byte v6, v4, v6

    const/4 v6, 0x4

    aput-byte v9, v4, v6

    invoke-virtual {v2, v4}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    .line 515
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->playBeep()V

    :cond_d
    if-lt v1, v3, :cond_28

    add-int/2addr v3, v5

    if-gt v1, v3, :cond_28

    .line 518
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    new-array v2, v12, [B

    aput-byte v18, v2, v9

    aput-byte v11, v2, v10

    aput-byte v9, v2, v13

    const/4 v3, 0x4

    const/4 v4, 0x3

    aput-byte v3, v2, v4

    aput-byte v10, v2, v3

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    .line 519
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    new-array v2, v12, [B

    aput-byte v18, v2, v9

    aput-byte v11, v2, v10

    aput-byte v9, v2, v13

    const/4 v3, 0x4

    const/4 v4, 0x3

    aput-byte v3, v2, v4

    aput-byte v9, v2, v3

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    .line 520
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->playBeep()V

    goto/16 :goto_a

    .line 525
    :cond_e
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "camry_hiword_cartype"

    invoke-static {v1, v2, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_f

    .line 526
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "camry_hiword_cartype"

    invoke-static {v1, v2, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v12, :cond_28

    .line 528
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v10, :cond_28

    .line 529
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 530
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 531
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/hzbhd/midware/proxy/R$dimen;->dp1024:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    const/16 v6, 0x321

    if-ge v4, v6, :cond_10

    mul-int/lit16 v1, v1, 0x3ff

    .line 533
    div-int/lit16 v1, v1, 0x320

    mul-int/lit16 v2, v2, 0x3e8

    .line 534
    div-int/lit16 v2, v2, 0x1e0

    goto :goto_4

    :cond_10
    mul-int/lit16 v1, v1, 0x3ff

    .line 536
    div-int/lit16 v1, v1, 0x400

    mul-int/lit16 v2, v2, 0x3e8

    .line 537
    div-int/lit16 v2, v2, 0x258

    :goto_4
    and-int/lit16 v4, v1, 0xff

    int-to-byte v4, v4

    shr-int/2addr v1, v5

    and-int/2addr v1, v3

    int-to-byte v1, v1

    and-int/lit16 v6, v2, 0xff

    int-to-byte v6, v6

    shr-int/2addr v2, v5

    and-int/2addr v2, v3

    int-to-byte v2, v2

    .line 543
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v3

    new-array v5, v5, [B

    aput-byte v18, v5, v9

    const/16 v7, 0x2c

    aput-byte v7, v5, v10

    aput-byte v10, v5, v13

    const/4 v7, 0x3

    aput-byte v1, v5, v7

    const/4 v1, 0x4

    aput-byte v4, v5, v1

    aput-byte v2, v5, v12

    const/4 v1, 0x6

    aput-byte v6, v5, v1

    const/4 v1, 0x7

    aput-byte v9, v5, v1

    invoke-virtual {v3, v5}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    .line 544
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->playBeep()V

    goto/16 :goto_a

    .line 547
    :cond_11
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->HONDA_CRV_2017_HIWORLD:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    if-eq v1, v2, :cond_17

    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->HONDA_HIWORLD:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    if-ne v1, v2, :cond_12

    goto/16 :goto_6

    .line 560
    :cond_12
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->NEW_TOYOTA_HIWORLD:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    if-ne v1, v2, :cond_16

    .line 562
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_13

    move v1, v10

    goto :goto_5

    .line 564
    :cond_13
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    move v1, v9

    .line 567
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 568
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    const/16 v5, 0x250

    .line 569
    invoke-static {v8, v5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v5

    if-gt v3, v5, :cond_28

    invoke-static {v8, v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v5

    if-lt v3, v5, :cond_28

    const/16 v3, 0xbe

    .line 570
    invoke-static {v8, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v3

    if-gt v2, v3, :cond_14

    const/16 v3, 0x1e

    invoke-static {v8, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v3

    if-lt v2, v3, :cond_14

    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v2

    new-array v3, v12, [B

    aput-byte v18, v3, v9

    aput-byte v11, v3, v10

    const/4 v4, -0x1

    aput-byte v4, v3, v13

    const/4 v4, 0x3

    aput-byte v10, v3, v4

    int-to-byte v1, v1

    const/4 v4, 0x4

    aput-byte v1, v3, v4

    invoke-virtual {v2, v3}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_a

    :cond_14
    const/16 v3, 0x2c4

    .line 571
    invoke-static {v8, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v3

    if-gt v2, v3, :cond_15

    invoke-static {v8, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v3

    if-lt v2, v3, :cond_15

    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v2

    new-array v3, v12, [B

    aput-byte v18, v3, v9

    aput-byte v11, v3, v10

    const/4 v4, -0x1

    aput-byte v4, v3, v13

    const/4 v4, 0x3

    aput-byte v4, v3, v4

    int-to-byte v1, v1

    const/4 v4, 0x4

    aput-byte v1, v3, v4

    invoke-virtual {v2, v3}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_a

    :cond_15
    const/16 v3, 0x3f1

    .line 572
    invoke-static {v8, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v3

    if-gt v2, v3, :cond_28

    const/16 v3, 0x352

    invoke-static {v8, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v3

    if-lt v2, v3, :cond_28

    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v2

    new-array v3, v12, [B

    aput-byte v18, v3, v9

    aput-byte v11, v3, v10

    const/4 v4, -0x1

    aput-byte v4, v3, v13

    const/4 v4, 0x4

    const/4 v5, 0x3

    aput-byte v4, v3, v5

    int-to-byte v1, v1

    aput-byte v1, v3, v4

    invoke-virtual {v2, v3}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_a

    :cond_16
    move v9, v10

    goto/16 :goto_a

    .line 548
    :cond_17
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v10, :cond_28

    .line 549
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 550
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 551
    invoke-static {v8, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v1

    mul-int/lit16 v1, v1, 0x618

    div-int/lit16 v1, v1, 0x400

    .line 552
    invoke-static {v8, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v2

    mul-int/lit16 v2, v2, 0x76c

    div-int/lit16 v2, v2, 0x258

    and-int/lit16 v4, v1, 0xff

    int-to-byte v4, v4

    shr-int/2addr v1, v5

    and-int/2addr v1, v3

    int-to-byte v1, v1

    and-int/lit16 v6, v2, 0xff

    int-to-byte v6, v6

    shr-int/2addr v2, v5

    and-int/2addr v2, v3

    int-to-byte v2, v2

    .line 557
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v3

    new-array v5, v5, [B

    aput-byte v18, v5, v9

    const/16 v7, 0x2c

    aput-byte v7, v5, v10

    aput-byte v10, v5, v13

    const/4 v7, 0x3

    aput-byte v1, v5, v7

    const/4 v1, 0x4

    aput-byte v4, v5, v1

    aput-byte v2, v5, v12

    const/4 v1, 0x6

    aput-byte v6, v5, v1

    const/4 v1, 0x7

    aput-byte v9, v5, v1

    invoke-virtual {v3, v5}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_a

    .line 428
    :cond_18
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_28

    .line 429
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 430
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    const/16 v3, 0x250

    .line 431
    invoke-static {v8, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v3

    const/16 v5, 0x18

    if-gt v2, v3, :cond_1b

    invoke-static {v8, v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v3

    if-lt v2, v3, :cond_1b

    const/16 v3, 0xbe

    .line 432
    invoke-static {v8, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v2

    if-gt v1, v2, :cond_19

    const/16 v2, 0x1e

    invoke-static {v8, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v2

    if-lt v1, v2, :cond_19

    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [B

    aput-byte v13, v2, v9

    aput-byte v5, v2, v10

    aput-byte v10, v2, v13

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reqCanbusInfo([B)V

    goto/16 :goto_a

    :cond_19
    const/16 v2, 0x2c4

    .line 433
    invoke-static {v8, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v2

    if-gt v1, v2, :cond_1a

    invoke-static {v8, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v2

    if-lt v1, v2, :cond_1a

    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [B

    aput-byte v13, v2, v9

    aput-byte v5, v2, v10

    aput-byte v13, v2, v13

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reqCanbusInfo([B)V

    goto/16 :goto_a

    :cond_1a
    const/16 v2, 0x3f1

    .line 434
    invoke-static {v8, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v2

    if-gt v1, v2, :cond_28

    const/16 v2, 0x352

    invoke-static {v8, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v2

    if-lt v1, v2, :cond_28

    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    const/4 v2, 0x3

    new-array v3, v2, [B

    aput-byte v13, v3, v9

    aput-byte v5, v3, v10

    aput-byte v2, v3, v13

    invoke-virtual {v1, v3}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reqCanbusInfo([B)V

    goto/16 :goto_a

    :cond_1b
    const/16 v3, 0x64

    .line 435
    invoke-static {v8, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v3

    if-gt v2, v3, :cond_28

    invoke-static {v8, v9}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v3

    if-lt v2, v3, :cond_28

    const/16 v2, 0x3f1

    .line 436
    invoke-static {v8, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v2

    if-gt v1, v2, :cond_1c

    const/16 v2, 0x352

    invoke-static {v8, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v2

    if-lt v1, v2, :cond_1c

    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [B

    aput-byte v13, v2, v9

    aput-byte v5, v2, v10

    const/4 v3, 0x6

    aput-byte v3, v2, v13

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reqCanbusInfo([B)V

    goto/16 :goto_a

    :cond_1c
    const/16 v2, 0xbe

    .line 437
    invoke-static {v8, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v2

    if-gt v1, v2, :cond_1d

    const/16 v2, 0x1e

    invoke-static {v8, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v2

    if-lt v1, v2, :cond_1d

    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [B

    aput-byte v13, v2, v9

    aput-byte v5, v2, v10

    const/4 v3, 0x4

    aput-byte v3, v2, v13

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reqCanbusInfo([B)V

    goto/16 :goto_a

    :cond_1d
    const/16 v2, 0x2c4

    .line 438
    invoke-static {v8, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v2

    if-gt v1, v2, :cond_28

    invoke-static {v8, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v2

    if-lt v1, v2, :cond_28

    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [B

    aput-byte v13, v2, v9

    aput-byte v5, v2, v10

    aput-byte v12, v2, v13

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reqCanbusInfo([B)V

    goto/16 :goto_a

    .line 405
    :cond_1e
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 406
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 407
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_28

    if-eqz v11, :cond_21

    const/16 v4, 0x250

    .line 409
    invoke-static {v8, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v2

    if-gt v3, v2, :cond_20

    invoke-static {v8, v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v2

    if-lt v3, v2, :cond_20

    const/16 v2, 0xbe

    .line 410
    invoke-static {v8, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v2

    if-gt v1, v2, :cond_1f

    const/16 v2, 0x1e

    invoke-static {v8, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v2

    if-lt v1, v2, :cond_1f

    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [B

    aput-byte v13, v2, v9

    aput-byte v17, v2, v10

    const/4 v3, 0x4

    aput-byte v3, v2, v13

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reqCanbusInfo([B)V

    goto/16 :goto_a

    :cond_1f
    const/16 v2, 0x3f1

    .line 411
    invoke-static {v8, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v2

    if-gt v1, v2, :cond_28

    const/16 v2, 0x352

    invoke-static {v8, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v2

    if-lt v1, v2, :cond_28

    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    const/4 v2, 0x3

    new-array v3, v2, [B

    aput-byte v13, v3, v9

    aput-byte v17, v3, v10

    aput-byte v2, v3, v13

    invoke-virtual {v1, v3}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reqCanbusInfo([B)V

    goto/16 :goto_a

    :cond_20
    const/16 v2, 0x64

    .line 412
    invoke-static {v8, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v2

    if-gt v3, v2, :cond_28

    invoke-static {v8, v9}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v2

    if-lt v3, v2, :cond_28

    const/16 v2, 0x3f1

    .line 413
    invoke-static {v8, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v2

    if-gt v1, v2, :cond_28

    const/16 v2, 0x352

    invoke-static {v8, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v2

    if-lt v1, v2, :cond_28

    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [B

    aput-byte v13, v2, v9

    aput-byte v17, v2, v10

    const/4 v3, 0x6

    aput-byte v3, v2, v13

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reqCanbusInfo([B)V

    goto/16 :goto_a

    :cond_21
    if-eqz v2, :cond_28

    const/16 v2, 0xbe

    .line 417
    invoke-static {v8, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v2

    if-gt v1, v2, :cond_28

    const/16 v2, 0x1e

    invoke-static {v8, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v2

    if-lt v1, v2, :cond_28

    const/16 v1, 0x250

    .line 418
    invoke-static {v8, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v1

    if-gt v3, v1, :cond_22

    invoke-static {v8, v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v1

    if-lt v3, v1, :cond_22

    .line 419
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [B

    aput-byte v13, v2, v9

    aput-byte v17, v2, v10

    aput-byte v13, v2, v13

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reqCanbusInfo([B)V

    goto/16 :goto_a

    :cond_22
    const/16 v1, 0x64

    .line 420
    invoke-static {v8, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v1

    if-gt v3, v1, :cond_28

    invoke-static {v8, v9}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v1

    if-lt v3, v1, :cond_28

    .line 421
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [B

    aput-byte v13, v2, v9

    aput-byte v17, v2, v10

    aput-byte v10, v2, v13

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reqCanbusInfo([B)V

    goto/16 :goto_a

    .line 384
    :cond_23
    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_28

    .line 385
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 386
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    const/16 v5, 0x250

    .line 387
    invoke-static {v8, v5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v5

    if-gt v3, v5, :cond_28

    invoke-static {v8, v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v5

    if-lt v3, v5, :cond_28

    if-eqz v11, :cond_26

    const/16 v3, 0xbe

    .line 389
    invoke-static {v8, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v2

    if-gt v1, v2, :cond_24

    const/16 v2, 0x1e

    invoke-static {v8, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v2

    if-lt v1, v2, :cond_24

    .line 390
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [B

    aput-byte v13, v2, v9

    aput-byte v17, v2, v10

    const/4 v3, 0x4

    aput-byte v3, v2, v13

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reqCanbusInfo([B)V

    goto/16 :goto_a

    :cond_24
    const/16 v2, 0x2c4

    .line 391
    invoke-static {v8, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v2

    if-gt v1, v2, :cond_25

    invoke-static {v8, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v2

    if-lt v1, v2, :cond_25

    .line 392
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [B

    aput-byte v13, v2, v9

    aput-byte v17, v2, v10

    const/4 v3, 0x7

    aput-byte v3, v2, v13

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reqCanbusInfo([B)V

    goto :goto_a

    :cond_25
    const/16 v2, 0x3f1

    .line 393
    invoke-static {v8, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v2

    if-gt v1, v2, :cond_28

    const/16 v2, 0x352

    invoke-static {v8, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v2

    if-lt v1, v2, :cond_28

    .line 394
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    const/4 v2, 0x3

    new-array v3, v2, [B

    aput-byte v13, v3, v9

    aput-byte v17, v3, v10

    aput-byte v2, v3, v13

    invoke-virtual {v1, v3}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reqCanbusInfo([B)V

    goto :goto_a

    :cond_26
    if-eqz v2, :cond_28

    const/16 v2, 0xbe

    .line 396
    invoke-static {v8, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v2

    if-gt v1, v2, :cond_27

    const/16 v2, 0x1e

    invoke-static {v8, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v2

    if-lt v1, v2, :cond_27

    .line 397
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [B

    aput-byte v13, v2, v9

    aput-byte v17, v2, v10

    aput-byte v13, v2, v13

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reqCanbusInfo([B)V

    goto :goto_a

    :cond_27
    const/16 v2, 0x2c4

    .line 398
    invoke-static {v8, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v2

    if-gt v1, v2, :cond_28

    invoke-static {v8, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v2

    if-lt v1, v2, :cond_28

    .line 399
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [B

    aput-byte v13, v2, v9

    aput-byte v17, v2, v10

    aput-byte v10, v2, v13

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reqCanbusInfo([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_28
    :goto_a
    return v9
.end method
