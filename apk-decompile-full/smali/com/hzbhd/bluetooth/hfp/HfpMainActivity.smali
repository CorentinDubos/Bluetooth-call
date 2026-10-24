.class public Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;
.super Lcom/hzbhd/bluetooth/MainActivity;
.source "HfpMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$DisconnectionTask;
    }
.end annotation


# static fields
.field public static LEFT_MAIN_BTNS_IDS:[I = null

.field public static final MUSICTOP:I = 0x1f4a

.field public static isSplitConfigChanged:Z


# instance fields
.field private final TAG:Ljava/lang/String;

.field private bt_call_tv_n54:Landroid/view/View;

.field private bt_music_tv_n54:Landroid/view/View;

.field private connectRelative:Landroid/widget/RelativeLayout;

.field private container:Landroid/view/View;

.field private digitsStr:Ljava/lang/String;

.field private digitsText:Landroid/widget/TextView;

.field private disconnectLinear:Landroid/widget/LinearLayout;

.field private et_bluetooth_name:Landroid/widget/EditText;

.field private et_bluetooth_pin:Landroid/widget/EditText;

.field private firstPA6In:Z

.field private fragment_back_n54:Landroid/view/View;

.field private hfp_main_margin_n54:Landroid/view/View;

.field private ib_radio_n54_ui_height:Landroid/widget/CheckBox;

.field private inCallFlag:Z

.field private leftBtns:[Landroid/view/View;

.field private left_menu_bar_id:Landroid/view/View;

.field private mCallFragment:Lcom/hzbhd/bluetooth/call/CallFragment;

.field private mCallLogFragment:Lcom/hzbhd/bluetooth/calllog/CallLogFragment;

.field private mDialpadFragment:Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;

.field private mH1Handler:Landroid/os/Handler;

.field private mHfpCallbackListener:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHfpCallbackListener;

.field private mPbapCallbackListener:Lcom/hzbhd/bluetooth/BaseBluetoothPbapCallbackListener;

.field private mPhoneContactFragment:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

.field public mSettingsFragment:Lcom/hzbhd/bluetooth/settings/SettingsFragment;

.field private menubar_button_eq_n54:Landroid/view/View;

.field private rl_history_n54:Landroid/view/View;

.field private root_fl_n54:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/MainActivity;-><init>()V

    const-string v0, "HfpMainActivity"

    .line 61
    iput-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->TAG:Ljava/lang/String;

    .line 994
    new-instance v0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$3;

    invoke-direct {v0, p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$3;-><init>(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)V

    iput-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mHfpCallbackListener:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHfpCallbackListener;

    .line 1294
    new-instance v0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$4;

    invoke-direct {v0, p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$4;-><init>(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)V

    iput-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mPbapCallbackListener:Lcom/hzbhd/bluetooth/BaseBluetoothPbapCallbackListener;

    const/4 v0, 0x1

    .line 1476
    iput-boolean v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->firstPA6In:Z

    return-void
.end method

.method static synthetic access$000(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)Landroid/widget/EditText;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->et_bluetooth_name:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)Landroid/widget/EditText;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->et_bluetooth_pin:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$200(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->disconnectNP2()V

    return-void
.end method

.method static synthetic access$300(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;Z)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->setPC6ConnectShow(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)Lcom/hzbhd/bluetooth/call/CallFragment;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mCallFragment:Lcom/hzbhd/bluetooth/call/CallFragment;

    return-object p0
.end method

.method static synthetic access$500(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mDialpadFragment:Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;

    return-object p0
.end method

.method static synthetic access$600(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->selectDialpad()V

    return-void
.end method

.method static synthetic access$700(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)Lcom/hzbhd/bluetooth/calllog/CallLogFragment;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mCallLogFragment:Lcom/hzbhd/bluetooth/calllog/CallLogFragment;

    return-object p0
.end method

.method static synthetic access$800(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;Z)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->setPA6mainRadio(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mPhoneContactFragment:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    return-object p0
.end method

.method private connectNP2()V
    .locals 2

    .line 313
    iget-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->connectRelative:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->disconnectLinear:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 315
    :cond_1
    iget-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mPairedListFragment:Lcom/hzbhd/bluetooth/paired/PairedListFragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mPairedListFragment:Lcom/hzbhd/bluetooth/paired/PairedListFragment;

    invoke-virtual {v0}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->connectNP2()V

    :cond_2
    return-void
.end method

.method private disconnectNP2()V
    .locals 2

    .line 318
    iget-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->connectRelative:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->disconnectLinear:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 320
    :cond_1
    iget-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mPairedListFragment:Lcom/hzbhd/bluetooth/paired/PairedListFragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mPairedListFragment:Lcom/hzbhd/bluetooth/paired/PairedListFragment;

    invoke-virtual {v0}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->disConnectNP2()V

    :cond_2
    return-void
.end method

.method private initNP2()V
    .locals 3

    const v0, 0x7f040014

    .line 241
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v0, v1, :cond_1

    const v0, 0x7f09010c

    .line 242
    invoke-virtual {p0, v0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->connectRelative:Landroid/widget/RelativeLayout;

    const v0, 0x7f09012b

    .line 243
    invoke-virtual {p0, v0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->disconnectLinear:Landroid/widget/LinearLayout;

    .line 244
    iget-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->et_bluetooth_name:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 245
    new-instance v1, Lcom/hzbhd/bluetooth/hfp/-$$Lambda$HfpMainActivity$xy-AUUIumSa30s3cGkhSzbCbmpo;

    invoke-direct {v1, p0}, Lcom/hzbhd/bluetooth/hfp/-$$Lambda$HfpMainActivity$xy-AUUIumSa30s3cGkhSzbCbmpo;-><init>(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 254
    iget-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->et_bluetooth_name:Landroid/widget/EditText;

    new-instance v1, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$1;

    invoke-direct {v1, p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$1;-><init>(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->et_bluetooth_pin:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 278
    new-instance v1, Lcom/hzbhd/bluetooth/hfp/-$$Lambda$HfpMainActivity$_s3lSQQTpPe40XcxYYmRHCW4hLw;

    invoke-direct {v1, p0}, Lcom/hzbhd/bluetooth/hfp/-$$Lambda$HfpMainActivity$_s3lSQQTpPe40XcxYYmRHCW4hLw;-><init>(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 287
    iget-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->et_bluetooth_pin:Landroid/widget/EditText;

    new-instance v1, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$2;

    invoke-direct {v1, p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$2;-><init>(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    :cond_1
    return-void
.end method

.method private initPA6()V
    .locals 3

    .line 1478
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->isHfpConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->setPA6mainRadio(Z)V

    :cond_0
    const v0, 0x7f040014

    .line 1479
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v0, v1, :cond_1

    const v0, 0x7f0901ce

    .line 1480
    invoke-virtual {p0, v0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;

    .line 1481
    new-instance v1, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$11;

    invoke-direct {v1, p0, v0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$11;-><init>(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;Lcom/hzbhd/bluetooth/ui/_a6/MainView;)V

    invoke-virtual {v0, v1}, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->setOnCollectionClickListener(Lcom/hzbhd/bluetooth/ui/_a6/MainView$OnCollectionClickListener;)V

    :cond_1
    return-void
.end method

.method private initPA6OnCreate()V
    .locals 3

    const v0, 0x7f040015

    .line 1527
    invoke-static {p0, v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResStr(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "A6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1528
    iget v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->currentFragmentIndex:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 1529
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "a6_choose_index"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_0

    const v1, 0x7f0901ce

    .line 1531
    invoke-virtual {p0, v1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f09025e

    .line 1532
    invoke-virtual {p0, v1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1533
    iput v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->currentFragmentIndex:I

    .line 1535
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->isHfpConnected()Z

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->showFragment(ZI)V

    :cond_0
    return-void
.end method

.method private initPC6()V
    .locals 3

    const v0, 0x7f040014

    .line 1606
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    const v0, 0x7f09025c

    .line 1607
    invoke-virtual {p0, v0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/bluetooth/hfp/-$$Lambda$HfpMainActivity$c5gu0nXOqj5j8CJ_iAcMfjqY4qk;->INSTANCE:Lcom/hzbhd/bluetooth/hfp/-$$Lambda$HfpMainActivity$c5gu0nXOqj5j8CJ_iAcMfjqY4qk;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private initUI_H1()V
    .locals 3

    .line 1408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initUI_H1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f040015

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResStr(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "HfpMainActivity"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    invoke-static {v1}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResStr(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "H1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f09014e

    .line 1410
    invoke-virtual {p0, v0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f09014c

    .line 1411
    invoke-virtual {p0, v0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f090146

    .line 1412
    invoke-virtual {p0, v0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$5;

    invoke-direct {v1, p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$5;-><init>(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090148

    .line 1424
    invoke-virtual {p0, v0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$6;

    invoke-direct {v1, p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$6;-><init>(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090144

    .line 1434
    invoke-virtual {p0, v0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$7;

    invoke-direct {v1, p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$7;-><init>(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090147

    .line 1441
    invoke-virtual {p0, v0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$8;

    invoke-direct {v1, p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$8;-><init>(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090145

    .line 1448
    invoke-virtual {p0, v0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$9;

    invoke-direct {v1, p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$9;-><init>(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1455
    iget-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mH1Handler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mH1Handler:Landroid/os/Handler;

    .line 1456
    :cond_1
    new-instance v0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$10;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$10;-><init>(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mH1Handler:Landroid/os/Handler;

    return-void
.end method

.method private isCurrentUiType(I)Z
    .locals 2

    const v0, 0x7f040014

    .line 446
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic lambda$initPC6$3(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private processExtraData()V
    .locals 4

    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-------processExtraData() action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HfpMainActivity"

    invoke-static {v1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.hzbhd.intent.action.btphone"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 512
    iput-boolean v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->inCallFlag:Z

    goto/16 :goto_2

    .line 513
    :cond_0
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.CALL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 514
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 516
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 517
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 518
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v2, "-------finish(1)--------"

    .line 521
    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->finish()V

    .line 524
    :cond_3
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-----------number = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "00:00:00:00:00:00"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    .line 528
    :cond_4
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v1

    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->reqHfpDialCall(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    .line 531
    iput-boolean v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->inCallFlag:Z

    :goto_2
    return-void
.end method

.method private processOnResume()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "last_manually_selected_tab"

    const/4 v1, -0x1

    .line 415
    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->getPreference(Ljava/lang/String;I)I

    move-result v0

    .line 416
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->isHfpConnected()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    .line 424
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-------processOnResume() index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HfpMainActivity"

    invoke-static {v2, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->inInCall()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 430
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->showCallFragment()V

    goto :goto_1

    .line 434
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processOnResume: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0x7f040015

    invoke-static {v4}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResStr(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->isHfpConnected()Z

    move-result v1

    invoke-direct {p0, v1, v3}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->updateLeftButtonState(ZZ)V

    const/4 v1, 0x0

    .line 436
    iput-object v1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mCallFragment:Lcom/hzbhd/bluetooth/call/CallFragment;

    .line 437
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->isHfpConnected()Z

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->showFragment(ZI)V

    .line 438
    iget-boolean v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->firstPA6In:Z

    if-eqz v0, :cond_3

    .line 439
    iput-boolean v3, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->firstPA6In:Z

    .line 440
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->initPA6()V

    :cond_3
    :goto_1
    return-void
.end method

.method private selectDialpad()V
    .locals 5

    const v0, 0x7f040014

    .line 1274
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 1275
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->isHfpConnected()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "last_manually_selected_tab"

    invoke-virtual {p0, v3, v0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->setPreference(Ljava/lang/String;I)V

    move v0, v2

    .line 1276
    :goto_1
    sget-object v3, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->LEFT_MAIN_BTNS_IDS:[I

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 1277
    iget-object v3, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->leftBtns:[Landroid/view/View;

    aget-object v4, v3, v0

    instance-of v4, v4, Landroid/widget/RadioButton;

    if-eqz v4, :cond_1

    .line 1278
    aget-object v3, v3, v0

    check-cast v3, Landroid/widget/RadioButton;

    invoke-virtual {v3, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1281
    :cond_2
    iput v1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->lastFragmentIndex:I

    .line 1282
    iput v1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->currentFragmentIndex:I

    const v0, 0x7f09014b

    .line 1283
    invoke-virtual {p0, v0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1284
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->connectNP2()V

    :cond_3
    return-void
.end method

.method private setButtonEnable(IZ)V
    .locals 7

    .line 453
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 454
    invoke-virtual {v1, p2}, Landroid/view/View;->setEnabled(Z)V

    const p1, 0x7f09014b

    .line 455
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    instance-of p2, p2, Landroid/widget/RadioButton;

    if-eqz p2, :cond_9

    .line 456
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, p1, :cond_0

    move p1, v3

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    invoke-virtual {p2, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    const p1, 0x7f090150

    .line 457
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, p1, :cond_1

    move p1, v3

    goto :goto_1

    :cond_1
    move p1, v2

    :goto_1
    invoke-virtual {p2, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    const p1, 0x7f090149

    .line 458
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, p1, :cond_2

    move p1, v3

    goto :goto_2

    :cond_2
    move p1, v2

    :goto_2
    invoke-virtual {p2, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    const p1, 0x7f09014a

    .line 459
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, p1, :cond_3

    move p1, v3

    goto :goto_3

    :cond_3
    move p1, v2

    :goto_3
    invoke-virtual {p2, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    const p1, 0x7f090151

    .line 460
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, p1, :cond_4

    move p1, v3

    goto :goto_4

    :cond_4
    move p1, v2

    :goto_4
    invoke-virtual {p2, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    const p1, 0x7f040015

    .line 461
    invoke-static {p0, p1}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResStr(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "H1"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const p1, 0x7f040038

    .line 462
    invoke-static {p0, p1}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResBool(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_5
    const p1, 0x7f09014f

    .line 463
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, p1, :cond_6

    move v2, v3

    :cond_6
    invoke-virtual {p2, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_7
    const p1, 0x7f040014

    .line 466
    invoke-static {p0, p1}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(Landroid/content/Context;I)I

    move-result p1

    const/16 p2, 0x34

    if-eq p1, p2, :cond_8

    const p1, 0x7f0a0009

    .line 467
    invoke-direct {p0, p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->isCurrentUiType(I)Z

    move-result p1

    if-nez p1, :cond_8

    const p1, 0x7f0a000c

    .line 468
    invoke-direct {p0, p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->isCurrentUiType(I)Z

    move-result p1

    if-nez p1, :cond_8

    const p1, 0x7f0a0016

    .line 469
    invoke-direct {p0, p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->isCurrentUiType(I)Z

    move-result p1

    if-nez p1, :cond_8

    const p1, 0x7f0a0017

    .line 470
    invoke-direct {p0, p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->isCurrentUiType(I)Z

    move-result p1

    if-nez p1, :cond_8

    const p1, 0x7f0a000d

    .line 471
    invoke-direct {p0, p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->isCurrentUiType(I)Z

    move-result p1

    if-eqz p1, :cond_b

    :cond_8
    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_5

    :cond_9
    const p1, 0x7f040051

    .line 474
    invoke-static {p0, p1}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResBool(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_a

    const v2, 0x7f0804d6

    const v3, 0x7f0804d9

    const v4, 0x7f0804d0

    const v5, 0x7f0804d3

    const v6, 0x7f0804dc

    move-object v0, p0

    .line 476
    invoke-direct/range {v0 .. v6}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->setButtonEnaleResourceForN54(Landroid/view/View;IIIII)V

    goto :goto_5

    :cond_a
    const p1, 0x7f081738

    .line 483
    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_b
    :goto_5
    return-void
.end method

.method private setButtonEnaleResourceForN54(Landroid/view/View;IIIII)V
    .locals 1

    .line 489
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 503
    :pswitch_1
    invoke-virtual {p1, p6}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 494
    :pswitch_2
    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 491
    :pswitch_3
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 500
    :pswitch_4
    invoke-virtual {p1, p5}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 497
    :pswitch_5
    invoke-virtual {p1, p4}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
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

.method private setPA6BlueName()V
    .locals 3

    const v0, 0x7f040014

    .line 1542
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    const v0, 0x7f0901ce

    .line 1543
    invoke-virtual {p0, v0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;

    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v1

    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothRemoteDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->setBlueName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setPA6mainRadio(Z)V
    .locals 5

    const v0, 0x7f040014

    .line 1548
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v0, v1, :cond_2

    const v0, 0x7f090143

    .line 1549
    invoke-virtual {p0, v0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    const v0, 0x7f09025e

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const p1, 0x7f0901ce

    .line 1551
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/hzbhd/bluetooth/ui/_a6/MainView;

    invoke-virtual {p1, v1}, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->setVisibility(I)V

    .line 1552
    invoke-virtual {p0, v0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const p1, 0x7f09014b

    .line 1554
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    const p1, 0x7f090150

    .line 1555
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    const p1, 0x7f090149

    .line 1556
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    const p1, 0x7f09014a

    .line 1557
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    const p1, 0x7f090151

    .line 1558
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    const p1, 0x7f040015

    .line 1559
    invoke-static {p0, p1}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResStr(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "H1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const p1, 0x7f040038

    .line 1560
    invoke-static {p0, p1}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResBool(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_0
    const p1, 0x7f09014f

    .line 1561
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 1565
    :cond_1
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/hzbhd/bluetooth/hfp/-$$Lambda$HfpMainActivity$lfOdB2ulSWyGs7OeDPU6rkdPZMc;

    invoke-direct {v2, p0}, Lcom/hzbhd/bluetooth/hfp/-$$Lambda$HfpMainActivity$lfOdB2ulSWyGs7OeDPU6rkdPZMc;-><init>(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)V

    const-wide/16 v3, 0xfa

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1566
    invoke-virtual {p0, v0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setPC6ConnectShow(Z)V
    .locals 3

    const v0, 0x7f040014

    .line 1595
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v0, v1, :cond_1

    const v0, 0x7f090014

    const v1, 0x7f090013

    if-eqz p1, :cond_0

    .line 1597
    invoke-virtual {p0, v1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const v1, 0x7f08152c

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1598
    invoke-virtual {p0, v0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0d0131

    invoke-virtual {p0, v1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v1

    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothRemoteDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1600
    :cond_0
    invoke-virtual {p0, v1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const v1, 0x7f08152d

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1601
    invoke-virtual {p0, v0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f0d0132

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateLeftButtonState(ZZ)V
    .locals 6

    const v0, 0x7f081720

    const v1, 0x7f040051

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_4

    move p1, v3

    .line 333
    :goto_0
    sget-object p2, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->LEFT_MAIN_BTNS_IDS:[I

    array-length p2, p2

    if-ge p1, p2, :cond_c

    if-nez p1, :cond_0

    .line 335
    iget-object p2, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->leftBtns:[Landroid/view/View;

    aget-object p2, p2, p1

    invoke-virtual {p2, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    .line 337
    :cond_0
    iget-object p2, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->leftBtns:[Landroid/view/View;

    aget-object p2, p2, p1

    invoke-virtual {p2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 340
    :goto_1
    iget-object p2, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->leftBtns:[Landroid/view/View;

    aget-object p2, p2, p1

    instance-of p2, p2, Landroid/widget/RadioButton;

    if-eqz p2, :cond_1

    goto :goto_2

    .line 344
    :cond_1
    invoke-static {v1}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResBool(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 345
    iget-object p2, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->leftBtns:[Landroid/view/View;

    aget-object p2, p2, p1

    invoke-virtual {p0, p2}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->setBackgourndResourceForN54(Landroid/view/View;)V

    goto :goto_2

    .line 347
    :cond_2
    iget-object p2, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->leftBtns:[Landroid/view/View;

    aget-object p2, p2, p1

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_2
    const p2, 0x7f040014

    .line 350
    invoke-static {p0, p2}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    if-ne p2, v4, :cond_3

    .line 351
    iget-object p2, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->leftBtns:[Landroid/view/View;

    aget-object p2, p2, p1

    invoke-virtual {p2, v3}, Landroid/view/View;->setEnabled(Z)V

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_7

    move p1, v3

    .line 357
    :goto_3
    sget-object p2, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->LEFT_MAIN_BTNS_IDS:[I

    array-length p2, p2

    if-ge p1, p2, :cond_c

    .line 358
    iget-object p2, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->leftBtns:[Landroid/view/View;

    aget-object p2, p2, p1

    invoke-virtual {p2, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 359
    iget-object p2, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->leftBtns:[Landroid/view/View;

    aget-object v4, p2, p1

    instance-of v4, v4, Landroid/widget/RadioButton;

    if-eqz v4, :cond_5

    .line 360
    aget-object p2, p2, p1

    check-cast p2, Landroid/widget/RadioButton;

    invoke-virtual {p2, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_4

    .line 363
    :cond_5
    invoke-static {v1}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResBool(I)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 364
    iget-object p2, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->leftBtns:[Landroid/view/View;

    aget-object p2, p2, p1

    invoke-virtual {p0, p2}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->setBackgourndResourceForN54(Landroid/view/View;)V

    goto :goto_4

    .line 366
    :cond_6
    iget-object p2, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->leftBtns:[Landroid/view/View;

    aget-object p2, p2, p1

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_7
    move p1, v3

    .line 371
    :goto_5
    sget-object p2, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->LEFT_MAIN_BTNS_IDS:[I

    array-length p2, p2

    if-ge p1, p2, :cond_c

    const/4 p2, 0x2

    if-gt p1, p2, :cond_8

    .line 373
    iget-object p2, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->leftBtns:[Landroid/view/View;

    aget-object p2, p2, p1

    invoke-virtual {p2, v3}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_6

    .line 375
    :cond_8
    iget-object p2, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->leftBtns:[Landroid/view/View;

    aget-object p2, p2, p1

    invoke-virtual {p2, v2}, Landroid/view/View;->setEnabled(Z)V

    const p2, 0x7f040039

    .line 377
    invoke-static {p2}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResBool(I)Z

    move-result p2

    if-eqz p2, :cond_9

    const/4 p2, 0x5

    if-ne p1, p2, :cond_9

    .line 379
    iget-object p2, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->leftBtns:[Landroid/view/View;

    aget-object p2, p2, p1

    invoke-virtual {p2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 383
    :cond_9
    :goto_6
    iget-object p2, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->leftBtns:[Landroid/view/View;

    aget-object v4, p2, p1

    instance-of v4, v4, Landroid/widget/RadioButton;

    if-eqz v4, :cond_a

    .line 384
    aget-object p2, p2, p1

    check-cast p2, Landroid/widget/RadioButton;

    invoke-virtual {p2, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_7

    .line 387
    :cond_a
    invoke-static {v1}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResBool(I)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 388
    iget-object p2, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->leftBtns:[Landroid/view/View;

    aget-object p2, p2, p1

    invoke-virtual {p0, p2}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->setBackgourndResourceForN54(Landroid/view/View;)V

    goto :goto_7

    .line 390
    :cond_b
    iget-object p2, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->leftBtns:[Landroid/view/View;

    aget-object p2, p2, p1

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_7
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_c
    return-void
.end method


# virtual methods
.method public SendMsg(I)V
    .locals 2

    .line 1587
    iget-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mH1Handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 1588
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1589
    iput p1, v0, Landroid/os/Message;->what:I

    .line 1590
    iget-object v1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mH1Handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HfpMainActivitySendMsg-->"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public afterCallShowView()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "last_manually_selected_tab"

    const/4 v1, -0x1

    .line 652
    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->getPreference(Ljava/lang/String;I)I

    move-result v0

    .line 653
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->isHfpConnected()Z

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->showFragment(ZI)V

    .line 655
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mDialpadFragment:Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mDialpadFragment:Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;

    invoke-virtual {v0}, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->updateDialpadUI()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 659
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public closeActivity()V
    .locals 0

    return-void
.end method

.method public handlerBackSpace()V
    .locals 3

    .line 785
    iget-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->digitsStr:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 786
    iget-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->digitsStr:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->digitsStr:Ljava/lang/String;

    .line 787
    iget-object v1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->digitsText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public inInCall()Z
    .locals 1

    .line 407
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpCallCounts()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$initNP2$0$HfpMainActivity(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 246
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const p1, 0x7f09025e

    .line 248
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 249
    iget-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->et_bluetooth_name:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    const/4 p1, 0x1

    return p1
.end method

.method public synthetic lambda$initNP2$1$HfpMainActivity(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 279
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const p1, 0x7f09025e

    .line 281
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 282
    iget-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->et_bluetooth_pin:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    const/4 p1, 0x1

    return p1
.end method

.method public synthetic lambda$setPA6mainRadio$2$HfpMainActivity()V
    .locals 2

    const v0, 0x7f0901ce

    .line 1565
    invoke-virtual {p0, v0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->setVisibility(I)V

    return-void
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .locals 1

    .line 226
    instance-of v0, p1, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;

    if-eqz v0, :cond_0

    .line 227
    check-cast p1, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;

    iput-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mDialpadFragment:Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;

    goto :goto_0

    .line 228
    :cond_0
    instance-of v0, p1, Lcom/hzbhd/bluetooth/paired/PairedListFragment;

    if-eqz v0, :cond_1

    .line 229
    check-cast p1, Lcom/hzbhd/bluetooth/paired/PairedListFragment;

    iput-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mPairedListFragment:Lcom/hzbhd/bluetooth/paired/PairedListFragment;

    goto :goto_0

    .line 230
    :cond_1
    instance-of v0, p1, Lcom/hzbhd/bluetooth/settings/SettingsFragment;

    if-eqz v0, :cond_2

    .line 231
    check-cast p1, Lcom/hzbhd/bluetooth/settings/SettingsFragment;

    iput-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mSettingsFragment:Lcom/hzbhd/bluetooth/settings/SettingsFragment;

    goto :goto_0

    .line 232
    :cond_2
    instance-of v0, p1, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    if-eqz v0, :cond_3

    .line 233
    check-cast p1, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    iput-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mPhoneContactFragment:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    goto :goto_0

    .line 234
    :cond_3
    instance-of v0, p1, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;

    if-eqz v0, :cond_4

    .line 235
    check-cast p1, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;

    iput-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mCallLogFragment:Lcom/hzbhd/bluetooth/calllog/CallLogFragment;

    goto :goto_0

    .line 236
    :cond_4
    instance-of v0, p1, Lcom/hzbhd/bluetooth/call/CallFragment;

    if-eqz v0, :cond_5

    .line 237
    check-cast p1, Lcom/hzbhd/bluetooth/call/CallFragment;

    iput-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mCallFragment:Lcom/hzbhd/bluetooth/call/CallFragment;

    :cond_5
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 684
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->inInCall()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 685
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->isHfpConnected()Z

    move-result v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->updateLeftButtonState(ZZ)V

    goto :goto_0

    .line 687
    :cond_0
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->isHfpConnected()Z

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->updateLeftButtonState(ZZ)V

    .line 690
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0017

    const v2, 0x7f040014

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_2

    .line 763
    :sswitch_0
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->inInCall()Z

    move-result p1

    if-nez p1, :cond_b

    .line 764
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->startEQ(Landroid/content/Context;)V

    goto/16 :goto_2

    .line 710
    :sswitch_1
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->inInCall()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {v2}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-ne p1, v0, :cond_1

    return-void

    .line 713
    :cond_1
    invoke-direct {p0, v1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->setPA6mainRadio(Z)V

    .line 714
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->isHfpConnected()Z

    move-result p1

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->showFragment(ZI)V

    goto/16 :goto_2

    .line 734
    :sswitch_2
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->inInCall()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {v2}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-ne p1, v0, :cond_2

    return-void

    .line 737
    :cond_2
    invoke-direct {p0, v1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->setPA6mainRadio(Z)V

    .line 738
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->isHfpConnected()Z

    move-result p1

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->showFragment(ZI)V

    goto/16 :goto_2

    .line 692
    :sswitch_3
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->inInCall()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {v2}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-ne p1, v0, :cond_3

    return-void

    .line 695
    :cond_3
    invoke-direct {p0, v1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->setPA6mainRadio(Z)V

    const-string p1, "HfpMainActivity__sswang"

    const-string v0, "onClick: music start"

    .line 696
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f040039

    .line 697
    invoke-static {p0, v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResBool(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "onClick: music center"

    .line 698
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->isHfpConnected()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 700
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    .line 701
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 702
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_4
    const-string v0, "onClick: music end"

    .line 706
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->isHfpConnected()Z

    move-result p1

    const/4 v0, 0x6

    invoke-virtual {p0, p1, v0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->showFragment(ZI)V

    goto/16 :goto_2

    .line 742
    :sswitch_4
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->inInCall()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {v2}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-ne p1, v0, :cond_5

    return-void

    .line 745
    :cond_5
    invoke-direct {p0, v1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->setPA6mainRadio(Z)V

    .line 746
    invoke-static {p0, v2}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(Landroid/content/Context;I)I

    move-result p1

    const/16 v0, 0x34

    const/4 v1, 0x2

    if-eq p1, v0, :cond_7

    .line 747
    invoke-static {p0, v2}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a0009

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-eq p1, v0, :cond_7

    .line 748
    invoke-static {p0, v2}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a000c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-eq p1, v0, :cond_7

    .line 749
    invoke-static {p0, v2}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a0016

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-eq p1, v0, :cond_7

    .line 750
    invoke-static {p0, v2}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a000d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-ne p1, v0, :cond_6

    goto :goto_1

    .line 757
    :cond_6
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->isHfpConnected()Z

    move-result p1

    invoke-virtual {p0, p1, v1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->showFragment(ZI)V

    goto/16 :goto_2

    .line 751
    :cond_7
    :goto_1
    iget p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->currentFragmentIndex:I

    if-ne p1, v1, :cond_8

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->inInCall()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 752
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->isHfpConnected()Z

    move-result p1

    const/4 v0, 0x7

    invoke-virtual {p0, p1, v0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->showFragment(ZI)V

    goto :goto_2

    .line 754
    :cond_8
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->isHfpConnected()Z

    move-result p1

    invoke-virtual {p0, p1, v1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->showFragment(ZI)V

    goto :goto_2

    .line 718
    :sswitch_5
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->inInCall()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-static {v2}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-ne p1, v0, :cond_9

    return-void

    .line 721
    :cond_9
    invoke-direct {p0, v1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->setPA6mainRadio(Z)V

    .line 722
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->isHfpConnected()Z

    move-result p1

    invoke-virtual {p0, p1, v1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->showFragment(ZI)V

    goto :goto_2

    .line 726
    :sswitch_6
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->inInCall()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-static {v2}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-ne p1, v0, :cond_a

    return-void

    .line 729
    :cond_a
    invoke-direct {p0, v1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->setPA6mainRadio(Z)V

    .line 730
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->isHfpConnected()Z

    move-result p1

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->showFragment(ZI)V

    goto :goto_2

    .line 775
    :sswitch_7
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->finish()V

    goto :goto_2

    .line 770
    :sswitch_8
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->inInCall()Z

    move-result p1

    if-nez p1, :cond_b

    .line 771
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 780
    :cond_b
    :goto_2
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->playBeep()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090051 -> :sswitch_8
        0x7f090139 -> :sswitch_7
        0x7f090149 -> :sswitch_6
        0x7f09014a -> :sswitch_5
        0x7f09014b -> :sswitch_4
        0x7f09014f -> :sswitch_3
        0x7f090150 -> :sswitch_2
        0x7f090151 -> :sswitch_1
        0x7f0901d1 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 98
    invoke-super {p0, p1}, Lcom/hzbhd/bluetooth/MainActivity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0e0171

    invoke-static {p1, p0, v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->init(Landroid/content/res/Resources;Landroid/content/Context;I)V

    const-string p1, "__01__bg"

    .line 100
    invoke-static {p0, p1}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->resetBg(Landroid/app/Activity;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/utils/DispUtility;->disabledDisplayDpiChange(Landroid/content/res/Resources;)Landroid/content/res/Resources;

    .line 102
    invoke-static {p0}, Lcom/hzbhd/bluetooth/Bluetooth;->addHfpMainActivity(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)V

    const p1, 0x7f040033

    .line 103
    invoke-static {p1}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResId(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->setContentView(I)V

    const p1, 0x7f040015

    .line 104
    invoke-static {p1}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResStr(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "H1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const p1, 0x7f040038

    .line 105
    invoke-static {p0, p1}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResBool(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    sget-object p1, Lcom/hzbhd/bluetooth/constants/BluetoothConstants;->LEFT_BTN_IDS:[I

    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    sput-object p1, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->LEFT_MAIN_BTNS_IDS:[I

    goto :goto_1

    .line 106
    :cond_1
    :goto_0
    sget-object p1, Lcom/hzbhd/bluetooth/constants/BluetoothConstants;->LEFT_BTN_IDS_WITH_MUSIC:[I

    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    sput-object p1, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->LEFT_MAIN_BTNS_IDS:[I

    .line 111
    :goto_1
    sget-object p1, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->LEFT_MAIN_BTNS_IDS:[I

    array-length p1, p1

    new-array p1, p1, [Landroid/view/View;

    iput-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->leftBtns:[Landroid/view/View;

    const/4 p1, 0x0

    .line 112
    :goto_2
    sget-object v0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->LEFT_MAIN_BTNS_IDS:[I

    array-length v1, v0

    const-string v2, "HfpMainActivity"

    if-ge p1, v1, :cond_3

    .line 113
    aget v0, v0, p1

    invoke-virtual {p0, v0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "onCreate: abc"

    .line 114
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_2

    goto :goto_3

    .line 118
    :cond_2
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->leftBtns:[Landroid/view/View;

    aput-object v0, v1, p1

    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 122
    :cond_3
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object p1

    iget-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mHfpCallbackListener:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHfpCallbackListener;

    invoke-virtual {p1, v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->registerHfpCallBackListenr(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHfpCallbackListener;)V

    .line 123
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object p1

    iget-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mPbapCallbackListener:Lcom/hzbhd/bluetooth/BaseBluetoothPbapCallbackListener;

    invoke-virtual {p1, v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->registerPbapCallBackListenr(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothPbapCallbackListener;)V

    const p1, 0x7f09014d

    .line 124
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->hfp_main_margin_n54:Landroid/view/View;

    const p1, 0x7f090110

    .line 125
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->container:Landroid/view/View;

    const p1, 0x7f090207

    .line 126
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->root_fl_n54:Landroid/view/View;

    const p1, 0x7f0901b2

    .line 127
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->left_menu_bar_id:Landroid/view/View;

    const p1, 0x7f0901d1

    .line 128
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->menubar_button_eq_n54:Landroid/view/View;

    const p1, 0x7f090049

    .line 129
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->bt_call_tv_n54:Landroid/view/View;

    const p1, 0x7f090051

    .line 130
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->bt_music_tv_n54:Landroid/view/View;

    const p1, 0x7f090139

    .line 131
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->fragment_back_n54:Landroid/view/View;

    const p1, 0x7f0901ff

    .line 132
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->rl_history_n54:Landroid/view/View;

    const p1, 0x7f090132

    .line 133
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->et_bluetooth_name:Landroid/widget/EditText;

    const p1, 0x7f090133

    .line 134
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->et_bluetooth_pin:Landroid/widget/EditText;

    const p1, 0x7f09015f

    .line 135
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->ib_radio_n54_ui_height:Landroid/widget/CheckBox;

    .line 136
    iget-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->menubar_button_eq_n54:Landroid/view/View;

    if-eqz p1, :cond_4

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    :cond_4
    iget-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->bt_call_tv_n54:Landroid/view/View;

    if-eqz p1, :cond_5

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    :cond_5
    iget-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->bt_music_tv_n54:Landroid/view/View;

    if-eqz p1, :cond_6

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    :cond_6
    iget-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->fragment_back_n54:Landroid/view/View;

    if-eqz p1, :cond_7

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    const-string p1, "-----onCreate()-----"

    .line 140
    invoke-static {v2, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->initNP2()V

    .line 142
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->initPC6()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 147
    invoke-super {p0}, Lcom/hzbhd/bluetooth/MainActivity;->onDestroy()V

    const-string v0, "HfpMainActivity"

    const-string v1, "-----onDestroy()-----"

    .line 148
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-static {}, Lcom/hzbhd/bluetooth/Bluetooth;->removeHfpMainActivity()V

    .line 150
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mHfpCallbackListener:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHfpCallbackListener;

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->unRegisterHfpCallBackListenr(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHfpCallbackListener;)V

    .line 151
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mPbapCallbackListener:Lcom/hzbhd/bluetooth/BaseBluetoothPbapCallbackListener;

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->unRegisterPbapCallBackListenr(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothPbapCallbackListener;)V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1574
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->isHfpConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f040014

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    const v0, 0x7f090143

    .line 1575
    invoke-virtual {p0, v0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    .line 1576
    invoke-direct {p0, p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->setPA6mainRadio(Z)V

    const/4 p1, 0x0

    return p1

    .line 1581
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/hzbhd/bluetooth/MainActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 217
    invoke-super {p0, p1}, Lcom/hzbhd/bluetooth/MainActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 218
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->setIntent(Landroid/content/Intent;)V

    .line 219
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->processExtraData()V

    const-string p1, "HfpMainActivity"

    const-string v0, "-------onNewIntent()--------"

    .line 220
    invoke-static {p1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 156
    invoke-super {p0}, Lcom/hzbhd/bluetooth/MainActivity;->onPause()V

    .line 157
    iget v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->currentFragmentIndex:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    .line 158
    iget v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->currentFragmentIndex:I

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 165
    :cond_0
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->isHfpConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->currentFragmentIndex:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v1, "last_manually_selected_tab"

    invoke-virtual {p0, v1, v0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->setPreference(Ljava/lang/String;I)V

    :cond_2
    :goto_1
    const-string v0, "HfpMainActivity"

    const-string v1, "-----onPause()-----"

    .line 172
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 178
    invoke-super {p0}, Lcom/hzbhd/bluetooth/MainActivity;->onResume()V

    .line 179
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->setPA6BlueName()V

    .line 180
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isOriginalScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    :cond_0
    const-string v0, ""

    .line 181
    iput-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->digitsStr:Ljava/lang/String;

    .line 182
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->inInCall()Z

    move-result v0

    const v1, 0x7f040051

    const-string v2, "HfpMainActivity"

    if-eqz v0, :cond_2

    .line 183
    invoke-static {v1}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResBool(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    .line 184
    invoke-virtual {p0, v0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->setLeftMenuBarVisibility(I)V

    .line 189
    :cond_1
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->showCallFragment()V

    .line 190
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->selectDialpad()V

    goto :goto_0

    .line 193
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f040015

    invoke-static {v3}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResStr(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-static {v1}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResBool(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 195
    invoke-virtual {p0, v0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->setLeftMenuBarVisibility(I)V

    .line 201
    :cond_3
    :try_start_0
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->processOnResume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 203
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const-string v0, "-----onResume()-----"

    .line 206
    invoke-static {v2, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->et_bluetooth_name:Landroid/widget/EditText;

    if-eqz v0, :cond_4

    .line 208
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothLocalAdapterName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 209
    :cond_4
    iget-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->et_bluetooth_pin:Landroid/widget/EditText;

    if-eqz v0, :cond_5

    .line 210
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getPinCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 212
    :cond_5
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->initPA6OnCreate()V

    return-void

    :array_0
    .array-data 1
        0x18t
        0x7t
        0x4t
        0x0t
    .end array-data
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "HfpMainActivity"

    const-string v1, "----onTouchEvent()----"

    .line 324
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mPhoneContactFragment:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {v0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->exitSearchUi()V

    .line 328
    :cond_0
    invoke-super {p0, p1}, Lcom/hzbhd/bluetooth/MainActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public releaseFragment(I)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 840
    :pswitch_0
    iput-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mPhoneContactFragment:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    .line 841
    iput-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mDialpadFragment:Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;

    .line 842
    iput-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mCallLogFragment:Lcom/hzbhd/bluetooth/calllog/CallLogFragment;

    .line 843
    iput-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mPairedListFragment:Lcom/hzbhd/bluetooth/paired/PairedListFragment;

    .line 844
    iput-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mSettingsFragment:Lcom/hzbhd/bluetooth/settings/SettingsFragment;

    .line 845
    iput-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mA2dpPlayFragment:Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;

    goto :goto_0

    .line 849
    :pswitch_1
    iput-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mPhoneContactFragment:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    .line 850
    iput-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mDialpadFragment:Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;

    .line 851
    iput-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mCallFragment:Lcom/hzbhd/bluetooth/call/CallFragment;

    .line 852
    iput-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mCallLogFragment:Lcom/hzbhd/bluetooth/calllog/CallLogFragment;

    .line 853
    iput-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mPairedListFragment:Lcom/hzbhd/bluetooth/paired/PairedListFragment;

    .line 854
    iput-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mSettingsFragment:Lcom/hzbhd/bluetooth/settings/SettingsFragment;

    goto :goto_0

    .line 831
    :pswitch_2
    iput-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mPhoneContactFragment:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    .line 832
    iput-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mDialpadFragment:Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;

    .line 833
    iput-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mCallFragment:Lcom/hzbhd/bluetooth/call/CallFragment;

    .line 834
    iput-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mCallLogFragment:Lcom/hzbhd/bluetooth/calllog/CallLogFragment;

    .line 835
    iput-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mPairedListFragment:Lcom/hzbhd/bluetooth/paired/PairedListFragment;

    .line 836
    iput-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mA2dpPlayFragment:Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;

    goto :goto_0

    .line 804
    :pswitch_3
    iput-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mCallLogFragment:Lcom/hzbhd/bluetooth/calllog/CallLogFragment;

    .line 805
    iput-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mDialpadFragment:Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;

    .line 806
    iput-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mCallFragment:Lcom/hzbhd/bluetooth/call/CallFragment;

    .line 807
    iput-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mPairedListFragment:Lcom/hzbhd/bluetooth/paired/PairedListFragment;

    .line 808
    iput-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mSettingsFragment:Lcom/hzbhd/bluetooth/settings/SettingsFragment;

    .line 809
    iput-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mA2dpPlayFragment:Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;

    goto :goto_0

    .line 813
    :pswitch_4
    iput-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mPhoneContactFragment:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    .line 814
    iput-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mDialpadFragment:Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;

    .line 815
    iput-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mCallFragment:Lcom/hzbhd/bluetooth/call/CallFragment;

    .line 816
    iput-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mPairedListFragment:Lcom/hzbhd/bluetooth/paired/PairedListFragment;

    .line 817
    iput-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mSettingsFragment:Lcom/hzbhd/bluetooth/settings/SettingsFragment;

    .line 818
    iput-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mA2dpPlayFragment:Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;

    goto :goto_0

    .line 795
    :pswitch_5
    iput-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mCallLogFragment:Lcom/hzbhd/bluetooth/calllog/CallLogFragment;

    .line 796
    iput-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mPhoneContactFragment:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    .line 797
    iput-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mCallFragment:Lcom/hzbhd/bluetooth/call/CallFragment;

    .line 798
    iput-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mPairedListFragment:Lcom/hzbhd/bluetooth/paired/PairedListFragment;

    .line 799
    iput-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mSettingsFragment:Lcom/hzbhd/bluetooth/settings/SettingsFragment;

    .line 800
    iput-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mA2dpPlayFragment:Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;

    goto :goto_0

    .line 822
    :cond_0
    iput-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mPhoneContactFragment:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    .line 823
    iput-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mDialpadFragment:Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;

    .line 824
    iput-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mCallFragment:Lcom/hzbhd/bluetooth/call/CallFragment;

    .line 825
    iput-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mCallLogFragment:Lcom/hzbhd/bluetooth/calllog/CallLogFragment;

    .line 826
    iput-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mSettingsFragment:Lcom/hzbhd/bluetooth/settings/SettingsFragment;

    .line 827
    iput-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mA2dpPlayFragment:Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setBackgourndResourceForN54(Landroid/view/View;)V
    .locals 7

    const v2, 0x7f0804d4

    const v3, 0x7f0804d8

    const v4, 0x7f0804cf

    const v5, 0x7f0804d1

    const v6, 0x7f0804da

    move-object v0, p0

    move-object v1, p1

    .line 399
    invoke-direct/range {v0 .. v6}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->setButtonEnaleResourceForN54(Landroid/view/View;IIIII)V

    return-void
.end method

.method public setLeftMenuBarVisibility(I)V
    .locals 1

    .line 1397
    iget-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->hfp_main_margin_n54:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1398
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1400
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->left_menu_bar_id:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1401
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public showBackFragment(Z)V
    .locals 2

    .line 966
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-----showBackFragment() fragmentIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->currentFragmentIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HfpMainActivity"

    invoke-static {v1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->showTopBar()V

    const/4 v0, 0x0

    const/4 v1, 0x5

    if-eqz p1, :cond_1

    .line 969
    iget p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->currentFragmentIndex:I

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 971
    :cond_0
    iput-boolean v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->isInA2dpView:Z

    .line 972
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->showPairedFrament()V

    goto :goto_0

    .line 981
    :cond_1
    iget p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->currentFragmentIndex:I

    if-eq p1, v1, :cond_2

    .line 988
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->finish()V

    goto :goto_0

    .line 983
    :cond_2
    iput-boolean v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->isInA2dpView:Z

    .line 984
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->showPairedFrament()V

    :goto_0
    return-void
.end method

.method public showCallActivity()V
    .locals 4

    .line 612
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->isHfpConnected()Z

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->updateLeftButtonState(ZZ)V

    .line 614
    iget v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->currentFragmentIndex:I

    iput v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->lastFragmentIndex:I

    const/4 v0, 0x7

    .line 615
    iput v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->currentFragmentIndex:I

    .line 616
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/hzbhd/bluetooth/ui/_h1/CallActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000000

    .line 617
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 618
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 619
    invoke-virtual {p0, v0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->releaseFragment(I)V

    return-void
.end method

.method public showCallFragment()V
    .locals 5

    .line 623
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->isHfpConnected()Z

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->updateLeftButtonState(ZZ)V

    const/4 v0, 0x0

    .line 624
    invoke-direct {p0, v0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->setPA6mainRadio(Z)V

    .line 626
    iget v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->currentFragmentIndex:I

    iput v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->lastFragmentIndex:I

    const/4 v0, 0x7

    .line 627
    iput v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->currentFragmentIndex:I

    .line 628
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 629
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "call_fragment"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    const v4, 0x7f09025e

    if-nez v2, :cond_1

    .line 631
    iget-object v2, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mCallFragment:Lcom/hzbhd/bluetooth/call/CallFragment;

    if-nez v2, :cond_0

    .line 633
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 634
    invoke-static {v2}, Lcom/hzbhd/bluetooth/call/CallFragment;->newInstance(Landroid/os/Bundle;)Lcom/hzbhd/bluetooth/call/CallFragment;

    move-result-object v2

    .line 637
    :cond_0
    invoke-virtual {v1, v4, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    .line 644
    :cond_1
    invoke-virtual {v1, v4, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 646
    :goto_0
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 647
    invoke-virtual {p0, v0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->releaseFragment(I)V

    .line 648
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->initUI_H1()V

    return-void
.end method

.method public showCallLogFragment()V
    .locals 5

    .line 587
    iget v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->currentFragmentIndex:I

    iput v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->lastFragmentIndex:I

    const/4 v0, 0x3

    .line 588
    iput v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->currentFragmentIndex:I

    .line 589
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 590
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "calllog_fragment"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    const v4, 0x7f09025e

    if-nez v2, :cond_1

    .line 592
    iget-object v2, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mCallLogFragment:Lcom/hzbhd/bluetooth/calllog/CallLogFragment;

    if-nez v2, :cond_0

    .line 594
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 595
    invoke-static {v2}, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->newInstance(Landroid/os/Bundle;)Lcom/hzbhd/bluetooth/calllog/CallLogFragment;

    move-result-object v2

    .line 598
    :cond_0
    invoke-virtual {v1, v4, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    .line 605
    :cond_1
    invoke-virtual {v1, v4, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 607
    :goto_0
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 608
    invoke-virtual {p0, v0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->releaseFragment(I)V

    return-void
.end method

.method public showDialpadFragment()V
    .locals 5

    .line 536
    iget v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->currentFragmentIndex:I

    iput v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->lastFragmentIndex:I

    const/4 v0, 0x2

    .line 537
    iput v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->currentFragmentIndex:I

    .line 538
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 539
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "dialpad_fragment"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    const v4, 0x7f09025e

    if-nez v2, :cond_1

    .line 541
    iget-object v2, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mDialpadFragment:Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;

    if-nez v2, :cond_0

    .line 543
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 544
    invoke-static {v2}, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->newInstance(Landroid/os/Bundle;)Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;

    move-result-object v2

    .line 547
    :cond_0
    invoke-virtual {v1, v4, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    .line 554
    :cond_1
    invoke-virtual {v1, v4, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 556
    :goto_0
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 557
    invoke-virtual {p0, v0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->releaseFragment(I)V

    return-void
.end method

.method public showFragment(ZI)V
    .locals 6

    .line 868
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-----showFragment() index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ; connect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HfpMainActivity"

    invoke-static {v1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f040051

    .line 870
    invoke-static {p0, v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResBool(Landroid/content/Context;I)Z

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-ne p2, v1, :cond_0

    const/16 v0, 0x8

    .line 872
    invoke-virtual {p0, v0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->setLeftMenuBarVisibility(I)V

    goto :goto_0

    .line 874
    :cond_0
    invoke-virtual {p0, v2}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->setLeftMenuBarVisibility(I)V

    :cond_1
    :goto_0
    const/4 v0, 0x1

    if-ne p2, v1, :cond_2

    .line 878
    invoke-direct {p0, p1, v0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->updateLeftButtonState(ZZ)V

    goto :goto_1

    .line 880
    :cond_2
    invoke-direct {p0, p1, v2}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->updateLeftButtonState(ZZ)V

    :goto_1
    const v1, 0x7f090151

    const v3, 0x7f09014a

    if-eqz p1, :cond_6

    .line 883
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showFragment: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "HfpMainActivity__sswang"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->connectNP2()V

    .line 885
    invoke-direct {p0, p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->setPC6ConnectShow(Z)V

    if-eqz p2, :cond_5

    const v3, 0x7f09014b

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_2

    .line 925
    :pswitch_0
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->showCallFragment()V

    .line 927
    invoke-virtual {p0, v3}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 928
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 930
    instance-of p2, p1, Landroid/widget/RadioButton;

    if-eqz p2, :cond_3

    .line 931
    check-cast p1, Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_2

    :cond_3
    const p2, 0x7f081720

    .line 934
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 903
    :pswitch_1
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->showA2dpPlayFrament2()V

    const p1, 0x7f09014f

    .line 904
    invoke-direct {p0, p1, v2}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->setButtonEnable(IZ)V

    goto :goto_2

    .line 898
    :pswitch_2
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->showSettingsFrament()V

    .line 899
    invoke-direct {p0, v1, v2}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->setButtonEnable(IZ)V

    goto :goto_2

    .line 893
    :pswitch_3
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->showPhoneContactFragment()V

    const p1, 0x7f090150

    .line 894
    invoke-direct {p0, p1, v2}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->setButtonEnable(IZ)V

    goto :goto_2

    .line 888
    :pswitch_4
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->showCallLogFragment()V

    const p1, 0x7f090149

    .line 889
    invoke-direct {p0, p1, v2}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->setButtonEnable(IZ)V

    goto :goto_2

    .line 909
    :pswitch_5
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->isCallingFlag()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 910
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->showDialpadFragment()V

    .line 911
    invoke-direct {p0, p1, v0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->updateLeftButtonState(ZZ)V

    .line 912
    invoke-direct {p0, v3, v2}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->setButtonEnable(IZ)V

    .line 913
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->connectNP2()V

    goto :goto_2

    .line 915
    :cond_4
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->showDialpadFragment()V

    .line 916
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->connectNP2()V

    .line 917
    invoke-direct {p0, v3, v2}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->setButtonEnable(IZ)V

    goto :goto_2

    .line 939
    :cond_5
    iput-boolean v2, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->isInA2dpView:Z

    .line 940
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->showPairedFrament()V

    .line 941
    invoke-direct {p0, v3, v2}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->setButtonEnable(IZ)V

    goto :goto_2

    :cond_6
    const/4 p1, 0x5

    if-eq p2, p1, :cond_7

    .line 956
    iput-boolean v2, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->isInA2dpView:Z

    .line 957
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->showPairedFrament()V

    .line 958
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->disconnectNP2()V

    .line 959
    invoke-direct {p0, v3, v2}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->setButtonEnable(IZ)V

    goto :goto_2

    .line 949
    :cond_7
    iput-boolean v2, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->isInA2dpView:Z

    .line 950
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->showSettingsFrament()V

    .line 951
    invoke-direct {p0, v1, v2}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->setButtonEnable(IZ)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public showPhoneContactFragment()V
    .locals 6

    .line 560
    iget v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->currentFragmentIndex:I

    iput v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->lastFragmentIndex:I

    const/4 v0, 0x4

    .line 561
    iput v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->currentFragmentIndex:I

    .line 562
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 563
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "contacts_fragment"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 564
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const v5, 0x7f09025e

    if-nez v2, :cond_1

    .line 566
    iget-object v2, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mPhoneContactFragment:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    if-nez v2, :cond_0

    .line 568
    invoke-static {v4}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->newInstance(Landroid/os/Bundle;)Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    move-result-object v2

    .line 571
    :cond_0
    invoke-virtual {v1, v5, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    .line 578
    :cond_1
    invoke-virtual {v1, v5, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 580
    :goto_0
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 581
    invoke-virtual {p0, v0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->releaseFragment(I)V

    return-void
.end method
