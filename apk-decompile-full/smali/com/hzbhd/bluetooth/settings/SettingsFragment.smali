.class public Lcom/hzbhd/bluetooth/settings/SettingsFragment;
.super Landroid/support/v4/app/ListFragment;
.source "SettingsFragment.java"

# interfaces
.implements Lcom/hzbhd/bluetooth/settings/SettingListAdapter$SettingsAdapterListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/bluetooth/settings/SettingsFragment$ClearUserDataObserver;
    }
.end annotation


# static fields
.field private static final CLEAR_USER_DATA:I = 0x1

.field private static final MODE_AUTO:Ljava/lang/String; = "autoconfirm"

.field private static final MODE_USER:Ljava/lang/String; = "userconfirm"

.field private static final OP_DELAY:I = 0x3

.field private static final OP_FAILED:I = 0x2

.field private static final OP_SUCCESSFUL:I = 0x1

.field private static final PROP_BT_PAIR_MODE:Ljava/lang/String; = "persist.btpair.mode"

.field public static mSettingsFragment:Lcom/hzbhd/bluetooth/settings/SettingsFragment;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private TextChangedWatcher:Landroid/text/TextWatcher;

.field private adapter:Lcom/hzbhd/bluetooth/settings/SettingListAdapter;

.field private auto_answer_item_switch_id:Landroid/widget/Button;

.field private auto_connect_item_switch_id:Landroid/widget/Button;

.field bt_connect_state_n54:Landroid/widget/TextView;

.field private bt_name_edit_id:Landroid/widget/EditText;

.field private bt_pincose_edit_id:Landroid/widget/EditText;

.field private btn_key_0_n54:Landroid/widget/ImageButton;

.field private btn_key_1_n54:Landroid/widget/ImageButton;

.field private btn_key_2_n54:Landroid/widget/ImageButton;

.field private btn_key_3_n54:Landroid/widget/ImageButton;

.field private btn_key_4_n54:Landroid/widget/ImageButton;

.field private btn_key_5_n54:Landroid/widget/ImageButton;

.field private btn_key_6_n54:Landroid/widget/ImageButton;

.field private btn_key_7_n54:Landroid/widget/ImageButton;

.field private btn_key_8_n54:Landroid/widget/ImageButton;

.field private btn_key_9_n54:Landroid/widget/ImageButton;

.field private btn_pincode_delete_n54:Landroid/widget/Button;

.field private btn_pincode_set_n54:Landroid/widget/Button;

.field private clickListener:Landroid/view/View$OnClickListener;

.field private handler:Landroid/os/Handler;

.field private isA2dp:Z

.field private mClearDataObserver:Lcom/hzbhd/bluetooth/settings/SettingsFragment$ClearUserDataObserver;

.field private mHandler:Landroid/os/Handler;

.field private mKeyMaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyOnclickListener:Landroid/view/View$OnClickListener;

.field private final mSettingsObserver:Landroid/database/ContentObserver;

.field private setting_phonebook_sync_text_id:Landroid/widget/Button;

.field private topNaviBar:Landroid/widget/LinearLayout;

.field private topView:Landroid/view/View;

.field tv_connect_devices:Landroid/widget/TextView;

.field tv_pin:Landroid/widget/TextView;

