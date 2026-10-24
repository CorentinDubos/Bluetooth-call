.class public Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;
.super Landroid/support/v4/app/Fragment;
.source "DialpadFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/bluetooth/dialpad/DialpadFragment$remoteCotrol;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private backBtn:Landroid/widget/ImageButton;

.field private btn_key_hanpup_common:Landroid/widget/Button;

.field private btn_key_listener_change_common:Landroid/widget/Button;

.field private dialBtn:Landroid/widget/ImageButton;

.field private digitsStr:Ljava/lang/String;

.field private digitsTv:Landroid/widget/TextView;

.field private isCalled:Z

.field private isneed_showredialnum_shortclick:Z

.field private leftLayout:Landroid/view/View;

.field private mMuteButton:Landroid/widget/Button;

.field private mSwitchButton:Landroid/widget/Button;

.field private reDialBtn:Landroid/widget/ImageButton;

.field private textPhone:Landroid/widget/TextView;

.field private tmepDigitsStr:Ljava/lang/String;

.field private tv_connect_devices:Landroid/widget/TextView;

.field private tv_pin:Landroid/widget/TextView;

.field private tv_this_devices:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-class v0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;)Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->digitsStr:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->digitsStr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->tmepDigitsStr:Ljava/lang/String;

    return-object p1
.end method

.method private getMainActivity()Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;
    .locals 1

    .line 529
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    return-object v0
.end method

