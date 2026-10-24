.class public abstract Lcom/hzbhd/bluetooth/MainActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/bluetooth/MainActivity$ButtonOnClickListener;,
        Lcom/hzbhd/bluetooth/MainActivity$BluetoothScanReceiver;,
        Lcom/hzbhd/bluetooth/MainActivity$ContralReceiver;
    }
.end annotation


# static fields
.field public static final A2DP_PLAY_FRAGMENT_TAG:Ljava/lang/String; = "a2dp_fragment"

.field public static final CALLLOG_FRAGMENT_TAG:Ljava/lang/String; = "calllog_fragment"

.field public static final CALL_FRAGMENT_TAG:Ljava/lang/String; = "call_fragment"

.field public static final CONTACTS_EDIT_FRAGMENT_TAG:Ljava/lang/String; = "contacts_edit_fragment"

.field public static final CONTACTS_FRAGMENT_TAG:Ljava/lang/String; = "contacts_fragment"

.field public static final DIALPAD_FRAGMENT_TAG:Ljava/lang/String; = "dialpad_fragment"

.field public static final FAVORITES_FRAGMENT_TAG:Ljava/lang/String; = "favorites_fragment"

.field public static final FRAGMENT_INDEX_A2DP:I = 0x6

.field public static final FRAGMENT_INDEX_A2DP_PLAY:I = 0x9

.field public static final FRAGMENT_INDEX_CALL:I = 0x7

.field public static final FRAGMENT_INDEX_CALL_LOG:I = 0x3

.field public static final FRAGMENT_INDEX_CONTACTS:I = 0x4

.field public static final FRAGMENT_INDEX_DIALER:I = 0x2

.field public static final FRAGMENT_INDEX_NON:I = -0x1

.field public static final FRAGMENT_INDEX_PAIR:I = 0x0

.field public static final FRAGMENT_INDEX_SETTINGS:I = 0x5

.field public static final PAIRLIST_FRAGMENT_TAG:Ljava/lang/String; = "pair_list_fragment"

.field public static final PREF_LAST_SELECTED_TAB:Ljava/lang/String; = "last_manually_selected_tab"

.field public static final SCANNING_FRAGMENT_TAG:Ljava/lang/String; = "scanning_fragment"

.field public static final SCAN_FRAGMENT_TAG:Ljava/lang/String; = "scan_fragment"

.field public static final SETTING_FRAGMENT_TAG:Ljava/lang/String; = "setting_fragment"

.field public static mRemoteCotrol:Lcom/hzbhd/bluetooth/dialpad/DialpadFragment$remoteCotrol;


# instance fields
.field private final MSG_DISMISS_PROGRESS_DIALOG:I

.field private final MSG_POP_DIALOG:I

.field private final MSG_WHAT_GOTO_SCAN_LIST:I

.field private final MSG_WHAT_SET_CURRENT_ITEM:I

.field private final TAG:Ljava/lang/String;

.field private confirmDialog:Landroid/app/Dialog;

.field private confirmMsgTv:Landroid/widget/TextView;

.field public currentFragmentIndex:I

.field private digitsStr:Ljava/lang/String;

.field private digitsTv:Landroid/widget/TextView;

.field private infoMsgTv:Landroid/widget/TextView;

.field public isInA2dpView:Z

.field public lastFragmentIndex:I

.field private loadMsgTv:Landroid/widget/TextView;

.field private load_iv_id_n54:Landroid/widget/ImageView;

.field public mA2dpPlayFragment:Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;

.field private mConReceiver:Lcom/hzbhd/bluetooth/MainActivity$ContralReceiver;

.field private mCoverBgPopupWindow:Landroid/widget/PopupWindow;

.field private mHandler:Landroid/os/Handler;

.field private mLoadAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field public mPairedListFragment:Lcom/hzbhd/bluetooth/paired/PairedListFragment;

.field private mPinCodeWindow:Landroid/widget/PopupWindow;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mServiceBackListenr:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceCallbackListener;

.field public mSettingsFragment:Lcom/hzbhd/bluetooth/settings/SettingsFragment;

.field private maxWidth:F

.field private popupInfoDialog:Landroid/app/Dialog;

.field private progressDialog:Landroid/app/Dialog;