.field tv_this_devices:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    const-string v0, "SettingsFragment"

    .line 49
    iput-object v0, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->TAG:Ljava/lang/String;

    .line 121
    new-instance v0, Lcom/hzbhd/bluetooth/settings/SettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/hzbhd/bluetooth/settings/SettingsFragment$1;-><init>(Lcom/hzbhd/bluetooth/settings/SettingsFragment;)V

    iput-object v0, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->handler:Landroid/os/Handler;

    .line 461
    new-instance v0, Lcom/hzbhd/bluetooth/settings/SettingsFragment$6;

    invoke-direct {v0, p0}, Lcom/hzbhd/bluetooth/settings/SettingsFragment$6;-><init>(Lcom/hzbhd/bluetooth/settings/SettingsFragment;)V

    iput-object v0, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->mHandler:Landroid/os/Handler;

    .line 529
    new-instance v0, Lcom/hzbhd/bluetooth/settings/SettingsFragment$7;

    invoke-direct {v0, p0}, Lcom/hzbhd/bluetooth/settings/SettingsFragment$7;-><init>(Lcom/hzbhd/bluetooth/settings/SettingsFragment;)V

    iput-object v0, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->TextChangedWatcher:Landroid/text/TextWatcher;

    .line 556
    new-instance v0, Lcom/hzbhd/bluetooth/settings/SettingsFragment$8;

    invoke-direct {v0, p0}, Lcom/hzbhd/bluetooth/settings/SettingsFragment$8;-><init>(Lcom/hzbhd/bluetooth/settings/SettingsFragment;)V

    iput-object v0, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->clickListener:Landroid/view/View$OnClickListener;

    .line 592
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->mKeyMaps:Ljava/util/HashMap;

    .line 608
    new-instance v0, Lcom/hzbhd/bluetooth/settings/SettingsFragment$9;

    invoke-direct {v0, p0}, Lcom/hzbhd/bluetooth/settings/SettingsFragment$9;-><init>(Lcom/hzbhd/bluetooth/settings/SettingsFragment;)V

    iput-object v0, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->mKeyOnclickListener:Landroid/view/View$OnClickListener;

    .line 618
    new-instance v0, Lcom/hzbhd/bluetooth/settings/SettingsFragment$10;

    iget-object v1, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/hzbhd/bluetooth/settings/SettingsFragment$10;-><init>(Lcom/hzbhd/bluetooth/settings/SettingsFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->mSettingsObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/hzbhd/bluetooth/settings/SettingsFragment;)Landroid/widget/EditText;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->bt_pincose_edit_id:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/hzbhd/bluetooth/settings/SettingsFragment;)Landroid/os/Handler;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/hzbhd/bluetooth/settings/SettingsFragment;)Landroid/widget/EditText;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->bt_name_edit_id:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$300(Lcom/hzbhd/bluetooth/settings/SettingsFragment;)Landroid/os/Handler;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/hzbhd/bluetooth/settings/SettingsFragment;)Lcom/hzbhd/bluetooth/MainActivity;
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->getMainActivity()Lcom/hzbhd/bluetooth/MainActivity;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/hzbhd/bluetooth/settings/SettingsFragment;)Ljava/util/HashMap;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->mKeyMaps:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$600(Lcom/hzbhd/bluetooth/settings/SettingsFragment;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->updateBluetoothSettings()V

    return-void
.end method

.method private getHfpMainActivity()Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;
    .locals 1

    .line 453
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    return-object v0
.end method

.method private getMainActivity()Lcom/hzbhd/bluetooth/MainActivity;
    .locals 1

    .line 457
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/hzbhd/bluetooth/MainActivity;

    return-object v0
.end method

.method private initPA6(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f040014

    .line 644
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v0, v1, :cond_1

    const v0, 0x7f0900b0

    .line 645
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/hzbhd/bluetooth/settings/SettingsFragment$11;

    invoke-direct {v1, p0}, Lcom/hzbhd/bluetooth/settings/SettingsFragment$11;-><init>(Lcom/hzbhd/bluetooth/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09004e

    .line 662
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f09004f

    .line 663
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 664
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getBTMic()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const v1, 0x7f04006e

    .line 665
    invoke-static {v1}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    const v1, 0x7f0d018e

    .line 666
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    const v1, 0x7f04006d

    .line 668
    invoke-static {v1}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    const v1, 0x7f0d018d

    .line 669
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 672
    :goto_0
    new-instance v1, Lcom/hzbhd/bluetooth/settings/-$$Lambda$SettingsFragment$ov4RPBqdVrFpk2jtZcdCGTpve54;

    invoke-direct {v1, v0, p1}, Lcom/hzbhd/bluetooth/settings/-$$Lambda$SettingsFragment$ov4RPBqdVrFpk2jtZcdCGTpve54;-><init>(Landroid/widget/Button;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method static synthetic lambda$initPA6$0(Landroid/widget/Button;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 1

    .line 673
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getBTMic()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 674
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->setBTMic(I)V

    const p2, 0x7f04006d

    .line 675
    invoke-static {p2}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResId(I)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/Button;->setBackgroundResource(I)V

    const p0, 0x7f0d018d

    .line 676
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 678
    :cond_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->setBTMic(I)V

    const p2, 0x7f04006e

    .line 679
    invoke-static {p2}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResId(I)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/Button;->setBackgroundResource(I)V

    const p0, 0x7f0d018e

    .line 680
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/hzbhd/bluetooth/settings/SettingsFragment;
    .locals 1

    .line 85
    new-instance v0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;

    invoke-direct {v0}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;-><init>()V

    .line 86
    invoke-virtual {v0, p0}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private updateBluetoothSettings()V
    .locals 3

    .line 627
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 629
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hzbhd.bluetooth.extra.CONNECTION_STATE"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    .line 630
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->bt_connect_state_n54:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    if-eqz v2, :cond_1

    const v1, 0x7f0d0131

    .line 632
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    const v1, 0x7f0d0132

    .line 634
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public doOnClick(Ljava/lang/String;)V
    .locals 3

    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----doOnClick() itemid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingsFragment"

    invoke-static {v1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "1"

    .line 490
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 491
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->isBluetoothAutoReconnectEnable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 492
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->setBluetoothAutoReconnect(Z)V

    goto :goto_0

    .line 494
    :cond_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->setBluetoothAutoReconnect(Z)V

    .line 496
    :goto_0
    invoke-virtual {p0, v2}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->updateSettingItems(Z)V

    goto/16 :goto_2

    :cond_1
    const-string v0, "2"

    .line 497
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 498
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->isHfpAutoAnswer()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 499
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->setHfpAutoAnswer(Z)V

    goto :goto_1

    .line 501
    :cond_2
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->setHfpAutoAnswer(Z)V

    .line 503
    :goto_1
    invoke-virtual {p0, v2}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->updateSettingItems(Z)V

    goto :goto_2

    :cond_3
    const-string v0, "3"

    .line 504
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 505
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->getMainActivity()Lcom/hzbhd/bluetooth/MainActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/MainActivity;->initPinCodeWindow()V

    .line 506
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->getMainActivity()Lcom/hzbhd/bluetooth/MainActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->topView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/hzbhd/bluetooth/MainActivity;->showPinCodeWindow(Landroid/view/View;)V

    goto :goto_2

    :cond_4
    const-string v0, "4"

    .line 507
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 508
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->getMainActivity()Lcom/hzbhd/bluetooth/MainActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/MainActivity;->isHfpConnected()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 509
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object p1

    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2, v2, v2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->reqPbapDownloadAllVcards(Ljava/lang/String;IIZ)Z

    .line 510
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->getMainActivity()Lcom/hzbhd/bluetooth/MainActivity;

    move-result-object p1

    const v0, 0x7f0d0248

    const/16 v2, 0x7d0

    invoke-virtual {p1, v0, v2}, Lcom/hzbhd/bluetooth/MainActivity;->showPopupInfoDialog(II)V

    .line 511
    invoke-virtual {p0, v1}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->updateSettingItems(Z)V

    goto :goto_2

    :cond_5
    const-string v0, "0"

    .line 513
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 514
    iget-object p1, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->adapter:Lcom/hzbhd/bluetooth/settings/SettingListAdapter;

    if-eqz p1, :cond_6

    .line 515
    invoke-virtual {p1, v1}, Lcom/hzbhd/bluetooth/settings/SettingListAdapter;->setShowInputMethod(Z)V

    .line 516
    iget-object p1, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->adapter:Lcom/hzbhd/bluetooth/settings/SettingListAdapter;

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/settings/SettingListAdapter;->notifyDataSetChanged()V

    :cond_6
    :goto_2
    return-void
.end method

.method public getTopActivity()Lcom/hzbhd/bluetooth/MainActivity;
    .locals 1

    .line 640
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/hzbhd/bluetooth/MainActivity;

    return-object v0
.end method

.method public hideInputMethod()V
    .locals 2

    .line 523
    iget-object v0, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->adapter:Lcom/hzbhd/bluetooth/settings/SettingListAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hzbhd/bluetooth/settings/SettingListAdapter;->isShowInputMethod()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->adapter:Lcom/hzbhd/bluetooth/settings/SettingListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hzbhd/bluetooth/settings/SettingListAdapter;->setShowInputMethod(Z)V

    .line 525
    iget-object v0, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->adapter:Lcom/hzbhd/bluetooth/settings/SettingListAdapter;

    invoke-virtual {v0}, Lcom/hzbhd/bluetooth/settings/SettingListAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public initKeyMaps()V
    .locals 3

    .line 595
    iget-object v0, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->mKeyMaps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 596
    iget-object v0, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->mKeyMaps:Ljava/util/HashMap;

    const v1, 0x7f090061

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    iget-object v0, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->mKeyMaps:Ljava/util/HashMap;

    const v1, 0x7f090064

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    iget-object v0, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->mKeyMaps:Ljava/util/HashMap;

    const v1, 0x7f090067

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    iget-object v0, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->mKeyMaps:Ljava/util/HashMap;

    const v1, 0x7f09006a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    iget-object v0, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->mKeyMaps:Ljava/util/HashMap;

    const v1, 0x7f09006d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    iget-object v0, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->mKeyMaps:Ljava/util/HashMap;

    const v1, 0x7f090070

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    iget-object v0, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->mKeyMaps:Ljava/util/HashMap;

    const v1, 0x7f090073

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    iget-object v0, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->mKeyMaps:Ljava/util/HashMap;

    const v1, 0x7f090076

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    iget-object v0, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->mKeyMaps:Ljava/util/HashMap;

    const v1, 0x7f090079

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    iget-object v0, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->mKeyMaps:Ljava/util/HashMap;

    const v1, 0x7f09007c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 107
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 112
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onAttach(Landroid/app/Activity;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 117
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 118
    sput-object p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->mSettingsFragment:Lcom/hzbhd/bluetooth/settings/SettingsFragment;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    .line 131
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/ListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f040032

    .line 137
    invoke-static {p3}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResId(I)I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09023f

    .line 138
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->topView:Landroid/view/View;

    const p2, 0x7f090052

    .line 139
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->bt_name_edit_id:Landroid/widget/EditText;

    const p2, 0x7f090054

    .line 140
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->bt_pincose_edit_id:Landroid/widget/EditText;

    .line 141
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->initKeyMaps()V

    const p2, 0x7f0900ac

    .line 142
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->btn_pincode_set_n54:Landroid/widget/Button;

    const p2, 0x7f0900ab

    .line 143
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->btn_pincode_delete_n54:Landroid/widget/Button;

    const p2, 0x7f090061

    .line 144
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->btn_key_0_n54:Landroid/widget/ImageButton;

    const p2, 0x7f090064

    .line 145
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->btn_key_1_n54:Landroid/widget/ImageButton;

    const p2, 0x7f090067

    .line 146
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->btn_key_2_n54:Landroid/widget/ImageButton;

    const p2, 0x7f09006a

    .line 147
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->btn_key_3_n54:Landroid/widget/ImageButton;

    const p2, 0x7f09006d

    .line 148
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->btn_key_4_n54:Landroid/widget/ImageButton;

    const p2, 0x7f090070

    .line 149
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->btn_key_5_n54:Landroid/widget/ImageButton;

    const p2, 0x7f090073

    .line 150
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->btn_key_6_n54:Landroid/widget/ImageButton;

    const p2, 0x7f090076

    .line 151
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->btn_key_7_n54:Landroid/widget/ImageButton;

    const p2, 0x7f090079

    .line 152
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->btn_key_8_n54:Landroid/widget/ImageButton;

    const p2, 0x7f09007c

    .line 153
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->btn_key_9_n54:Landroid/widget/ImageButton;

    const p2, 0x7f090246

    .line 154
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->tv_connect_devices:Landroid/widget/TextView;

    const p2, 0x7f090258

    .line 155
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->tv_this_devices:Landroid/widget/TextView;

    const p2, 0x7f090255

    .line 156
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->tv_pin:Landroid/widget/TextView;

    .line 157
    iget-object p2, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->btn_pincode_set_n54:Landroid/widget/Button;

    if-eqz p2, :cond_0

    .line 159
    new-instance p3, Lcom/hzbhd/bluetooth/settings/SettingsFragment$2;

    invoke-direct {p3, p0}, Lcom/hzbhd/bluetooth/settings/SettingsFragment$2;-><init>(Lcom/hzbhd/bluetooth/settings/SettingsFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object p2, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->btn_pincode_delete_n54:Landroid/widget/Button;

    new-instance p3, Lcom/hzbhd/bluetooth/settings/SettingsFragment$3;

    invoke-direct {p3, p0}, Lcom/hzbhd/bluetooth/settings/SettingsFragment$3;-><init>(Lcom/hzbhd/bluetooth/settings/SettingsFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object p2, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->btn_key_0_n54:Landroid/widget/ImageButton;

    iget-object p3, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->mKeyOnclickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object p2, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->btn_key_1_n54:Landroid/widget/ImageButton;

    iget-object p3, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->mKeyOnclickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iget-object p2, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->btn_key_2_n54:Landroid/widget/ImageButton;

    iget-object p3, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->mKeyOnclickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object p2, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->btn_key_3_n54:Landroid/widget/ImageButton;

    iget-object p3, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->mKeyOnclickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object p2, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->btn_key_4_n54:Landroid/widget/ImageButton;

    iget-object p3, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->mKeyOnclickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object p2, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->btn_key_5_n54:Landroid/widget/ImageButton;

    iget-object p3, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->mKeyOnclickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object p2, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->btn_key_6_n54:Landroid/widget/ImageButton;

    iget-object p3, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->mKeyOnclickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-object p2, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->btn_key_7_n54:Landroid/widget/ImageButton;

    iget-object p3, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->mKeyOnclickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object p2, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->btn_key_8_n54:Landroid/widget/ImageButton;

    iget-object p3, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->mKeyOnclickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object p2, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->btn_key_9_n54:Landroid/widget/ImageButton;

    iget-object p3, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->mKeyOnclickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const p2, 0x7f090217

    .line 198
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->setting_phonebook_sync_text_id:Landroid/widget/Button;

    if-eqz p2, :cond_1

    .line 200
    iget-object p3, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const p2, 0x7f090041

    .line 202
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->auto_connect_item_switch_id:Landroid/widget/Button;

    if-eqz p2, :cond_2

    .line 204
    iget-object p3, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    const p2, 0x7f090040

    .line 206
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->auto_answer_item_switch_id:Landroid/widget/Button;

    if-eqz p2, :cond_3

    .line 208
    iget-object p3, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    :cond_3
    iget-object p2, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->bt_name_edit_id:Landroid/widget/EditText;

    if-eqz p2, :cond_4

    .line 211
    new-instance p3, Lcom/hzbhd/bluetooth/settings/SettingsFragment$4;

    invoke-direct {p3, p0}, Lcom/hzbhd/bluetooth/settings/SettingsFragment$4;-><init>(Lcom/hzbhd/bluetooth/settings/SettingsFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 238
    :cond_4
    iget-object p2, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->bt_pincose_edit_id:Landroid/widget/EditText;

    if-eqz p2, :cond_5

    .line 239
    new-instance p3, Lcom/hzbhd/bluetooth/settings/SettingsFragment$5;

    invoke-direct {p3, p0}, Lcom/hzbhd/bluetooth/settings/SettingsFragment$5;-><init>(Lcom/hzbhd/bluetooth/settings/SettingsFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    :cond_5
    const p2, 0x7f040051

    .line 265
    invoke-static {p2}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResBool(I)Z

    move-result p2

    if-eqz p2, :cond_6

    const p2, 0x7f09004b

    .line 266
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->bt_connect_state_n54:Landroid/widget/TextView;

    .line 268
    :cond_6
    invoke-direct {p0, p1}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->initPA6(Landroid/view/View;)V

    const p2, 0x7f0900b2

    .line 271
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_7

    const-string p3, "persist.btpair.mode"

    const-string/jumbo v0, "userconfirm"

    .line 272
    invoke-static {p3, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "autoconfirm"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    const/16 p3, 0x8

    .line 273
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 299
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onDestroy()V

    const-string v0, "SettingsFragment"

    const-string v1, "----SettingsFragment.onDestroy()----"

    .line 300
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 305
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onDetach()V

    .line 307
    :try_start_0
    const-class v0, Landroid/support/v4/app/Fragment;

    const-string v1, "mChildFragmentManager"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 308
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v1, 0x0

    .line 309
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 313
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 311
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    if-eqz p2, :cond_0

    const p1, 0x7f0901f2

    .line 362
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 363
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "------onListItemClick = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "sw-ap006"

    invoke-static {p3, p2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->doOnClick(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    .line 319
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 2

    .line 324
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onPause()V

    .line 325
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->hideInputMethod()V

    const-string v0, "SettingsFragment"

    const-string v1, "----SettingsFragment.onPause()----"

    .line 326
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 331
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onResume()V

    const/4 v0, 0x0

    .line 332
    invoke-virtual {p0, v0}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->updateSettingItems(Z)V

    .line 334
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hzbhd.bluetooth.extra.CONNECTION_STATE"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    .line 335
    :cond_0
    iget-object v1, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->bt_connect_state_n54:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    const v0, 0x7f0d0131

    .line 337
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    const v0, 0x7f0d0132

    .line 339
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    :goto_0
    const-string v0, "SettingsFragment"

    const-string v1, "----SettingsFragment.onResume()----"

    .line 343
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->tv_connect_devices:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v1

    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothRemoteDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    :cond_3
    iget-object v0, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->tv_this_devices:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothLocalAdapterName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    :cond_4
    iget-object v0, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->tv_pin:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getPinCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 351
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 356
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 280
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/ListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 282
    new-instance p1, Lcom/hzbhd/bluetooth/settings/SettingListAdapter;

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/hzbhd/bluetooth/settings/SettingListAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->adapter:Lcom/hzbhd/bluetooth/settings/SettingListAdapter;

    .line 283
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "ItemValues"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object p1

    .line 284
    iget-object p2, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->adapter:Lcom/hzbhd/bluetooth/settings/SettingListAdapter;

    invoke-virtual {p2, p1}, Lcom/hzbhd/bluetooth/settings/SettingListAdapter;->setItemValues([Z)V

    .line 285
    iget-object p1, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->adapter:Lcom/hzbhd/bluetooth/settings/SettingListAdapter;

    invoke-virtual {p1, p0}, Lcom/hzbhd/bluetooth/settings/SettingListAdapter;->setListener(Lcom/hzbhd/bluetooth/settings/SettingListAdapter$SettingsAdapterListener;)V

    .line 287
    iget-object p1, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->adapter:Lcom/hzbhd/bluetooth/settings/SettingListAdapter;

    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 288
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 289
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0817eb

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 290
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "hzbhd.bluetooth.extra.CONNECTION_STATE"

    .line 291
    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iget-object v0, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x0

    .line 290
    invoke-virtual {p1, p2, v1, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo p1, "sw-ap006"

    const-string p2, "------SettingsFragment.onViewCreated()----"

    .line 293
    invoke-static {p1, p2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTopNaviBarVisible(Z)V
    .locals 1

    .line 93
    iput-boolean p1, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->isA2dp:Z

    if-eqz p1, :cond_0

    .line 96
    :try_start_0
    iget-object p1, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->topNaviBar:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 98
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->topNaviBar:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 101
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public updateSettingItems(Z)V
    .locals 8

    .line 375
    iget-object p1, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->adapter:Lcom/hzbhd/bluetooth/settings/SettingListAdapter;

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Z

    const/4 v1, 0x0

    .line 377
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->isBluetoothAutoReconnectEnable()Z

    move-result v2

    aput-boolean v2, v0, v1

    const/4 v1, 0x1

    .line 378
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->isHfpAutoAnswer()Z

    move-result v2

    aput-boolean v2, v0, v1

    const/4 v1, 0x2

    .line 379
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->isPhoneBookLoading()Z

    move-result v2

    aput-boolean v2, v0, v1

    .line 376
    invoke-virtual {p1, v0}, Lcom/hzbhd/bluetooth/settings/SettingListAdapter;->setItemValues([Z)V

    .line 380
    iget-object p1, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->adapter:Lcom/hzbhd/bluetooth/settings/SettingListAdapter;

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/settings/SettingListAdapter;->notifyDataSetChanged()V

    .line 382
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->bt_name_edit_id:Landroid/widget/EditText;

    if-eqz p1, :cond_27

    .line 383
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothLocalAdapterName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 385
    iget-object p1, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->bt_pincose_edit_id:Landroid/widget/EditText;

    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getPinCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 387
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->isBluetoothAutoReconnectEnable()Z

    move-result p1

    .line 388
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->isHfpAutoAnswer()Z

    move-result v0

    const v1, 0x7f040014

    .line 389
    invoke-static {v1}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v2

    const/16 v3, 0xc

    const v4, 0x7f0a0016

    const v5, 0x7f04006e

    const v6, 0x7f04006d

    if-ne v2, v3, :cond_3

    .line 390
    iget-object v2, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->auto_connect_item_switch_id:Landroid/widget/Button;

    const v3, 0x7f0801e0

    const v7, 0x7f0801df

    if-eqz p1, :cond_1

    move p1, v3

    goto :goto_0

    :cond_1
    move p1, v7

    :goto_0
    invoke-virtual {v2, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 391
    iget-object p1, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->auto_answer_item_switch_id:Landroid/widget/Button;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v3, v7

    :goto_1
    invoke-virtual {p1, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_18

    .line 393
    :cond_3
    invoke-static {v1}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v2

    const/16 v3, 0x26

    if-ne v2, v3, :cond_6

    .line 394
    iget-object v2, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->auto_connect_item_switch_id:Landroid/widget/Button;

    const v3, 0x7f0802f2

    const v7, 0x7f0802f1

    if-eqz p1, :cond_4

    move p1, v3

    goto :goto_2

    :cond_4
    move p1, v7

    :goto_2
    invoke-virtual {v2, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 395
    iget-object p1, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->auto_answer_item_switch_id:Landroid/widget/Button;

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    move v3, v7

    :goto_3
    invoke-virtual {p1, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_18

    .line 396
    :cond_6
    invoke-static {v1}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v2

    const v3, 0x7f0a001a

    if-ne v2, v3, :cond_9

    .line 397
    iget-object v2, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->auto_connect_item_switch_id:Landroid/widget/Button;

    const v3, 0x7f080f1f

    const v7, 0x7f080f1e

    if-eqz p1, :cond_7

    move p1, v3

    goto :goto_4

    :cond_7
    move p1, v7

    :goto_4
    invoke-virtual {v2, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 398
    iget-object p1, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->auto_answer_item_switch_id:Landroid/widget/Button;

    if-eqz v0, :cond_8

    goto :goto_5

    :cond_8
    move v3, v7

    :goto_5
    invoke-virtual {p1, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_18

    .line 399
    :cond_9
    invoke-static {v1}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v2

    const/16 v3, 0x34

    if-ne v2, v3, :cond_c

    .line 400
    iget-object v2, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->auto_connect_item_switch_id:Landroid/widget/Button;

    if-eqz p1, :cond_a

    invoke-static {v5}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResId(I)I

    move-result p1

    goto :goto_6

    :cond_a
    invoke-static {v6}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResId(I)I

    move-result p1

    :goto_6
    invoke-virtual {v2, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 401
    iget-object p1, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->auto_answer_item_switch_id:Landroid/widget/Button;

    if-eqz v0, :cond_b

    invoke-static {v5}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResId(I)I

    move-result v0

    goto :goto_7

    :cond_b
    invoke-static {v6}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResId(I)I

    move-result v0

    :goto_7
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_18

    .line 402
    :cond_c
    invoke-static {v1}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v2

    .line 403
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f0a0009

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    if-ne v2, v3, :cond_f

    .line 404
    iget-object v2, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->auto_connect_item_switch_id:Landroid/widget/Button;

    const v3, 0x7f0803bb

    const v7, 0x7f0803ba

    if-eqz p1, :cond_d

    move p1, v3

    goto :goto_8

    :cond_d
    move p1, v7

    :goto_8
    invoke-virtual {v2, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 405
    iget-object p1, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->auto_answer_item_switch_id:Landroid/widget/Button;

    if-eqz v0, :cond_e

    goto :goto_9

    :cond_e
    move v3, v7

    :goto_9
    invoke-virtual {p1, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_18

    .line 406
    :cond_f
    invoke-static {v1}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v2

    .line 407
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f0a000c

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    if-ne v2, v3, :cond_12

    .line 408
    iget-object v2, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->auto_connect_item_switch_id:Landroid/widget/Button;

    const v3, 0x7f08079a

    const v7, 0x7f080799

    if-eqz p1, :cond_10

    move p1, v3

    goto :goto_a

    :cond_10
    move p1, v7

    :goto_a
    invoke-virtual {v2, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 409
    iget-object p1, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->auto_answer_item_switch_id:Landroid/widget/Button;

    if-eqz v0, :cond_11

    goto :goto_b

    :cond_11
    move v3, v7

    :goto_b
    invoke-virtual {p1, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_18

    .line 411
    :cond_12
    invoke-static {v1}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v2

    .line 412
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f0a000a

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    if-ne v2, v3, :cond_15

    .line 415
    iget-object v2, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->auto_connect_item_switch_id:Landroid/widget/Button;

    if-eqz p1, :cond_13

    invoke-static {v5}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResId(I)I

    move-result p1

    goto :goto_c

    :cond_13
    invoke-static {v6}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResId(I)I

    move-result p1

    :goto_c
    invoke-virtual {v2, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 416
    iget-object p1, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->auto_answer_item_switch_id:Landroid/widget/Button;

    if-eqz v0, :cond_14

    invoke-static {v5}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResId(I)I

    move-result v0

    goto :goto_d

    :cond_14
    invoke-static {v6}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResId(I)I

    move-result v0

    :goto_d
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_18

    .line 417
    :cond_15
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->getTopActivity()Lcom/hzbhd/bluetooth/MainActivity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(Landroid/content/Context;I)I

    move-result v2

    .line 418
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f0a000b

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    if-ne v2, v3, :cond_18

    .line 419
    iget-object v2, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->auto_connect_item_switch_id:Landroid/widget/Button;

    const v3, 0x7f0805e7

    const v7, 0x7f0805e6

    if-eqz p1, :cond_16

    move p1, v3

    goto :goto_e

    :cond_16
    move p1, v7

    :goto_e
    invoke-virtual {v2, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 420
    iget-object p1, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->auto_answer_item_switch_id:Landroid/widget/Button;

    if-eqz v0, :cond_17

    goto :goto_f

    :cond_17
    move v3, v7

    :goto_f
    invoke-virtual {p1, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_18

    .line 422
    :cond_18
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->getTopActivity()Lcom/hzbhd/bluetooth/MainActivity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(Landroid/content/Context;I)I

    move-result v2

    .line 423
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    if-ne v2, v3, :cond_1b

    .line 424
    iget-object v2, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->auto_connect_item_switch_id:Landroid/widget/Button;

    if-eqz p1, :cond_19

    invoke-static {v5}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResId(I)I

    move-result p1

    goto :goto_10

    :cond_19
    invoke-static {v6}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResId(I)I

    move-result p1

    :goto_10
    invoke-virtual {v2, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 425
    iget-object p1, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->auto_answer_item_switch_id:Landroid/widget/Button;

    if-eqz v0, :cond_1a

    invoke-static {v5}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResId(I)I

    move-result v0

    goto :goto_11

    :cond_1a
    invoke-static {v6}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResId(I)I

    move-result v0

    :goto_11
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_18

    .line 427
    :cond_1b
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->getTopActivity()Lcom/hzbhd/bluetooth/MainActivity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(Landroid/content/Context;I)I

    move-result v2

    .line 428
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f0a0007

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    if-ne v2, v3, :cond_1e

    .line 429
    iget-object v2, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->auto_connect_item_switch_id:Landroid/widget/Button;

    const v3, 0x7f080268

    const v7, 0x7f080267

    if-eqz p1, :cond_1c

    move p1, v3

    goto :goto_12

    :cond_1c
    move p1, v7

    :goto_12
    invoke-virtual {v2, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 430
    iget-object p1, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->auto_answer_item_switch_id:Landroid/widget/Button;

    if-eqz v0, :cond_1d

    goto :goto_13

    :cond_1d
    move v3, v7

    :goto_13
    invoke-virtual {p1, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_18

    .line 432
    :cond_1e
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->getTopActivity()Lcom/hzbhd/bluetooth/MainActivity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f0a0018

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    if-ne v2, v3, :cond_21

    .line 433
    iget-object v2, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->auto_connect_item_switch_id:Landroid/widget/Button;

    const v3, 0x7f081529

    const v7, 0x7f081528

    if-eqz p1, :cond_1f

    move p1, v3

    goto :goto_14

    :cond_1f
    move p1, v7

    :goto_14
    invoke-virtual {v2, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 434
    iget-object p1, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->auto_answer_item_switch_id:Landroid/widget/Button;

    if-eqz v0, :cond_20

    goto :goto_15

    :cond_20
    move v3, v7

    :goto_15
    invoke-virtual {p1, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_18

    .line 437
    :cond_21
    iget-object v2, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->auto_connect_item_switch_id:Landroid/widget/Button;

    if-eqz p1, :cond_22

    invoke-static {v5}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResId(I)I

    move-result p1

    goto :goto_16

    :cond_22
    invoke-static {v6}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResId(I)I

    move-result p1

    :goto_16
    invoke-virtual {v2, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 438
    iget-object p1, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->auto_answer_item_switch_id:Landroid/widget/Button;

    if-eqz v0, :cond_23

    invoke-static {v5}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResId(I)I

    move-result v0

    goto :goto_17

    :cond_23
    invoke-static {v6}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResId(I)I

    move-result v0

    :goto_17
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 441
    :goto_18
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->getTopActivity()Lcom/hzbhd/bluetooth/MainActivity;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(Landroid/content/Context;I)I

    move-result p1

    .line 442
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-ne p1, v0, :cond_25

    .line 443
    iget-object p1, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->setting_phonebook_sync_text_id:Landroid/widget/Button;

    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->isPhoneBookLoading()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-static {v5}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResId(I)I

    move-result v0

    goto :goto_19

    :cond_24
    invoke-static {v6}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResId(I)I

    move-result v0

    :goto_19
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_1b

    .line 445
    :cond_25
    iget-object p1, p0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->setting_phonebook_sync_text_id:Landroid/widget/Button;

    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->isPhoneBookLoading()Z

    move-result v0

    if-eqz v0, :cond_26

    const v0, 0x7f0d0220

    goto :goto_1a

    :cond_26
    const v0, 0x7f0d021f

    :goto_1a
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    :cond_27
    :goto_1b
    return-void
.end method
