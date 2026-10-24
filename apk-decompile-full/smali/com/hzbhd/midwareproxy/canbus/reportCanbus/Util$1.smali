.class synthetic Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$hzbhd$midware$constant$channelManagerDef$MEDIA_SOURCE_ID:[I

.field static final synthetic $SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

.field static final synthetic $SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE:[I

.field static final synthetic $SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE:[I

.field static final synthetic $SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$ENUM_CANSBUS_XINBAS_MEDIA_TYPE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 1325
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->values()[Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->VW_SKODA_SIMPLE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->VW_MQB_SIMPLE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    invoke-virtual {v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->VW_MQB_RAISE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    invoke-virtual {v4}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->VW_SKODA_RAISE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    invoke-virtual {v5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v4, 0x5

    :try_start_4
    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    sget-object v6, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->TOYOTA_SIMPLE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    invoke-virtual {v6}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v5, 0x6

    :try_start_5
    sget-object v6, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    sget-object v7, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->TOYOTA_PRADO_2014_SIMPLE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    invoke-virtual {v7}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    const/4 v6, 0x7

    :try_start_6
    sget-object v7, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    sget-object v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->TOYOTA_XINBAS:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    invoke-virtual {v8}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    const/16 v7, 0x8

    :try_start_7
    sget-object v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    sget-object v9, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->TOYOTA_PRADO_2014_XINBAS:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    invoke-virtual {v9}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v9

    aput v7, v8, v9
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    const/16 v8, 0x9

    :try_start_8
    sget-object v9, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    sget-object v10, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->TOYOTA_RAISE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    invoke-virtual {v10}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v10

    aput v8, v9, v10
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    const/16 v9, 0xa

    :try_start_9
    sget-object v10, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    sget-object v11, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->TOYOTA_PRADO_2014_RAISE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    invoke-virtual {v11}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v11

    aput v9, v10, v11
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    const/16 v10, 0xb

    :try_start_a
    sget-object v11, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    sget-object v12, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->NISSAN_SIMPLE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    invoke-virtual {v12}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v12

    aput v10, v11, v12
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    const/16 v11, 0xc

    :try_start_b
    sget-object v12, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    sget-object v13, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->NISSAN_MURANO_SIMPLE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    invoke-virtual {v13}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v13

    aput v11, v12, v13
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    const/16 v12, 0xd

    :try_start_c
    sget-object v13, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    sget-object v14, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->NISSAN_TEANA_08_SIMPLE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    invoke-virtual {v14}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v14

    aput v12, v13, v14
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    const/16 v13, 0xe

    :try_start_d
    sget-object v14, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    sget-object v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->NISSAN_X_TRAIL_HIGHT_SIMPLE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    invoke-virtual {v15}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v15

    aput v13, v14, v15
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    const/16 v14, 0xf

    :try_start_e
    sget-object v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    sget-object v16, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->HYUNDAI_KIA_RAISE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    invoke-virtual/range {v16 .. v16}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v16

    aput v14, v15, v16
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    const/16 v15, 0x10

    :try_start_f
    sget-object v16, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    sget-object v17, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->HYUNDAI_KIA_SIMPLE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    invoke-virtual/range {v17 .. v17}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v17

    aput v15, v16, v17
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    const/16 v16, 0x11

    :try_start_10
    sget-object v17, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    sget-object v18, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->KIA_K5_MIDDLE_SIMPLE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    invoke-virtual/range {v18 .. v18}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v18

    aput v16, v17, v18
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v17, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    sget-object v18, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->KIA_K5_HIGH_SIMPLE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    invoke-virtual/range {v18 .. v18}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v18

    const/16 v19, 0x12

    aput v19, v17, v18
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v17, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    sget-object v18, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->KIA_KX5_MIDDLE_SIMPLE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    invoke-virtual/range {v18 .. v18}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v18

    const/16 v19, 0x13

    aput v19, v17, v18
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v17, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    sget-object v18, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->KIA_KX5_HIGH_SIMPLE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    invoke-virtual/range {v18 .. v18}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v18

    const/16 v19, 0x14

    aput v19, v17, v18
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v17, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    sget-object v18, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->HYUNDAI_SONATA_MIDDLE_SIMPLE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    invoke-virtual/range {v18 .. v18}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v18

    const/16 v19, 0x15

    aput v19, v17, v18
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v17, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    sget-object v18, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->HYUNDAI_SONATA_HIGH_SIMPLE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    invoke-virtual/range {v18 .. v18}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v18

    const/16 v19, 0x16

    aput v19, v17, v18
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v17, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    sget-object v18, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->KIA_SORENTO_SIMPLE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    invoke-virtual/range {v18 .. v18}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v18

    const/16 v19, 0x17

    aput v19, v17, v18
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v17, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    sget-object v18, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->HYUNDAI_KIA_XINBAS:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    invoke-virtual/range {v18 .. v18}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v18

    const/16 v19, 0x18

    aput v19, v17, v18
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    :try_start_18
    sget-object v17, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    sget-object v18, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->KIA_SORENTO_XINBAS:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    invoke-virtual/range {v18 .. v18}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v18

    const/16 v19, 0x19

    aput v19, v17, v18
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    :try_start_19
    sget-object v17, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    sget-object v18, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->HONDA_DA_SIMPLE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    invoke-virtual/range {v18 .. v18}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v18

    const/16 v19, 0x1a

    aput v19, v17, v18
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :catch_19
    :try_start_1a
    sget-object v17, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    sget-object v18, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->HONDA_CRV_CIVIC_2012_SIMPLE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    invoke-virtual/range {v18 .. v18}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v18

    const/16 v19, 0x1b

    aput v19, v17, v18
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :catch_1a
    :try_start_1b
    sget-object v17, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    sget-object v18, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->HONDA_DA_XINBAS:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    invoke-virtual/range {v18 .. v18}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v18

    const/16 v19, 0x1c

    aput v19, v17, v18
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    :catch_1b
    :try_start_1c
    sget-object v17, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    sget-object v18, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->HONDA_CRV_2015_XINBAS:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    invoke-virtual/range {v18 .. v18}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v18

    const/16 v19, 0x1d

    aput v19, v17, v18
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    :catch_1c
    :try_start_1d
    sget-object v17, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    sget-object v18, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->HONDA_CRV_2012_XINBAS:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    invoke-virtual/range {v18 .. v18}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v18

    const/16 v19, 0x1e

    aput v19, v17, v18
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1e
    sget-object v17, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    sget-object v18, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->HONDA_CIVIC_2016_SIMPLE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    invoke-virtual/range {v18 .. v18}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v18

    const/16 v19, 0x1f

    aput v19, v17, v18
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    :catch_1e
    :try_start_1f
    sget-object v17, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    sget-object v18, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->HONDA_CIVIC_2016_XINBAS:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    invoke-virtual/range {v18 .. v18}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v18

    const/16 v19, 0x20

    aput v19, v17, v18
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_20
    sget-object v17, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    sget-object v18, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->HONDA_ACCORD_2_0_MIDDLE_LOW_SIMPLE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    invoke-virtual/range {v18 .. v18}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v18

    const/16 v19, 0x21

    aput v19, v17, v18
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    :catch_20
    :try_start_21
    sget-object v17, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    sget-object v18, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->HONDA_ACCORD_2_4_CH_MIDDLE_LOW_SIMPLE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    invoke-virtual/range {v18 .. v18}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v18

    const/16 v19, 0x22

    aput v19, v17, v18
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_21

    :catch_21
    :try_start_22
    sget-object v17, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    sget-object v18, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->HONDA_ACCORD_2_4_US_LOW_SIMPLE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    invoke-virtual/range {v18 .. v18}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v18

    const/16 v19, 0x23

    aput v19, v17, v18
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_22

    :catch_22
    :try_start_23
    sget-object v17, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    sget-object v18, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->HONDA_ACCORD_2_0_XINBAS:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    invoke-virtual/range {v18 .. v18}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v18

    const/16 v19, 0x24

    aput v19, v17, v18
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_23

    :catch_23
    :try_start_24
    sget-object v17, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    sget-object v18, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->HONDA_ACCORD_2_4_XINBAS:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    invoke-virtual/range {v18 .. v18}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v18

    const/16 v19, 0x25

    aput v19, v17, v18
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_24

    :catch_24
    :try_start_25
    sget-object v17, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    sget-object v18, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->GM_SIMPLE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    invoke-virtual/range {v18 .. v18}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v18

    const/16 v19, 0x26

    aput v19, v17, v18
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_25

    :catch_25
    :try_start_26
    sget-object v17, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    sget-object v18, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->GM_XINBAS:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    invoke-virtual/range {v18 .. v18}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v18

    const/16 v19, 0x27

    aput v19, v17, v18
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_26

    :catch_26
    :try_start_27
    sget-object v17, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    sget-object v18, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ENCORE_LOW_SIMPLE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    invoke-virtual/range {v18 .. v18}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v18

    const/16 v19, 0x28

    aput v19, v17, v18
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_27

    :catch_27
    :try_start_28
    sget-object v17, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    sget-object v18, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->MALIBU_LOW_SIMPLE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    invoke-virtual/range {v18 .. v18}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v18

    const/16 v19, 0x29

    aput v19, v17, v18
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_28

    :catch_28
    :try_start_29
    sget-object v17, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    sget-object v18, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->OPEL_ASTRA_SIMPLE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    invoke-virtual/range {v18 .. v18}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v18

    const/16 v19, 0x2a

    aput v19, v17, v18
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_29

    :catch_29
    :try_start_2a
    sget-object v17, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    sget-object v18, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->BUICK_EXCELLE_2015_SIMPLE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    invoke-virtual/range {v18 .. v18}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v18

    const/16 v19, 0x2b

    aput v19, v17, v18
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_2a

    :catch_2a
    :try_start_2b
    sget-object v17, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    sget-object v18, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->BUICK_LACROSSE_SIMPLE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    invoke-virtual/range {v18 .. v18}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v18

    const/16 v19, 0x2c

    aput v19, v17, v18
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_2b

    :catch_2b
    :try_start_2c
    sget-object v17, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    sget-object v18, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->GM_RAISE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    invoke-virtual/range {v18 .. v18}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v18

    const/16 v19, 0x2d

    aput v19, v17, v18
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_2c

    :catch_2c
    :try_start_2d
    sget-object v17, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    sget-object v18, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ENCORE_LOW_RAISE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    invoke-virtual/range {v18 .. v18}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v18

    const/16 v19, 0x2e

    aput v19, v17, v18
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_2d} :catch_2d

    :catch_2d
    :try_start_2e
    sget-object v17, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    sget-object v18, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->BUICK_GL8_2017_RAISE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    invoke-virtual/range {v18 .. v18}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v18

    const/16 v19, 0x2f

    aput v19, v17, v18
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_2e} :catch_2e

    :catch_2e
    :try_start_2f
    sget-object v17, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    sget-object v18, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->BUICK_GL8_2017_XINBAS:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    invoke-virtual/range {v18 .. v18}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v18

    const/16 v19, 0x30

    aput v19, v17, v18
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_2f} :catch_2f

    :catch_2f
    :try_start_30
    sget-object v17, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    sget-object v18, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ENCLAVE_2013_SIMPLE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    invoke-virtual/range {v18 .. v18}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v18

    const/16 v19, 0x31

    aput v19, v17, v18
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_30} :catch_30

    :catch_30
    :try_start_31
    sget-object v17, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    sget-object v18, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->FORD_SIMPLE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    invoke-virtual/range {v18 .. v18}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v18

    const/16 v19, 0x32

    aput v19, v17, v18
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_31} :catch_31

    :catch_31
    :try_start_32
    sget-object v17, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    sget-object v18, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->FORD_ESCAPE_KUGA_SIMPLE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    invoke-virtual/range {v18 .. v18}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v18

    const/16 v19, 0x33

    aput v19, v17, v18
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_32} :catch_32

    :catch_32
    :try_start_33
    sget-object v17, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    sget-object v18, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->FORD_ECOSPORT_SIMPLE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    invoke-virtual/range {v18 .. v18}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v18

    const/16 v19, 0x34

    aput v19, v17, v18
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_33} :catch_33

    :catch_33
    :try_start_34
    sget-object v17, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    sget-object v18, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->FORD_FIESTA_SIMPLE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    invoke-virtual/range {v18 .. v18}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v18

    const/16 v19, 0x35

    aput v19, v17, v18
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_34} :catch_34

    :catch_34
    :try_start_35
    sget-object v17, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    sget-object v18, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->FORD_EDGE_SIMPLE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    invoke-virtual/range {v18 .. v18}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v18

    const/16 v19, 0x36

    aput v19, v17, v18
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_35} :catch_35

    :catch_35
    :try_start_36
    sget-object v17, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    sget-object v18, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->FORD_MONDEO_2011_SIMPLE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    invoke-virtual/range {v18 .. v18}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v18

    const/16 v19, 0x37

    aput v19, v17, v18
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_36} :catch_36

    :catch_36
    :try_start_37
    sget-object v17, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    sget-object v18, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->FORD_XINBAS:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    invoke-virtual/range {v18 .. v18}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v18

    const/16 v19, 0x38

    aput v19, v17, v18
    :try_end_37
    .catch Ljava/lang/NoSuchFieldError; {:try_start_37 .. :try_end_37} :catch_37

    :catch_37
    :try_start_38
    sget-object v17, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    sget-object v18, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->FORD_ESCAPE_KUGA_XINBAS:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    invoke-virtual/range {v18 .. v18}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v18

    const/16 v19, 0x39

    aput v19, v17, v18
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_38} :catch_38

    :catch_38
    :try_start_39
    sget-object v17, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    sget-object v18, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->FORD_ECOSPORT_XINBAS:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    invoke-virtual/range {v18 .. v18}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v18

    const/16 v19, 0x3a

    aput v19, v17, v18
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_39} :catch_39

    :catch_39
    :try_start_3a
    sget-object v17, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    sget-object v18, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->FORD_FIESTA_XINBAS:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    invoke-virtual/range {v18 .. v18}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v18

    const/16 v19, 0x3b

    aput v19, v17, v18
    :try_end_3a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3a .. :try_end_3a} :catch_3a

    :catch_3a
    :try_start_3b
    sget-object v17, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    sget-object v18, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->FORD_EDGE_XINBAS:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    invoke-virtual/range {v18 .. v18}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v18

    const/16 v19, 0x3c

    aput v19, v17, v18
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_3b} :catch_3b

    :catch_3b
    :try_start_3c
    sget-object v17, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    sget-object v18, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->FORD_EDGE_2013_XINBAS:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    invoke-virtual/range {v18 .. v18}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v18

    const/16 v19, 0x3d

    aput v19, v17, v18
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_3c} :catch_3c

    :catch_3c
    :try_start_3d
    sget-object v17, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    sget-object v18, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->FORD_MONDEO_2017_XINBAS:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    invoke-virtual/range {v18 .. v18}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v18

    const/16 v19, 0x3e

    aput v19, v17, v18
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_3d} :catch_3d

    :catch_3d
    :try_start_3e
    sget-object v17, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    sget-object v18, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->FORD_ESCAPE_KUGA_2017_RAISE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    invoke-virtual/range {v18 .. v18}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v18

    const/16 v19, 0x3f

    aput v19, v17, v18
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3f
    sget-object v17, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    sget-object v18, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->FORD_EDGE_2013_SIMPLE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    invoke-virtual/range {v18 .. v18}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v18

    const/16 v19, 0x40

    aput v19, v17, v18
    :try_end_3f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f .. :try_end_3f} :catch_3f

    :catch_3f
    :try_start_40
    sget-object v17, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    sget-object v18, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->BENZ_B200_SIMPLE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    invoke-virtual/range {v18 .. v18}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v18

    const/16 v19, 0x41

    aput v19, v17, v18
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_40} :catch_40

    :catch_40
    :try_start_41
    sget-object v17, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    sget-object v18, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->BENZ_VITO_2015_SIMPLE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    invoke-virtual/range {v18 .. v18}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v18

    const/16 v19, 0x42

    aput v19, v17, v18
    :try_end_41
    .catch Ljava/lang/NoSuchFieldError; {:try_start_41 .. :try_end_41} :catch_41

    :catch_41
    :try_start_42
    sget-object v17, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    sget-object v18, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->MITSUBISHI_OUTLANDER_2014_SIMPLE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    invoke-virtual/range {v18 .. v18}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v18

    const/16 v19, 0x43

    aput v19, v17, v18
    :try_end_42
    .catch Ljava/lang/NoSuchFieldError; {:try_start_42 .. :try_end_42} :catch_42

    :catch_42
    :try_start_43
    sget-object v17, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    sget-object v18, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->AUDI_A3_SIMPLE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    invoke-virtual/range {v18 .. v18}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v18

    const/16 v19, 0x44

    aput v19, v17, v18
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_43 .. :try_end_43} :catch_43

    :catch_43
    :try_start_44
    sget-object v17, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    sget-object v18, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->SUBARU_XINBAS:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    invoke-virtual/range {v18 .. v18}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v18

    const/16 v19, 0x45

    aput v19, v17, v18
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_44} :catch_44

    :catch_44
    :try_start_45
    sget-object v17, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    sget-object v18, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->HYUNDAI_SONATA_9_2018_6_PANEL_SIMPLE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    invoke-virtual/range {v18 .. v18}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v18

    const/16 v19, 0x46

    aput v19, v17, v18
    :try_end_45
    .catch Ljava/lang/NoSuchFieldError; {:try_start_45 .. :try_end_45} :catch_45

    :catch_45
    :try_start_46
    sget-object v17, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    sget-object v18, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->HYUNDAI_SONATA_9_2018_8_PANEL_SIMPLE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    invoke-virtual/range {v18 .. v18}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v18

    const/16 v19, 0x47

    aput v19, v17, v18
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_46 .. :try_end_46} :catch_46

    :catch_46
    :try_start_47
    sget-object v17, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    sget-object v18, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->HYUNDAI_SONATA_9_2018_10_PANEL_SIMPLE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    invoke-virtual/range {v18 .. v18}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v18

    const/16 v19, 0x48

    aput v19, v17, v18
    :try_end_47
    .catch Ljava/lang/NoSuchFieldError; {:try_start_47 .. :try_end_47} :catch_47

    :catch_47
    :try_start_48
    sget-object v17, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    sget-object v18, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->MAZDA_SIMPLE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    invoke-virtual/range {v18 .. v18}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v18

    const/16 v19, 0x49

    aput v19, v17, v18
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_48 .. :try_end_48} :catch_48

    .line 1279
    :catch_48
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE;->values()[Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE;

    move-result-object v15

    array-length v15, v15

    new-array v15, v15, [I

    sput-object v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE:[I

    :try_start_49
    sget-object v18, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE;->OFF:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE;

    invoke-virtual/range {v18 .. v18}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE;->ordinal()I

    move-result v18

    aput v1, v15, v18
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_49} :catch_49

    :catch_49
    :try_start_4a
    sget-object v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE:[I

    sget-object v18, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE;->FM1:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE;

    invoke-virtual/range {v18 .. v18}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE;->ordinal()I

    move-result v18

    aput v0, v15, v18
    :try_end_4a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4a .. :try_end_4a} :catch_4a

    :catch_4a
    :try_start_4b
    sget-object v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE:[I

    sget-object v18, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE;->FM2:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE;

    invoke-virtual/range {v18 .. v18}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE;->ordinal()I

    move-result v18

    aput v2, v15, v18
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_4b} :catch_4b

    :catch_4b
    :try_start_4c
    sget-object v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE:[I

    sget-object v18, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE;->FM3:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE;

    invoke-virtual/range {v18 .. v18}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE;->ordinal()I

    move-result v18

    aput v3, v15, v18
    :try_end_4c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4c .. :try_end_4c} :catch_4c

    :catch_4c
    :try_start_4d
    sget-object v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE:[I

    sget-object v18, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE;->AM1:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE;

    invoke-virtual/range {v18 .. v18}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE;->ordinal()I

    move-result v18

    aput v4, v15, v18
    :try_end_4d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4d .. :try_end_4d} :catch_4d

    :catch_4d
    :try_start_4e
    sget-object v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE:[I

    sget-object v18, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE;->AM2:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE;

    invoke-virtual/range {v18 .. v18}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE;->ordinal()I

    move-result v18

    aput v5, v15, v18
    :try_end_4e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4e .. :try_end_4e} :catch_4e

    :catch_4e
    :try_start_4f
    sget-object v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE:[I

    sget-object v18, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE;->CD:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE;

    invoke-virtual/range {v18 .. v18}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE;->ordinal()I

    move-result v18

    aput v6, v15, v18
    :try_end_4f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4f .. :try_end_4f} :catch_4f

    :catch_4f
    :try_start_50
    sget-object v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE:[I

    sget-object v18, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE;->DVD:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE;

    invoke-virtual/range {v18 .. v18}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE;->ordinal()I

    move-result v18

    aput v7, v15, v18
    :try_end_50
    .catch Ljava/lang/NoSuchFieldError; {:try_start_50 .. :try_end_50} :catch_50

    :catch_50
    :try_start_51
    sget-object v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE:[I

    sget-object v18, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE;->TV:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE;

    invoke-virtual/range {v18 .. v18}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE;->ordinal()I

    move-result v18

    aput v8, v15, v18
    :try_end_51
    .catch Ljava/lang/NoSuchFieldError; {:try_start_51 .. :try_end_51} :catch_51

    :catch_51
    :try_start_52
    sget-object v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE:[I

    sget-object v18, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE;->PHONE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE;

    invoke-virtual/range {v18 .. v18}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE;->ordinal()I

    move-result v18

    aput v9, v15, v18
    :try_end_52
    .catch Ljava/lang/NoSuchFieldError; {:try_start_52 .. :try_end_52} :catch_52

    :catch_52
    :try_start_53
    sget-object v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE:[I

    sget-object v18, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE;->AUX:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE;

    invoke-virtual/range {v18 .. v18}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE;->ordinal()I

    move-result v18

    aput v10, v15, v18
    :try_end_53
    .catch Ljava/lang/NoSuchFieldError; {:try_start_53 .. :try_end_53} :catch_53

    :catch_53
    :try_start_54
    sget-object v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE:[I

    sget-object v18, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE;->USB:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE;

    invoke-virtual/range {v18 .. v18}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE;->ordinal()I

    move-result v18

    aput v11, v15, v18
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_54} :catch_54

    :catch_54
    :try_start_55
    sget-object v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE:[I

    sget-object v18, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE;->MCARD:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE;

    invoke-virtual/range {v18 .. v18}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE;->ordinal()I

    move-result v18

    aput v12, v15, v18
    :try_end_55
    .catch Ljava/lang/NoSuchFieldError; {:try_start_55 .. :try_end_55} :catch_55

    :catch_55
    :try_start_56
    sget-object v12, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE:[I

    sget-object v15, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE;->DVDC:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE;

    invoke-virtual {v15}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE;->ordinal()I

    move-result v15

    aput v13, v12, v15
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_56} :catch_56

    :catch_56
    :try_start_57
    sget-object v12, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE:[I

    sget-object v13, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE;->CAMERA:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE;

    invoke-virtual {v13}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE;->ordinal()I

    move-result v13

    aput v14, v12, v13
    :try_end_57
    .catch Ljava/lang/NoSuchFieldError; {:try_start_57 .. :try_end_57} :catch_57

    :catch_57
    :try_start_58
    sget-object v12, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE:[I

    sget-object v13, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE;->IPOD:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE;

    invoke-virtual {v13}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE;->ordinal()I

    move-result v13

    const/16 v14, 0x10

    aput v14, v12, v13
    :try_end_58
    .catch Ljava/lang/NoSuchFieldError; {:try_start_58 .. :try_end_58} :catch_58

    :catch_58
    :try_start_59
    sget-object v12, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE:[I

    sget-object v13, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE;->NAVI:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE;

    invoke-virtual {v13}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_HIWORLD_MEDIA_TYPE;->ordinal()I

    move-result v13

    aput v16, v12, v13
    :try_end_59
    .catch Ljava/lang/NoSuchFieldError; {:try_start_59 .. :try_end_59} :catch_59

    .line 1135
    :catch_59
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_XINBAS_MEDIA_TYPE;->values()[Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_XINBAS_MEDIA_TYPE;

    move-result-object v12

    array-length v12, v12

    new-array v12, v12, [I

    sput-object v12, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$ENUM_CANSBUS_XINBAS_MEDIA_TYPE:[I

    :try_start_5a
    sget-object v13, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_XINBAS_MEDIA_TYPE;->MID_OFF:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_XINBAS_MEDIA_TYPE;

    invoke-virtual {v13}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_XINBAS_MEDIA_TYPE;->ordinal()I

    move-result v13

    aput v1, v12, v13
    :try_end_5a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5a .. :try_end_5a} :catch_5a

    :catch_5a
    :try_start_5b
    sget-object v12, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$ENUM_CANSBUS_XINBAS_MEDIA_TYPE:[I

    sget-object v13, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_XINBAS_MEDIA_TYPE;->MID_TV:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_XINBAS_MEDIA_TYPE;

    invoke-virtual {v13}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_XINBAS_MEDIA_TYPE;->ordinal()I

    move-result v13

    aput v0, v12, v13
    :try_end_5b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5b .. :try_end_5b} :catch_5b

    :catch_5b
    :try_start_5c
    sget-object v12, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$ENUM_CANSBUS_XINBAS_MEDIA_TYPE:[I

    sget-object v13, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_XINBAS_MEDIA_TYPE;->MID_AUX:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_XINBAS_MEDIA_TYPE;

    invoke-virtual {v13}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_XINBAS_MEDIA_TYPE;->ordinal()I

    move-result v13

    aput v2, v12, v13
    :try_end_5c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5c .. :try_end_5c} :catch_5c

    :catch_5c
    :try_start_5d
    sget-object v12, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$ENUM_CANSBUS_XINBAS_MEDIA_TYPE:[I

    sget-object v13, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_XINBAS_MEDIA_TYPE;->MID_A2DP:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_XINBAS_MEDIA_TYPE;

    invoke-virtual {v13}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_XINBAS_MEDIA_TYPE;->ordinal()I

    move-result v13

    aput v3, v12, v13
    :try_end_5d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5d .. :try_end_5d} :catch_5d

    :catch_5d
    :try_start_5e
    sget-object v12, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$ENUM_CANSBUS_XINBAS_MEDIA_TYPE:[I

    sget-object v13, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_XINBAS_MEDIA_TYPE;->MID_SD:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_XINBAS_MEDIA_TYPE;

    invoke-virtual {v13}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_XINBAS_MEDIA_TYPE;->ordinal()I

    move-result v13

    aput v4, v12, v13
    :try_end_5e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5e .. :try_end_5e} :catch_5e

    .line 1035
    :catch_5e
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->values()[Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;

    move-result-object v12

    array-length v12, v12

    new-array v12, v12, [I

    sput-object v12, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE:[I

    :try_start_5f
    sget-object v13, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->OFF:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;

    invoke-virtual {v13}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->ordinal()I

    move-result v13

    aput v1, v12, v13
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_5f} :catch_5f

    :catch_5f
    :try_start_60
    sget-object v12, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE:[I

    sget-object v13, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->RADIO:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;

    invoke-virtual {v13}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->ordinal()I

    move-result v13

    aput v0, v12, v13
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_60} :catch_60

    :catch_60
    :try_start_61
    sget-object v12, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE:[I

    sget-object v13, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->AUX:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;

    invoke-virtual {v13}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->ordinal()I

    move-result v13

    aput v2, v12, v13
    :try_end_61
    .catch Ljava/lang/NoSuchFieldError; {:try_start_61 .. :try_end_61} :catch_61

    :catch_61
    :try_start_62
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE:[I

    sget-object v12, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->PHONE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;

    invoke-virtual {v12}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->ordinal()I

    move-result v12

    aput v3, v2, v12
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_62} :catch_62

    :catch_62
    :try_start_63
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE:[I

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->A2DP:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;

    invoke-virtual {v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->ordinal()I

    move-result v3

    aput v4, v2, v3
    :try_end_63
    .catch Ljava/lang/NoSuchFieldError; {:try_start_63 .. :try_end_63} :catch_63

    :catch_63
    :try_start_64
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE:[I

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->DTV:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;

    invoke-virtual {v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->ordinal()I

    move-result v3

    aput v5, v2, v3
    :try_end_64
    .catch Ljava/lang/NoSuchFieldError; {:try_start_64 .. :try_end_64} :catch_64

    :catch_64
    :try_start_65
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE:[I

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->ATV:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;

    invoke-virtual {v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->ordinal()I

    move-result v3

    aput v6, v2, v3
    :try_end_65
    .catch Ljava/lang/NoSuchFieldError; {:try_start_65 .. :try_end_65} :catch_65

    :catch_65
    :try_start_66
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE:[I

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->CD:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;

    invoke-virtual {v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->ordinal()I

    move-result v3

    aput v7, v2, v3
    :try_end_66
    .catch Ljava/lang/NoSuchFieldError; {:try_start_66 .. :try_end_66} :catch_66

    :catch_66
    :try_start_67
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE:[I

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->DVD:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;

    invoke-virtual {v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->ordinal()I

    move-result v3

    aput v8, v2, v3
    :try_end_67
    .catch Ljava/lang/NoSuchFieldError; {:try_start_67 .. :try_end_67} :catch_67

    :catch_67
    :try_start_68
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE:[I

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->USB_VIDEO:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;

    invoke-virtual {v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->ordinal()I

    move-result v3

    aput v9, v2, v3
    :try_end_68
    .catch Ljava/lang/NoSuchFieldError; {:try_start_68 .. :try_end_68} :catch_68

    :catch_68
    :try_start_69
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE:[I

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->USB:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;

    invoke-virtual {v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->ordinal()I

    move-result v3

    aput v10, v2, v3
    :try_end_69
    .catch Ljava/lang/NoSuchFieldError; {:try_start_69 .. :try_end_69} :catch_69

    :catch_69
    :try_start_6a
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE:[I

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->SD:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;

    invoke-virtual {v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$ENUM_CANSBUS_SIMPLE_MEDIA_TYPE;->ordinal()I

    move-result v3

    aput v11, v2, v3
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6a .. :try_end_6a} :catch_6a

    .line 978
    :catch_6a
    invoke-static {}, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->values()[Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midware$constant$channelManagerDef$MEDIA_SOURCE_ID:[I

    :try_start_6b
    sget-object v3, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->AUX1:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    invoke-virtual {v3}, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_6b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6b .. :try_end_6b} :catch_6b

    :catch_6b
    :try_start_6c
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$1;->$SwitchMap$com$hzbhd$midware$constant$channelManagerDef$MEDIA_SOURCE_ID:[I

    sget-object v2, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->MPEG:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    invoke-virtual {v2}, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_6c} :catch_6c

    :catch_6c
    return-void
.end method