.field private tmepDigitsStr:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 60
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    const-string v0, "BtMainActivity"

    .line 62
    iput-object v0, p0, Lcom/hzbhd/bluetooth/MainActivity;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 78
    iput v0, p0, Lcom/hzbhd/bluetooth/MainActivity;->MSG_WHAT_SET_CURRENT_ITEM:I

    const/4 v1, 0x1

    .line 79
    iput v1, p0, Lcom/hzbhd/bluetooth/MainActivity;->MSG_WHAT_GOTO_SCAN_LIST:I

    const/4 v1, 0x2

    .line 80
    iput v1, p0, Lcom/hzbhd/bluetooth/MainActivity;->MSG_DISMISS_PROGRESS_DIALOG:I

    const/4 v1, 0x3

    .line 81
    iput v1, p0, Lcom/hzbhd/bluetooth/MainActivity;->MSG_POP_DIALOG:I

    const/4 v1, -0x1

    .line 97
    iput v1, p0, Lcom/hzbhd/bluetooth/MainActivity;->currentFragmentIndex:I

    .line 98
    iput v1, p0, Lcom/hzbhd/bluetooth/MainActivity;->lastFragmentIndex:I

    .line 99
    iput-boolean v0, p0, Lcom/hzbhd/bluetooth/MainActivity;->isInA2dpView:Z

    .line 204
    new-instance v0, Lcom/hzbhd/bluetooth/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/hzbhd/bluetooth/MainActivity$1;-><init>(Lcom/hzbhd/bluetooth/MainActivity;)V

    iput-object v0, p0, Lcom/hzbhd/bluetooth/MainActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 402
    new-instance v0, Lcom/hzbhd/bluetooth/MainActivity$2;

    invoke-direct {v0, p0}, Lcom/hzbhd/bluetooth/MainActivity$2;-><init>(Lcom/hzbhd/bluetooth/MainActivity;)V

    iput-object v0, p0, Lcom/hzbhd/bluetooth/MainActivity;->mHandler:Landroid/os/Handler;

    .line 432
    new-instance v0, Lcom/hzbhd/bluetooth/MainActivity$3;

    invoke-direct {v0, p0}, Lcom/hzbhd/bluetooth/MainActivity$3;-><init>(Lcom/hzbhd/bluetooth/MainActivity;)V

    iput-object v0, p0, Lcom/hzbhd/bluetooth/MainActivity;->mServiceBackListenr:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceCallbackListener;

    return-void
.end method

.method public static RegisterDialpad(Lcom/hzbhd/bluetooth/dialpad/DialpadFragment$remoteCotrol;)V
    .locals 0

    .line 219
    sput-object p0, Lcom/hzbhd/bluetooth/MainActivity;->mRemoteCotrol:Lcom/hzbhd/bluetooth/dialpad/DialpadFragment$remoteCotrol;

    return-void
.end method

.method static synthetic access$000(Lcom/hzbhd/bluetooth/MainActivity;)Landroid/os/Handler;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/hzbhd/bluetooth/MainActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/hzbhd/bluetooth/MainActivity;)Landroid/widget/PopupWindow;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/hzbhd/bluetooth/MainActivity;->mCoverBgPopupWindow:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic access$200(Lcom/hzbhd/bluetooth/MainActivity;)Ljava/lang/String;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/hzbhd/bluetooth/MainActivity;->digitsStr:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/hzbhd/bluetooth/MainActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/hzbhd/bluetooth/MainActivity;->digitsStr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/hzbhd/bluetooth/MainActivity;)Ljava/lang/String;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/hzbhd/bluetooth/MainActivity;->tmepDigitsStr:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lcom/hzbhd/bluetooth/MainActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/hzbhd/bluetooth/MainActivity;->tmepDigitsStr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/hzbhd/bluetooth/MainActivity;)Landroid/widget/TextView;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/hzbhd/bluetooth/MainActivity;->digitsTv:Landroid/widget/TextView;

    return-object p0
.end method

.method private isCustNeedSwcNumKey()Z
    .locals 2

    .line 951
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getDeviceInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 952
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getDeviceInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 953
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getDeviceInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public abstract closeActivity()V
.end method

