.class public Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIrefresh;
.super Ljava/lang/Object;
.source "UIrefresh.java"


# static fields
.field static mRadio:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIrefresh;


# instance fields
.field map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIrefresh;

    invoke-direct {v0}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIrefresh;-><init>()V

    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIrefresh;->mRadio:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIrefresh;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIrefresh;->map:Ljava/util/HashMap;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIrefresh;
    .locals 2

    const-class v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIrefresh;

    monitor-enter v0

    .line 24
    :try_start_0
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIrefresh;->mRadio:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIrefresh;

    if-nez v1, :cond_0

    .line 25
    new-instance v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIrefresh;

    invoke-direct {v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIrefresh;-><init>()V

    sput-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIrefresh;->mRadio:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIrefresh;

    .line 27
    :cond_0
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIrefresh;->mRadio:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIrefresh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private isNotNull(Landroid/view/View;)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private refreshFordRaiseUi(Landroid/content/Context;ZLandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;ZI)V
    .locals 0

    .line 361
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string p8, "ford_raise_car_model"

    const/4 p9, 0x0

    invoke-static {p2, p8, p9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    .line 362
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p8

    const-string p10, "ford_canbus_cam_zoom"

    invoke-static {p8, p10, p9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p8

    .line 363
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p10, "ford_canbus_cam_slipt"

    invoke-static {p1, p10, p9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 p10, 0x7

    if-eqz p2, :cond_1

    const/4 p11, 0x5

    if-eq p2, p11, :cond_1

    const/4 p11, 0x6

    if-eq p2, p11, :cond_1

    if-ne p2, p10, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x4

    .line 377
    invoke-virtual {p3, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 368
    :cond_1
    :goto_0
    invoke-virtual {p3, p9}, Landroid/view/View;->setVisibility(I)V

    const/16 p3, 0x8

    .line 369
    invoke-virtual {p4, p3}, Landroid/view/View;->setVisibility(I)V

    .line 370
    invoke-virtual {p6, p3}, Landroid/view/View;->setVisibility(I)V

    .line 371
    invoke-virtual {p5, p3}, Landroid/view/View;->setVisibility(I)V

    .line 372
    invoke-virtual {p7, p9}, Landroid/widget/TextView;->setVisibility(I)V

    if-ne p2, p10, :cond_2

    .line 374
    invoke-virtual {p6, p9}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_1
    const/4 p2, 0x1

    if-ne p8, p2, :cond_3

    .line 380
    sget p3, Lcom/hzbhd/midware/proxy/R$string;->cam_zoom_on:I

    invoke-virtual {p7, p3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 382
    :cond_3
    sget p3, Lcom/hzbhd/midware/proxy/R$string;->cam_zoom_off:I

    invoke-virtual {p7, p3}, Landroid/widget/TextView;->setText(I)V

    :goto_2
    if-ne p1, p2, :cond_4

    .line 385
    check-cast p6, Landroid/widget/TextView;

    sget p1, Lcom/hzbhd/midware/proxy/R$string;->cam_slipt_on:I

    invoke-virtual {p6, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 387
    :cond_4
    check-cast p6, Landroid/widget/TextView;

    sget p1, Lcom/hzbhd/midware/proxy/R$string;->cam_slipt_off:I

    invoke-virtual {p6, p1}, Landroid/widget/TextView;->setText(I)V

    :goto_3
    return-void
.end method


# virtual methods
.method public ShowParkPanoramicButton(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    .line 603
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->TOYOTA_PRADO_2014_SIMPLE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    if-eq v0, v1, :cond_0

    .line 604
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->TOYOTA_XINBAS:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    if-eq v0, v1, :cond_0

    .line 605
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->TOYOTA_PRADO_2014_XINBAS:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    if-eq v0, v1, :cond_0

    .line 606
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->TOYOTA_RAISE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    if-eq v0, v1, :cond_0

    .line 607
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->TOYOTA_PRADO_2014_RAISE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    if-ne v0, v1, :cond_1

    .line 608
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "isParkPanoramic"

    invoke-static {p1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    .line 609
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 612
    invoke-virtual {p1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public hyundai360CamStatusArray()[I
    .locals 2

    .line 458
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIrefresh$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x9

    packed-switch v0, :pswitch_data_0

    new-array v0, v1, [I

    .line 477
    fill-array-data v0, :array_0

    return-object v0

    :pswitch_0
    new-array v0, v1, [I

    .line 471
    fill-array-data v0, :array_1

    return-object v0

    :pswitch_1
    new-array v0, v1, [I

    .line 475
    fill-array-data v0, :array_2

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x29
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
        :pswitch_1
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x6
        0x7
        0x8
        0x9
        0x1
        0x2
        0x3
        0x4
    .end array-data
.end method

.method public isHasParkInRearMode()Z
    .locals 2

    .line 572
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIrefresh$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x29

    if-eq v0, v1, :cond_0

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isHasRearCamInFrontMode()Z
    .locals 2

    .line 562
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIrefresh$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x29

    if-eq v0, v1, :cond_0

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_0

    const/16 v1, 0x37

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isHyundai360CamRecHead([I)Z
    .locals 4

    .line 481
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIrefresh$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x55

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 500
    :pswitch_0
    aget v0, p1, v3

    if-ne v0, v1, :cond_0

    aget p1, p1, v2

    const/16 v0, 0x40

    if-ne p1, v0, :cond_0

    return v2

    :cond_0
    return v3

    .line 494
    :pswitch_1
    aget v0, p1, v3

    if-ne v0, v1, :cond_1

    aget p1, p1, v2

    const/16 v0, 0x50

    if-ne p1, v0, :cond_1

    return v2

    :cond_1
    return v3

    .line 507
    :pswitch_2
    aget v0, p1, v3

    if-ne v0, v1, :cond_3

    .line 508
    aget v0, p1, v2

    const/16 v1, 0xe9

    if-eq v0, v1, :cond_2

    aget p1, p1, v2

    const/16 v0, 0x11

    if-ne p1, v0, :cond_3

    :cond_2
    return v2

    :cond_3
    :goto_0
    return v3

    :pswitch_data_0
    .packed-switch 0x29
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
        :pswitch_0
    .end packed-switch
.end method

.method public refreshHyundai360CamButtons(Landroid/view/View;Landroid/view/View;)V
    .locals 3

    .line 428
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIrefresh$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x29

    if-eq v0, v1, :cond_0

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 431
    :cond_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getPanoramicCameraSwitch()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 432
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 433
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 435
    :cond_1
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 436
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public refreshNissanDispBtn(Landroid/content/Context;Landroid/view/View;)V
    .locals 4

    .line 394
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIrefresh$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x8

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 406
    :pswitch_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "trumpchi_car_type"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 407
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v3, "trumpchi_support_360_cam"

    invoke-static {p1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    const/16 p1, 0xa

    if-eq v0, p1, :cond_0

    const/16 p1, 0xb

    if-eq v0, p1, :cond_0

    const/16 p1, 0xd

    if-ne v0, p1, :cond_1

    .line 410
    :cond_0
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 412
    :cond_1
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 399
    :pswitch_1
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getPanoramicCameraSwitch()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 400
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 402
    :cond_2
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x24
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public refreshNissanDispBtnExtra(Landroid/view/View;)V
    .locals 2

    .line 583
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIrefresh$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x38

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x8

    .line 592
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    :pswitch_0
    const/4 v0, 0x0

    .line 589
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x24
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public refreshRightSmallView(Landroid/content/Context;ZLandroid/view/View;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;ZI)V
    .locals 18

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v0, p13

    move-object/from16 v1, p14

    move-object/from16 v2, p15

    move-object/from16 v13, p16

    move-object/from16 v14, p17

    move-object/from16 v15, p18

    .line 53
    :try_start_0
    sget-object v16, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIrefresh$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v17

    aget v16, v16, v17

    const/4 v13, 0x0

    packed-switch v16, :pswitch_data_0

    goto/16 :goto_2

    .line 303
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "system_107_support_panoramic"

    invoke-static {v0, v1, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 304
    invoke-virtual {v3, v13}, Landroid/view/View;->setVisibility(I)V

    .line 305
    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 306
    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 307
    invoke-virtual {v6, v13}, Landroid/view/View;->setVisibility(I)V

    .line 308
    invoke-virtual {v5, v13}, Landroid/view/View;->setVisibility(I)V

    .line 309
    sget v0, Lcom/hzbhd/midware/proxy/R$string;->rear_360_cam:I

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    .line 310
    sget v0, Lcom/hzbhd/midware/proxy/R$string;->front_360_cam:I

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(I)V

    .line 311
    move-object v0, v6

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/hzbhd/midware/proxy/R$string;->right_360_cam:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 312
    move-object v0, v5

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/hzbhd/midware/proxy/R$string;->left_360_cam:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    :cond_0
    const/16 v0, 0x8

    .line 314
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 296
    :pswitch_1
    invoke-virtual {v3, v13}, Landroid/view/View;->setVisibility(I)V

    .line 297
    sget v0, Lcom/hzbhd/midware/proxy/R$string;->psa_raise_standard_view:I

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    .line 298
    sget v0, Lcom/hzbhd/midware/proxy/R$string;->psa_raise_180_view:I

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(I)V

    .line 299
    move-object v0, v6

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/hzbhd/midware/proxy/R$string;->psa_raise_enlarged_view:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 300
    move-object v0, v5

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/hzbhd/midware/proxy/R$string;->psa_raise_automatic_view:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    .line 287
    :pswitch_2
    invoke-virtual {v3, v13}, Landroid/view/View;->setVisibility(I)V

    .line 288
    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 289
    invoke-virtual {v6, v13}, Landroid/view/View;->setVisibility(I)V

    const/16 v0, 0x8

    .line 290
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 291
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 275
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ford_hiword_cartype"

    invoke-static {v0, v1, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 277
    invoke-virtual {v3, v13}, Landroid/view/View;->setVisibility(I)V

    .line 278
    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 279
    invoke-virtual {v6, v13}, Landroid/view/View;->setVisibility(I)V

    const/16 v0, 0x8

    .line 280
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 281
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_1
    const/4 v0, 0x4

    .line 283
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 266
    :pswitch_4
    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isCanbusCmdPorting(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p19

    move/from16 v14, p20

    .line 267
    invoke-direct/range {v0 .. v14}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIrefresh;->refreshFordRaiseUi(Landroid/content/Context;ZLandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;ZI)V

    goto/16 :goto_2

    .line 200
    :pswitch_5
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v13

    sget-object v17, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->CAN_DIFFERENT_ID:Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;

    invoke-virtual/range {v17 .. v17}, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getSharedInt(Ljava/lang/String;)I

    move-result v5

    const/4 v13, 0x7

    if-ne v5, v13, :cond_8

    const/4 v5, 0x0

    .line 201
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 202
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 204
    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 205
    invoke-virtual {v12, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 206
    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v3, 0x8

    .line 207
    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 208
    invoke-virtual {v15, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 209
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 210
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 211
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v5, p16

    .line 212
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 214
    invoke-virtual/range {p10 .. p10}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 215
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v6, Lcom/hzbhd/midware/proxy/R$dimen;->dp300:I

    invoke-virtual {v13, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 216
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v13, Lcom/hzbhd/midware/proxy/R$dimen;->dp45:I

    invoke-virtual {v6, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 217
    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 223
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v13, Lcom/hzbhd/midware/proxy/R$dimen;->dp5:I

    invoke-virtual {v6, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setX(F)V

    .line 224
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v13, Lcom/hzbhd/midware/proxy/R$dimen;->dp5:I

    invoke-virtual {v6, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setX(F)V

    .line 225
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v13, Lcom/hzbhd/midware/proxy/R$dimen;->dp5:I

    invoke-virtual {v6, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setX(F)V

    .line 226
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v13, Lcom/hzbhd/midware/proxy/R$dimen;->dp5:I

    invoke-virtual {v6, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v11, v6}, Landroid/widget/TextView;->setX(F)V

    .line 227
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v13, Lcom/hzbhd/midware/proxy/R$dimen;->dp5:I

    invoke-virtual {v6, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v12, v6}, Landroid/widget/TextView;->setX(F)V

    .line 229
    sget v6, Lcom/hzbhd/midware/proxy/R$string;->back_360_cam:I

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(I)V

    .line 230
    sget v6, Lcom/hzbhd/midware/proxy/R$string;->left_360_cam:I

    invoke-virtual {v11, v6}, Landroid/widget/TextView;->setText(I)V

    .line 231
    sget v6, Lcom/hzbhd/midware/proxy/R$string;->right_360_cam:I

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(I)V

    .line 232
    sget v6, Lcom/hzbhd/midware/proxy/R$string;->front_360_cam:I

    invoke-virtual {v12, v6}, Landroid/widget/TextView;->setText(I)V

    .line 233
    sget v6, Lcom/hzbhd/midware/proxy/R$string;->rear_360_cam:I

    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setText(I)V

    .line 236
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 237
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v8, Lcom/hzbhd/midware/proxy/R$dimen;->dp5:I

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setX(F)V

    .line 238
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v8, Lcom/hzbhd/midware/proxy/R$dimen;->dp5:I

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setX(F)V

    .line 240
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v8, Lcom/hzbhd/midware/proxy/R$dimen;->dp5:I

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setX(F)V

    .line 242
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 243
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v8, Lcom/hzbhd/midware/proxy/R$dimen;->dp5:I

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setX(F)V

    .line 244
    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v8, Lcom/hzbhd/midware/proxy/R$dimen;->dp5:I

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v14, v6}, Landroid/widget/TextView;->setX(F)V

    .line 246
    invoke-virtual {v15, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lcom/hzbhd/midware/proxy/R$dimen;->dp5:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v15, v3}, Landroid/widget/TextView;->setX(F)V

    .line 249
    sget v3, Lcom/hzbhd/midware/proxy/R$string;->static_trace:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 250
    sget v0, Lcom/hzbhd/midware/proxy/R$string;->dynamic_trace:I

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 251
    sget v0, Lcom/hzbhd/midware/proxy/R$string;->fisheye_correction:I

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 252
    sget v0, Lcom/hzbhd/midware/proxy/R$string;->r_gear_position_exits_five_second_delay:I

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(I)V

    .line 253
    sget v0, Lcom/hzbhd/midware/proxy/R$string;->panoramic_none:I

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(I)V

    .line 254
    sget v0, Lcom/hzbhd/midware/proxy/R$string;->auxiliary_follow_up_steering:I

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(I)V

    const/16 v0, 0x8

    .line 255
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 256
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v6, p6

    .line 257
    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v13, p5

    .line 258
    invoke-virtual {v13, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :pswitch_6
    move v1, v13

    move-object v13, v5

    .line 188
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 189
    sget v1, Lcom/hzbhd/midware/proxy/R$string;->front_360_cam:I

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(I)V

    .line 190
    sget v1, Lcom/hzbhd/midware/proxy/R$string;->rear_360_cam:I

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(I)V

    .line 191
    move-object v1, v6

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lcom/hzbhd/midware/proxy/R$string;->left_360_cam:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 192
    move-object v1, v13

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lcom/hzbhd/midware/proxy/R$string;->right_360_cam:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const/4 v1, 0x0

    .line 193
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 194
    sget v1, Lcom/hzbhd/midware/proxy/R$string;->track_haval:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    :pswitch_7
    move-object v13, v5

    const/4 v8, 0x4

    move-object/from16 v5, p16

    .line 136
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v9

    sget-object v10, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->CAN_DIFFERENT_ID:Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;

    invoke-virtual {v10}, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getSharedInt(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_5

    .line 137
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v9

    sget-object v10, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->CAN_DIFFERENT_ID:Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;

    invoke-virtual {v10}, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getSharedInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x2

    if-eq v9, v10, :cond_5

    .line 138
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v9

    sget-object v10, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->CAN_DIFFERENT_ID:Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;

    invoke-virtual {v10}, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getSharedInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_2

    goto/16 :goto_1

    .line 149
    :cond_2
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v9

    sget-object v10, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->CAN_DIFFERENT_ID:Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;

    invoke-virtual {v10}, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getSharedInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_4

    .line 150
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v9

    sget-object v10, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->CAN_DIFFERENT_ID:Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;

    invoke-virtual {v10}, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getSharedInt(Ljava/lang/String;)I

    move-result v9

    if-ne v9, v8, :cond_3

    goto :goto_0

    :cond_3
    const/4 v8, 0x0

    .line 166
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 167
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 173
    sget v3, Lcom/hzbhd/midware/proxy/R$string;->close_panoramic:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 174
    sget v0, Lcom/hzbhd/midware/proxy/R$string;->prospect_right_view:I

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 175
    sget v0, Lcom/hzbhd/midware/proxy/R$string;->vertical_parking_panoramic:I

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 176
    sget v0, Lcom/hzbhd/midware/proxy/R$string;->horizontal_parking_panoramic:I

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(I)V

    .line 177
    sget v0, Lcom/hzbhd/midware/proxy/R$string;->left_view_panoramic:I

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    .line 178
    move-object v0, v6

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/hzbhd/midware/proxy/R$string;->right_view_panoramic:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 179
    sget v0, Lcom/hzbhd/midware/proxy/R$string;->prospect_panoramic:I

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(I)V

    .line 180
    move-object v0, v13

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/hzbhd/midware/proxy/R$string;->rear_view_panoramic:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    :cond_4
    :goto_0
    const/4 v8, 0x0

    .line 151
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    const/16 v3, 0x8

    .line 152
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 155
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    invoke-virtual {v13, v8}, Landroid/view/View;->setVisibility(I)V

    .line 157
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 159
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 161
    sget v0, Lcom/hzbhd/midware/proxy/R$string;->prospect_panoramic:I

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(I)V

    .line 162
    move-object v0, v13

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/hzbhd/midware/proxy/R$string;->rear_view_panoramic:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 163
    sget v0, Lcom/hzbhd/midware/proxy/R$string;->left_view_panoramic:I

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    .line 164
    move-object v0, v6

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/hzbhd/midware/proxy/R$string;->right_view_panoramic:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    :cond_5
    :goto_1
    const/16 v7, 0x8

    .line 140
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 141
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 142
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    invoke-virtual {v13, v7}, Landroid/view/View;->setVisibility(I)V

    .line 146
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :pswitch_8
    move v8, v13

    move-object v13, v5

    move-object/from16 v5, p16

    .line 120
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 121
    sget v3, Lcom/hzbhd/midware/proxy/R$string;->front_360_cam:I

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(I)V

    .line 122
    sget v3, Lcom/hzbhd/midware/proxy/R$string;->rear_360_cam:I

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(I)V

    .line 123
    move-object v3, v6

    check-cast v3, Landroid/widget/TextView;

    sget v4, Lcom/hzbhd/midware/proxy/R$string;->left_360_cam:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 124
    move-object v3, v13

    check-cast v3, Landroid/widget/TextView;

    sget v4, Lcom/hzbhd/midware/proxy/R$string;->right_360_cam:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    const/4 v3, 0x0

    .line 125
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    sget v4, Lcom/hzbhd/midware/proxy/R$string;->track_haval:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 127
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    sget v0, Lcom/hzbhd/midware/proxy/R$string;->track_haval_off:I

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 129
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    sget v0, Lcom/hzbhd/midware/proxy/R$string;->panoramic_on:I

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 131
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    sget v0, Lcom/hzbhd/midware/proxy/R$string;->panoramic_off:I

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    :pswitch_9
    move/from16 v0, p20

    move-object v13, v5

    .line 113
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(I)V

    .line 114
    sget v0, Lcom/hzbhd/midware/proxy/R$string;->narrow:I

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    const/4 v0, 0x0

    .line 115
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    const/16 v0, 0x8

    .line 116
    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 117
    invoke-virtual {v13, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :pswitch_a
    move/from16 v0, p20

    move-object v13, v5

    .line 105
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(I)V

    const/4 v0, 0x0

    .line 106
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    const/16 v0, 0x8

    .line 107
    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 108
    invoke-virtual {v13, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :pswitch_b
    move-object v13, v5

    if-eqz p19, :cond_6

    const/4 v0, 0x0

    .line 86
    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    const/16 v1, 0x8

    .line 88
    invoke-virtual {v13, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    const/16 v1, 0x8

    .line 90
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 91
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    invoke-virtual {v13, v1}, Landroid/view/View;->setVisibility(I)V

    .line 93
    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    .line 94
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :pswitch_c
    move-object v13, v5

    if-eqz p19, :cond_8

    if-eqz p2, :cond_7

    const/4 v0, 0x0

    .line 76
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    const/16 v0, 0x8

    .line 77
    invoke-virtual {v13, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_7
    const/16 v0, 0x8

    .line 79
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 80
    invoke-virtual {v13, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :pswitch_d
    move v1, v13

    const/16 v0, 0x8

    move-object v13, v5

    .line 69
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 70
    invoke-virtual {v13, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :pswitch_e
    move v1, v13

    .line 59
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_8
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
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

.method public refreshWideCamStatus(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 5

    .line 330
    invoke-direct {p0, p2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIrefresh;->isNotNull(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 331
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "canbus_cam_standard"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 332
    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setSelected(Z)V

    .line 334
    :cond_1
    invoke-direct {p0, p3}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIrefresh;->isNotNull(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-eq p2, v1, :cond_3

    .line 335
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "canbus_cam_wide"

    invoke-static {p2, v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v2, :cond_2

    move p2, v2

    goto :goto_1

    :cond_2
    move p2, v3

    .line 336
    :goto_1
    invoke-virtual {p3, p2}, Landroid/view/View;->setSelected(Z)V

    .line 338
    :cond_3
    invoke-direct {p0, p4}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIrefresh;->isNotNull(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-eq p2, v1, :cond_5

    .line 339
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string p3, "canbus_cam_overlook"

    invoke-static {p2, p3, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v2, :cond_4

    move p2, v2

    goto :goto_2

    :cond_4
    move p2, v3

    .line 340
    :goto_2
    invoke-virtual {p4, p2}, Landroid/view/View;->setSelected(Z)V

    .line 342
    :cond_5
    invoke-direct {p0, p5}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIrefresh;->isNotNull(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-eq p2, v1, :cond_7

    .line 343
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "canbus_cam_full_wide"

    invoke-static {p1, p2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v2, :cond_6

    goto :goto_3

    :cond_6
    move v2, v3

    .line 344
    :goto_3
    invoke-virtual {p5, v2}, Landroid/view/View;->setSelected(Z)V

    :cond_7
    return-void
.end method

.method public setHyundaiPanoramicStatus(Landroid/content/Context;[I)V
    .locals 9

    .line 519
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIrefresh$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "PanoramicMode"

    const-string v6, "PanoramicStatus"

    const/4 v7, 0x2

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 538
    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIrefresh;->isHyundai360CamRecHead([I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 539
    aget v0, p2, v7

    if-eq v0, v4, :cond_1

    if-eq v0, v7, :cond_0

    goto :goto_0

    .line 544
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 541
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 547
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    aget p2, p2, v1

    invoke-static {p1, v5, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 532
    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIrefresh;->isHyundai360CamRecHead([I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 533
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    aget v1, p2, v7

    const/4 v4, 0x6

    invoke-static {v1, v4, v7}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFromByteWithBit(III)I

    move-result v1

    invoke-static {v0, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 534
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    aget p2, p2, v7

    invoke-static {p2, v3, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFromByteWithBit(III)I

    move-result p2

    invoke-static {p1, v5, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 552
    :pswitch_2
    invoke-virtual {p0, p2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIrefresh;->isHyundai360CamRecHead([I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 553
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getPanoramicCameraSwitch()Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_1

    :cond_2
    move v4, v7

    :goto_1
    invoke-static {v0, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 554
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    aget p2, p2, v1

    invoke-static {p2, v3, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFromByteWithBit(III)I

    move-result p2

    invoke-static {p1, v5, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x29
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
        :pswitch_0
    .end packed-switch
.end method

.method public showPanoramicExitButton(Landroid/view/View;)V
    .locals 2

    .line 617
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->PSA_RAISE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    if-eq v0, v1, :cond_0

    .line 618
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->PSA_AC_CONTRL_RAISE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 619
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
