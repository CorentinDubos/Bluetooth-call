.class public Lcom/hzbhd/bluetooth/paired/PairedListFragment;
.super Landroid/support/v4/app/Fragment;
.source "PairedListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/hzbhd/bluetooth/paired/PairListAdapter$PairListAdapterListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/bluetooth/paired/PairedListFragment$ChangeConnectionTask;,
        Lcom/hzbhd/bluetooth/paired/PairedListFragment$PairListOnItemClickListener;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private adapter:Lcom/hzbhd/bluetooth/paired/PairListAdapter;

.field private connectLinear:Landroid/widget/LinearLayout;

.field private disconnectLinear1:Landroid/widget/LinearLayout;

.field private handler:Landroid/os/Handler;

.field private isA2dp:Z

.field private iv_dialog:Landroid/widget/ImageView;

.field private mLoadAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mPiredOnclickListener_N54:Landroid/view/View$OnClickListener;

.field private objectAnimator:Landroid/animation/ObjectAnimator;

.field private pair_bt_name:Landroid/widget/TextView;

.field private pair_bt_pin_code:Landroid/widget/TextView;

.field private pair_connect:Landroid/widget/TextView;

.field private pair_del:Landroid/widget/TextView;

.field private pair_disconnect:Landroid/widget/TextView;

.field private pair_scan:Landroid/widget/TextView;

.field private pired_device_btn_connect_n54:Landroid/view/View;

.field private pired_device_btn_delete_n54:Landroid/view/View;

.field private pired_device_btn_disconnect_n54:Landroid/view/View;

.field private rl_dialog:Landroid/widget/RelativeLayout;

.field private scanningView:Landroid/widget/ImageView;

.field private topNaviBar:Landroid/widget/LinearLayout;

.field private tv_bluetooth_name:Landroid/widget/TextView;

.field private tv_bluetooth_pin:Landroid/widget/TextView;

.field private tv_connect_devices:Landroid/widget/TextView;

.field private tv_pin:Landroid/widget/TextView;

.field private tv_this_devices:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const-string v0, "PairedListFragment"

    .line 52
    iput-object v0, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->TAG:Ljava/lang/String;

    .line 529
    new-instance v0, Lcom/hzbhd/bluetooth/paired/PairedListFragment$3;

    invoke-direct {v0, p0}, Lcom/hzbhd/bluetooth/paired/PairedListFragment$3;-><init>(Lcom/hzbhd/bluetooth/paired/PairedListFragment;)V

    iput-object v0, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->handler:Landroid/os/Handler;

    .line 735
    new-instance v0, Lcom/hzbhd/bluetooth/paired/PairedListFragment$4;

    invoke-direct {v0, p0}, Lcom/hzbhd/bluetooth/paired/PairedListFragment$4;-><init>(Lcom/hzbhd/bluetooth/paired/PairedListFragment;)V

    iput-object v0, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->mPiredOnclickListener_N54:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/hzbhd/bluetooth/paired/PairedListFragment;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->clearUnpairedDevices()V

    return-void
.end method

