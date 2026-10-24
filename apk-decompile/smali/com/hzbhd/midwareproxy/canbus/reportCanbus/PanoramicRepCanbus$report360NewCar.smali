.class public Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360NewCar;
.super Ljava/lang/Object;
.source "PanoramicRepCanbus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "report360NewCar"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;


# direct methods
.method public constructor <init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;)V
    .locals 0

    .line 817
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360NewCar;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reportCanbusInfo(Landroid/view/MotionEvent;Landroid/content/Context;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "THRUMPCHI_RAISE"

    const/4 v4, 0x0

    .line 821
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->values()[Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v5

    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getFactoryCanType()I

    move-result v6

    aget-object v5, v5, v6

    .line 824
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "isBackCamera"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x1

    .line 825
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "isParkPanoramic"

    invoke-static {v5, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 826
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getPanoramicCameraSwitch()Z

    .line 827
    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v7

    invoke-virtual {v7}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v7

    aget v5, v5, v7

    const/16 v8, 0x321

    const/4 v10, 0x5

    const/4 v11, 0x4

    const/4 v12, 0x7

    const/16 v13, 0x16

    const/4 v14, 0x3

    const/4 v15, 0x2

    const/16 v7, 0x8

    packed-switch v5, :pswitch_data_0

    move v4, v6

    goto/16 :goto_a

    .line 987
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    move v3, v6

    goto :goto_0

    .line 988
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    move v3, v4

    .line 989
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    .line 990
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 991
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v9, Lcom/hzbhd/midware/proxy/R$dimen;->dp1024:I

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    if-ge v2, v8, :cond_1

    mul-int/lit16 v5, v5, 0x3ff

    .line 993
    div-int/lit16 v5, v5, 0x320

    mul-int/lit16 v1, v1, 0x3e8

    .line 994
    div-int/lit16 v1, v1, 0x1e0

    goto :goto_1

    :cond_1
    mul-int/lit16 v5, v5, 0x3ff

    .line 996
    div-int/lit16 v5, v5, 0x400

    mul-int/lit16 v1, v1, 0x3e8

    .line 997
    div-int/lit16 v1, v1, 0x258

    :goto_1
    and-int/lit16 v2, v5, 0xff

    int-to-byte v2, v2

    shr-int/2addr v5, v7

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    and-int/lit16 v8, v1, 0xff

    int-to-byte v8, v8

    shr-int/2addr v1, v7

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 1003
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v7

    new-array v9, v12, [B

    aput-byte v13, v9, v4

    const/16 v12, -0x74

    aput-byte v12, v9, v6

    int-to-byte v3, v3

    aput-byte v3, v9, v15

    aput-byte v5, v9, v14

    aput-byte v2, v9, v11

    aput-byte v1, v9, v10

    const/4 v1, 0x6

    aput-byte v8, v9, v1

    invoke-virtual {v7, v9}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_a

    .line 962
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    move v3, v6

    goto :goto_2

    .line 964
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v6, :cond_4

    :cond_3
    move v3, v4

    goto :goto_2

    .line 966
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v15, :cond_3

    move v3, v15

    .line 969
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    .line 970
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 971
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v9, Lcom/hzbhd/midware/proxy/R$dimen;->dp1024:I

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    if-ge v2, v8, :cond_5

    mul-int/lit16 v5, v5, 0x3ff

    .line 973
    div-int/lit16 v5, v5, 0x320

    mul-int/lit16 v1, v1, 0x3e8

    .line 974
    div-int/lit16 v1, v1, 0x1e0

    goto :goto_3

    :cond_5
    mul-int/lit16 v5, v5, 0x3ff

    .line 976
    div-int/lit16 v5, v5, 0x400

    mul-int/lit16 v1, v1, 0x3e8

    .line 977
    div-int/lit16 v1, v1, 0x258

    :goto_3
    and-int/lit16 v2, v5, 0xff

    int-to-byte v2, v2

    shr-int/2addr v5, v7

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    and-int/lit16 v8, v1, 0xff

    int-to-byte v8, v8

    shr-int/2addr v1, v7

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 983
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v7

    new-array v9, v12, [B

    aput-byte v13, v9, v4

    const/16 v12, -0x72

    aput-byte v12, v9, v6

    int-to-byte v3, v3

    aput-byte v3, v9, v15

    aput-byte v5, v9, v14

    aput-byte v2, v9, v11

    aput-byte v1, v9, v10

    const/4 v1, 0x6

    aput-byte v8, v9, v1

    invoke-virtual {v7, v9}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_a

    :pswitch_2
    const-string v5, "quanjing"

    .line 914
    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "is_support_panoramic_cam"

    invoke-static {v5, v8, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_6

    move v5, v6

    goto :goto_4

    :cond_6
    move v5, v4

    :goto_4
    if-eqz v5, :cond_13

    .line 917
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "trumpchi_car_type"

    invoke-static {v5, v8, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eq v5, v14, :cond_9

    const/16 v8, 0x9

    if-eq v5, v8, :cond_9

    const/16 v8, 0xb

    if-eq v5, v8, :cond_7

    const/16 v8, 0xd

    if-eq v5, v8, :cond_7

    const/16 v8, 0xe

    if-eq v5, v8, :cond_9

    goto/16 :goto_a

    .line 940
    :cond_7
    iget-object v3, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360NewCar;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;

    invoke-static {v3, v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->access$700(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "isInThrumpchiRightTouchArea"

    const-string/jumbo v5, "sendThrumpchiRightTouchCoord"

    .line 941
    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    iget-object v3, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360NewCar;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;

    invoke-static {v3, v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->access$800(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;Landroid/content/Context;Landroid/view/MotionEvent;)V

    goto/16 :goto_a

    .line 944
    :cond_8
    iget-object v3, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360NewCar;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;

    invoke-static {v3, v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->access$900(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;Landroid/content/Context;Landroid/view/MotionEvent;)V

    .line 945
    iget-object v3, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360NewCar;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;

    invoke-static {v3, v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->access$1000(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;Landroid/content/Context;Landroid/view/MotionEvent;)V

    .line 946
    iget-object v3, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360NewCar;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;

    invoke-static {v3, v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->access$1100(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;Landroid/content/Context;Landroid/view/MotionEvent;)V

    .line 947
    iget-object v3, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360NewCar;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;

    invoke-static {v3, v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->access$1200(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;Landroid/content/Context;Landroid/view/MotionEvent;)V

    .line 948
    iget-object v3, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360NewCar;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;

    invoke-static {v3, v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->access$1300(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;Landroid/content/Context;Landroid/view/MotionEvent;)V

    .line 949
    iget-object v3, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360NewCar;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;

    invoke-static {v3, v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->access$1400(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;Landroid/content/Context;Landroid/view/MotionEvent;)V

    .line 950
    iget-object v3, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360NewCar;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;

    invoke-static {v3, v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->access$1500(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;Landroid/content/Context;Landroid/view/MotionEvent;)V

    .line 951
    iget-object v3, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360NewCar;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;

    invoke-static {v3, v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->access$1600(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;Landroid/content/Context;Landroid/view/MotionEvent;)V

    goto/16 :goto_a

    .line 922
    :cond_9
    iget-object v5, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360NewCar;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;

    invoke-static {v5, v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->access$300(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result v5

    const/16 v8, -0x59

    if-eqz v5, :cond_a

    const-string v5, "isTouchInFront"

    .line 923
    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-array v3, v14, [B

    aput-byte v13, v3, v4

    aput-byte v8, v3, v6

    aput-byte v6, v3, v15

    .line 924
    invoke-static {v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    .line 926
    :cond_a
    iget-object v3, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360NewCar;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;

    invoke-static {v3, v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->access$400(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_b

    new-array v3, v14, [B

    aput-byte v13, v3, v4

    aput-byte v8, v3, v6

    aput-byte v15, v3, v15

    .line 927
    invoke-static {v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    .line 929
    :cond_b
    iget-object v3, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360NewCar;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;

    invoke-static {v3, v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->access$500(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_c

    new-array v3, v14, [B

    aput-byte v13, v3, v4

    aput-byte v8, v3, v6

    aput-byte v12, v3, v15

    .line 930
    invoke-static {v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    .line 932
    :cond_c
    iget-object v3, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus$report360NewCar;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;

    invoke-static {v3, v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;->access$600(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/PanoramicRepCanbus;Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_13

    new-array v1, v14, [B

    aput-byte v13, v1, v4

    aput-byte v8, v1, v6

    aput-byte v7, v1, v15

    .line 933
    invoke-static {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    goto/16 :goto_a

    .line 890
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_d

    move v3, v6

    goto :goto_5

    .line 892
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    move v3, v4

    .line 896
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    .line 897
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 898
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v9, Lcom/hzbhd/midware/proxy/R$dimen;->dp1024:I

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    if-ge v2, v8, :cond_e

    mul-int/lit16 v5, v5, 0x3ff

    .line 900
    div-int/lit16 v5, v5, 0x320

    mul-int/lit16 v1, v1, 0x3e8

    .line 901
    div-int/lit16 v1, v1, 0x1e0

    goto :goto_6

    :cond_e
    mul-int/lit16 v5, v5, 0x3ff

    .line 903
    div-int/lit16 v5, v5, 0x400

    mul-int/lit16 v1, v1, 0x3e8

    .line 904
    div-int/lit16 v1, v1, 0x258

    :goto_6
    and-int/lit16 v2, v5, 0xff

    int-to-byte v2, v2

    shr-int/2addr v5, v7

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    and-int/lit16 v8, v1, 0xff

    int-to-byte v8, v8

    shr-int/2addr v1, v7

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 910
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v7

    new-array v9, v12, [B

    aput-byte v13, v9, v4

    const/16 v12, -0x1d

    aput-byte v12, v9, v6

    int-to-byte v3, v3

    aput-byte v3, v9, v15

    aput-byte v5, v9, v14

    aput-byte v2, v9, v11

    aput-byte v1, v9, v10

    const/4 v1, 0x6

    aput-byte v8, v9, v1

    invoke-virtual {v7, v9}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_a

    .line 870
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v6, :cond_13

    .line 871
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    .line 872
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 873
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/hzbhd/midware/proxy/R$dimen;->dp1024:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    if-ge v2, v8, :cond_f

    mul-int/lit16 v3, v3, 0x3ff

    .line 875
    div-int/lit16 v3, v3, 0x320

    mul-int/lit16 v1, v1, 0x3e8

    .line 876
    div-int/lit16 v1, v1, 0x1e0

    goto :goto_7

    :cond_f
    mul-int/lit16 v3, v3, 0x3ff

    .line 878
    div-int/lit16 v3, v3, 0x400

    mul-int/lit16 v1, v1, 0x3e8

    .line 879
    div-int/lit16 v1, v1, 0x258

    :goto_7
    and-int/lit16 v2, v3, 0xff

    int-to-byte v2, v2

    shr-int/2addr v3, v7

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    and-int/lit16 v5, v1, 0xff

    int-to-byte v5, v5

    shr-int/2addr v1, v7

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 885
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v8

    new-array v7, v7, [B

    aput-byte v13, v7, v4

    const/16 v9, -0x68

    aput-byte v9, v7, v6

    aput-byte v6, v7, v15

    aput-byte v3, v7, v14

    aput-byte v2, v7, v11

    aput-byte v1, v7, v10

    const/4 v1, 0x6

    aput-byte v5, v7, v1

    aput-byte v4, v7, v12

    invoke-virtual {v8, v7}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_a

    .line 850
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v6, :cond_13

    .line 851
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    .line 852
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 853
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/hzbhd/midware/proxy/R$dimen;->dp1024:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    if-ge v2, v8, :cond_10

    mul-int/lit16 v3, v3, 0x3ff

    .line 855
    div-int/lit16 v3, v3, 0x320

    mul-int/lit16 v1, v1, 0x3e8

    .line 856
    div-int/lit16 v1, v1, 0x1e0

    goto :goto_8

    :cond_10
    mul-int/lit16 v3, v3, 0x3ff

    .line 858
    div-int/lit16 v3, v3, 0x400

    mul-int/lit16 v1, v1, 0x3e8

    .line 859
    div-int/lit16 v1, v1, 0x258

    :goto_8
    and-int/lit16 v2, v3, 0xff

    int-to-byte v2, v2

    shr-int/2addr v3, v7

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    and-int/lit16 v5, v1, 0xff

    int-to-byte v5, v5

    shr-int/2addr v1, v7

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 865
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v8

    new-array v7, v7, [B

    aput-byte v13, v7, v4

    const/16 v9, 0x2c

    aput-byte v9, v7, v6

    aput-byte v6, v7, v15

    aput-byte v3, v7, v14

    aput-byte v2, v7, v11

    aput-byte v1, v7, v10

    const/4 v1, 0x6

    aput-byte v5, v7, v1

    aput-byte v4, v7, v12

    invoke-virtual {v8, v7}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto :goto_a

    .line 829
    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    .line 830
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    .line 831
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v9, Lcom/hzbhd/midware/proxy/R$dimen;->dp1024:I

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    if-ge v2, v8, :cond_11

    mul-int/lit16 v3, v3, 0x1000

    .line 833
    div-int/lit16 v3, v3, 0x320

    mul-int/lit16 v5, v5, 0x1000

    .line 834
    div-int/lit16 v5, v5, 0x1e0

    goto :goto_9

    :cond_11
    mul-int/lit16 v3, v3, 0x1000

    .line 836
    div-int/lit16 v3, v3, 0x400

    mul-int/lit16 v5, v5, 0x1000

    .line 837
    div-int/lit16 v5, v5, 0x258

    :goto_9
    and-int/lit16 v2, v3, 0xff

    int-to-byte v2, v2

    shr-int/2addr v3, v7

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    and-int/lit16 v8, v5, 0xff

    int-to-byte v8, v8

    shr-int/2addr v5, v7

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    .line 843
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_12

    new-array v1, v12, [B

    aput-byte v13, v1, v4

    const/16 v7, 0xb

    aput-byte v7, v1, v6

    aput-byte v6, v1, v15

    aput-byte v3, v1, v14

    aput-byte v2, v1, v11

    aput-byte v5, v1, v10

    const/4 v2, 0x6

    aput-byte v8, v1, v2

    .line 844
    invoke-static {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    goto :goto_a

    .line 845
    :cond_12
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v6, :cond_13

    new-array v1, v12, [B

    aput-byte v13, v1, v4

    const/16 v7, 0xb

    aput-byte v7, v1, v6

    aput-byte v4, v1, v15

    aput-byte v3, v1, v14

    aput-byte v2, v1, v11

    aput-byte v5, v1, v10

    const/4 v2, 0x6

    aput-byte v8, v1, v2

    .line 846
    invoke-static {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_13
    :goto_a
    return v4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
