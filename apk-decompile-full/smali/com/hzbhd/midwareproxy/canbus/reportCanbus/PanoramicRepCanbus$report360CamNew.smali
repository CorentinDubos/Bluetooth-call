.class public Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360CamNew;
.super Ljava/lang/Object;
.source "PanoramicRepCanbus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "report360CamNew"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;


# direct methods
.method public constructor <init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;)V
    .locals 0

    .line 586
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360CamNew;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reportCanbusInfo(Landroid/view/MotionEvent;Landroid/content/Context;)Z
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    const/4 v9, 0x0

    .line 590
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->values()[Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v1

    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getFactoryCanType()I

    move-result v2

    aget-object v1, v1, v2

    .line 593
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

    .line 594
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
    const-string/jumbo v3, "report360CamNew"

    .line 595
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "reportCanbusInfo: isBackCamera = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "report360CamNew"

    .line 596
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "reportCanbusInfo: isParkPanoramic = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->TOYOTA_SIMPLE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    const/16 v6, 0x250

    const/4 v14, 0x7

    const/16 v17, 0x21

    const/16 v18, -0x7d

    const/4 v13, 0x4

    const/4 v15, 0x3

    const/4 v12, 0x2

    if-eq v1, v3, :cond_24

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->TOYOTA_RAISE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    if-ne v1, v3, :cond_2

    goto/16 :goto_9

    .line 622
    :cond_2
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->TOYOTA_PRADO_2014_SIMPLE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    if-eq v1, v3, :cond_1f

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->TOYOTA_PRADO_2014_RAISE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    if-ne v1, v3, :cond_3

    goto/16 :goto_8

    .line 649
    :cond_3
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->TOYOTA_XINBAS:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    if-eq v1, v3, :cond_19

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->TOYOTA_PRADO_2014_XINBAS:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    if-ne v1, v3, :cond_4

    goto/16 :goto_7

    .line 670
    :cond_4
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->TOYOTA_BINARY:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    const/16 v5, 0xff

    const/16 v19, 0x16

    if-ne v1, v3, :cond_a

    const-string/jumbo v1, "toyota_binary_cartype"

    .line 671
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

    .line 672
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "toyota_binary_cartype"

    invoke-static {v1, v3, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_5

    .line 674
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v10, :cond_2a

    .line 675
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360CamNew;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;

    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;->LEFT_BOTTOM:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;

    const/4 v5, 0x0

    new-array v6, v13, [B

    aput-byte v19, v6, v9

    aput-byte v18, v6, v10

    aput-byte v17, v6, v12

    aput-byte v12, v6, v15

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    invoke-static/range {v1 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->access$000(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;Landroid/content/Context;Landroid/view/MotionEvent;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;B[B)V

    .line 676
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360CamNew;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;

    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;->RIGHT_BOTTOM:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;

    const/4 v5, 0x0

    new-array v6, v13, [B

    aput-byte v19, v6, v9

    aput-byte v18, v6, v10

    aput-byte v17, v6, v12

    aput-byte v15, v6, v15

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    invoke-static/range {v1 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->access$000(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;Landroid/content/Context;Landroid/view/MotionEvent;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;B[B)V

    .line 677
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360CamNew;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;

    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;->RIGHT_BOTTOM_MID:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;

    const/4 v5, 0x0

    new-array v6, v13, [B

    aput-byte v19, v6, v9

    aput-byte v18, v6, v10

    aput-byte v17, v6, v12

    aput-byte v14, v6, v15

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    invoke-static/range {v1 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->access$000(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;Landroid/content/Context;Landroid/view/MotionEvent;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;B[B)V

    goto/16 :goto_b

    .line 679
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "toyota_binary_cartype"

    invoke-static {v1, v3, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/16 v3, 0xa

    if-ne v1, v3, :cond_7

    if-eqz v11, :cond_6

    .line 682
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360CamNew;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;

    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;->RIGHT_BOTTOM:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;

    const/4 v5, 0x0

    new-array v6, v13, [B

    aput-byte v19, v6, v9

    aput-byte v18, v6, v10

    aput-byte v17, v6, v12

    aput-byte v15, v6, v15

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    invoke-static/range {v1 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->access$000(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;Landroid/content/Context;Landroid/view/MotionEvent;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;B[B)V

    .line 683
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360CamNew;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;

    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;->LEFT_BOTTOM:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;

    const/4 v5, 0x0

    new-array v6, v13, [B

    aput-byte v19, v6, v9

    aput-byte v18, v6, v10

    aput-byte v17, v6, v12

    aput-byte v13, v6, v15

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    invoke-static/range {v1 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->access$000(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;Landroid/content/Context;Landroid/view/MotionEvent;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;B[B)V

    goto/16 :goto_b

    :cond_6
    if-eqz v2, :cond_2a

    .line 685
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360CamNew;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;

    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;->LEFT_TOP:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;

    const/4 v5, 0x0

    new-array v6, v13, [B

    aput-byte v19, v6, v9

    aput-byte v18, v6, v10

    aput-byte v17, v6, v12

    aput-byte v10, v6, v15

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    const/4 v11, 0x6

    const/4 v14, 0x5

    invoke-static/range {v1 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->access$000(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;Landroid/content/Context;Landroid/view/MotionEvent;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;B[B)V

    .line 686
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360CamNew;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;

    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;->LEFT_BOTTOM:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;

    const/4 v5, 0x0

    new-array v6, v13, [B

    aput-byte v19, v6, v9

    aput-byte v18, v6, v10

    aput-byte v17, v6, v12

    aput-byte v12, v6, v15

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    invoke-static/range {v1 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->access$000(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;Landroid/content/Context;Landroid/view/MotionEvent;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;B[B)V

    .line 687
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360CamNew;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;

    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;->RIGHT_BOTTOM:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;

    const/4 v5, 0x0

    new-array v6, v13, [B

    aput-byte v19, v6, v9

    aput-byte v18, v6, v10

    aput-byte v17, v6, v12

    aput-byte v14, v6, v15

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    invoke-static/range {v1 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->access$000(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;Landroid/content/Context;Landroid/view/MotionEvent;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;B[B)V

    .line 688
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360CamNew;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;

    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;->RIGHT_TOP:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;

    const/4 v5, 0x0

    new-array v6, v13, [B

    aput-byte v19, v6, v9

    aput-byte v18, v6, v10

    aput-byte v17, v6, v12

    aput-byte v11, v6, v15

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    invoke-static/range {v1 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->access$000(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;Landroid/content/Context;Landroid/view/MotionEvent;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;B[B)V

    goto/16 :goto_b

    .line 691
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v10, :cond_9

    if-eqz v11, :cond_8

    .line 693
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360CamNew;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;

    new-array v2, v12, [B

    aput-byte v19, v2, v9

    const/16 v3, -0x7b

    aput-byte v3, v2, v10

    invoke-static {v1, v8, v7, v5, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->access$100(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;Landroid/content/Context;Landroid/view/MotionEvent;I[B)V

    goto/16 :goto_2

    :cond_8
    if-eqz v2, :cond_9

    .line 695
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360CamNew;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;

    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;->LEFT_TOP:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;

    const/4 v6, 0x0

    new-array v3, v13, [B

    aput-byte v19, v3, v9

    aput-byte v18, v3, v10

    aput-byte v17, v3, v12

    aput-byte v10, v3, v15

    move-object/from16 v2, p2

    move-object/from16 v16, v3

    move-object/from16 v3, p1

    move v5, v6

    move-object/from16 v6, v16

    invoke-static/range {v1 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->access$000(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;Landroid/content/Context;Landroid/view/MotionEvent;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;B[B)V

    .line 696
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360CamNew;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;

    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;->LEFT_BOTTOM:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;

    const/4 v5, 0x0

    new-array v6, v13, [B

    aput-byte v19, v6, v9

    aput-byte v18, v6, v10

    aput-byte v17, v6, v12

    aput-byte v12, v6, v15

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    invoke-static/range {v1 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->access$000(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;Landroid/content/Context;Landroid/view/MotionEvent;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;B[B)V

    .line 697
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360CamNew;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;

    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;->RIGHT_BOTTOM:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;

    const/4 v5, 0x0

    new-array v6, v13, [B

    aput-byte v19, v6, v9

    aput-byte v18, v6, v10

    aput-byte v17, v6, v12

    aput-byte v15, v6, v15

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    invoke-static/range {v1 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->access$000(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;Landroid/content/Context;Landroid/view/MotionEvent;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;B[B)V

    .line 698
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360CamNew;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;

    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;->RIGHT_TOP:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;

    const/4 v5, 0x0

    new-array v6, v13, [B

    aput-byte v19, v6, v9

    aput-byte v18, v6, v10

    aput-byte v17, v6, v12

    aput-byte v13, v6, v15

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    invoke-static/range {v1 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->access$000(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;Landroid/content/Context;Landroid/view/MotionEvent;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;B[B)V

    .line 699
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360CamNew;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;

    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;->RIGHT_BOTTOM_MID:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;

    const/4 v5, 0x0

    new-array v6, v13, [B

    aput-byte v19, v6, v9

    aput-byte v18, v6, v10

    aput-byte v17, v6, v12

    aput-byte v14, v6, v15

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    invoke-static/range {v1 .. v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->access$000(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;Landroid/content/Context;Landroid/view/MotionEvent;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$CANBUS_CAMEREA_360_KEY;B[B)V

    .line 702
    :cond_9
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2a

    if-eqz v11, :cond_2a

    .line 704
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360CamNew;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;

    new-array v2, v12, [B

    aput-byte v19, v2, v9

    const/16 v3, -0x7b

    aput-byte v3, v2, v10

    const/16 v3, 0xff

    invoke-static {v1, v8, v7, v3, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->access$100(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;Landroid/content/Context;Landroid/view/MotionEvent;I[B)V

    goto/16 :goto_b

    :cond_a
    move v3, v5

    const/4 v2, 0x5

    const/4 v11, 0x6

    .line 709
    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->NEW_TOYOTA_HIWORLD:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    const/16 v4, 0x8

    const/16 v17, -0x6

    if-ne v1, v5, :cond_11

    .line 710
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "camry_hiword_cartype"

    invoke-static {v1, v5, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v11, :cond_e

    const-string v1, "1235555"

    const-string/jumbo v3, "reportCanbusInfo: "

    .line 712
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v10, :cond_2a

    .line 715
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 716
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 718
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/hzbhd/midware/proxy/R$dimen;->dp1024:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    const/16 v5, 0x321

    if-ge v4, v5, :cond_b

    const/16 v5, 0x1e0

    const/16 v6, 0x78

    const/16 v7, 0x50

    goto :goto_3

    :cond_b
    const/16 v5, 0x258

    const/16 v6, 0x8c

    const/16 v7, 0x64

    :goto_3
    mul-int/lit8 v8, v4, 0x3

    .line 729
    div-int/2addr v8, v13

    sub-int/2addr v8, v6

    add-int/lit8 v8, v8, -0x14

    sub-int/2addr v4, v6

    sub-int v7, v5, v7

    if-lt v3, v7, :cond_2a

    if-gt v3, v5, :cond_2a

    if-ltz v1, :cond_c

    add-int/lit8 v3, v6, 0x0

    if-gt v1, v3, :cond_c

    .line 733
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v3

    new-array v5, v2, [B

    aput-byte v19, v5, v9

    aput-byte v17, v5, v10

    aput-byte v9, v5, v12

    aput-byte v10, v5, v15

    aput-byte v10, v5, v13

    invoke-virtual {v3, v5}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    .line 734
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v3

    new-array v5, v2, [B

    aput-byte v19, v5, v9

    aput-byte v17, v5, v10

    aput-byte v9, v5, v12

    aput-byte v10, v5, v15

    aput-byte v9, v5, v13

    invoke-virtual {v3, v5}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    .line 735
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->playBeep()V

    :cond_c
    if-lt v1, v8, :cond_d

    add-int/2addr v8, v6

    if-gt v1, v8, :cond_d

    .line 738
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v3

    new-array v5, v2, [B

    aput-byte v19, v5, v9

    aput-byte v17, v5, v10

    aput-byte v9, v5, v12

    aput-byte v15, v5, v15

    aput-byte v10, v5, v13

    invoke-virtual {v3, v5}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    .line 739
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v3

    new-array v5, v2, [B

    aput-byte v19, v5, v9

    aput-byte v17, v5, v10

    aput-byte v9, v5, v12

    aput-byte v15, v5, v15

    aput-byte v9, v5, v13

    invoke-virtual {v3, v5}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    .line 740
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->playBeep()V

    :cond_d
    if-lt v1, v4, :cond_2a

    add-int/2addr v4, v6

    if-gt v1, v4, :cond_2a

    .line 743
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    new-array v3, v2, [B

    aput-byte v19, v3, v9

    aput-byte v17, v3, v10

    aput-byte v9, v3, v12

    aput-byte v13, v3, v15

    aput-byte v10, v3, v13

    invoke-virtual {v1, v3}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    .line 744
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    new-array v2, v2, [B

    aput-byte v19, v2, v9

    aput-byte v17, v2, v10

    aput-byte v9, v2, v12

    aput-byte v13, v2, v15

    aput-byte v9, v2, v13

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    .line 745
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->playBeep()V

    goto/16 :goto_b

    :cond_e
    if-eq v1, v2, :cond_f

    if-ne v1, v14, :cond_2a

    .line 752
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v10, :cond_2a

    .line 753
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 754
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    .line 755
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/hzbhd/midware/proxy/R$dimen;->dp1024:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    const/16 v7, 0x321

    if-ge v6, v7, :cond_10

    mul-int/lit16 v1, v1, 0x3ff

    .line 757
    div-int/lit16 v1, v1, 0x320

    mul-int/lit16 v5, v5, 0x3e8

    .line 758
    div-int/lit16 v5, v5, 0x1e0

    goto :goto_4

    :cond_10
    mul-int/lit16 v1, v1, 0x3ff

    .line 760
    div-int/lit16 v1, v1, 0x400

    mul-int/lit16 v5, v5, 0x3e8

    .line 761
    div-int/lit16 v5, v5, 0x258

    :goto_4
    and-int/lit16 v6, v1, 0xff

    int-to-byte v6, v6

    shr-int/2addr v1, v4

    and-int/2addr v1, v3

    int-to-byte v1, v1

    and-int/lit16 v7, v5, 0xff

    int-to-byte v7, v7

    shr-int/2addr v5, v4

    and-int/2addr v3, v5

    int-to-byte v3, v3

    .line 767
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v5

    new-array v4, v4, [B

    aput-byte v19, v4, v9

    const/16 v8, 0x2c

    aput-byte v8, v4, v10

    aput-byte v10, v4, v12

    aput-byte v1, v4, v15

    aput-byte v6, v4, v13

    aput-byte v3, v4, v2

    aput-byte v7, v4, v11

    aput-byte v9, v4, v14

    invoke-virtual {v5, v4}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    .line 768
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->playBeep()V

    goto/16 :goto_b

    .line 771
    :cond_11
    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->HONDA_CRV_2017_HIWORLD:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    if-eq v1, v5, :cond_18

    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->HONDA_HIWORLD:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    if-ne v1, v5, :cond_12

    goto/16 :goto_6

    .line 785
    :cond_12
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->NEW_TOYOTA_HIWORLD:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    if-ne v1, v3, :cond_17

    .line 787
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_13

    move v1, v10

    goto :goto_5

    .line 789
    :cond_13
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v10, :cond_14

    .line 790
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->playBeep()V

    :cond_14
    move v1, v9

    .line 793
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    .line 794
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    .line 795
    invoke-static {v8, v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v5

    if-gt v4, v5, :cond_2a

    const/16 v5, 0x1ef

    invoke-static {v8, v5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v5

    if-lt v4, v5, :cond_2a

    const/16 v4, 0xbe

    .line 796
    invoke-static {v8, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v4

    if-gt v3, v4, :cond_15

    const/16 v4, 0x1e

    invoke-static {v8, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v4

    if-lt v3, v4, :cond_15

    .line 797
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v3

    new-array v2, v2, [B

    aput-byte v19, v2, v9

    aput-byte v17, v2, v10

    const/4 v4, -0x1

    aput-byte v4, v2, v12

    aput-byte v10, v2, v15

    int-to-byte v1, v1

    aput-byte v1, v2, v13

    invoke-virtual {v3, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_b

    :cond_15
    const/16 v4, 0x2c4

    .line 798
    invoke-static {v8, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v4

    if-gt v3, v4, :cond_16

    const/16 v4, 0x21b

    invoke-static {v8, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v4

    if-lt v3, v4, :cond_16

    .line 799
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v3

    new-array v2, v2, [B

    aput-byte v19, v2, v9

    aput-byte v17, v2, v10

    const/4 v4, -0x1

    aput-byte v4, v2, v12

    aput-byte v15, v2, v15

    int-to-byte v1, v1

    aput-byte v1, v2, v13

    invoke-virtual {v3, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_b

    :cond_16
    const/16 v4, 0x3f1

    .line 800
    invoke-static {v8, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v4

    if-gt v3, v4, :cond_2a

    const/16 v4, 0x352

    invoke-static {v8, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v4

    if-lt v3, v4, :cond_2a

    .line 801
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v3

    new-array v2, v2, [B

    aput-byte v19, v2, v9

    aput-byte v17, v2, v10

    const/4 v4, -0x1

    aput-byte v4, v2, v12

    aput-byte v13, v2, v15

    int-to-byte v1, v1

    aput-byte v1, v2, v13

    invoke-virtual {v3, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_b

    :cond_17
    move v9, v10

    goto/16 :goto_b

    .line 772
    :cond_18
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v10, :cond_2a

    .line 773
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 774
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    .line 775
    invoke-static {v8, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v1

    mul-int/lit16 v1, v1, 0x618

    div-int/lit16 v1, v1, 0x400

    .line 776
    invoke-static {v8, v5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v5

    mul-int/lit16 v5, v5, 0x76c

    div-int/lit16 v5, v5, 0x258

    and-int/lit16 v6, v1, 0xff

    int-to-byte v6, v6

    shr-int/2addr v1, v4

    and-int/2addr v1, v3

    int-to-byte v1, v1

    and-int/lit16 v7, v5, 0xff

    int-to-byte v7, v7

    shr-int/2addr v5, v4

    and-int/2addr v3, v5

    int-to-byte v3, v3

    .line 781
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v5

    new-array v4, v4, [B

    aput-byte v19, v4, v9

    const/16 v8, 0x2c

    aput-byte v8, v4, v10

    aput-byte v10, v4, v12

    aput-byte v1, v4, v15

    aput-byte v6, v4, v13

    aput-byte v3, v4, v2

    aput-byte v7, v4, v11

    aput-byte v9, v4, v14

    invoke-virtual {v5, v4}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    .line 782
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->playBeep()V

    goto/16 :goto_b

    :cond_19
    :goto_7
    const/4 v2, 0x5

    const/4 v11, 0x6

    .line 650
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2a

    .line 651
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 652
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 653
    invoke-static {v8, v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v4

    const/16 v5, 0x18

    if-gt v3, v4, :cond_1c

    const/16 v4, 0x1ef

    invoke-static {v8, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v4

    if-lt v3, v4, :cond_1c

    const/16 v4, 0xbe

    .line 654
    invoke-static {v8, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v2

    if-gt v1, v2, :cond_1a

    const/16 v2, 0x1e

    invoke-static {v8, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v2

    if-lt v1, v2, :cond_1a

    .line 655
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360CamNew;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;

    new-array v2, v15, [B

    aput-byte v18, v2, v9

    aput-byte v5, v2, v10

    aput-byte v10, v2, v12

    new-array v3, v15, [B

    aput-byte v12, v3, v9

    aput-byte v5, v3, v10

    aput-byte v10, v3, v12

    invoke-static {v1, v2, v3, v8}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->access$200(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;[B[BLandroid/content/Context;)V

    goto/16 :goto_b

    :cond_1a
    const/16 v2, 0x2c4

    .line 656
    invoke-static {v8, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v2

    if-gt v1, v2, :cond_1b

    const/16 v2, 0x21b

    invoke-static {v8, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v2

    if-lt v1, v2, :cond_1b

    .line 657
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360CamNew;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;

    new-array v2, v15, [B

    aput-byte v18, v2, v9

    aput-byte v5, v2, v10

    aput-byte v12, v2, v12

    new-array v3, v15, [B

    aput-byte v12, v3, v9

    aput-byte v5, v3, v10

    aput-byte v12, v3, v12

    invoke-static {v1, v2, v3, v8}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->access$200(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;[B[BLandroid/content/Context;)V

    goto/16 :goto_b

    :cond_1b
    const/16 v2, 0x3f1

    .line 658
    invoke-static {v8, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v2

    if-gt v1, v2, :cond_2a

    const/16 v2, 0x352

    invoke-static {v8, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v2

    if-lt v1, v2, :cond_2a

    .line 659
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360CamNew;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;

    new-array v2, v15, [B

    aput-byte v18, v2, v9

    aput-byte v5, v2, v10

    aput-byte v15, v2, v12

    new-array v3, v15, [B

    aput-byte v12, v3, v9

    aput-byte v5, v3, v10

    aput-byte v15, v3, v12

    invoke-static {v1, v2, v3, v8}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->access$200(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;[B[BLandroid/content/Context;)V

    goto/16 :goto_b

    :cond_1c
    const/16 v4, 0x64

    .line 660
    invoke-static {v8, v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v4

    if-gt v3, v4, :cond_2a

    invoke-static {v8, v9}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v4

    if-lt v3, v4, :cond_2a

    const/16 v3, 0x3f1

    .line 661
    invoke-static {v8, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v3

    if-gt v1, v3, :cond_1d

    const/16 v3, 0x352

    invoke-static {v8, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v3

    if-lt v1, v3, :cond_1d

    .line 662
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360CamNew;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;

    new-array v2, v15, [B

    aput-byte v18, v2, v9

    aput-byte v5, v2, v10

    aput-byte v11, v2, v12

    new-array v3, v15, [B

    aput-byte v12, v3, v9

    aput-byte v5, v3, v10

    aput-byte v11, v3, v12

    invoke-static {v1, v2, v3, v8}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->access$200(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;[B[BLandroid/content/Context;)V

    goto/16 :goto_b

    :cond_1d
    const/16 v3, 0xbe

    .line 663
    invoke-static {v8, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v3

    if-gt v1, v3, :cond_1e

    const/16 v3, 0x1e

    invoke-static {v8, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v3

    if-lt v1, v3, :cond_1e

    .line 664
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360CamNew;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;

    new-array v2, v15, [B

    aput-byte v18, v2, v9

    aput-byte v5, v2, v10

    aput-byte v13, v2, v12

    new-array v3, v15, [B

    aput-byte v12, v3, v9

    aput-byte v5, v3, v10

    aput-byte v13, v3, v12

    invoke-static {v1, v2, v3, v8}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->access$200(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;[B[BLandroid/content/Context;)V

    goto/16 :goto_b

    :cond_1e
    const/16 v3, 0x2c4

    .line 665
    invoke-static {v8, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v3

    if-gt v1, v3, :cond_2a

    const/16 v3, 0x21b

    invoke-static {v8, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v3

    if-lt v1, v3, :cond_2a

    .line 666
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360CamNew;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;

    new-array v3, v15, [B

    aput-byte v18, v3, v9

    aput-byte v5, v3, v10

    aput-byte v2, v3, v12

    new-array v4, v15, [B

    aput-byte v12, v4, v9

    aput-byte v5, v4, v10

    aput-byte v2, v4, v12

    invoke-static {v1, v3, v4, v8}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->access$200(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;[B[BLandroid/content/Context;)V

    goto/16 :goto_b

    :cond_1f
    :goto_8
    const/4 v1, 0x6

    .line 624
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    .line 625
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    .line 626
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_2a

    if-eqz v11, :cond_22

    .line 628
    invoke-static {v8, v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v2

    if-gt v4, v2, :cond_21

    const/16 v2, 0x1ef

    invoke-static {v8, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v2

    if-lt v4, v2, :cond_21

    const/16 v2, 0xbe

    .line 629
    invoke-static {v8, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v1

    if-gt v3, v1, :cond_20

    const/16 v1, 0x1e

    invoke-static {v8, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v1

    if-lt v3, v1, :cond_20

    .line 630
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360CamNew;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;

    new-array v2, v15, [B

    aput-byte v18, v2, v9

    aput-byte v17, v2, v10

    aput-byte v13, v2, v12

    new-array v3, v15, [B

    aput-byte v12, v3, v9

    aput-byte v17, v3, v10

    aput-byte v13, v3, v12

    invoke-static {v1, v2, v3, v8}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->access$200(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;[B[BLandroid/content/Context;)V

    goto/16 :goto_b

    :cond_20
    const/16 v1, 0x3f1

    .line 631
    invoke-static {v8, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v1

    if-gt v3, v1, :cond_2a

    const/16 v1, 0x352

    invoke-static {v8, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v1

    if-lt v3, v1, :cond_2a

    .line 632
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360CamNew;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;

    new-array v2, v15, [B

    aput-byte v18, v2, v9

    aput-byte v17, v2, v10

    aput-byte v15, v2, v12

    new-array v3, v15, [B

    aput-byte v12, v3, v9

    aput-byte v17, v3, v10

    aput-byte v15, v3, v12

    invoke-static {v1, v2, v3, v8}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->access$200(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;[B[BLandroid/content/Context;)V

    goto/16 :goto_b

    :cond_21
    const/16 v2, 0x64

    .line 633
    invoke-static {v8, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v2

    if-gt v4, v2, :cond_2a

    invoke-static {v8, v9}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v2

    if-lt v4, v2, :cond_2a

    const/16 v2, 0x3f1

    .line 634
    invoke-static {v8, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v2

    if-gt v3, v2, :cond_2a

    const/16 v2, 0x352

    invoke-static {v8, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v2

    if-lt v3, v2, :cond_2a

    .line 635
    iget-object v2, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360CamNew;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;

    new-array v3, v15, [B

    aput-byte v18, v3, v9

    aput-byte v17, v3, v10

    aput-byte v1, v3, v12

    new-array v4, v15, [B

    aput-byte v12, v4, v9

    aput-byte v17, v4, v10

    aput-byte v1, v4, v12

    invoke-static {v2, v3, v4, v8}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->access$200(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;[B[BLandroid/content/Context;)V

    goto/16 :goto_b

    :cond_22
    if-eqz v2, :cond_2a

    const/16 v1, 0xbe

    .line 639
    invoke-static {v8, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v1

    if-gt v3, v1, :cond_2a

    const/16 v1, 0x1e

    invoke-static {v8, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v1

    if-lt v3, v1, :cond_2a

    .line 640
    invoke-static {v8, v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v1

    if-gt v4, v1, :cond_23

    const/16 v1, 0x1ef

    invoke-static {v8, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v1

    if-lt v4, v1, :cond_23

    .line 641
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360CamNew;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;

    new-array v2, v15, [B

    aput-byte v18, v2, v9

    aput-byte v17, v2, v10

    aput-byte v12, v2, v12

    new-array v3, v15, [B

    aput-byte v12, v3, v9

    aput-byte v17, v3, v10

    aput-byte v12, v3, v12

    invoke-static {v1, v2, v3, v8}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->access$200(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;[B[BLandroid/content/Context;)V

    goto/16 :goto_b

    :cond_23
    const/16 v1, 0x64

    .line 642
    invoke-static {v8, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v1

    if-gt v4, v1, :cond_2a

    invoke-static {v8, v9}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v1

    if-lt v4, v1, :cond_2a

    .line 643
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360CamNew;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;

    new-array v2, v15, [B

    aput-byte v18, v2, v9

    aput-byte v17, v2, v10

    aput-byte v10, v2, v12

    new-array v3, v15, [B

    aput-byte v12, v3, v9

    aput-byte v17, v3, v10

    aput-byte v10, v3, v12

    invoke-static {v1, v2, v3, v8}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->access$200(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;[B[BLandroid/content/Context;)V

    goto/16 :goto_b

    :cond_24
    :goto_9
    const-string/jumbo v1, "report360CamNew"

    const-string/jumbo v3, "report360CamNew"

    .line 599
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "gpioLevel"

    invoke-static {v1, v3, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_25

    move v1, v10

    goto :goto_a

    :cond_25
    move v1, v9

    .line 603
    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2a

    .line 604
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    .line 605
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    .line 606
    invoke-static {v8, v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v5

    if-gt v4, v5, :cond_2a

    const/16 v5, 0x1ef

    invoke-static {v8, v5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v5

    if-lt v4, v5, :cond_2a

    if-eqz v1, :cond_28

    const/16 v1, 0xbe

    .line 608
    invoke-static {v8, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v1

    if-gt v3, v1, :cond_26

    const/16 v1, 0x1e

    invoke-static {v8, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v1

    if-lt v3, v1, :cond_26

    .line 609
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360CamNew;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;

    new-array v2, v15, [B

    aput-byte v18, v2, v9

    aput-byte v17, v2, v10

    aput-byte v13, v2, v12

    new-array v3, v15, [B

    aput-byte v12, v3, v9

    aput-byte v17, v3, v10

    aput-byte v13, v3, v12

    invoke-static {v1, v2, v3, v8}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->access$200(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;[B[BLandroid/content/Context;)V

    goto/16 :goto_b

    :cond_26
    const/16 v1, 0x2c4

    .line 610
    invoke-static {v8, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v1

    if-gt v3, v1, :cond_27

    const/16 v1, 0x21b

    invoke-static {v8, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v1

    if-lt v3, v1, :cond_27

    .line 611
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360CamNew;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;

    new-array v2, v15, [B

    aput-byte v18, v2, v9

    aput-byte v17, v2, v10

    aput-byte v14, v2, v12

    new-array v3, v15, [B

    aput-byte v12, v3, v9

    aput-byte v17, v3, v10

    aput-byte v14, v3, v12

    invoke-static {v1, v2, v3, v8}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->access$200(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;[B[BLandroid/content/Context;)V

    goto/16 :goto_b

    :cond_27
    const/16 v1, 0x3f1

    .line 612
    invoke-static {v8, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v1

    if-gt v3, v1, :cond_2a

    const/16 v1, 0x352

    invoke-static {v8, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v1

    if-lt v3, v1, :cond_2a

    .line 613
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360CamNew;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;

    new-array v2, v15, [B

    aput-byte v18, v2, v9

    aput-byte v17, v2, v10

    aput-byte v15, v2, v12

    new-array v3, v15, [B

    aput-byte v12, v3, v9

    aput-byte v17, v3, v10

    aput-byte v15, v3, v12

    invoke-static {v1, v2, v3, v8}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->access$200(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;[B[BLandroid/content/Context;)V

    goto :goto_b

    :cond_28
    if-eqz v2, :cond_2a

    const/16 v1, 0xbe

    .line 615
    invoke-static {v8, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v1

    if-gt v3, v1, :cond_29

    const/16 v1, 0x1e

    invoke-static {v8, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v1

    if-lt v3, v1, :cond_29

    .line 616
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360CamNew;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;

    new-array v2, v15, [B

    aput-byte v18, v2, v9

    aput-byte v17, v2, v10

    aput-byte v12, v2, v12

    new-array v3, v15, [B

    aput-byte v12, v3, v9

    aput-byte v17, v3, v10

    aput-byte v12, v3, v12

    invoke-static {v1, v2, v3, v8}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->access$200(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;[B[BLandroid/content/Context;)V

    goto :goto_b

    :cond_29
    const/16 v1, 0x2c4

    .line 617
    invoke-static {v8, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v1

    if-gt v3, v1, :cond_2a

    const/16 v1, 0x21b

    invoke-static {v8, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v1

    if-lt v3, v1, :cond_2a

    .line 618
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360CamNew;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;

    new-array v2, v15, [B

    aput-byte v18, v2, v9

    aput-byte v17, v2, v10

    aput-byte v10, v2, v12

    new-array v3, v15, [B

    aput-byte v12, v3, v9

    aput-byte v17, v3, v10

    aput-byte v10, v3, v12

    invoke-static {v1, v2, v3, v8}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->access$200(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;[B[BLandroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2a
    :goto_b
    return v9
.end method