.method static synthetic access$100(Lcom/hzbhd/bluetooth/paired/PairedListFragment;)Lcom/hzbhd/bluetooth/paired/PairListAdapter;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->adapter:Lcom/hzbhd/bluetooth/paired/PairListAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/hzbhd/bluetooth/paired/PairedListFragment;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->setPA6ItemSelect(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/hzbhd/bluetooth/paired/PairedListFragment;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->setNM6ItemSelect(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/hzbhd/bluetooth/paired/PairedListFragment;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->initPA6Data()V

    return-void
.end method

.method private checkIsScaning()V
    .locals 4

    .line 275
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->isBluetoothScanning()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->scanningView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 277
    iget-object v0, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->scanningView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->scanningView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->startAnimation(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->scanningView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->scanningView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 283
    iget-object v0, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->scanningView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->startAnimation(Landroid/widget/ImageView;)V

    :cond_1
    :goto_0
    const v0, 0x7f040014

    .line 286
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0013

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-ne v0, v2, :cond_3

    .line 287
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->isBluetoothScanning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 288
    iget-object v0, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->rl_dialog:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 289
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->getTopActivity()Lcom/hzbhd/bluetooth/MainActivity;

    move-result-object v0

    const v1, 0x7f0d021b

    const/16 v2, 0x2710

    invoke-virtual {v0, v1, v2}, Lcom/hzbhd/bluetooth/MainActivity;->showProgressDialog(II)V

    goto :goto_1

    .line 294
    :cond_2
    iget-object v0, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->rl_dialog:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 295
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->getTopActivity()Lcom/hzbhd/bluetooth/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/bluetooth/MainActivity;->dismissProgressDialog()V

    :cond_3
    :goto_1
    return-void
.end method

.method private clearUnpairedDevices()V
    .locals 4

    .line 409
    iget-object v0, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->adapter:Lcom/hzbhd/bluetooth/paired/PairListAdapter;

    if-nez v0, :cond_0

    return-void

    .line 412
    :cond_0
    invoke-virtual {v0}, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->getDevList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 415
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 416
    iget-object v1, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->adapter:Lcom/hzbhd/bluetooth/paired/PairListAdapter;

    invoke-virtual {v1}, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->getDevList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;

    .line 417
    invoke-virtual {v2}, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;->isPaired()Z

    move-result v3

    if-nez v3, :cond_2

    .line 418
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 421
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 422
    iget-object v1, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->adapter:Lcom/hzbhd/bluetooth/paired/PairListAdapter;

    invoke-virtual {v1}, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->getDevList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 424
    :cond_4
    iget-object v0, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->adapter:Lcom/hzbhd/bluetooth/paired/PairListAdapter;

    invoke-virtual {v0}, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private initM6(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f040014

    .line 161
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    const v0, 0x7f090247

    .line 162
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 163
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothLocalAdapterName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private initNP2(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f040014

    .line 168
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 169
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v0

    const-string v1, "00:00:00:00:00:00"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->disConnectNP2()V

    :cond_0
    const v0, 0x7f090196

    .line 172
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 173
    new-instance v0, Lcom/hzbhd/bluetooth/paired/PairedListFragment$1;

    invoke-direct {v0, p0}, Lcom/hzbhd/bluetooth/paired/PairedListFragment$1;-><init>(Lcom/hzbhd/bluetooth/paired/PairedListFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 180
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private initPA6Data()V
    .locals 5

    const v0, 0x7f040014

    .line 780
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 781
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothRemoteDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 782
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "_a6_save_blueTooth_collect"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 783
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 784
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_a6_clear_contact"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 785
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 786
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method private initUI_H1(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f040015

    .line 186
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResStr(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "H1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 187
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initUI_H1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResStr(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PairedListFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0901e5

    .line 188
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->pair_bt_name:Landroid/widget/TextView;

    const v0, 0x7f0901e6

    .line 189
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->pair_bt_pin_code:Landroid/widget/TextView;

    const v0, 0x7f0901e7

    .line 190
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->pair_connect:Landroid/widget/TextView;

    const v0, 0x7f0901e9

    .line 191
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->pair_disconnect:Landroid/widget/TextView;

    const v0, 0x7f0901ea

    .line 192
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->pair_scan:Landroid/widget/TextView;

    const v0, 0x7f0901e8

    .line 193
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->pair_del:Landroid/widget/TextView;

    .line 194
    iget-object p1, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->pair_disconnect:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 195
    iget-object v0, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->mPiredOnclickListener_N54:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object p1, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->pair_connect:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->mPiredOnclickListener_N54:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object p1, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->pair_del:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->mPiredOnclickListener_N54:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    :cond_1
    iget-object p1, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->pair_scan:Landroid/widget/TextView;

    new-instance v0, Lcom/hzbhd/bluetooth/paired/PairedListFragment$2;

    invoke-direct {v0, p0}, Lcom/hzbhd/bluetooth/paired/PairedListFragment$2;-><init>(Lcom/hzbhd/bluetooth/paired/PairedListFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    iget-object p1, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->pair_bt_name:Landroid/widget/TextView;

    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothLocalAdapterName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private isInHfpActivity()Z
    .locals 1

    .line 522
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/hzbhd/bluetooth/paired/PairedListFragment;
    .locals 1

    .line 70
    new-instance v0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;

    invoke-direct {v0}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;-><init>()V

    .line 71
    invoke-virtual {v0, p0}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private setNM6ItemSelect(I)V
    .locals 2

    const v0, 0x7f040015

    .line 807
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResStr(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "A6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 808
    iget-object v0, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->adapter:Lcom/hzbhd/bluetooth/paired/PairListAdapter;

    invoke-virtual {v0, p1}, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->setSelectIndex(I)V

    :cond_0
    return-void
.end method

.method private setPA6ItemSelect(I)V
    .locals 2

    const v0, 0x7f040015

    .line 802
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResStr(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "A6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 803
    iget-object v0, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->adapter:Lcom/hzbhd/bluetooth/paired/PairListAdapter;

    invoke-virtual {v0, p1}, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->setSelectIndex(I)V

    :cond_0
    return-void
.end method

.method private showConnectPd(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method private startRotation(Ljava/lang/Object;)V
    .locals 3

    const v0, 0x7f040014

    .line 791
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 792
    iget-object v0, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->objectAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 793
    fill-array-data v0, :array_0

    const-string/jumbo v1, "rotation"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->objectAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x1388

    .line 794
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 795
    iget-object p1, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->objectAnimator:Landroid/animation/ObjectAnimator;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 796
    iget-object p1, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->objectAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method


# virtual methods
.method public addFoundDevice(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 429
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "********addNewSearchDevice()***** devAddr="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " devName="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string/jumbo v0, "sw-ap006"

    invoke-static {v0, p3}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    .line 433
    :cond_0
    iget-object p3, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->adapter:Lcom/hzbhd/bluetooth/paired/PairListAdapter;

    if-nez p3, :cond_1

    return-void

    .line 436
    :cond_1
    invoke-virtual {p3}, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->getDevList()Ljava/util/List;

    move-result-object p3

    if-nez p3, :cond_2

    return-void

    :cond_2
    const/4 p3, 0x0

    move v0, p3

    .line 441
    :goto_0
    iget-object v1, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->adapter:Lcom/hzbhd/bluetooth/paired/PairListAdapter;

    invoke-virtual {v1}, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->getDevList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 442
    iget-object v1, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->adapter:Lcom/hzbhd/bluetooth/paired/PairListAdapter;

    invoke-virtual {v1}, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->getDevList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;

    invoke-virtual {v1}, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v0, p3

    move v1, v0

    :goto_1
    if-eqz v1, :cond_6

    .line 449
    iget-object p1, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->adapter:Lcom/hzbhd/bluetooth/paired/PairListAdapter;

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->getDevList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;->isPaired()Z

    move-result p1

    if-eqz p1, :cond_5

    return-void

    .line 452
    :cond_5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 453
    iget-object p1, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->adapter:Lcom/hzbhd/bluetooth/paired/PairListAdapter;

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->getDevList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;

    invoke-virtual {p1, p2}, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;->setRemoteDevName(Ljava/lang/String;)V

    goto :goto_2

    .line 457
    :cond_6
    new-instance v0, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;

    invoke-direct {v0}, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;-><init>()V

    .line 458
    invoke-virtual {v0, p1}, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;->setAddress(Ljava/lang/String;)V

    .line 459
    invoke-virtual {v0, p2}, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;->setRemoteDevName(Ljava/lang/String;)V

    .line 461
    invoke-virtual {v0, p3}, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;->setPaired(Z)V

    .line 462
    iget-object p1, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->adapter:Lcom/hzbhd/bluetooth/paired/PairListAdapter;

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->getDevList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->adapter:Lcom/hzbhd/bluetooth/paired/PairListAdapter;

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public addPairedDevices(I[Ljava/lang/String;[Ljava/lang/String;[I[B)V
    .locals 2

    .line 356
    iget-object p4, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->adapter:Lcom/hzbhd/bluetooth/paired/PairListAdapter;

    if-nez p4, :cond_0

    return-void

    .line 359
    :cond_0
    invoke-virtual {p4}, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->getDevList()Ljava/util/List;

    move-result-object p4

    if-nez p4, :cond_1

    return-void

    .line 363
    :cond_1
    iget-object p4, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->adapter:Lcom/hzbhd/bluetooth/paired/PairListAdapter;

    invoke-virtual {p4}, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->getDevList()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->clear()V

    if-lez p1, :cond_2

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p1, :cond_2

    .line 367
    new-instance v0, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;

    invoke-direct {v0}, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;-><init>()V

    .line 368
    aget-object v1, p2, p4

    invoke-virtual {v0, v1}, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;->setAddress(Ljava/lang/String;)V

    .line 369
    aget-object v1, p3, p4

    invoke-virtual {v0, v1}, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;->setRemoteDevName(Ljava/lang/String;)V

    .line 370
    aget-byte v1, p5, p4

    invoke-virtual {v0, v1}, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;->setCategory(I)V

    const/4 v1, 0x1

    .line 371
    invoke-virtual {v0, v1}, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;->setPaired(Z)V

    .line 372
    iget-object v1, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->adapter:Lcom/hzbhd/bluetooth/paired/PairListAdapter;

    invoke-virtual {v1}, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->getDevList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 375
    :cond_2
    iget-object p1, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->adapter:Lcom/hzbhd/bluetooth/paired/PairListAdapter;

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public addPairedDevicesExtend(I[Ljava/lang/String;[Ljava/lang/String;[I[B[Z[Z)V
    .locals 1

    .line 380
    iget-object p4, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->adapter:Lcom/hzbhd/bluetooth/paired/PairListAdapter;

    if-nez p4, :cond_0

    return-void

    .line 383
    :cond_0
    invoke-virtual {p4}, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->getDevList()Ljava/util/List;

    move-result-object p4

    if-nez p4, :cond_1

    return-void

    .line 387
    :cond_1
    iget-object p4, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->adapter:Lcom/hzbhd/bluetooth/paired/PairListAdapter;

    invoke-virtual {p4}, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->getDevList()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->clear()V

    if-lez p1, :cond_4

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p1, :cond_4

    .line 391
    new-instance p5, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;

    invoke-direct {p5}, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;-><init>()V

    .line 392
    aget-object v0, p2, p4

    invoke-virtual {p5, v0}, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;->setAddress(Ljava/lang/String;)V

    .line 393
    aget-object v0, p3, p4

    invoke-virtual {p5, v0}, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;->setRemoteDevName(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 395
    invoke-virtual {p5, v0}, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;->setPaired(Z)V

    if-eqz p6, :cond_2

    .line 397
    aget-boolean v0, p6, p4

    invoke-virtual {p5, v0}, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;->setHfpConnected(Z)V

    :cond_2
    if-eqz p7, :cond_3

    .line 400
    aget-boolean v0, p7, p4

    invoke-virtual {p5, v0}, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;->setA2dpConnected(Z)V

    .line 402
    :cond_3
    iget-object v0, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->adapter:Lcom/hzbhd/bluetooth/paired/PairListAdapter;

    invoke-virtual {v0}, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->getDevList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 405
    :cond_4
    iget-object p1, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->adapter:Lcom/hzbhd/bluetooth/paired/PairListAdapter;

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public cancleDelete()V
    .locals 2

    .line 508
    iget-object v0, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->adapter:Lcom/hzbhd/bluetooth/paired/PairListAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, -0x1

    .line 511
    invoke-virtual {v0, v1}, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->setDeleteIndex(I)V

    .line 512
    iget-object v0, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->adapter:Lcom/hzbhd/bluetooth/paired/PairListAdapter;

    invoke-virtual {v0}, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public connectNP2()V
    .locals 2

    .line 504
    iget-object v0, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->disconnectLinear1:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->connectLinear:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public disConnectNP2()V
    .locals 2

    .line 500
    iget-object v0, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->disconnectLinear1:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 501
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->connectLinear:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public doAction(Landroid/content/Intent;)V
    .locals 10

    const-string v0, "PairedListFragment"

    const-string v1, "----------doAction()-----------"

    .line 551
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_16

    .line 567
    iget-object v1, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->adapter:Lcom/hzbhd/bluetooth/paired/PairListAdapter;

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 571
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-------doAction()----ConnectingIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->adapter:Lcom/hzbhd/bluetooth/paired/PairListAdapter;

    invoke-virtual {v2}, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->getConnectingIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    iget-object v1, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->adapter:Lcom/hzbhd/bluetooth/paired/PairListAdapter;

    invoke-virtual {v1}, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->getConnectingIndex()I

    move-result v1

    if-ltz v1, :cond_1

    return-void

    .line 578
    :cond_1
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->isBluetoothScanning()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 579
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->reqBluetoothScanning(Z)Z

    .line 582
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.android.driver.bluetooth.common.pair"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 583
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "----doAction() case="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "extra_type"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/16 v3, 0xbb8

    const/4 v4, 0x1

    const-string v5, "extra_type_addr"

    const-string v6, "extra_position"

    if-eqz v1, :cond_f

    const/4 v2, -0x1

    if-eq v1, v4, :cond_e

    const/4 v4, 0x3

    const-string v7, "A6"

    const-string v8, "M6"

    const v9, 0x7f040015

    if-eq v1, v4, :cond_7

    const/4 v0, 0x4

    if-eq v1, v0, :cond_5

    const/4 v0, 0x5

    if-eq v1, v0, :cond_3

    goto/16 :goto_5

    .line 658
    :cond_3
    iget-object v0, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->adapter:Lcom/hzbhd/bluetooth/paired/PairListAdapter;

    invoke-virtual {v0, v2}, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->setDeleteIndex(I)V

    .line 659
    iget-object v0, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->adapter:Lcom/hzbhd/bluetooth/paired/PairListAdapter;

    invoke-virtual {v0}, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->notifyDataSetChanged()V

    .line 661
    invoke-static {v9}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResStr(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {v9}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResStr(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 662
    :cond_4
    iget-object v0, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->adapter:Lcom/hzbhd/bluetooth/paired/PairListAdapter;

    invoke-virtual {p1, v6, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->setSelectIndex(I)V

    goto/16 :goto_5

    .line 649
    :cond_5
    iget-object v0, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->adapter:Lcom/hzbhd/bluetooth/paired/PairListAdapter;

    invoke-virtual {p1, v6, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->setDeleteIndex(I)V

    .line 650
    iget-object v0, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->adapter:Lcom/hzbhd/bluetooth/paired/PairListAdapter;

    invoke-virtual {v0}, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->notifyDataSetChanged()V

    .line 652
    invoke-static {v9}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResStr(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {v9}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResStr(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 653
    :cond_6
    iget-object v0, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->adapter:Lcom/hzbhd/bluetooth/paired/PairListAdapter;

    invoke-virtual {p1, v6, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->setSelectIndex(I)V

    goto/16 :goto_5

    .line 625
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doAction: EXTRA_TYPE_PAIR "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResStr(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "PairedListFragment__sswang"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f040051

    .line 626
    invoke-static {v1}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResBool(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 627
    invoke-static {v9}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResStr(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {v9}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResStr(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_0

    .line 630
    :cond_8
    iget-object p1, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->adapter:Lcom/hzbhd/bluetooth/paired/PairListAdapter;

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->getSelectIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->setSelectIndex(I)V

    goto :goto_1

    .line 628
    :cond_9
    :goto_0
    iget-object v0, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->adapter:Lcom/hzbhd/bluetooth/paired/PairListAdapter;

    invoke-virtual {p1, v6, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->setSelectIndex(I)V

    :goto_1
    return-void

    .line 633
    :cond_a
    invoke-static {v9}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResStr(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "H1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 634
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "doAction: EXTRA_TYPE_PAIR"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->adapter:Lcom/hzbhd/bluetooth/paired/PairListAdapter;

    invoke-virtual {v0}, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->getSelectIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    iget-object p1, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->adapter:Lcom/hzbhd/bluetooth/paired/PairListAdapter;

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->getSelectIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->setSelectIndex(I)V

    return-void

    .line 639
    :cond_b
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->getTopActivity()Lcom/hzbhd/bluetooth/MainActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/bluetooth/MainActivity;->isHfpConnected()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->getTopActivity()Lcom/hzbhd/bluetooth/MainActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/bluetooth/MainActivity;->isA2DPConnected()Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_2

    .line 642
    :cond_c
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v1

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->reqBluetoothConnectAll(Ljava/lang/String;)I

    goto :goto_3

    .line 640
    :cond_d
    :goto_2
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->getTopActivity()Lcom/hzbhd/bluetooth/MainActivity;

    move-result-object p1

    const v1, 0x7f0d015a

    invoke-virtual {p1, v1, v3}, Lcom/hzbhd/bluetooth/MainActivity;->showPopupInfoDialog(II)V

    :goto_3
    const-string p1, "----------doAction(pair)-----------"

    .line 645
    invoke-static {v0, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 619
    :cond_e
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->getTopActivity()Lcom/hzbhd/bluetooth/MainActivity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0d023f

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "extra_name"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, v4}, Lcom/hzbhd/bluetooth/MainActivity;->showConfirmDialog(Ljava/lang/String;Landroid/content/Intent;Z)V

    .line 620
    invoke-direct {p0, v2}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->setPA6ItemSelect(I)V

    .line 621
    invoke-direct {p0, v2}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->setNM6ItemSelect(I)V

    goto/16 :goto_5

    .line 586
    :cond_f
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->isInHfpActivity()Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "----------doAction(hfp)-----------"

    .line 587
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    iget-object v1, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->adapter:Lcom/hzbhd/bluetooth/paired/PairListAdapter;

    invoke-virtual {v1}, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->getDevList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v6, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;

    invoke-virtual {v1}, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;->isHfpConnected()Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "----------doAction(hfp connected)-----------"

    .line 589
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->getTopActivity()Lcom/hzbhd/bluetooth/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/bluetooth/MainActivity;->isHfpConnected()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->getTopActivity()Lcom/hzbhd/bluetooth/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/bluetooth/MainActivity;->isA2DPConnected()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_4

    .line 595
    :cond_10
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->reqBluetoothConnectAll(Ljava/lang/String;)I

    goto/16 :goto_5

    .line 592
    :cond_11
    :goto_4
    new-instance v0, Lcom/hzbhd/bluetooth/paired/PairedListFragment$ChangeConnectionTask;

    invoke-direct {v0, p0}, Lcom/hzbhd/bluetooth/paired/PairedListFragment$ChangeConnectionTask;-><init>(Lcom/hzbhd/bluetooth/paired/PairedListFragment;)V

    .line 593
    sget-object v1, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v6, "ALL"

    aput-object v6, v3, v2

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v3}, Lcom/hzbhd/bluetooth/paired/PairedListFragment$ChangeConnectionTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_5

    :cond_12
    const-string v1, "----------doAction(hfp disconnected)-----------"

    .line 598
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->reqDisconnectAll(Ljava/lang/String;)I

    goto :goto_5

    :cond_13
    const-string v1, "----------doAction(a2dp)-----------"

    .line 602
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    iget-object v1, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->adapter:Lcom/hzbhd/bluetooth/paired/PairListAdapter;

    invoke-virtual {v1}, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->getDevList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v6, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;

    invoke-virtual {v1}, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;->isA2dpConnected()Z

    move-result v1

    if-nez v1, :cond_15

    const-string v1, "----------doAction(a2dp connected)-----------"

    .line 604
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->getTopActivity()Lcom/hzbhd/bluetooth/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/bluetooth/MainActivity;->isHfpConnected()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 606
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->getTopActivity()Lcom/hzbhd/bluetooth/MainActivity;

    move-result-object p1

    const v0, 0x7f0d015b

    invoke-virtual {p1, v0, v3}, Lcom/hzbhd/bluetooth/MainActivity;->showPopupInfoDialog(II)V

    goto :goto_5

    .line 608
    :cond_14
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->reqBluetoothConnectAll(Ljava/lang/String;)I

    goto :goto_5

    :cond_15
    const-string v1, "----------doAction(a2dp disconnected)-----------"

    .line 611
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->reqDisconnectAll(Ljava/lang/String;)I

    :cond_16
    :goto_5
    return-void
.end method

.method public getTopActivity()Lcom/hzbhd/bluetooth/MainActivity;
    .locals 1

    .line 468
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/hzbhd/bluetooth/MainActivity;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 79
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 84
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 85
    new-instance p1, Lcom/hzbhd/bluetooth/paired/PairListAdapter;

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/hzbhd/bluetooth/paired/PairListAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->adapter:Lcom/hzbhd/bluetooth/paired/PairListAdapter;

    .line 86
    invoke-virtual {p1, p0}, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->setListener(Lcom/hzbhd/bluetooth/paired/PairListAdapter$PairListAdapterListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 483
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090037

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 485
    :cond_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->isBluetoothScanning()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 486
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->reqBluetoothScanning(Z)Z

    goto :goto_0

    .line 488
    :cond_1
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->clearUnpairedDevices()V

    .line 489
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->reqBluetoothScanning(Z)Z

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 91
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    .line 96
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f040031

    .line 123
    invoke-static {p3}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResId(I)I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090037

    .line 125
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 126
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090208

    .line 127
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->scanningView:Landroid/widget/ImageView;

    const p2, 0x7f0901fd

    .line 128
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->rl_dialog:Landroid/widget/RelativeLayout;

    const p2, 0x7f090190

    .line 129
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->iv_dialog:Landroid/widget/ImageView;

    const p2, 0x7f090246

    .line 130
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->tv_connect_devices:Landroid/widget/TextView;

    const p2, 0x7f090258

    .line 131
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->tv_this_devices:Landroid/widget/TextView;

    const p2, 0x7f090255

    .line 132
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->tv_pin:Landroid/widget/TextView;

    const p2, 0x7f090108

    .line 133
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->connectLinear:Landroid/widget/LinearLayout;

    const p2, 0x7f09012c

    .line 134
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->disconnectLinear1:Landroid/widget/LinearLayout;

    const p2, 0x7f090241

    .line 135
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->tv_bluetooth_name:Landroid/widget/TextView;

    const p2, 0x7f090242

    .line 136
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->tv_bluetooth_pin:Landroid/widget/TextView;

    const p2, 0x7f09011a

    .line 138
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    .line 139
    iget-object p3, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->adapter:Lcom/hzbhd/bluetooth/paired/PairListAdapter;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 p3, 0x1

    .line 140
    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 141
    new-instance p3, Lcom/hzbhd/bluetooth/paired/PairedListFragment$PairListOnItemClickListener;

    invoke-direct {p3, p0}, Lcom/hzbhd/bluetooth/paired/PairedListFragment$PairListOnItemClickListener;-><init>(Lcom/hzbhd/bluetooth/paired/PairedListFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 143
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f04004a

    invoke-static {p3}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResId(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p2, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->mLoadAnimation:Landroid/graphics/drawable/AnimationDrawable;

    const p2, 0x7f0901ef

    .line 145
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->pired_device_btn_disconnect_n54:Landroid/view/View;

    const p2, 0x7f0901ed

    .line 146
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->pired_device_btn_connect_n54:Landroid/view/View;

    const p2, 0x7f0901ee

    .line 147
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->pired_device_btn_delete_n54:Landroid/view/View;

    .line 148
    iget-object p2, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->pired_device_btn_disconnect_n54:Landroid/view/View;

    if-eqz p2, :cond_0

    .line 149
    iget-object p3, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->mPiredOnclickListener_N54:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object p2, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->pired_device_btn_connect_n54:Landroid/view/View;

    iget-object p3, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->mPiredOnclickListener_N54:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object p2, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->pired_device_btn_delete_n54:Landroid/view/View;

    iget-object p3, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->mPiredOnclickListener_N54:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    :cond_0
    invoke-direct {p0, p1}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->initUI_H1(Landroid/view/View;)V

    .line 154
    invoke-direct {p0, p1}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->initNP2(Landroid/view/View;)V

    .line 155
    invoke-direct {p0, p1}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->initM6(Landroid/view/View;)V

    const-string p2, "PairedListFragment"

    const-string p3, "----------onCreateView()-----------"

    .line 156
    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 219
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 220
    iget-object v0, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const-string v0, "PairedListFragment"

    const-string v1, "----------onDestroy()-----------"

    .line 221
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 226
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 228
    :try_start_0
    const-class v0, Landroid/support/v4/app/Fragment;

    const-string v1, "mChildFragmentManager"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 229
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v1, 0x0

    .line 230
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 234
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 232
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public onKey(ILandroid/view/KeyEvent;)V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    .line 240
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 2

    .line 245
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    const-string v0, "PairedListFragment"

    const-string v1, "----------onPause()-----------"

    .line 247
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 252
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 254
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->checkIsScaning()V

    .line 255
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->showPairList()V

    const-string v0, "PairedListFragment"

    const-string v1, "----------onResume()-----------"

    .line 257
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->tv_connect_devices:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 259
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v1

    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothRemoteDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    :cond_0
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->setDevicesText()V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 473
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 478
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 101
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const-string p1, "PairedListFragment"

    const-string p2, "----------onViewCreated()-----------"

    .line 102
    invoke-static {p1, p2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public search()V
    .locals 2

    .line 496
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->clearUnpairedDevices()V

    .line 497
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->reqBluetoothScanning(Z)Z

    return-void
.end method

.method public setDevicesText()V
    .locals 3

    const v0, 0x7f040014

    .line 263
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 264
    iget-object v0, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->tv_this_devices:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 265
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothLocalAdapterName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->tv_pin:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 267
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getPinCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->tv_bluetooth_name:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 269
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothLocalAdapterName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    :cond_2
    iget-object v0, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->tv_bluetooth_pin:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 271
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getPinCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public setTopNaviBarVisible(Z)V
    .locals 1

    .line 107
    iput-boolean p1, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->isA2dp:Z

    if-eqz p1, :cond_0

    .line 110
    :try_start_0
    iget-object p1, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->topNaviBar:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 112
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->topNaviBar:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 115
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public showPairList()V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    .line 342
    invoke-virtual/range {v0 .. v7}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->addPairedDevicesExtend(I[Ljava/lang/String;[Ljava/lang/String;[I[B[Z[Z)V

    .line 343
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->reqBluetoothPairedDevicesExtend()Z

    return-void
.end method

.method public startAnimation(Landroid/widget/ImageView;)V
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->mLoadAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 328
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 329
    iget-object p1, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->mLoadAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 330
    iget-object p1, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->mLoadAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_0
    return-void
.end method

.method public startScan()V
    .locals 3

    .line 302
    iget-object v0, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->scanningView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 303
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->scanningView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->startAnimation(Landroid/widget/ImageView;)V

    :cond_0
    const v0, 0x7f040014

    .line 306
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 307
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->getTopActivity()Lcom/hzbhd/bluetooth/MainActivity;

    move-result-object v0

    const v1, 0x7f0d021b

    const/16 v2, 0x2710

    invoke-virtual {v0, v1, v2}, Lcom/hzbhd/bluetooth/MainActivity;->showProgressDialog(II)V

    :cond_1
    return-void
.end method

.method public stopAnimation(Landroid/widget/ImageView;)V
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->mLoadAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_0
    const v0, 0x7f08176f

    .line 338
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public stopScan()V
    .locals 3

    .line 315
    iget-object v0, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->scanningView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 316
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 317
    iget-object v0, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->scanningView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->stopAnimation(Landroid/widget/ImageView;)V

    :cond_0
    const v0, 0x7f040014

    .line 319
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 320
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->getTopActivity()Lcom/hzbhd/bluetooth/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/bluetooth/MainActivity;->dismissProgressDialog()V

    :cond_1
    return-void
.end method