.method public dismissConfirmDialog()V
    .locals 1

    .line 681
    iget-object v0, p0, Lcom/hzbhd/bluetooth/MainActivity;->confirmDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 682
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 683
    iput-object v0, p0, Lcom/hzbhd/bluetooth/MainActivity;->confirmDialog:Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method public dismissPinCodeWindow()V
    .locals 1

    .line 905
    iget-object v0, p0, Lcom/hzbhd/bluetooth/MainActivity;->mPinCodeWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 906
    iget-object v0, p0, Lcom/hzbhd/bluetooth/MainActivity;->mPinCodeWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 908
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/bluetooth/MainActivity;->mCoverBgPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 909
    iget-object v0, p0, Lcom/hzbhd/bluetooth/MainActivity;->mCoverBgPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_1
    return-void
.end method

.method public dismissPopupInfoDialog()V
    .locals 1

    .line 642
    iget-object v0, p0, Lcom/hzbhd/bluetooth/MainActivity;->popupInfoDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 643
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 644
    iput-object v0, p0, Lcom/hzbhd/bluetooth/MainActivity;->popupInfoDialog:Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method public dismissProgressDialog()V
    .locals 1

    .line 567
    iget-object v0, p0, Lcom/hzbhd/bluetooth/MainActivity;->progressDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 568
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/MainActivity;->stopAnimation()V

    .line 569
    iget-object v0, p0, Lcom/hzbhd/bluetooth/MainActivity;->progressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 570
    iput-object v0, p0, Lcom/hzbhd/bluetooth/MainActivity;->progressDialog:Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method public fullScreenChange(Z)V
    .locals 3

    const v0, 0x7f040051

    .line 915
    invoke-static {p0, v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResBool(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x200

    if-eqz p1, :cond_1

    .line 920
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 921
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x800

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 922
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 923
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 926
    :cond_1
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 927
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, -0x801

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 928
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 929
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 931
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----fullScreenChange()----fullScreen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BtMainActivity"

    invoke-static {v0, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getPreference(Ljava/lang/String;I)I
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/hzbhd/bluetooth/MainActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public hideTopBar()V
    .locals 0

    return-void
.end method

.method public initConfirmDialog(Ljava/lang/String;Landroid/content/Intent;Z)V
    .locals 2

    .line 654
    iget-object v0, p0, Lcom/hzbhd/bluetooth/MainActivity;->confirmDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 655
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f0e0173

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/hzbhd/bluetooth/MainActivity;->confirmDialog:Landroid/app/Dialog;

    .line 656
    invoke-virtual {v0, p3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 657
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f0b02b3

    const/4 v1, 0x0

    .line 658
    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f090107

    .line 659
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 660
    new-instance v1, Lcom/hzbhd/bluetooth/MainActivity$ButtonOnClickListener;

    invoke-direct {v1, p0}, Lcom/hzbhd/bluetooth/MainActivity$ButtonOnClickListener;-><init>(Lcom/hzbhd/bluetooth/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 661
    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f090106

    .line 662
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 663
    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 664
    new-instance p2, Lcom/hzbhd/bluetooth/MainActivity$ButtonOnClickListener;

    invoke-direct {p2, p0}, Lcom/hzbhd/bluetooth/MainActivity$ButtonOnClickListener;-><init>(Lcom/hzbhd/bluetooth/MainActivity;)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090105

    .line 665
    invoke-virtual {p3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/hzbhd/bluetooth/MainActivity;->confirmMsgTv:Landroid/widget/TextView;

    .line 666
    iget-object p2, p0, Lcom/hzbhd/bluetooth/MainActivity;->confirmDialog:Landroid/app/Dialog;

    invoke-virtual {p2, p3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 667
    iget-object p2, p0, Lcom/hzbhd/bluetooth/MainActivity;->confirmMsgTv:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 668
    iget-object p1, p0, Lcom/hzbhd/bluetooth/MainActivity;->confirmDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 670
    :cond_0
    iget-object p2, p0, Lcom/hzbhd/bluetooth/MainActivity;->confirmMsgTv:Landroid/widget/TextView;

    if-eqz p2, :cond_1

    .line 671
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 673
    :cond_1
    iget-object p1, p0, Lcom/hzbhd/bluetooth/MainActivity;->confirmDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_2

    .line 674
    iget-object p1, p0, Lcom/hzbhd/bluetooth/MainActivity;->confirmDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_2
    :goto_0
    return-void
.end method

.method public initPinCodeWindow()V
    .locals 7

    .line 732
    iget-object v0, p0, Lcom/hzbhd/bluetooth/MainActivity;->mPinCodeWindow:Landroid/widget/PopupWindow;

    if-nez v0, :cond_2

    .line 733
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b02cf

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 734
    iget v1, p0, Lcom/hzbhd/bluetooth/MainActivity;->maxWidth:F

    const v3, 0x44484000    # 801.0f

    cmpg-float v1, v1, v3

    const/4 v4, 0x1

    if-gez v1, :cond_0

    .line 735
    new-instance v1, Landroid/widget/PopupWindow;

    const/16 v5, 0x1f4

    const/16 v6, 0x1a0

    invoke-direct {v1, v0, v5, v6, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v1, p0, Lcom/hzbhd/bluetooth/MainActivity;->mPinCodeWindow:Landroid/widget/PopupWindow;

    goto :goto_0

    .line 737
    :cond_0
    new-instance v1, Landroid/widget/PopupWindow;

    const/16 v5, 0x2a8

    const/16 v6, 0x212

    invoke-direct {v1, v0, v5, v6, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v1, p0, Lcom/hzbhd/bluetooth/MainActivity;->mPinCodeWindow:Landroid/widget/PopupWindow;

    .line 739
    :goto_0
    iget-object v1, p0, Lcom/hzbhd/bluetooth/MainActivity;->mPinCodeWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 740
    iget-object v1, p0, Lcom/hzbhd/bluetooth/MainActivity;->mPinCodeWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 741
    iget-object v1, p0, Lcom/hzbhd/bluetooth/MainActivity;->mPinCodeWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f081653

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 742
    iget-object v1, p0, Lcom/hzbhd/bluetooth/MainActivity;->mPinCodeWindow:Landroid/widget/PopupWindow;

    const v5, 0x7f0e0168

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 743
    iget-object v1, p0, Lcom/hzbhd/bluetooth/MainActivity;->mPinCodeWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 744
    iget-object v1, p0, Lcom/hzbhd/bluetooth/MainActivity;->mPinCodeWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 745
    iget-object v1, p0, Lcom/hzbhd/bluetooth/MainActivity;->mPinCodeWindow:Landroid/widget/PopupWindow;

    new-instance v5, Lcom/hzbhd/bluetooth/MainActivity$4;

    invoke-direct {v5, p0}, Lcom/hzbhd/bluetooth/MainActivity$4;-><init>(Lcom/hzbhd/bluetooth/MainActivity;)V

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 754
    iget v1, p0, Lcom/hzbhd/bluetooth/MainActivity;->maxWidth:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    .line 755
    new-instance v1, Landroid/widget/PopupWindow;

    const/16 v3, 0x320

    const/16 v5, 0x1e0

    invoke-direct {v1, v3, v5}, Landroid/widget/PopupWindow;-><init>(II)V

    iput-object v1, p0, Lcom/hzbhd/bluetooth/MainActivity;->mCoverBgPopupWindow:Landroid/widget/PopupWindow;

    goto :goto_1

    .line 757
    :cond_1
    new-instance v1, Landroid/widget/PopupWindow;

    const/16 v3, 0x400

    const/16 v5, 0x258

    invoke-direct {v1, v3, v5}, Landroid/widget/PopupWindow;-><init>(II)V

    iput-object v1, p0, Lcom/hzbhd/bluetooth/MainActivity;->mCoverBgPopupWindow:Landroid/widget/PopupWindow;

    .line 759
    :goto_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f0b02b0

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 760
    iget-object v3, p0, Lcom/hzbhd/bluetooth/MainActivity;->mCoverBgPopupWindow:Landroid/widget/PopupWindow;

    const v5, 0x7f0e0167

    invoke-virtual {v3, v5}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 761
    iget-object v3, p0, Lcom/hzbhd/bluetooth/MainActivity;->mCoverBgPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 762
    iget-object v1, p0, Lcom/hzbhd/bluetooth/MainActivity;->mCoverBgPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    const v1, 0x7f0901a1

    .line 764
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hzbhd/bluetooth/widget/Keyboard;

    .line 765
    sget-object v1, Lcom/hzbhd/bluetooth/widget/Keyboard$KeyboardMode;->PIN:Lcom/hzbhd/bluetooth/widget/Keyboard$KeyboardMode;

    invoke-virtual {v0, v1}, Lcom/hzbhd/bluetooth/widget/Keyboard;->setMode(Lcom/hzbhd/bluetooth/widget/Keyboard$KeyboardMode;)V

    .line 766
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f0b02ba

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090129

    .line 767
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/hzbhd/bluetooth/MainActivity;->digitsTv:Landroid/widget/TextView;

    .line 768
    invoke-virtual {v0, v1}, Lcom/hzbhd/bluetooth/widget/Keyboard;->setView(Landroid/view/View;)V

    .line 780
    new-instance v1, Lcom/hzbhd/bluetooth/MainActivity$5;

    invoke-direct {v1, p0}, Lcom/hzbhd/bluetooth/MainActivity$5;-><init>(Lcom/hzbhd/bluetooth/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/hzbhd/bluetooth/widget/Keyboard;->setOnPinKeyboardClickListener(Lcom/hzbhd/bluetooth/widget/Keyboard$OnPinKeyboardClickListener;)V

    :cond_2
    return-void
.end method

.method public initPopupInfoDialog(Ljava/lang/String;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 609
    iget-object v0, p0, Lcom/hzbhd/bluetooth/MainActivity;->popupInfoDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 610
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f0e0173

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/hzbhd/bluetooth/MainActivity;->popupInfoDialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    .line 611
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 612
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b02d2

    const/4 v2, 0x0

    .line 613
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901f4

    .line 614
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/hzbhd/bluetooth/MainActivity;->infoMsgTv:Landroid/widget/TextView;

    .line 615
    iget-object v1, p0, Lcom/hzbhd/bluetooth/MainActivity;->popupInfoDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 617
    iget-object v0, p0, Lcom/hzbhd/bluetooth/MainActivity;->popupInfoDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 619
    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 620
    iget-object v0, p0, Lcom/hzbhd/bluetooth/MainActivity;->popupInfoDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 623
    :cond_1
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 624
    iget-object p1, p0, Lcom/hzbhd/bluetooth/MainActivity;->infoMsgTv:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 626
    :cond_2
    iget-object p2, p0, Lcom/hzbhd/bluetooth/MainActivity;->infoMsgTv:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 628
    :goto_1
    iget-object p1, p0, Lcom/hzbhd/bluetooth/MainActivity;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 629
    iget-object p1, p0, Lcom/hzbhd/bluetooth/MainActivity;->mHandler:Landroid/os/Handler;

    int-to-long v0, p3

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public initProgressDialog(I)V
    .locals 3

    .line 576
    iget-object v0, p0, Lcom/hzbhd/bluetooth/MainActivity;->progressDialog:Landroid/app/Dialog;

    if-nez v0, :cond_1

    .line 577
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f0e0173

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/hzbhd/bluetooth/MainActivity;->progressDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    .line 579
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 580
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040049

    .line 581
    invoke-static {v1}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResId(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901cb

    .line 583
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/hzbhd/bluetooth/MainActivity;->loadMsgTv:Landroid/widget/TextView;

    const v1, 0x7f0901ca

    .line 584
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 585
    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/hzbhd/bluetooth/MainActivity;->load_iv_id_n54:Landroid/widget/ImageView;

    .line 586
    :cond_0
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f04004a

    invoke-static {v2}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v1, p0, Lcom/hzbhd/bluetooth/MainActivity;->mLoadAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 589
    iget-object v1, p0, Lcom/hzbhd/bluetooth/MainActivity;->progressDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 590
    iget-object v0, p0, Lcom/hzbhd/bluetooth/MainActivity;->loadMsgTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 592
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/MainActivity;->startAnimation()V

    .line 593
    iget-object p1, p0, Lcom/hzbhd/bluetooth/MainActivity;->progressDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 595
    :cond_1
    iget-object v0, p0, Lcom/hzbhd/bluetooth/MainActivity;->loadMsgTv:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 596
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 598
    :cond_2
    iget-object p1, p0, Lcom/hzbhd/bluetooth/MainActivity;->progressDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_3

    .line 599
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/MainActivity;->startAnimation()V

    .line 600
    iget-object p1, p0, Lcom/hzbhd/bluetooth/MainActivity;->progressDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_3
    :goto_0
    return-void
.end method

.method public isA2DPConnected()Z
    .locals 2

    .line 332
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getA2dpCurrentState()I

    move-result v0

    const/16 v1, 0x8c

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCallingFlag()Z
    .locals 1

    .line 340
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->isCallingFlag()Z

    move-result v0

    return v0
.end method

.method public isHfpConnected()Z
    .locals 2

    .line 324
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpCurrentState(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x8c

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public keyEventHandler(Ljava/lang/String;)V
    .locals 2

    .line 876
    iget-object v0, p0, Lcom/hzbhd/bluetooth/MainActivity;->digitsStr:Ljava/lang/String;

    iput-object v0, p0, Lcom/hzbhd/bluetooth/MainActivity;->tmepDigitsStr:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 877
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    return-void

    .line 880
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/hzbhd/bluetooth/MainActivity;->digitsStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hzbhd/bluetooth/MainActivity;->digitsStr:Ljava/lang/String;

    .line 881
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/hzbhd/bluetooth/MainActivity;->tmepDigitsStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/bluetooth/MainActivity;->tmepDigitsStr:Ljava/lang/String;

    .line 882
    iget-object v0, p0, Lcom/hzbhd/bluetooth/MainActivity;->digitsTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 153
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 154
    iget-object v0, p0, Lcom/hzbhd/bluetooth/MainActivity;->mSettingsFragment:Lcom/hzbhd/bluetooth/settings/SettingsFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/hzbhd/bluetooth/MainActivity;->mSettingsFragment:Lcom/hzbhd/bluetooth/settings/SettingsFragment;

    invoke-virtual {v0}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->hideInputMethod()V

    goto :goto_0

    .line 157
    :cond_0
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/MainActivity;->finish()V

    :goto_0
    const-string v0, "BtMainActivity"

    const-string v1, "-----onBackPressed()-----"

    .line 159
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 134
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 135
    invoke-static {p0}, Lcom/hzbhd/bluetooth/Bluetooth;->addMainActivity(Lcom/hzbhd/bluetooth/MainActivity;)V

    .line 136
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/bluetooth/MainActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 138
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object p1

    iget-object v0, p0, Lcom/hzbhd/bluetooth/MainActivity;->mServiceBackListenr:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceCallbackListener;

    invoke-virtual {p1, v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->registerServiceBackListenr(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceCallbackListener;)V

    .line 140
    new-instance p1, Lcom/hzbhd/bluetooth/MainActivity$ContralReceiver;

    invoke-direct {p1, p0}, Lcom/hzbhd/bluetooth/MainActivity$ContralReceiver;-><init>(Lcom/hzbhd/bluetooth/MainActivity;)V

    iput-object p1, p0, Lcom/hzbhd/bluetooth/MainActivity;->mConReceiver:Lcom/hzbhd/bluetooth/MainActivity$ContralReceiver;

    .line 141
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 142
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.hzbhd.action.sourceUIfinish"

    .line 143
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/hzbhd/bluetooth/MainActivity;->mConReceiver:Lcom/hzbhd/bluetooth/MainActivity$ContralReceiver;

    invoke-virtual {p0, v0, p1}, Lcom/hzbhd/bluetooth/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 146
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/MainActivity;->fullScreenChange(Z)V

    .line 147
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07086a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/hzbhd/bluetooth/MainActivity;->maxWidth:F

    const-string p1, "BtMainActivity"

    const-string v0, "------onCreate()------"

    .line 148
    invoke-static {p1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected onDestroy()V
    .locals 2

    .line 184
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 185
    invoke-static {}, Lcom/hzbhd/bluetooth/Bluetooth;->removeMainActivity()V

    .line 186
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/hzbhd/bluetooth/MainActivity;->mServiceBackListenr:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceCallbackListener;

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->unRegisterServiceBackListenr(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceCallbackListener;)V

    .line 187
    iget-object v0, p0, Lcom/hzbhd/bluetooth/MainActivity;->mConReceiver:Lcom/hzbhd/bluetooth/MainActivity$ContralReceiver;

    invoke-virtual {p0, v0}, Lcom/hzbhd/bluetooth/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string v0, "BtMainActivity"

    const-string v1, "------onDestroy()------"

    .line 188
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    .line 237
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 2

    .line 193
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 194
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/MainActivity;->isCustNeedSwcNumKey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/hzbhd/bluetooth/MainActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/hzbhd/bluetooth/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 197
    :cond_0
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/MainActivity;->dismissPinCodeWindow()V

    .line 198
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/MainActivity;->dismissPopupInfoDialog()V

    .line 199
    iget-object v0, p0, Lcom/hzbhd/bluetooth/MainActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const-string v0, "BtMainActivity"

    const-string v1, "------onPause()------"

    .line 200
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 224
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 225
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/MainActivity;->isCustNeedSwcNumKey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/hzbhd/bluetooth/MainActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.hzbhd.android.MCU_KEY_IND_ACTION"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/bluetooth/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    const-string v0, "BtMainActivity"

    const-string v1, "------onResume()------"

    .line 228
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public abstract releaseFragment(I)V
.end method

.method public setPreference(Ljava/lang/String;I)V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/hzbhd/bluetooth/MainActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setTopBarTitle(I)V
    .locals 0

    return-void
.end method

.method public showA2dpPlayFrament2()V
    .locals 5

    const-string v0, "BtMainActivity__sswang"

    const-string/jumbo v1, "showA2dpPlayFrament2: "

    .line 294
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget v0, p0, Lcom/hzbhd/bluetooth/MainActivity;->currentFragmentIndex:I

    iput v0, p0, Lcom/hzbhd/bluetooth/MainActivity;->lastFragmentIndex:I

    const/4 v0, 0x6

    .line 296
    iput v0, p0, Lcom/hzbhd/bluetooth/MainActivity;->currentFragmentIndex:I

    .line 297
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 298
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "a2dp_fragment"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    const v4, 0x7f09025e

    if-nez v2, :cond_1

    .line 300
    iget-object v2, p0, Lcom/hzbhd/bluetooth/MainActivity;->mA2dpPlayFragment:Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;

    if-nez v2, :cond_0

    .line 302
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 303
    invoke-static {v2}, Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;->newInstance(Landroid/os/Bundle;)Lcom/hzbhd/bluetooth/a2dp/A2dpPlayFragment;

    move-result-object v2

    .line 306
    :cond_0
    invoke-virtual {v1, v4, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    .line 313
    :cond_1
    invoke-virtual {v1, v4, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 315
    :goto_0
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 316
    invoke-virtual {p0, v0}, Lcom/hzbhd/bluetooth/MainActivity;->releaseFragment(I)V

    const-string v0, "BtMainActivity"

    const-string v1, "------showA2dpPlayFrament()------"

    .line 318
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public abstract showBackFragment(Z)V
.end method

.method public showConfirmDialog(Ljava/lang/String;Landroid/content/Intent;Z)V
    .locals 0

    .line 649
    invoke-virtual {p0, p1, p2, p3}, Lcom/hzbhd/bluetooth/MainActivity;->initConfirmDialog(Ljava/lang/String;Landroid/content/Intent;Z)V

    return-void
.end method

.method public abstract showFragment(ZI)V
.end method

.method public showPairedFrament()V
    .locals 5

    .line 242
    iget v0, p0, Lcom/hzbhd/bluetooth/MainActivity;->currentFragmentIndex:I

    iput v0, p0, Lcom/hzbhd/bluetooth/MainActivity;->lastFragmentIndex:I

    const/4 v0, 0x0

    .line 243
    iput v0, p0, Lcom/hzbhd/bluetooth/MainActivity;->currentFragmentIndex:I

    .line 244
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 245
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "pair_list_fragment"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    const v4, 0x7f09025e

    if-nez v2, :cond_1

    .line 247
    iget-object v2, p0, Lcom/hzbhd/bluetooth/MainActivity;->mPairedListFragment:Lcom/hzbhd/bluetooth/paired/PairedListFragment;

    if-nez v2, :cond_0

    .line 249
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 250
    invoke-static {v2}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->newInstance(Landroid/os/Bundle;)Lcom/hzbhd/bluetooth/paired/PairedListFragment;

    move-result-object v2

    .line 253
    :cond_0
    invoke-virtual {v1, v4, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    .line 260
    :cond_1
    invoke-virtual {v1, v4, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 262
    :goto_0
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 263
    invoke-virtual {p0, v0}, Lcom/hzbhd/bluetooth/MainActivity;->releaseFragment(I)V

    const-string v0, "BtMainActivity"

    const-string v1, "------showPairedFrament()------"

    .line 264
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showPinCodeWindow(Landroid/view/View;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 889
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/bluetooth/MainActivity;->digitsTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hzbhd/bluetooth/MainActivity;->digitsStr:Ljava/lang/String;

    const-string v0, ""

    .line 890
    iput-object v0, p0, Lcom/hzbhd/bluetooth/MainActivity;->tmepDigitsStr:Ljava/lang/String;

    .line 891
    iget-object v0, p0, Lcom/hzbhd/bluetooth/MainActivity;->mCoverBgPopupWindow:Landroid/widget/PopupWindow;

    const/16 v1, 0x50

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 892
    iget-object v0, p0, Lcom/hzbhd/bluetooth/MainActivity;->mCoverBgPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 894
    :cond_1
    iget-object v0, p0, Lcom/hzbhd/bluetooth/MainActivity;->mPinCodeWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 895
    iget v0, p0, Lcom/hzbhd/bluetooth/MainActivity;->maxWidth:F

    const v3, 0x44484000    # 801.0f

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2

    .line 896
    iget-object v0, p0, Lcom/hzbhd/bluetooth/MainActivity;->mPinCodeWindow:Landroid/widget/PopupWindow;

    const/16 v3, 0x90

    invoke-virtual {v0, p1, v1, v3, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 898
    :cond_2
    iget-object v0, p0, Lcom/hzbhd/bluetooth/MainActivity;->mPinCodeWindow:Landroid/widget/PopupWindow;

    const/16 v3, 0xaa

    invoke-virtual {v0, p1, v1, v3, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :cond_3
    :goto_0
    return-void
.end method

.method public declared-synchronized showPopupInfoDialog(II)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 635
    :try_start_0
    invoke-virtual {p0, v0, p1, p2}, Lcom/hzbhd/bluetooth/MainActivity;->initPopupInfoDialog(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 637
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 639
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public showProgressDialog(II)V
    .locals 3

    .line 548
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/MainActivity;->initProgressDialog(I)V

    if-lez p2, :cond_0

    .line 561
    iget-object p1, p0, Lcom/hzbhd/bluetooth/MainActivity;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 562
    iget-object p1, p0, Lcom/hzbhd/bluetooth/MainActivity;->mHandler:Landroid/os/Handler;

    int-to-long v1, p2

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public showSettingsFrament()V
    .locals 5

    .line 268
    iget v0, p0, Lcom/hzbhd/bluetooth/MainActivity;->currentFragmentIndex:I

    iput v0, p0, Lcom/hzbhd/bluetooth/MainActivity;->lastFragmentIndex:I

    const/4 v0, 0x5

    .line 269
    iput v0, p0, Lcom/hzbhd/bluetooth/MainActivity;->currentFragmentIndex:I

    .line 270
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 271
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "setting_fragment"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    const v4, 0x7f09025e

    if-nez v2, :cond_1

    .line 273
    iget-object v2, p0, Lcom/hzbhd/bluetooth/MainActivity;->mSettingsFragment:Lcom/hzbhd/bluetooth/settings/SettingsFragment;

    if-nez v2, :cond_0

    .line 275
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 276
    invoke-static {v2}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->newInstance(Landroid/os/Bundle;)Lcom/hzbhd/bluetooth/settings/SettingsFragment;

    move-result-object v2

    .line 279
    :cond_0
    invoke-virtual {v1, v4, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    .line 286
    :cond_1
    invoke-virtual {v1, v4, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 288
    :goto_0
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 289
    invoke-virtual {p0, v0}, Lcom/hzbhd/bluetooth/MainActivity;->releaseFragment(I)V

    return-void
.end method

.method public showTopBar()V
    .locals 0

    return-void
.end method

.method public startAnimation()V
    .locals 2

    const v0, 0x7f040051

    .line 935
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResBool(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 936
    iget-object v0, p0, Lcom/hzbhd/bluetooth/MainActivity;->load_iv_id_n54:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/hzbhd/bluetooth/MainActivity;->mLoadAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 937
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/bluetooth/MainActivity;->mLoadAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 938
    iget-object v0, p0, Lcom/hzbhd/bluetooth/MainActivity;->mLoadAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_1
    return-void
.end method

.method public stopAnimation()V
    .locals 2

    const v0, 0x7f040051

    .line 943
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResBool(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 944
    iget-object v0, p0, Lcom/hzbhd/bluetooth/MainActivity;->mLoadAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 945
    iget-object v0, p0, Lcom/hzbhd/bluetooth/MainActivity;->load_iv_id_n54:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const v1, 0x7f080500

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method
