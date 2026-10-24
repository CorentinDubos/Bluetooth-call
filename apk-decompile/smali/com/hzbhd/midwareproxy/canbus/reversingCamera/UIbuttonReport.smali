.class public Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIbuttonReport;
.super Ljava/lang/Object;
.source "UIbuttonReport.java"


# static fields
.field static mRadio:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIbuttonReport;


# instance fields
.field private currentState1:I

.field private currentState2:I

.field private currentState3:I

.field private currentState4:I

.field private currentState5:I

.field private currentState6:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIbuttonReport;

    invoke-direct {v0}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIbuttonReport;-><init>()V

    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIbuttonReport;->mRadio:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIbuttonReport;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIbuttonReport;
    .locals 2

    const-class v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIbuttonReport;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIbuttonReport;->mRadio:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIbuttonReport;

    if-nez v1, :cond_0

    .line 27
    new-instance v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIbuttonReport;

    invoke-direct {v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIbuttonReport;-><init>()V

    sput-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIbuttonReport;->mRadio:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIbuttonReport;

    .line 29
    :cond_0
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIbuttonReport;->mRadio:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIbuttonReport;
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
.method public button_1(Landroid/content/Context;)V
    .locals 7

    .line 798
    :try_start_0
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIbuttonReport$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/16 v0, 0x3b

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/16 v3, 0x16

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-eq p1, v0, :cond_0

    .line 803
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    const/4 v0, 0x4

    new-array v6, v0, [B

    aput-byte v3, v6, v5

    const/16 v3, -0xe

    aput-byte v3, v6, v2

    const/16 v2, 0xd

    aput-byte v2, v6, v1

    aput-byte v0, v6, v4

    invoke-virtual {p1, v6}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto :goto_0

    .line 800
    :cond_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    new-array v0, v4, [B

    aput-byte v3, v0, v5

    const/16 v3, -0x7e

    aput-byte v3, v0, v2

    aput-byte v5, v0, v1

    invoke-virtual {p1, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 808
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public button_2(Landroid/content/Context;)V
    .locals 6

    .line 814
    :try_start_0
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIbuttonReport$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/16 v0, 0x3b

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/16 v3, 0x16

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-eq p1, v0, :cond_0

    .line 819
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    const/4 v0, 0x4

    new-array v0, v0, [B

    aput-byte v3, v0, v4

    const/16 v3, -0xe

    aput-byte v3, v0, v2

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    aput-byte v1, v0, v5

    invoke-virtual {p1, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto :goto_0

    .line 816
    :cond_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    new-array v0, v5, [B

    aput-byte v3, v0, v4

    const/16 v3, -0x7e

    aput-byte v3, v0, v2

    aput-byte v5, v0, v1

    invoke-virtual {p1, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 824
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public button_3(Landroid/content/Context;)V
    .locals 9

    .line 830
    :try_start_0
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIbuttonReport$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/16 v0, 0x25

    const/4 v1, 0x5

    const/16 v2, -0xe

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/16 v5, 0x16

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3b

    if-eq p1, v0, :cond_0

    .line 838
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    new-array v0, v3, [B

    aput-byte v5, v0, v6

    aput-byte v2, v0, v8

    const/16 v1, 0xf

    aput-byte v1, v0, v4

    aput-byte v8, v0, v7

    invoke-virtual {p1, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto :goto_0

    .line 832
    :cond_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    new-array v0, v7, [B

    aput-byte v5, v0, v6

    const/16 v2, -0x7e

    aput-byte v2, v0, v8

    aput-byte v1, v0, v4

    invoke-virtual {p1, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto :goto_0

    .line 835
    :cond_1
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    new-array v0, v3, [B

    aput-byte v5, v0, v6

    aput-byte v2, v0, v8

    const/4 v2, 0x7

    aput-byte v2, v0, v4

    aput-byte v1, v0, v7

    invoke-virtual {p1, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 843
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public button_4(Landroid/content/Context;)V
    .locals 6

    .line 849
    :try_start_0
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIbuttonReport$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/16 v0, 0x3b

    const/4 v1, 0x1

    const/16 v2, 0x16

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eq p1, v0, :cond_0

    .line 854
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    const/4 v0, 0x4

    new-array v0, v0, [B

    aput-byte v2, v0, v3

    const/16 v2, -0xe

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    aput-byte v1, v0, v5

    const/4 v1, 0x5

    aput-byte v1, v0, v4

    invoke-virtual {p1, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto :goto_0

    .line 851
    :cond_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    new-array v0, v4, [B

    aput-byte v2, v0, v3

    const/16 v2, -0x7e

    aput-byte v2, v0, v1

    aput-byte v5, v0, v5

    invoke-virtual {p1, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 859
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public button_5(Landroid/content/Context;)V
    .locals 7

    .line 865
    :try_start_0
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIbuttonReport$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/16 v0, 0x3b

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/16 v3, 0x16

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x3

    if-eq p1, v0, :cond_0

    .line 870
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    new-array v0, v5, [B

    aput-byte v3, v0, v4

    const/16 v3, -0xe

    aput-byte v3, v0, v2

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    aput-byte v1, v0, v6

    invoke-virtual {p1, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto :goto_0

    .line 867
    :cond_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    new-array v0, v6, [B

    aput-byte v3, v0, v4

    const/16 v3, -0x7e

    aput-byte v3, v0, v2

    aput-byte v5, v0, v1

    invoke-virtual {p1, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 875
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public button_6(Landroid/content/Context;)V
    .locals 7

    .line 881
    :try_start_0
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIbuttonReport$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/16 v0, 0x3b

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/16 v3, 0x16

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x3

    if-eq p1, v0, :cond_0

    .line 886
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    new-array v0, v5, [B

    aput-byte v3, v0, v4

    const/16 v3, -0xe

    aput-byte v3, v0, v2

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    aput-byte v1, v0, v6

    invoke-virtual {p1, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto :goto_0

    .line 883
    :cond_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    new-array v0, v6, [B

    aput-byte v3, v0, v4

    const/16 v3, -0x7e

    aput-byte v3, v0, v2

    aput-byte v5, v0, v1

    invoke-virtual {p1, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 891
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public button_7()V
    .locals 7

    .line 896
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->GEELY_RAISE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    if-ne v0, v1, :cond_2

    .line 898
    iget v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIbuttonReport;->currentState6:I

    const/4 v1, 0x2

    const/16 v2, -0x7e

    const/4 v3, 0x3

    const/16 v4, 0x16

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v6, :cond_0

    goto :goto_0

    .line 908
    :cond_0
    iput v5, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIbuttonReport;->currentState6:I

    .line 910
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    new-array v3, v3, [B

    aput-byte v4, v3, v5

    aput-byte v2, v3, v6

    const/16 v2, 0x17

    aput-byte v2, v3, v1

    invoke-virtual {v0, v3}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 912
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 900
    :cond_1
    iput v6, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIbuttonReport;->currentState6:I

    .line 902
    :try_start_1
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    new-array v3, v3, [B

    aput-byte v4, v3, v5

    aput-byte v2, v3, v6

    aput-byte v4, v3, v1

    invoke-virtual {v0, v3}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 904
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public cam_front_all_btn()V
    .locals 2

    .line 364
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIbuttonReport$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x4

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-array v0, v1, [B

    .line 384
    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 380
    fill-array-data v0, :array_1

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    goto :goto_0

    :pswitch_2
    new-array v0, v1, [B

    .line 377
    fill-array-data v0, :array_2

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2c
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
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x16t
        -0x7t
        0x1t
        0x1t
    .end array-data

    :array_1
    .array-data 1
        0x16t
        -0x7ct
        0x1t
    .end array-data

    :array_2
    .array-data 1
        0x16t
        -0x7ct
        0x1t
        0x5t
    .end array-data
.end method

.method public cam_front_btn()V
    .locals 2

    .line 390
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIbuttonReport$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x4

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-array v0, v1, [B

    .line 410
    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 406
    fill-array-data v0, :array_1

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    goto :goto_0

    :pswitch_2
    new-array v0, v1, [B

    .line 403
    fill-array-data v0, :array_2

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2c
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
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x16t
        -0x7t
        0x1t
        0x2t
    .end array-data

    :array_1
    .array-data 1
        0x16t
        -0x7ct
        0x2t
    .end array-data

    :array_2
    .array-data 1
        0x16t
        -0x7ct
        0x1t
        0x6t
    .end array-data
.end method

.method public cam_front_left_btn()V
    .locals 2

    .line 416
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIbuttonReport$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x4

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-array v0, v1, [B

    .line 436
    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 432
    fill-array-data v0, :array_1

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    goto :goto_0

    :pswitch_2
    new-array v0, v1, [B

    .line 429
    fill-array-data v0, :array_2

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2c
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
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x16t
        -0x7t
        0x1t
        0x3t
    .end array-data

    :array_1
    .array-data 1
        0x16t
        -0x7ct
        0x3t
    .end array-data

    :array_2
    .array-data 1
        0x16t
        -0x7ct
        0x1t
        0x7t
    .end array-data
.end method

.method public cam_front_right_btn()V
    .locals 2

    .line 442
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIbuttonReport$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x4

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-array v0, v1, [B

    .line 462
    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 458
    fill-array-data v0, :array_1

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    goto :goto_0

    :pswitch_2
    new-array v0, v1, [B

    .line 455
    fill-array-data v0, :array_2

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2c
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
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x16t
        -0x7t
        0x1t
        0x4t
    .end array-data

    :array_1
    .array-data 1
        0x16t
        -0x7ct
        0x4t
    .end array-data

    :array_2
    .array-data 1
        0x16t
        -0x7ct
        0x1t
        0x8t
    .end array-data
.end method

.method public cam_pa_in_rear_btn()V
    .locals 2

    .line 920
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIbuttonReport$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x39

    if-eq v0, v1, :cond_0

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 923
    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 1
        0x16t
        -0x7t
        0x1t
        0xat
    .end array-data
.end method

.method public cam_rear_all_btn()V
    .locals 2

    .line 481
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIbuttonReport$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x4

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-array v0, v1, [B

    .line 501
    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 497
    fill-array-data v0, :array_1

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    goto :goto_0

    :pswitch_2
    new-array v0, v1, [B

    .line 494
    fill-array-data v0, :array_2

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2c
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
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x16t
        -0x7t
        0x1t
        0x6t
    .end array-data

    :array_1
    .array-data 1
        0x16t
        -0x7ct
        0x6t
    .end array-data

    :array_2
    .array-data 1
        0x16t
        -0x7ct
        0x1t
        0x1t
    .end array-data
.end method

.method public cam_rear_in_front_mode_btn()V
    .locals 2

    .line 469
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIbuttonReport$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 475
    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 471
    fill-array-data v0, :array_1

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x38
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x16t
        -0x7t
        0x1t
        0x5t
    .end array-data

    :array_1
    .array-data 1
        0x16t
        -0x7ct
        0x5t
    .end array-data
.end method

.method public cam_rear_in_rear_mode_btn()V
    .locals 2

    .line 507
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIbuttonReport$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x4

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-array v0, v1, [B

    .line 527
    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 523
    fill-array-data v0, :array_1

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    goto :goto_0

    :pswitch_2
    new-array v0, v1, [B

    .line 520
    fill-array-data v0, :array_2

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2c
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
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x16t
        -0x7t
        0x1t
        0x7t
    .end array-data

    :array_1
    .array-data 1
        0x16t
        -0x7ct
        0x7t
    .end array-data

    :array_2
    .array-data 1
        0x16t
        -0x7ct
        0x1t
        0x2t
    .end array-data
.end method

.method public cam_rear_left_btn()V
    .locals 2

    .line 533
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIbuttonReport$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x4

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-array v0, v1, [B

    .line 553
    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 549
    fill-array-data v0, :array_1

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    goto :goto_0

    :pswitch_2
    new-array v0, v1, [B

    .line 546
    fill-array-data v0, :array_2

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2c
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
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x16t
        -0x7t
        0x1t
        0x8t
    .end array-data

    :array_1
    .array-data 1
        0x16t
        -0x7ct
        0x8t
    .end array-data

    :array_2
    .array-data 1
        0x16t
        -0x7ct
        0x1t
        0x3t
    .end array-data
.end method

.method public cam_rear_right_btn()V
    .locals 2

    .line 559
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIbuttonReport$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x4

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-array v0, v1, [B

    .line 579
    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 575
    fill-array-data v0, :array_1

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    goto :goto_0

    :pswitch_2
    new-array v0, v1, [B

    .line 572
    fill-array-data v0, :array_2

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2c
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
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x16t
        -0x7t
        0x1t
        0x9t
    .end array-data

    :array_1
    .array-data 1
        0x16t
        -0x7ct
        0x9t
    .end array-data

    :array_2
    .array-data 1
        0x16t
        -0x7ct
        0x1t
        0x4t
    .end array-data
.end method

.method public exitParkPanoramic(Landroid/content/Context;)V
    .locals 3

    .line 66
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIbuttonReport$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x4

    const/4 v2, 0x3

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-array v0, v2, [B

    .line 77
    fill-array-data v0, :array_0

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    invoke-static {v0, v1, p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportMcuDataTwoArray([B[BLandroid/content/Context;)V

    goto :goto_0

    :pswitch_1
    new-array v0, v2, [B

    .line 69
    fill-array-data v0, :array_2

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    invoke-static {v0, v1, p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportMcuDataTwoArray([B[BLandroid/content/Context;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x2t
        0x20t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x16t
        -0x7dt
        0x20t
        0x0t
    .end array-data

    :array_2
    .array-data 1
        0x2t
        0x17t
        0x0t
    .end array-data

    :array_3
    .array-data 1
        0x16t
        -0x7dt
        0x17t
        0x0t
    .end array-data
.end method

.method public full_wide_view_btn()V
    .locals 9

    .line 585
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIbuttonReport$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x40

    const/16 v3, 0x16

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x3

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    :try_start_0
    new-array v0, v8, [B

    aput-byte v8, v0, v6

    aput-byte v2, v0, v5

    aput-byte v8, v0, v4

    .line 634
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 637
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :pswitch_0
    new-array v0, v7, [B

    .line 629
    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    goto :goto_0

    :pswitch_1
    new-array v0, v8, [B

    .line 625
    fill-array-data v0, :array_1

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    goto :goto_0

    :pswitch_2
    new-array v0, v7, [B

    .line 620
    fill-array-data v0, :array_2

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    goto :goto_0

    :pswitch_3
    new-array v0, v8, [B

    .line 616
    fill-array-data v0, :array_3

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    goto :goto_0

    :pswitch_4
    new-array v0, v7, [B

    .line 612
    fill-array-data v0, :array_4

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    goto :goto_0

    :pswitch_5
    new-array v0, v8, [B

    .line 607
    fill-array-data v0, :array_5

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    goto :goto_0

    .line 600
    :pswitch_6
    :try_start_1
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    new-array v1, v7, [B

    aput-byte v3, v1, v6

    const/4 v2, -0x3

    aput-byte v2, v1, v5

    aput-byte v7, v1, v4

    const/4 v2, 0x7

    aput-byte v2, v1, v8

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 602
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 592
    :cond_0
    :pswitch_7
    :try_start_2
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    new-array v1, v7, [B

    aput-byte v3, v1, v6

    const/16 v3, -0x3a

    aput-byte v3, v1, v5

    aput-byte v2, v1, v4

    aput-byte v8, v1, v8

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    .line 594
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1d
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x16t
        -0x3at
        0x4t
        0x4t
    .end array-data

    :array_1
    .array-data 1
        0x16t
        -0x58t
        0x5t
    .end array-data

    :array_2
    .array-data 1
        0x16t
        -0xet
        0x7t
        0x3t
    .end array-data

    :array_3
    .array-data 1
        0x16t
        -0x75t
        0x6t
    .end array-data

    :array_4
    .array-data 1
        0x16t
        -0x3t
        0x3t
        0x7t
    .end array-data

    :array_5
    .array-data 1
        0x16t
        -0x59t
        0x4t
    .end array-data
.end method

.method public haval_camera_esc(Landroid/content/Context;)V
    .locals 3

    .line 929
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIbuttonReport$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x26

    if-eq v0, v1, :cond_1

    const/16 v1, 0x27

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 932
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.hzbhd.action.havalh2rearcamera"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const-string v2, "haval_h2_hiworld_rear_camera_switch"

    .line 933
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 934
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 p1, 0x4

    new-array p1, p1, [B

    .line 935
    fill-array-data p1, :array_0

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    new-array p1, p1, [B

    .line 939
    fill-array-data p1, :array_1

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 1
        0x16t
        -0xet
        0x6t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x16t
        -0x58t
        0x0t
    .end array-data
.end method

.method public nissan_camera_disp_btn()V
    .locals 5

    .line 34
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIbuttonReport$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, -0x3a

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [B

    const/16 v4, 0x16

    aput-byte v4, v0, v2

    aput-byte v1, v0, v3

    const/4 v4, 0x2

    aput-byte v4, v0, v4

    const/4 v4, 0x3

    aput-byte v3, v0, v4

    .line 36
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    :goto_0
    new-array v0, v3, [B

    aput-byte v1, v0, v2

    .line 40
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reqMcuKey([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 43
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public overlook_view_btn(Landroid/content/Context;)V
    .locals 14

    .line 279
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIbuttonReport$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x9

    const/16 v2, -0x3a

    const/16 v3, 0x40

    const/4 v4, 0x4

    const/16 v5, 0x16

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x2

    packed-switch v0, :pswitch_data_0

    const/4 v10, -0x1

    const/4 v11, -0x3

    const/4 v12, 0x6

    const/16 v13, -0xe

    packed-switch v0, :pswitch_data_1

    .line 351
    invoke-static {p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isCanbusCmdPorting(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    new-array p1, v8, [B

    aput-byte v8, p1, v7

    aput-byte v3, p1, v6

    aput-byte v9, p1, v9

    .line 353
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_0

    .line 339
    :pswitch_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "canbus_cam_overlook"

    invoke-static {p1, v0, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 340
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    new-array v2, v4, [B

    aput-byte v5, v2, v7

    aput-byte v13, v2, v6

    aput-byte v1, v2, v9

    if-ne p1, v6, :cond_0

    move v6, v7

    :cond_0
    aput-byte v6, v2, v8

    invoke-virtual {v0, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_0

    .line 329
    :pswitch_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "ford_canbus_cam_slipt"

    invoke-static {p1, v0, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/16 v0, -0x51

    if-nez p1, :cond_1

    .line 331
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    new-array v1, v4, [B

    aput-byte v5, v1, v7

    aput-byte v2, v1, v6

    aput-byte v0, v1, v9

    aput-byte v6, v1, v8

    invoke-virtual {p1, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_0

    .line 333
    :cond_1
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    new-array v1, v4, [B

    aput-byte v5, v1, v7

    aput-byte v2, v1, v6

    aput-byte v0, v1, v9

    aput-byte v7, v1, v8

    invoke-virtual {p1, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_0

    .line 348
    :pswitch_2
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    new-array v0, v4, [B

    aput-byte v5, v0, v7

    aput-byte v2, v0, v6

    aput-byte v4, v0, v9

    aput-byte v8, v0, v8

    invoke-virtual {p1, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_0

    .line 345
    :pswitch_3
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    new-array v0, v8, [B

    aput-byte v5, v0, v7

    const/16 v1, -0x58

    aput-byte v1, v0, v6

    aput-byte v4, v0, v9

    invoke-virtual {p1, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_0

    .line 326
    :pswitch_4
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    new-array v0, v4, [B

    aput-byte v5, v0, v7

    aput-byte v13, v0, v6

    const/4 v1, 0x7

    aput-byte v1, v0, v9

    const/16 v1, 0x8

    aput-byte v1, v0, v8

    invoke-virtual {p1, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_0

    .line 323
    :pswitch_5
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    new-array v0, v8, [B

    aput-byte v5, v0, v7

    const/16 v1, -0x75

    aput-byte v1, v0, v6

    const/4 v1, 0x5

    aput-byte v1, v0, v9

    invoke-virtual {p1, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_0

    .line 319
    :pswitch_6
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    new-array v0, v4, [B

    aput-byte v5, v0, v7

    aput-byte v11, v0, v6

    aput-byte v8, v0, v9

    aput-byte v12, v0, v8

    invoke-virtual {p1, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_0

    .line 315
    :pswitch_7
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    new-array v0, v8, [B

    aput-byte v5, v0, v7

    const/16 v1, -0x59

    aput-byte v1, v0, v6

    aput-byte v8, v0, v9

    invoke-virtual {p1, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_0

    .line 312
    :pswitch_8
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    new-array v0, v4, [B

    aput-byte v5, v0, v7

    aput-byte v11, v0, v6

    aput-byte v4, v0, v9

    aput-byte v12, v0, v8

    invoke-virtual {p1, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_0

    .line 309
    :pswitch_9
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    new-array v0, v4, [B

    aput-byte v5, v0, v7

    aput-byte v2, v0, v6

    aput-byte v3, v0, v9

    aput-byte v9, v0, v8

    invoke-virtual {p1, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto :goto_0

    .line 304
    :pswitch_a
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    new-array v0, v4, [B

    aput-byte v5, v0, v7

    aput-byte v13, v0, v6

    aput-byte v12, v0, v9

    aput-byte v10, v0, v8

    invoke-virtual {p1, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto :goto_0

    .line 301
    :pswitch_b
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    new-array v0, v4, [B

    aput-byte v5, v0, v7

    aput-byte v13, v0, v6

    aput-byte v8, v0, v9

    aput-byte v10, v0, v8

    invoke-virtual {p1, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto :goto_0

    :pswitch_c
    new-array v0, v8, [B

    aput-byte v1, v0, v7

    aput-byte v3, v0, v6

    aput-byte v9, v0, v9

    new-array v1, v8, [B

    aput-byte v5, v1, v7

    const/16 v2, -0x76

    aput-byte v2, v1, v6

    aput-byte v9, v1, v9

    .line 295
    invoke-static {v0, v1, p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportMcuDataTwoArray([B[BLandroid/content/Context;)V

    goto :goto_0

    :pswitch_d
    new-array v0, v8, [B

    aput-byte v1, v0, v7

    aput-byte v3, v0, v6

    aput-byte v9, v0, v9

    new-array v1, v8, [B

    aput-byte v5, v1, v7

    const/16 v2, -0x7c

    aput-byte v2, v1, v6

    aput-byte v6, v1, v9

    .line 290
    invoke-static {v0, v1, p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportMcuDataTwoArray([B[BLandroid/content/Context;)V

    goto :goto_0

    :pswitch_e
    new-array v0, v8, [B

    aput-byte v1, v0, v7

    aput-byte v3, v0, v6

    aput-byte v9, v0, v9

    new-array v1, v4, [B

    aput-byte v5, v1, v7

    aput-byte v2, v1, v6

    aput-byte v3, v1, v9

    aput-byte v9, v1, v8

    .line 285
    invoke-static {v0, v1, p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportMcuDataTwoArray([B[BLandroid/content/Context;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 359
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x19
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public panoramic_off()V
    .locals 8

    .line 761
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->HAIMA_S7_S5_FAMILY_RAISE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    const/16 v2, 0x16

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v0, v1, :cond_0

    .line 763
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    new-array v1, v3, [B

    aput-byte v2, v1, v5

    const/16 v2, -0x75

    aput-byte v2, v1, v6

    aput-byte v4, v1, v4

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 765
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 767
    :cond_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->TRUMPCHI_HIWORLD:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    if-ne v0, v1, :cond_1

    .line 769
    :try_start_1
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    const/4 v1, 0x4

    new-array v7, v1, [B

    aput-byte v2, v7, v5

    const/16 v2, -0xe

    aput-byte v2, v7, v6

    const/4 v2, 0x7

    aput-byte v2, v7, v4

    aput-byte v1, v7, v3

    invoke-virtual {v0, v7}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 771
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 773
    :cond_1
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->GEELY_RAISE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    if-ne v0, v1, :cond_4

    .line 775
    iget v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIbuttonReport;->currentState4:I

    const/16 v1, -0x7e

    if-eqz v0, :cond_3

    if-eq v0, v6, :cond_2

    goto :goto_0

    .line 785
    :cond_2
    iput v5, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIbuttonReport;->currentState4:I

    .line 787
    :try_start_2
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    new-array v3, v3, [B

    aput-byte v2, v3, v5

    aput-byte v1, v3, v6

    const/16 v1, 0x13

    aput-byte v1, v3, v4

    invoke-virtual {v0, v3}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    .line 789
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 777
    :cond_3
    iput v6, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIbuttonReport;->currentState4:I

    .line 779
    :try_start_3
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    new-array v3, v3, [B

    aput-byte v2, v3, v5

    aput-byte v1, v3, v6

    const/16 v1, 0x12

    aput-byte v1, v3, v4

    invoke-virtual {v0, v3}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    :catch_3
    move-exception v0

    .line 781
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_4
    :goto_0
    return-void
.end method

.method public panoramic_on()V
    .locals 7

    .line 725
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->HAIMA_S7_S5_FAMILY_RAISE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    const/4 v2, 0x2

    const/16 v3, 0x16

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v0, v1, :cond_0

    .line 727
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    new-array v1, v4, [B

    aput-byte v3, v1, v5

    const/16 v3, -0x75

    aput-byte v3, v1, v6

    aput-byte v6, v1, v2

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 729
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 731
    :cond_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->TRUMPCHI_HIWORLD:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    if-ne v0, v1, :cond_1

    .line 733
    :try_start_1
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [B

    aput-byte v3, v1, v5

    const/16 v3, -0xe

    aput-byte v3, v1, v6

    const/4 v3, 0x7

    aput-byte v3, v1, v2

    const/4 v2, 0x5

    aput-byte v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 735
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 737
    :cond_1
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->GEELY_RAISE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    if-ne v0, v1, :cond_4

    .line 739
    iget v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIbuttonReport;->currentState3:I

    const/16 v1, -0x7e

    if-eqz v0, :cond_3

    if-eq v0, v6, :cond_2

    goto :goto_0

    .line 749
    :cond_2
    iput v5, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIbuttonReport;->currentState3:I

    .line 751
    :try_start_2
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    new-array v4, v4, [B

    aput-byte v3, v4, v5

    aput-byte v1, v4, v6

    const/16 v1, 0x11

    aput-byte v1, v4, v2

    invoke-virtual {v0, v4}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    .line 753
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 741
    :cond_3
    iput v6, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIbuttonReport;->currentState3:I

    .line 743
    :try_start_3
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    new-array v4, v4, [B

    aput-byte v3, v4, v5

    aput-byte v1, v4, v6

    const/16 v1, 0x10

    aput-byte v1, v4, v2

    invoke-virtual {v0, v4}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    :catch_3
    move-exception v0

    .line 745
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_4
    :goto_0
    return-void
.end method

.method public reportExit360Cam(Landroid/content/Context;)V
    .locals 3

    .line 48
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIbuttonReport$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x3

    if-eq v0, v1, :cond_2

    if-eq v0, v2, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    const-string/jumbo v1, "trumpchi_car_type"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    new-array p1, v2, [B

    .line 56
    fill-array-data p1, :array_0

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x5

    new-array p1, p1, [B

    .line 58
    fill-array-data p1, :array_1

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    goto :goto_0

    :cond_2
    new-array p1, v2, [B

    .line 51
    fill-array-data p1, :array_2

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    :goto_0
    return-void

    :array_0
    .array-data 1
        0x16t
        -0x7ct
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x16t
        -0x37t
        0x1t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x16t
        -0x39t
        0x1t
    .end array-data
.end method

.method public standard_view_btn(Landroid/content/Context;)V
    .locals 17

    move-object/from16 v0, p1

    .line 88
    :try_start_0
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIbuttonReport$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, -0x1

    const/4 v3, -0x3

    const/16 v4, -0xe

    const/16 v5, 0x14

    const/16 v6, 0x9

    const/16 v7, -0x55

    const/16 v8, -0x3a

    const/16 v9, 0x12

    const/16 v10, 0x40

    const/4 v11, 0x4

    const/16 v12, 0x16

    const/4 v13, 0x2

    const/4 v14, 0x3

    const/4 v15, 0x1

    const/16 v16, 0x0

    packed-switch v1, :pswitch_data_0

    .line 161
    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isCanbusCmdPorting(Landroid/content/Context;)Z

    move-result v0

    goto/16 :goto_0

    .line 158
    :pswitch_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    new-array v1, v11, [B

    aput-byte v12, v1, v16

    aput-byte v8, v1, v15

    aput-byte v11, v1, v13

    aput-byte v15, v1, v14

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_1

    .line 155
    :pswitch_1
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    new-array v1, v14, [B

    aput-byte v12, v1, v16

    const/16 v2, -0x58

    aput-byte v2, v1, v15

    aput-byte v13, v1, v13

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_1

    .line 151
    :pswitch_2
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    new-array v1, v11, [B

    aput-byte v12, v1, v16

    aput-byte v4, v1, v15

    const/4 v2, 0x7

    aput-byte v2, v1, v13

    aput-byte v2, v1, v14

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_1

    .line 148
    :pswitch_3
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    new-array v1, v14, [B

    aput-byte v12, v1, v16

    const/16 v2, -0x75

    aput-byte v2, v1, v15

    aput-byte v14, v1, v13

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_1

    .line 144
    :pswitch_4
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    new-array v1, v11, [B

    aput-byte v12, v1, v16

    aput-byte v3, v1, v15

    aput-byte v14, v1, v13

    aput-byte v11, v1, v14

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_1

    .line 139
    :pswitch_5
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    new-array v1, v14, [B

    aput-byte v12, v1, v16

    const/16 v2, -0x59

    aput-byte v2, v1, v15

    aput-byte v15, v1, v13

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_1

    .line 136
    :pswitch_6
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    new-array v1, v11, [B

    aput-byte v12, v1, v16

    aput-byte v3, v1, v15

    aput-byte v11, v1, v13

    aput-byte v11, v1, v14

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_1

    .line 133
    :pswitch_7
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    new-array v1, v11, [B

    aput-byte v12, v1, v16

    aput-byte v8, v1, v15

    aput-byte v10, v1, v13

    aput-byte v16, v1, v14

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_1

    .line 128
    :pswitch_8
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    new-array v1, v11, [B

    aput-byte v12, v1, v16

    aput-byte v4, v1, v15

    const/4 v3, 0x5

    aput-byte v3, v1, v13

    aput-byte v2, v1, v14

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_1

    .line 125
    :pswitch_9
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    new-array v1, v11, [B

    aput-byte v12, v1, v16

    aput-byte v4, v1, v15

    aput-byte v13, v1, v13

    aput-byte v2, v1, v14

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_1

    :pswitch_a
    new-array v1, v14, [B

    aput-byte v5, v1, v16

    aput-byte v7, v1, v15

    aput-byte v9, v1, v13

    new-array v2, v11, [B

    aput-byte v12, v2, v16

    const/16 v3, -0x7d

    aput-byte v3, v2, v15

    aput-byte v15, v2, v13

    aput-byte v16, v2, v14

    .line 119
    invoke-static {v1, v2, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportMcuDataTwoArray([B[BLandroid/content/Context;)V

    goto/16 :goto_1

    :pswitch_b
    new-array v1, v14, [B

    aput-byte v5, v1, v16

    aput-byte v7, v1, v15

    aput-byte v9, v1, v13

    new-array v2, v11, [B

    aput-byte v12, v2, v16

    aput-byte v8, v2, v15

    const/16 v3, -0x5d

    aput-byte v3, v2, v13

    aput-byte v9, v2, v14

    .line 114
    invoke-static {v1, v2, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportMcuDataTwoArray([B[BLandroid/content/Context;)V

    goto :goto_1

    :pswitch_c
    new-array v1, v14, [B

    aput-byte v5, v1, v16

    aput-byte v7, v1, v15

    aput-byte v9, v1, v13

    new-array v2, v11, [B

    aput-byte v12, v2, v16

    aput-byte v8, v2, v15

    aput-byte v7, v2, v13

    aput-byte v9, v2, v14

    .line 109
    invoke-static {v1, v2, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportMcuDataTwoArray([B[BLandroid/content/Context;)V

    goto :goto_1

    :pswitch_d
    new-array v1, v14, [B

    aput-byte v6, v1, v16

    aput-byte v10, v1, v15

    aput-byte v16, v1, v13

    new-array v2, v14, [B

    aput-byte v12, v2, v16

    const/16 v3, -0x76

    aput-byte v3, v2, v15

    aput-byte v15, v2, v13

    .line 104
    invoke-static {v1, v2, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportMcuDataTwoArray([B[BLandroid/content/Context;)V

    goto :goto_1

    :pswitch_e
    new-array v1, v14, [B

    aput-byte v6, v1, v16

    aput-byte v10, v1, v15

    aput-byte v16, v1, v13

    new-array v2, v14, [B

    aput-byte v12, v2, v16

    const/16 v3, -0x7c

    aput-byte v3, v2, v15

    aput-byte v16, v2, v13

    .line 99
    invoke-static {v1, v2, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportMcuDataTwoArray([B[BLandroid/content/Context;)V

    goto :goto_1

    :pswitch_f
    new-array v1, v14, [B

    aput-byte v6, v1, v16

    aput-byte v10, v1, v15

    aput-byte v16, v1, v13

    new-array v2, v11, [B

    aput-byte v12, v2, v16

    aput-byte v8, v2, v15

    aput-byte v10, v2, v13

    aput-byte v16, v2, v14

    .line 94
    invoke-static {v1, v2, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportMcuDataTwoArray([B[BLandroid/content/Context;)V

    goto :goto_1

    :goto_0
    if-nez v0, :cond_0

    new-array v0, v14, [B

    aput-byte v14, v0, v16

    aput-byte v10, v0, v15

    aput-byte v16, v0, v13

    .line 163
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 169
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public track_haval_hiworld()V
    .locals 9

    .line 646
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->HAVAL_H6_HIWORLD:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/16 v4, 0x16

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v0, v1, :cond_0

    .line 648
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    new-array v1, v2, [B

    aput-byte v4, v1, v6

    const/4 v4, -0x3

    aput-byte v4, v1, v7

    aput-byte v2, v1, v3

    aput-byte v7, v1, v5

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 650
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 652
    :cond_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->HAIMA_S7_S5_FAMILY_RAISE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    const/4 v8, 0x7

    if-ne v0, v1, :cond_1

    .line 654
    :try_start_1
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    new-array v1, v5, [B

    aput-byte v4, v1, v6

    const/16 v2, -0x75

    aput-byte v2, v1, v7

    aput-byte v8, v1, v3

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 656
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 658
    :cond_1
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->TRUMPCHI_HIWORLD:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    if-ne v0, v1, :cond_2

    .line 660
    :try_start_2
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    new-array v1, v2, [B

    aput-byte v4, v1, v6

    const/16 v2, -0xe

    aput-byte v2, v1, v7

    aput-byte v8, v1, v3

    const/4 v2, 0x6

    aput-byte v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    .line 662
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 664
    :cond_2
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->GEELY_RAISE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    if-ne v0, v1, :cond_5

    .line 666
    iget v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIbuttonReport;->currentState1:I

    const/16 v1, -0x7e

    if-eqz v0, :cond_4

    if-eq v0, v7, :cond_3

    goto :goto_0

    .line 676
    :cond_3
    iput v6, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIbuttonReport;->currentState1:I

    .line 678
    :try_start_3
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    new-array v2, v5, [B

    aput-byte v4, v2, v6

    aput-byte v1, v2, v7

    const/16 v1, 0xd

    aput-byte v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    :catch_3
    move-exception v0

    .line 680
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 668
    :cond_4
    iput v7, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIbuttonReport;->currentState1:I

    .line 670
    :try_start_4
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    new-array v2, v5, [B

    aput-byte v4, v2, v6

    aput-byte v1, v2, v7

    const/16 v1, 0xc

    aput-byte v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    :catch_4
    move-exception v0

    .line 672
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_5
    :goto_0
    return-void
.end method

.method public track_off()V
    .locals 8

    .line 688
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->HAIMA_S7_S5_FAMILY_RAISE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    const/16 v2, 0x16

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v0, v1, :cond_0

    .line 690
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    new-array v1, v3, [B

    aput-byte v2, v1, v5

    const/16 v7, -0x75

    aput-byte v7, v1, v6

    const/16 v7, 0x8

    aput-byte v7, v1, v4

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 692
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 695
    :cond_0
    :goto_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->TRUMPCHI_HIWORLD:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    if-ne v0, v1, :cond_1

    .line 697
    :try_start_1
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [B

    aput-byte v2, v1, v5

    const/16 v2, -0xe

    aput-byte v2, v1, v6

    const/4 v2, 0x7

    aput-byte v2, v1, v4

    aput-byte v4, v1, v3

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 699
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 701
    :cond_1
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->GEELY_RAISE:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    if-ne v0, v1, :cond_4

    .line 703
    iget v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIbuttonReport;->currentState2:I

    const/16 v1, -0x7e

    if-eqz v0, :cond_3

    if-eq v0, v6, :cond_2

    goto :goto_1

    .line 713
    :cond_2
    iput v5, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIbuttonReport;->currentState2:I

    .line 715
    :try_start_2
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    new-array v3, v3, [B

    aput-byte v2, v3, v5

    aput-byte v1, v3, v6

    const/16 v1, 0xf

    aput-byte v1, v3, v4

    invoke-virtual {v0, v3}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    .line 717
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 705
    :cond_3
    iput v6, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIbuttonReport;->currentState2:I

    .line 707
    :try_start_3
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    new-array v3, v3, [B

    aput-byte v2, v3, v5

    aput-byte v1, v3, v6

    const/16 v1, 0xe

    aput-byte v1, v3, v4

    invoke-virtual {v0, v3}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_3
    move-exception v0

    .line 709
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method

.method public wide_view_btn(Landroid/content/Context;)V
    .locals 16

    move-object/from16 v0, p1

    .line 175
    :try_start_0
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/UIbuttonReport$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x5

    const/4 v3, -0x1

    const/4 v4, -0x3

    const/16 v7, -0xe

    const/16 v8, 0x13

    const/16 v9, -0x55

    const/16 v10, 0x40

    const/16 v11, -0x3a

    const/4 v12, 0x4

    const/16 v13, 0x16

    const/4 v14, 0x2

    const/4 v15, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x1

    packed-switch v1, :pswitch_data_0

    .line 265
    invoke-static/range {p1 .. p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isCanbusCmdPorting(Landroid/content/Context;)Z

    move-result v0

    goto/16 :goto_1

    .line 253
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "canbus_cam_wide"

    invoke-static {v0, v1, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 254
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    new-array v2, v12, [B

    aput-byte v13, v2, v15

    aput-byte v7, v2, v5

    const/16 v3, 0x8

    aput-byte v3, v2, v14

    if-ne v0, v5, :cond_0

    goto :goto_0

    :cond_0
    move v15, v5

    :goto_0
    aput-byte v15, v2, v6

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_2

    .line 242
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ford_canbus_cam_zoom"

    invoke-static {v0, v1, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v1, "FORD_ESCAPE_KUGA_2017_RAISE"

    .line 243
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "zoomSt="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    .line 245
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    new-array v1, v12, [B

    aput-byte v13, v1, v15

    aput-byte v11, v1, v5

    aput-byte v9, v1, v14

    aput-byte v8, v1, v6

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_2

    .line 247
    :cond_1
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    new-array v1, v12, [B

    aput-byte v13, v1, v15

    aput-byte v11, v1, v5

    aput-byte v9, v1, v14

    const/16 v2, 0x12

    aput-byte v2, v1, v6

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_2

    .line 262
    :pswitch_2
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    new-array v1, v12, [B

    aput-byte v13, v1, v15

    aput-byte v11, v1, v5

    aput-byte v12, v1, v14

    aput-byte v14, v1, v6

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_2

    .line 259
    :pswitch_3
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    new-array v1, v6, [B

    aput-byte v13, v1, v15

    const/16 v2, -0x58

    aput-byte v2, v1, v5

    aput-byte v6, v1, v14

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_2

    .line 237
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "PanoramicIO"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v5, :cond_2

    .line 239
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    new-array v1, v12, [B

    aput-byte v13, v1, v15

    aput-byte v7, v1, v5

    const/4 v2, 0x7

    aput-byte v2, v1, v14

    aput-byte v5, v1, v6

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_2

    .line 234
    :pswitch_5
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    new-array v1, v6, [B

    aput-byte v13, v1, v15

    const/16 v2, -0x75

    aput-byte v2, v1, v5

    aput-byte v12, v1, v14

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_2

    .line 230
    :pswitch_6
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    new-array v1, v12, [B

    aput-byte v13, v1, v15

    aput-byte v4, v1, v5

    aput-byte v6, v1, v14

    aput-byte v2, v1, v6

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_2

    .line 226
    :pswitch_7
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    new-array v1, v6, [B

    aput-byte v13, v1, v15

    const/16 v2, -0x59

    aput-byte v2, v1, v5

    aput-byte v14, v1, v14

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_2

    .line 223
    :pswitch_8
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    new-array v1, v12, [B

    aput-byte v13, v1, v15

    aput-byte v4, v1, v5

    aput-byte v12, v1, v14

    aput-byte v2, v1, v6

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_2

    .line 220
    :pswitch_9
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    new-array v1, v12, [B

    aput-byte v13, v1, v15

    aput-byte v11, v1, v5

    aput-byte v10, v1, v14

    aput-byte v5, v1, v6

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_2

    .line 215
    :pswitch_a
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    new-array v1, v12, [B

    aput-byte v13, v1, v15

    aput-byte v7, v1, v5

    aput-byte v12, v1, v14

    aput-byte v3, v1, v6

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_2

    .line 212
    :pswitch_b
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    new-array v1, v12, [B

    aput-byte v13, v1, v15

    aput-byte v7, v1, v5

    aput-byte v5, v1, v14

    aput-byte v3, v1, v6

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V

    goto/16 :goto_2

    :pswitch_c
    new-array v1, v6, [B

    const/16 v2, 0x14

    aput-byte v2, v1, v15

    aput-byte v9, v1, v5

    aput-byte v8, v1, v14

    new-array v2, v12, [B

    aput-byte v13, v2, v15

    const/16 v3, -0x7d

    aput-byte v3, v2, v5

    aput-byte v5, v2, v14

    aput-byte v5, v2, v6

    .line 206
    invoke-static {v1, v2, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportMcuDataTwoArray([B[BLandroid/content/Context;)V

    goto/16 :goto_2

    :pswitch_d
    new-array v1, v6, [B

    const/16 v2, 0x14

    aput-byte v2, v1, v15

    aput-byte v9, v1, v5

    aput-byte v8, v1, v14

    new-array v2, v12, [B

    aput-byte v13, v2, v15

    aput-byte v11, v2, v5

    const/16 v3, -0x5d

    aput-byte v3, v2, v14

    aput-byte v8, v2, v6

    .line 201
    invoke-static {v1, v2, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportMcuDataTwoArray([B[BLandroid/content/Context;)V

    goto/16 :goto_2

    :pswitch_e
    new-array v1, v6, [B

    const/16 v2, 0x14

    aput-byte v2, v1, v15

    aput-byte v9, v1, v5

    aput-byte v8, v1, v14

    new-array v2, v12, [B

    aput-byte v13, v2, v15

    aput-byte v11, v2, v5

    aput-byte v9, v2, v14

    aput-byte v8, v2, v6

    .line 196
    invoke-static {v1, v2, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportMcuDataTwoArray([B[BLandroid/content/Context;)V

    goto :goto_2

    :pswitch_f
    new-array v1, v6, [B

    const/16 v2, 0x9

    aput-byte v2, v1, v15

    aput-byte v10, v1, v5

    aput-byte v5, v1, v14

    new-array v2, v6, [B

    aput-byte v13, v2, v15

    const/16 v3, -0x76

    aput-byte v3, v2, v5

    aput-byte v6, v2, v14

    .line 191
    invoke-static {v1, v2, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportMcuDataTwoArray([B[BLandroid/content/Context;)V

    goto :goto_2

    :pswitch_10
    new-array v1, v6, [B

    const/16 v2, 0x9

    aput-byte v2, v1, v15

    aput-byte v10, v1, v5

    aput-byte v5, v1, v14

    new-array v2, v6, [B

    aput-byte v13, v2, v15

    const/16 v3, -0x7c

    aput-byte v3, v2, v5

    aput-byte v14, v2, v14

    .line 186
    invoke-static {v1, v2, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportMcuDataTwoArray([B[BLandroid/content/Context;)V

    goto :goto_2

    :pswitch_11
    new-array v1, v6, [B

    const/16 v2, 0x9

    aput-byte v2, v1, v15

    aput-byte v10, v1, v5

    aput-byte v5, v1, v14

    new-array v2, v12, [B

    aput-byte v13, v2, v15

    aput-byte v11, v2, v5

    aput-byte v10, v2, v14

    aput-byte v5, v2, v6

    .line 181
    invoke-static {v1, v2, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportMcuDataTwoArray([B[BLandroid/content/Context;)V

    goto :goto_2

    :goto_1
    if-nez v0, :cond_2

    new-array v0, v6, [B

    aput-byte v6, v0, v15

    aput-byte v10, v0, v5

    aput-byte v5, v0, v14

    .line 267
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reportCanbusInfo([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 273
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_2
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
