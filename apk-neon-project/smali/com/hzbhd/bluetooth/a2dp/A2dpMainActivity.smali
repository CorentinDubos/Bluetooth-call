.class public Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;
.super Lcom/hzbhd/bluetooth/MainActivity;
.source "A2dpMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final WHAT_HIDE_DISCONNECT_LAYOUT:I

.field private a2dp_main_margin_n54:Landroid/view/View;

.field private bt_call_tv_n54:Landroid/view/View;

.field private bt_music_tv_n54:Landroid/view/View;

.field private container:Landroid/view/View;

.field private deviceBtn:Landroid/view/View;

.field private fragment_back_n54:Landroid/view/View;

.field private ib_radio_n54_ui_height:Landroid/view/View;

.field private leftMenuBar:Landroid/view/View;

.field private mA2dpCallbackListener:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;

.field private mA2dpPlayFragment:Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;

.field private mHandler:Landroid/os/Handler;

.field private menubar_button_eq_n54:Landroid/view/View;

.field private settingBtn:Landroid/view/View;

.field private tv_devices_name:Landroid/widget/TextView;

.field private tv_pin_code:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/MainActivity;-><init>()V

    const-string v0, "A2dpMainActivity"

    .line 43
    iput-object v0, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->TAG:Ljava/lang/String;

    .line 465
    new-instance v0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity$1;

    invoke-direct {v0, p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity$1;-><init>(Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;)V

    iput-object v0, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->mA2dpCallbackListener:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;

    .line 569
    new-instance v0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity$2;-><init>(Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 580
    iput v0, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->WHAT_HIDE_DISCONNECT_LAYOUT:I

    return-void
.end method

.method static synthetic access$000(Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;Z)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->hideNP2DisConnect(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;)Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->mA2dpPlayFragment:Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;

    return-object p0
.end method

.method private firstIsAd2pConnect()V
    .locals 4

    const v0, 0x7f040014

    .line 600
    invoke-static {p0, v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0017

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 601
    invoke-static {p0, v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0013

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 602
    invoke-static {p0, v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 603
    :cond_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getA2dpCurrentState()I

    move-result v0

    const/16 v1, 0x8c

    const v2, 0x7f0901e2

    if-lt v0, v1, :cond_1

    .line 604
    invoke-virtual {p0, v2}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 606
    :cond_1
    invoke-virtual {p0, v2}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private declared-synchronized hideNP2DisConnect(Z)V
    .locals 4

    monitor-enter p0

    const v0, 0x7f040014

    .line 582
    :try_start_0
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0013

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 583
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0017

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 584
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v0, v1, :cond_2

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/16 p1, 0x8

    goto :goto_0

    :cond_1
    const p1, 0x7f0901e2

    .line 588
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    move p1, v0

    .line 590
    :goto_0
    iget-object v1, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 591
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 592
    iput v0, v1, Landroid/os/Message;->what:I

    .line 593
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 594
    iget-object p1, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 596
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private initPA6()V
    .locals 2

    const v0, 0x7f040015

    .line 98
    invoke-static {p0, v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResStr(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "A6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    new-instance v0, Lcom/hzbhd/bluetooth/a2dp/-$$Lambda$A2dpMainActivity$NfRRDcrXxhyqWKd8W69EgI2u-Q0;

    invoke-direct {v0, p0}, Lcom/hzbhd/bluetooth/a2dp/-$$Lambda$A2dpMainActivity$NfRRDcrXxhyqWKd8W69EgI2u-Q0;-><init>(Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;)V

    const v1, 0x7f09014b

    .line 122
    invoke-virtual {p0, v1}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090150

    .line 123
    invoke-virtual {p0, v1}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090149

    .line 124
    invoke-virtual {p0, v1}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09014a

    .line 125
    invoke-virtual {p0, v1}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090151

    .line 126
    invoke-virtual {p0, v1}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public closeActivity()V
    .locals 0

    return-void
.end method

.method public synthetic lambda$initPA6$0$A2dpMainActivity(Landroid/view/View;)V
    .locals 2

    .line 100
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 101
    sget-object v1, Lcom/hzbhd/midware/constant/HzbhdComponentName;->BlueTeethActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v1, "a6_choose_index"

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const/4 p1, 0x5

    .line 116
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x4

    .line 107
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :pswitch_3
    const/4 p1, 0x2

    .line 104
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :pswitch_4
    const/4 p1, 0x0

    .line 113
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :pswitch_5
    const/4 p1, 0x3

    .line 110
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 119
    :goto_0
    invoke-virtual {p0, v0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x7f090149
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .locals 1

    .line 185
    instance-of v0, p1, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;

    if-eqz v0, :cond_0

    .line 186
    check-cast p1, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;

    iput-object p1, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->mA2dpPlayFragment:Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;

    goto :goto_0

    .line 187
    :cond_0
    instance-of v0, p1, Lcom/hzbhd/bluetooth/paired/PairedListFragment;

    if-eqz v0, :cond_1

    .line 188
    check-cast p1, Lcom/hzbhd/bluetooth/paired/PairedListFragment;

    iput-object p1, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->mPairedListFragment:Lcom/hzbhd/bluetooth/paired/PairedListFragment;

    goto :goto_0

    .line 189
    :cond_1
    instance-of v0, p1, Lcom/hzbhd/bluetooth/settings/SettingsFragment;

    if-eqz v0, :cond_2

    .line 190
    check-cast p1, Lcom/hzbhd/bluetooth/settings/SettingsFragment;

    iput-object p1, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->mSettingsFragment:Lcom/hzbhd/bluetooth/settings/SettingsFragment;

    :cond_2
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 159
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->PRESS_BACK_KEY_INTO_NORMAL_SOURCE:Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getSharedBool(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    invoke-static {}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->getSourceSwitchManager()Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->NORMAL_SOURCE:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    sget-object v2, Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;->front_seat:Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;

    const/4 v3, 0x0

    .line 161
    invoke-virtual {v0, v1, v2, v3}, Lcom/hzbhd/midwareproxy/sourceswitch/SourceSwitchManager;->audioChannelRequest(Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;Lcom/hzbhd/midware/constant/channelManagerDef$SEAT_TYPE;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :catch_0
    :cond_0
    invoke-super {p0}, Lcom/hzbhd/bluetooth/MainActivity;->onBackPressed()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 241
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v2

    const v12, 0x7f0a000a

    const v13, 0x7f0a0016

    const v14, 0x7f0a000b

    const v15, 0x7f0a000c

    const v3, 0x7f0a0009

    const v4, 0x7f0a0006

    const v5, 0x7f0a001a

    const v6, 0x7f0a0008

    const/16 v7, 0x34

    const v8, 0x7f0a0007

    const/4 v9, 0x0

    const/4 v10, 0x1

    const v11, 0x7f040014

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_2

    .line 345
    :sswitch_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->startEQ(Landroid/content/Context;)V

    goto/16 :goto_2

    .line 353
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->finish()V

    goto/16 :goto_2

    .line 243
    :sswitch_2
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v1

    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getA2dpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->reqA2dpDisconnect(Ljava/lang/String;)Z

    goto/16 :goto_2

    .line 348
    :sswitch_3
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 297
    :sswitch_4
    invoke-virtual {v1, v9}, Landroid/view/View;->setEnabled(Z)V

    const v2, 0x7f090021

    .line 298
    invoke-virtual {v0, v2}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 299
    invoke-virtual {v2, v10}, Landroid/view/View;->setEnabled(Z)V

    .line 300
    iput-boolean v10, v0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->isInA2dpView:Z

    .line 301
    invoke-virtual/range {p0 .. p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->showSettingsFrament()V

    .line 302
    invoke-static {v0, v11}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(Landroid/content/Context;I)I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    if-eq v9, v8, :cond_5

    .line 303
    invoke-static {v0, v11}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(Landroid/content/Context;I)I

    move-result v8

    if-eq v8, v7, :cond_5

    .line 304
    invoke-static {v0, v11}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    if-eq v7, v6, :cond_5

    .line 305
    invoke-static {v11}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    if-eq v6, v5, :cond_5

    .line 306
    invoke-static {v0, v11}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    if-eq v5, v4, :cond_5

    .line 307
    invoke-static {v0, v11}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    if-eq v4, v3, :cond_5

    .line 308
    invoke-static {v0, v11}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    if-eq v3, v4, :cond_5

    .line 309
    invoke-static {v0, v11}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    if-eq v3, v4, :cond_5

    .line 310
    invoke-static {v0, v11}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    if-eq v3, v4, :cond_5

    .line 311
    invoke-static {v0, v11}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    if-eq v3, v4, :cond_5

    .line 312
    invoke-static {v0, v11}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    if-eq v3, v4, :cond_5

    .line 313
    invoke-static {v0, v11}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0005

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    if-eq v3, v4, :cond_5

    .line 314
    invoke-static {v0, v11}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0015

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    if-eq v3, v4, :cond_5

    .line 315
    invoke-static {v0, v11}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0019

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    if-eq v3, v4, :cond_5

    .line 316
    invoke-static {v0, v11}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0010

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    if-eq v3, v4, :cond_5

    .line 317
    invoke-static {v0, v11}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0011

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto/16 :goto_0

    .line 321
    :cond_0
    invoke-static {v11}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 322
    iget-object v1, v0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->deviceBtn:Landroid/view/View;

    const v2, 0x7f080889

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 323
    iget-object v1, v0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->settingBtn:Landroid/view/View;

    const v2, 0x7f080893

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 325
    :cond_1
    invoke-static {v11}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 326
    iget-object v1, v0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->deviceBtn:Landroid/view/View;

    const v2, 0x7f080910

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 327
    iget-object v1, v0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->settingBtn:Landroid/view/View;

    const v2, 0x7f08091c

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 329
    :cond_2
    invoke-static {v11}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 330
    invoke-virtual/range {p0 .. p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 331
    iget-object v1, v0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->deviceBtn:Landroid/view/View;

    const v2, 0x7f080910

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 332
    iget-object v1, v0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->settingBtn:Landroid/view/View;

    const v2, 0x7f08091c

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 334
    :cond_3
    iget-object v1, v0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->deviceBtn:Landroid/view/View;

    const v2, 0x7f0800f7

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 335
    iget-object v1, v0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->settingBtn:Landroid/view/View;

    const v2, 0x7f080103

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 339
    :cond_4
    iget-object v1, v0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->deviceBtn:Landroid/view/View;

    const v2, 0x7f081739

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 340
    iget-object v1, v0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->settingBtn:Landroid/view/View;

    const v2, 0x7f081738

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 318
    :cond_5
    :goto_0
    check-cast v1, Landroid/widget/RadioButton;

    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 319
    check-cast v2, Landroid/widget/RadioButton;

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_2

    :sswitch_5
    move/from16 v16, v10

    move v10, v9

    move/from16 v9, v16

    .line 247
    invoke-virtual {v1, v10}, Landroid/view/View;->setEnabled(Z)V

    const v2, 0x7f09002e

    .line 248
    invoke-virtual {v0, v2}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 249
    invoke-virtual {v2, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 250
    iput-boolean v9, v0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->isInA2dpView:Z

    .line 251
    invoke-virtual/range {p0 .. p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->showPairedFrament()V

    .line 252
    invoke-static {v0, v11}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(Landroid/content/Context;I)I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    if-eq v9, v8, :cond_b

    .line 253
    invoke-static {v0, v11}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(Landroid/content/Context;I)I

    move-result v8

    if-eq v8, v7, :cond_b

    .line 254
    invoke-static {v0, v11}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    if-eq v7, v6, :cond_b

    .line 255
    invoke-static {v11}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    if-eq v6, v5, :cond_b

    .line 256
    invoke-static {v0, v11}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    if-eq v5, v4, :cond_b

    .line 257
    invoke-static {v0, v11}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    if-eq v4, v3, :cond_b

    .line 258
    invoke-static {v0, v11}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    if-eq v3, v4, :cond_b

    .line 259
    invoke-static {v0, v11}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    if-eq v3, v4, :cond_b

    .line 260
    invoke-static {v0, v11}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    if-eq v3, v4, :cond_b

    .line 261
    invoke-static {v0, v11}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    if-eq v3, v4, :cond_b

    .line 262
    invoke-static {v0, v11}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    if-eq v3, v4, :cond_b

    .line 263
    invoke-static {v0, v11}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0005

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    if-eq v3, v4, :cond_b

    .line 264
    invoke-static {v0, v11}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0015

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    if-eq v3, v4, :cond_b

    .line 265
    invoke-static {v0, v11}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0019

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    if-eq v3, v4, :cond_b

    .line 266
    invoke-static {v0, v11}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0010

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    if-eq v3, v4, :cond_b

    .line 267
    invoke-static {v0, v11}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0011

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    if-ne v3, v4, :cond_6

    goto/16 :goto_1

    .line 271
    :cond_6
    invoke-static {v11}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-ne v1, v2, :cond_7

    .line 272
    iget-object v1, v0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->deviceBtn:Landroid/view/View;

    const v2, 0x7f08088a

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 273
    iget-object v1, v0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->settingBtn:Landroid/view/View;

    const v2, 0x7f080892

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 275
    :cond_7
    invoke-static {v11}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-ne v1, v2, :cond_8

    .line 276
    iget-object v1, v0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->deviceBtn:Landroid/view/View;

    const v2, 0x7f080912

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 277
    iget-object v1, v0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->settingBtn:Landroid/view/View;

    const v2, 0x7f08091a

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 279
    :cond_8
    invoke-static {v11}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-ne v1, v2, :cond_a

    .line 282
    invoke-virtual/range {p0 .. p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_9

    .line 283
    iget-object v1, v0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->deviceBtn:Landroid/view/View;

    const v2, 0x7f080912

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 284
    iget-object v1, v0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->settingBtn:Landroid/view/View;

    const v2, 0x7f08091a

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 286
    :cond_9
    iget-object v1, v0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->deviceBtn:Landroid/view/View;

    const v2, 0x7f0800f9

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 287
    iget-object v1, v0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->settingBtn:Landroid/view/View;

    const v2, 0x7f080101

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 291
    :cond_a
    iget-object v1, v0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->deviceBtn:Landroid/view/View;

    const v2, 0x7f081738

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 292
    iget-object v1, v0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->settingBtn:Landroid/view/View;

    const v2, 0x7f081739

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 268
    :cond_b
    :goto_1
    check-cast v1, Landroid/widget/RadioButton;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 269
    check-cast v2, Landroid/widget/RadioButton;

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 358
    :goto_2
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->playBeep()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090021 -> :sswitch_5
        0x7f09002e -> :sswitch_4
        0x7f090049 -> :sswitch_3
        0x7f09005e -> :sswitch_2
        0x7f090139 -> :sswitch_1
        0x7f0901d1 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 61
    invoke-super {p0, p1}, Lcom/hzbhd/bluetooth/MainActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0e0171

    invoke-static {p1, p0, v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->init(Landroid/content/res/Resources;Landroid/content/Context;I)V

    const-string p1, "__01__bg"

    .line 63
    invoke-static {p0, p1}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->resetBg(Landroid/app/Activity;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/utils/DispUtility;->disabledDisplayDpiChange(Landroid/content/res/Resources;)Landroid/content/res/Resources;

    const p1, 0x7f040002

    .line 65
    invoke-static {p1}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResId(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->setContentView(I)V

    const p1, 0x7f090021

    .line 67
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->deviceBtn:Landroid/view/View;

    .line 68
    instance-of v0, p1, Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    .line 69
    check-cast p1, Landroid/widget/RadioButton;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_0
    const p1, 0x7f09002e

    .line 71
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->settingBtn:Landroid/view/View;

    .line 72
    iget-object p1, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->deviceBtn:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object p1, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->settingBtn:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0901b2

    .line 75
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->leftMenuBar:Landroid/view/View;

    .line 77
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object p1

    iget-object v0, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->mA2dpCallbackListener:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;

    invoke-virtual {p1, v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->registerA2DPCallBackListenr(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;)V

    const p1, 0x7f090110

    .line 78
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->container:Landroid/view/View;

    const p1, 0x7f0901d1

    .line 79
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->menubar_button_eq_n54:Landroid/view/View;

    const p1, 0x7f090049

    .line 80
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->bt_call_tv_n54:Landroid/view/View;

    const p1, 0x7f090051

    .line 81
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->bt_music_tv_n54:Landroid/view/View;

    const p1, 0x7f090139

    .line 82
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->fragment_back_n54:Landroid/view/View;

    const p1, 0x7f090026

    .line 83
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->a2dp_main_margin_n54:Landroid/view/View;

    const p1, 0x7f090247

    .line 84
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->tv_devices_name:Landroid/widget/TextView;

    const p1, 0x7f090256

    .line 85
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->tv_pin_code:Landroid/widget/TextView;

    .line 86
    iget-object p1, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->menubar_button_eq_n54:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    :cond_1
    iget-object p1, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->bt_call_tv_n54:Landroid/view/View;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    :cond_2
    iget-object p1, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->bt_music_tv_n54:Landroid/view/View;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    :cond_3
    iget-object p1, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->fragment_back_n54:Landroid/view/View;

    if-eqz p1, :cond_4

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    const p1, 0x7f09015f

    .line 90
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->ib_radio_n54_ui_height:Landroid/view/View;

    const-string p1, "A2dpMainActivity"

    const-string v0, "------onCreate()------"

    .line 91
    invoke-static {p1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "A2dpMainActivity__sswang"

    const-string v0, "onCreate: "

    .line 92
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->firstIsAd2pConnect()V

    .line 94
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->initPA6()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 144
    invoke-super {p0}, Lcom/hzbhd/bluetooth/MainActivity;->onDestroy()V

    .line 145
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->mA2dpCallbackListener:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->unRegisterA2DPCallBackListenr(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;)V

    const-string v0, "A2dpMainActivity"

    const-string v1, "------onDestroy()------"

    .line 146
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 152
    invoke-super {p0}, Lcom/hzbhd/bluetooth/MainActivity;->onPause()V

    const-string v0, "A2dpMainActivity"

    const-string v1, "------onPause()------"

    .line 153
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 170
    invoke-super {p0}, Lcom/hzbhd/bluetooth/MainActivity;->onResume()V

    .line 171
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isOriginalScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    .line 172
    :cond_0
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->isA2DPConnected()Z

    move-result v0

    const/16 v1, 0x9

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->showFragment(ZI)V

    const-string v0, "A2dpMainActivity"

    const-string v1, "------onResume()------"

    .line 173
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f040014

    .line 174
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0013

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 175
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0017

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 176
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->tv_devices_name:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothLocalAdapterName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v0, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->tv_pin_code:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getPinCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void

    nop

    :array_0
    .array-data 1
        0x18t
        0x7t
        0xdt
        0x0t
    .end array-data
.end method

.method public onResumeBg_N54(Z)V
    .locals 3

    const v0, 0x7f040015

    .line 131
    invoke-static {p0, v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResStr(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "A4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 132
    :cond_0
    invoke-static {p0, v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResStr(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "C2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const v0, 0x7f040051

    .line 133
    invoke-static {p0, v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResBool(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    .line 135
    iget-object p1, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->container:Landroid/view/View;

    const v0, 0x7f040057

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResId(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 137
    :cond_2
    iget-object p1, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->container:Landroid/view/View;

    const v0, 0x7f040058

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResId(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "A2dpMainActivity"

    const-string v1, "----onTouchEvent()----"

    .line 196
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-super {p0, p1}, Lcom/hzbhd/bluetooth/MainActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public releaseFragment(I)V
    .locals 0

    return-void
.end method

.method public setLeftMenuBarVisibility(I)V
    .locals 1

    const v0, 0x7f040051

    .line 201
    invoke-static {p0, v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResBool(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->a2dp_main_margin_n54:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->leftMenuBar:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 207
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public showA2dpPlayFrament()V
    .locals 5

    const/16 v0, 0x8

    .line 212
    invoke-virtual {p0, v0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->setLeftMenuBarVisibility(I)V

    .line 213
    iget v0, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->currentFragmentIndex:I

    iput v0, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->lastFragmentIndex:I

    const/16 v0, 0x9

    .line 214
    iput v0, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->currentFragmentIndex:I

    .line 215
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 216
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "a2dp_fragment"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    const v4, 0x7f09025e

    if-nez v2, :cond_1

    .line 218
    iget-object v2, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->mA2dpPlayFragment:Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;

    if-nez v2, :cond_0

    .line 220
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 221
    invoke-static {v2}, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;->newInstance(Landroid/os/Bundle;)Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;

    move-result-object v2

    .line 224
    :cond_0
    invoke-virtual {v1, v4, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    .line 231
    :cond_1
    invoke-virtual {v1, v4, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 233
    :goto_0
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 234
    invoke-virtual {p0, v0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->releaseFragment(I)V

    const-string v0, "A2dpMainActivity"

    const-string v1, "------showA2dpPlayFrament()------"

    .line 236
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showBackFragment(Z)V
    .locals 2

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-----showBackFragment() connect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ; currentFragmentIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->currentFragmentIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "A2dpMainActivity"

    invoke-static {v1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    invoke-direct {p0, p1}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->hideNP2DisConnect(Z)V

    const v0, 0x7f0901db

    if-eqz p1, :cond_0

    .line 440
    iget p1, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->currentFragmentIndex:I

    .line 443
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->finish()V

    .line 445
    invoke-virtual {p0, v0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 446
    invoke-virtual {p0, v0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 449
    :cond_0
    invoke-virtual {p0, v0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 450
    invoke-virtual {p0, v0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 452
    :cond_1
    iget p1, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->currentFragmentIndex:I

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    .line 459
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->finish()V

    const-string p1, "------showBackFragment(3)------"

    .line 460
    invoke-static {v1, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 454
    :cond_2
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->showPairedFrament()V

    const-string p1, "------showBackFragment(2)------"

    .line 455
    invoke-static {v1, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public showFragment(ZI)V
    .locals 6

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-----showFragment() connect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ; index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "<---->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->isA2DPConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "A2dpMainActivity"

    invoke-static {v1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->onResumeBg_N54(Z)V

    const v0, 0x7f0901db

    if-eqz p1, :cond_0

    .line 389
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->showA2dpPlayFrament()V

    .line 391
    invoke-virtual {p0, v0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 392
    invoke-virtual {p0, v0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_0
    const p1, 0x7f040014

    .line 395
    invoke-static {p0, p1}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 397
    :cond_1
    invoke-virtual {p0, v0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 398
    invoke-virtual {p0, v0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 401
    :cond_2
    :goto_0
    invoke-virtual {p0, v3}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->setLeftMenuBarVisibility(I)V

    const/4 v0, 0x5

    const v1, 0x7f081738

    const v2, 0x7f081739

    const/high16 v4, 0x7f0a0000

    const/4 v5, 0x1

    if-eq p2, v0, :cond_5

    .line 417
    iget-object p2, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->deviceBtn:Landroid/view/View;

    if-eqz p2, :cond_3

    instance-of v0, p2, Landroid/widget/RadioButton;

    if-eqz v0, :cond_3

    .line 418
    check-cast p2, Landroid/widget/RadioButton;

    invoke-virtual {p2, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 420
    :cond_3
    iget-object p2, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->settingBtn:Landroid/view/View;

    if-eqz p2, :cond_4

    instance-of v0, p2, Landroid/widget/RadioButton;

    if-eqz v0, :cond_4

    .line 421
    check-cast p2, Landroid/widget/RadioButton;

    invoke-virtual {p2, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 423
    :cond_4
    iput-boolean v5, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->isInA2dpView:Z

    .line 424
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->showPairedFrament()V

    .line 425
    invoke-static {p0, p1}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    if-ne p1, p2, :cond_6

    .line 426
    iget-object p1, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->deviceBtn:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 427
    iget-object p1, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->settingBtn:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 428
    iget-object p1, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->deviceBtn:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 429
    iget-object p1, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->settingBtn:Landroid/view/View;

    invoke-virtual {p1, v5}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    .line 404
    :cond_5
    iput-boolean v5, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->isInA2dpView:Z

    .line 405
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->showSettingsFrament()V

    .line 407
    invoke-static {p0, p1}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    if-ne p1, p2, :cond_6

    .line 408
    iget-object p1, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->deviceBtn:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 409
    iget-object p1, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->settingBtn:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 410
    iget-object p1, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->deviceBtn:Landroid/view/View;

    invoke-virtual {p1, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 411
    iget-object p1, p0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->settingBtn:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    :cond_6
    :goto_1
    return-void
.end method

    .method public openGpsPage(Landroid/view/View;)V
        .locals 2

        new-instance p1, Landroid/content/Intent;

        const-class v0, Lcom/hzbhd/bluetooth/a2dp/GpsInfoActivity;

        invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

        invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->startActivity(Landroid/content/Intent;)V

        return-void
    .end method

    .method public openWaze(Landroid/view/View;)V
        .locals 2

        invoke-virtual {p0}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

        move-result-object p1

        const-string v0, "com.waze"

        invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

        move-result-object p1

        if-eqz p1, :cond_nowaze

        const v0, 0x10001000

        invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

        invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;->startActivity(Landroid/content/Intent;)V

        :cond_nowaze
        return-void
    .end method

    .method public openPlaylist(Landroid/view/View;)V
        .locals 1

        const-string v0, "tracks"

        invoke-static {p0, v0}, Lcom/hzbhd/bluetooth/neon/NeonKit;->openList(Landroid/content/Context;Ljava/lang/String;)V

        return-void
    .end method

    .method public openSms(Landroid/view/View;)V
        .locals 1

        const-string v0, "sms"

        invoke-static {p0, v0}, Lcom/hzbhd/bluetooth/neon/NeonKit;->openList(Landroid/content/Context;Ljava/lang/String;)V

        return-void
    .end method

    .method public toggleShuffle(Landroid/view/View;)V
        .locals 0

        invoke-static {p0}, Lcom/hzbhd/bluetooth/neon/NeonKit;->toggleShuffle(Landroid/content/Context;)V

        return-void
    .end method

    .method public toggleRepeat(Landroid/view/View;)V
        .locals 0

        invoke-static {p0}, Lcom/hzbhd/bluetooth/neon/NeonKit;->toggleRepeat(Landroid/content/Context;)V

        return-void
    .end method