.method private initPA6(Landroid/view/View;)V
    .locals 6

    const v0, 0x7f040014

    .line 569
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v0, v1, :cond_1

    const v0, 0x7f0900b4

    .line 570
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901b8

    .line 572
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    .line 573
    new-instance v0, Lcom/hzbhd/bluetooth/ui/_a6/A6CallLogAdapter;

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/hzbhd/bluetooth/ui/_a6/A6CallLogAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 574
    new-instance v1, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment$2;

    invoke-direct {v1, p0}, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment$2;-><init>(Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;)V

    invoke-virtual {v0, v1}, Lcom/hzbhd/bluetooth/ui/_a6/A6CallLogAdapter;->setListener(Lcom/hzbhd/bluetooth/ui/_a6/A6CallLogAdapter$CallLogAdapterListener;)V

    .line 582
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v1

    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothRemoteDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 583
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "_a6_save_blueTooth_collect"

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 584
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_a6_clear_contact"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    .line 586
    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .line 588
    :cond_0
    invoke-virtual {p1, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 589
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 592
    :goto_0
    new-instance p1, Lcom/hzbhd/bluetooth/calllog/CallLogQueryHandler;

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment$3;

    invoke-direct {v2, p0, v0}, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment$3;-><init>(Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;Lcom/hzbhd/bluetooth/ui/_a6/A6CallLogAdapter;)V

    invoke-direct {p1, v1, v2}, Lcom/hzbhd/bluetooth/calllog/CallLogQueryHandler;-><init>(Landroid/content/ContentResolver;Lcom/hzbhd/bluetooth/calllog/CallLogQueryHandler$CallbackListener;)V

    .line 599
    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/calllog/CallLogQueryHandler;->fetchAllCalls()V

    :cond_1
    return-void
.end method

.method private initPC6(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f040014

    .line 604
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    const v0, 0x7f090113

    .line 605
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomDialpadView;

    const v1, 0x7f0901ec

    .line 606
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 608
    new-instance v1, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment$4;

    invoke-direct {v1, p0, p1}, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment$4;-><init>(Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomDialpadView;->setOnAdapterClickListener(Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad$OnItemClickListener;)V

    :cond_0
    return-void
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;
    .locals 1

    .line 69
    new-instance v0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;

    invoke-direct {v0}, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;-><init>()V

    .line 70
    invoke-virtual {v0, p0}, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private showHidePhoneNP2(Ljava/lang/String;)V
    .locals 3

    const v0, 0x7f040014

    .line 555
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 556
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->textPhone:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 558
    iget-object p1, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->textPhone:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 559
    iget-object p1, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->leftLayout:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 561
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->textPhone:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 562
    iget-object p1, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->leftLayout:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 563
    iget-object p1, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->textPhone:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public handlerBackSpace()V
    .locals 3

    .line 314
    iget-object v0, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->digitsStr:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 315
    iget-object v0, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->digitsStr:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->digitsStr:Ljava/lang/String;

    .line 316
    iput-object v0, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->tmepDigitsStr:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x12

    if-le v0, v1, :cond_0

    .line 318
    iget-object v0, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->tmepDigitsStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x13

    iget-object v2, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->tmepDigitsStr:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->tmepDigitsStr:Ljava/lang/String;

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->digitsTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->tmepDigitsStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    iget-object v0, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->tmepDigitsStr:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->showHidePhoneNP2(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public handlerDialBtnEvent()V
    .locals 3

    .line 326
    iget-object v0, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->digitsStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 327
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpCurrentState(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x8c

    if-ne v1, v0, :cond_3

    .line 329
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->digitsStr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->reqHfpDialCall(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 331
    :cond_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getDeviceInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 332
    iget-object v0, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->btn_key_listener_change_common:Landroid/widget/Button;

    if-nez v0, :cond_2

    .line 333
    iget-object v0, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->digitsTv:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 334
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getLastCallNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->digitsStr:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    .line 336
    iput-object v0, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->digitsStr:Ljava/lang/String;

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->digitsTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->digitsStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    iget-object v0, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->digitsStr:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->showHidePhoneNP2(Ljava/lang/String;)V

    goto :goto_0

    .line 342
    :cond_2
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->reqHfpReDial(Ljava/lang/String;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public handlerHandupEvent()V
    .locals 2

    .line 348
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->reqHfpTerminateOngoingCall(Ljava/lang/String;)V

    return-void
.end method

.method public keyEventHandler(Ljava/lang/String;)V
    .locals 3

    .line 300
    iget-object v0, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->digitsStr:Ljava/lang/String;

    iput-object v0, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->tmepDigitsStr:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x12

    if-le v0, v1, :cond_0

    .line 302
    iget-object v0, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->digitsStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    iget-object v1, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->digitsStr:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->tmepDigitsStr:Ljava/lang/String;

    .line 304
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->digitsStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->digitsStr:Ljava/lang/String;

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->tmepDigitsStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->tmepDigitsStr:Ljava/lang/String;

    .line 306
    iget-object v1, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->digitsTv:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    iget-object v0, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->tmepDigitsStr:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->showHidePhoneNP2(Ljava/lang/String;)V

    .line 308
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->getMainActivity()Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->getMainActivity()Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->inInCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 309
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->reqHfpSendDtmf(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 77
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 82
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 354
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string p1, "#"

    .line 400
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->keyEventHandler(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 413
    :sswitch_1
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object p1

    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->reqHfpAudioTransfer(Ljava/lang/String;B)Z

    goto/16 :goto_0

    :sswitch_2
    const-string p1, "*"

    .line 392
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->keyEventHandler(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 473
    :sswitch_3
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object p1

    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->reqHfpAudioTransfer(Ljava/lang/String;B)Z

    goto/16 :goto_0

    .line 470
    :sswitch_4
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->reqHfpMicMute()Z

    goto/16 :goto_0

    :sswitch_5
    const p1, 0x7f040014

    .line 462
    invoke-static {p1}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result p1

    const/16 v1, 0x34

    if-ne p1, v1, :cond_0

    .line 463
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->handlerHandupEvent()V

    goto/16 :goto_0

    .line 465
    :cond_0
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->getMainActivity()Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    move-result-object p1

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->showFragment(ZI)V

    goto/16 :goto_0

    .line 457
    :sswitch_6
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->handlerHandupEvent()V

    goto/16 :goto_0

    .line 409
    :sswitch_7
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->handlerBackSpace()V

    goto :goto_0

    .line 424
    :sswitch_8
    invoke-static {}, Lcom/hzbhd/midwareproxy/utils/DebugUtilsForBTCall;->getInstance()Lcom/hzbhd/midwareproxy/utils/DebugUtilsForBTCall;

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->digitsStr:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/hzbhd/midwareproxy/utils/DebugUtilsForBTCall;->handleDebugStr(Landroid/content/Context;Ljava/lang/String;)V

    .line 425
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->handlerDialBtnEvent()V

    goto :goto_0

    .line 418
    :sswitch_9
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->isCallingFlag()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 419
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->getMainActivity()Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->showCallFragment()V

    goto :goto_0

    :sswitch_a
    const-string p1, "+"

    .line 404
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->keyEventHandler(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_b
    const-string p1, "9"

    .line 388
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->keyEventHandler(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_c
    const-string p1, "8"

    .line 384
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->keyEventHandler(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_d
    const-string p1, "7"

    .line 380
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->keyEventHandler(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_e
    const-string p1, "6"

    .line 376
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->keyEventHandler(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_f
    const-string p1, "5"

    .line 372
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->keyEventHandler(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_10
    const-string p1, "4"

    .line 368
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->keyEventHandler(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_11
    const-string p1, "3"

    .line 364
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->keyEventHandler(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_12
    const-string p1, "2"

    .line 360
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->keyEventHandler(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_13
    const-string p1, "1"

    .line 356
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->keyEventHandler(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_14
    const-string p1, "0"

    .line 396
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->keyEventHandler(Ljava/lang/String;)V

    .line 481
    :cond_1
    :goto_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->playBeep()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09005f -> :sswitch_14
        0x7f090062 -> :sswitch_13
        0x7f090065 -> :sswitch_12
        0x7f090068 -> :sswitch_11
        0x7f09006b -> :sswitch_10
        0x7f09006e -> :sswitch_f
        0x7f090071 -> :sswitch_e
        0x7f090074 -> :sswitch_d
        0x7f090077 -> :sswitch_c
        0x7f09007a -> :sswitch_b
        0x7f09007e -> :sswitch_a
        0x7f090083 -> :sswitch_9
        0x7f090084 -> :sswitch_8
        0x7f090087 -> :sswitch_7
        0x7f09008d -> :sswitch_6
        0x7f090093 -> :sswitch_5
        0x7f090095 -> :sswitch_4
        0x7f09009e -> :sswitch_3
        0x7f0900b4 -> :sswitch_8
        0x7f090124 -> :sswitch_5
        0x7f090125 -> :sswitch_7
        0x7f090127 -> :sswitch_8
        0x7f090159 -> :sswitch_2
        0x7f09015b -> :sswitch_1
        0x7f09015c -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 87
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 88
    new-instance p1, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment$1;

    invoke-direct {p1, p0}, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment$1;-><init>(Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;)V

    invoke-static {p1}, Lcom/hzbhd/bluetooth/MainActivity;->RegisterDialpad(Lcom/hzbhd/bluetooth/dialpad/DialpadFragment$remoteCotrol;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    .line 111
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 118
    invoke-static {}, Lcom/hzbhd/midware/constant/CustomerIDConstantDef;->canShowBTiMode()Z

    move-result p3

    const v0, 0x7f040030

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 119
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResId(I)I

    move-result p3

    invoke-virtual {p1, p3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 121
    :cond_0
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResId(I)I

    move-result p3

    invoke-virtual {p1, p3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 124
    :goto_0
    sget-object p2, Lcom/hzbhd/bluetooth/constants/BluetoothConstants;->DIALPAD_KEY_IDS:[I

    array-length p2, p2

    if-ge v1, p2, :cond_4

    .line 125
    sget-object p2, Lcom/hzbhd/bluetooth/constants/BluetoothConstants;->DIALPAD_KEY_IDS:[I

    array-length p2, p2

    add-int/lit8 p2, p2, -0x1

    const/16 p3, 0x9

    if-eq v1, p2, :cond_2

    sget-object p2, Lcom/hzbhd/bluetooth/constants/BluetoothConstants;->DIALPAD_KEY_IDS:[I

    array-length p2, p2

    add-int/lit8 p2, p2, -0x2

    if-ne v1, p2, :cond_1

    goto :goto_1

    .line 132
    :cond_1
    sget-object p2, Lcom/hzbhd/bluetooth/constants/BluetoothConstants;->DIALPAD_KEY_IDS:[I

    aget p2, p2, v1

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 133
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-ne v1, p3, :cond_3

    .line 135
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_2

    .line 126
    :cond_2
    :goto_1
    sget-object p2, Lcom/hzbhd/bluetooth/constants/BluetoothConstants;->DIALPAD_KEY_IDS:[I

    aget p2, p2, v1

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 127
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-ne v1, p3, :cond_3

    .line 129
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const p2, 0x7f040015

    .line 139
    invoke-static {p2}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResStr(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "H1"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    const p3, 0x7f09007e

    .line 140
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    const p3, 0x7f090129

    .line 142
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->digitsTv:Landroid/widget/TextView;

    const p3, 0x7f0901af

    .line 143
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->leftLayout:Landroid/view/View;

    const p3, 0x7f09022f

    .line 144
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->textPhone:Landroid/widget/TextView;

    const p3, 0x7f090246

    .line 145
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->tv_connect_devices:Landroid/widget/TextView;

    const p3, 0x7f090258

    .line 146
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->tv_this_devices:Landroid/widget/TextView;

    const p3, 0x7f090255

    .line 147
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->tv_pin:Landroid/widget/TextView;

    const p3, 0x7f090125

    .line 148
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageButton;

    const v0, 0x7f090127

    .line 149
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->dialBtn:Landroid/widget/ImageButton;

    const v0, 0x7f090087

    .line 151
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_6

    .line 153
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_6
    const v0, 0x7f090084

    .line 156
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_7

    .line 158
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_7
    const v0, 0x7f090083

    .line 162
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_8

    .line 164
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    const v0, 0x7f090095

    .line 167
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->mMuteButton:Landroid/widget/Button;

    const v0, 0x7f09009e

    .line 168
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->mSwitchButton:Landroid/widget/Button;

    .line 169
    iget-object v0, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->mMuteButton:Landroid/widget/Button;

    if-eqz v0, :cond_9

    .line 170
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    :cond_9
    iget-object v0, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->mSwitchButton:Landroid/widget/Button;

    if-eqz v0, :cond_a

    .line 173
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    const v0, 0x7f090124

    .line 176
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->backBtn:Landroid/widget/ImageButton;

    const v0, 0x7f090093

    .line 177
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->btn_key_listener_change_common:Landroid/widget/Button;

    if-eqz v0, :cond_b

    .line 179
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    const v0, 0x7f09008d

    .line 182
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->btn_key_hanpup_common:Landroid/widget/Button;

    if-eqz v0, :cond_c

    .line 184
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    :cond_c
    invoke-static {p2}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResStr(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "M1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    const p2, 0x7f09015b

    .line 187
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    :cond_d
    invoke-virtual {p3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    invoke-virtual {p3, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 191
    iget-object p2, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->dialBtn:Landroid/widget/ImageButton;

    invoke-virtual {p2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object p2, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->dialBtn:Landroid/widget/ImageButton;

    invoke-virtual {p2, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 193
    iget-object p2, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->backBtn:Landroid/widget/ImageButton;

    invoke-virtual {p2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f04000f

    .line 196
    invoke-static {p2}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResBool(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->isneed_showredialnum_shortclick:Z

    const-string/jumbo p2, "sw-ap006"

    const-string p3, "---------BluetoothDialpadFragment.onCreateView()-----------"

    .line 198
    invoke-static {p2, p3}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-direct {p0, p1}, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->initPA6(Landroid/view/View;)V

    .line 200
    invoke-direct {p0, p1}, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->initPC6(Landroid/view/View;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 206
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 211
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 213
    :try_start_0
    const-class v0, Landroid/support/v4/app/Fragment;

    const-string v1, "mChildFragmentManager"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 214
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v1, 0x0

    .line 215
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 219
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 217
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 493
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v0, ""

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 495
    :sswitch_0
    iget-object p1, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->btn_key_listener_change_common:Landroid/widget/Button;

    if-nez p1, :cond_3

    .line 496
    iget-object p1, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->digitsTv:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 497
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getLastCallNumber()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->digitsStr:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 499
    iput-object v0, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->digitsStr:Ljava/lang/String;

    .line 501
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->digitsTv:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->digitsStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 502
    iget-object p1, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->digitsStr:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->showHidePhoneNP2(Ljava/lang/String;)V

    goto :goto_0

    .line 504
    :cond_1
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object p1

    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->reqHfpReDial(Ljava/lang/String;)Z

    goto :goto_0

    .line 515
    :sswitch_1
    iget-object p1, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->digitsTv:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    .line 516
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 518
    :cond_2
    iput-object v0, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->digitsStr:Ljava/lang/String;

    .line 519
    invoke-direct {p0, v0}, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->showHidePhoneNP2(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    const-string p1, "+"

    .line 510
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->keyEventHandler(Ljava/lang/String;)V

    .line 523
    :cond_3
    :goto_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->playBeep()V

    const/4 p1, 0x1

    return p1

    :sswitch_data_0
    .sparse-switch
        0x7f09005f -> :sswitch_2
        0x7f090087 -> :sswitch_1
        0x7f090125 -> :sswitch_1
        0x7f090127 -> :sswitch_0
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    .line 225
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 0

    .line 230
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 235
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 236
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->updateDialpadUI()V

    const-string/jumbo v0, "sw-ap006"

    const-string v1, "---------BluetoothDialpadFragment.onResume()-----------"

    .line 237
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->tv_connect_devices:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 239
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v1

    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothRemoteDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->tv_this_devices:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 241
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothLocalAdapterName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->tv_pin:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 243
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getPinCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 290
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 295
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    return-void
.end method

.method public setCallAudioState(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x7f040015

    .line 545
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResStr(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "M6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 547
    iget-object p1, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->mSwitchButton:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_0

    .line 549
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->mSwitchButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setMuteState(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x7f0a0012

    const v1, 0x7f040014

    if-nez p1, :cond_0

    .line 534
    invoke-static {v1}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 535
    iget-object p1, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->mMuteButton:Landroid/widget/Button;

    const v0, 0x7f0812e3

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 538
    :cond_0
    invoke-static {v1}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 539
    iget-object p1, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->mMuteButton:Landroid/widget/Button;

    const v0, 0x7f0812e4

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateDialpadUI()V
    .locals 5

    const-string v0, "DDDDD83"

    const-string v1, "Noooooo"

    .line 248
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    .line 249
    iput-object v0, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->digitsStr:Ljava/lang/String;

    .line 250
    iget-object v1, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->digitsTv:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 251
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    invoke-direct {p0, v0}, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->showHidePhoneNP2(Ljava/lang/String;)V

    .line 254
    :cond_0
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->getMainActivity()Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    move-result-object v0

    const v1, 0x7f040014

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->getMainActivity()Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->inInCall()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 255
    iget-object v0, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->btn_key_listener_change_common:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 257
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 258
    iget-object v0, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->btn_key_hanpup_common:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2

    .line 260
    :cond_1
    invoke-static {v1}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v0

    const/16 v1, 0x34

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 263
    :cond_2
    iget-object v0, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->dialBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 266
    :goto_0
    iget-object v0, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->backBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_2

    .line 269
    :cond_3
    iget-object v0, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->btn_key_listener_change_common:Landroid/widget/Button;

    if-eqz v0, :cond_6

    .line 271
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 272
    invoke-static {v1}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-eq v0, v1, :cond_5

    const v0, 0x7f040015

    .line 273
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResStr(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "M1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 276
    :cond_4
    iget-object v0, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->btn_key_hanpup_common:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2

    .line 274
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->btn_key_hanpup_common:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2

    .line 279
    :cond_6
    iget-object v0, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->dialBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 281
    iget-object v0, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->backBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_2
    const-string/jumbo v0, "sw-ap006"

    const-string v1, "---------BluetoothDialpadFragment.onResume()-----------"

    .line 284
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
