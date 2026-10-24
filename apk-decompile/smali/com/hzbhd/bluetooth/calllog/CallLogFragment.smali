.class public Lcom/hzbhd/bluetooth/calllog/CallLogFragment;
.super Landroid/support/v4/app/ListFragment;
.source "CallLogFragment.java"

# interfaces
.implements Lcom/hzbhd/bluetooth/calllog/CallLogQueryHandler$CallbackListener;
.implements Lcom/hzbhd/bluetooth/calllog/CallLogAdapter$CallLogAdapterListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/bluetooth/calllog/CallLogFragment$DeleteCallHistoryTask;,
        Lcom/hzbhd/bluetooth/calllog/CallLogFragment$ListOnItemLongClickListener;,
        Lcom/hzbhd/bluetooth/calllog/CallLogFragment$CustomContentObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CallLogFragment"


# instance fields
.field private count:I

.field private emptyText:Landroid/view/View;

.field private isOnResume:Z

.field private loadMsg:Landroid/view/View;

.field private loadProgressIv:Landroid/widget/ImageView;

.field private mAdapter:Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;

.field private final mCallLogObserver:Landroid/database/ContentObserver;

.field private mCallLogQueryHandler:Lcom/hzbhd/bluetooth/calllog/CallLogQueryHandler;

.field private mCallType:I

.field private final mContactsObserver:Landroid/database/ContentObserver;

.field private final mHandler:Landroid/os/Handler;

.field private mLoadAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mRefreshDataRequired:Z

.field private selectIndex:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    const/4 v0, 0x1

    .line 51
    iput v0, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->mCallType:I

    .line 52
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    .line 54
    iput v1, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->selectIndex:I

    .line 70
    new-instance v1, Lcom/hzbhd/bluetooth/calllog/CallLogFragment$CustomContentObserver;

    invoke-direct {v1, p0}, Lcom/hzbhd/bluetooth/calllog/CallLogFragment$CustomContentObserver;-><init>(Lcom/hzbhd/bluetooth/calllog/CallLogFragment;)V

    iput-object v1, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->mCallLogObserver:Landroid/database/ContentObserver;

    .line 71
    new-instance v1, Lcom/hzbhd/bluetooth/calllog/CallLogFragment$CustomContentObserver;

    invoke-direct {v1, p0}, Lcom/hzbhd/bluetooth/calllog/CallLogFragment$CustomContentObserver;-><init>(Lcom/hzbhd/bluetooth/calllog/CallLogFragment;)V

    iput-object v1, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->mContactsObserver:Landroid/database/ContentObserver;

    .line 72
    iput-boolean v0, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->mRefreshDataRequired:Z

    const/4 v0, 0x0

    .line 217
    iput v0, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->count:I

    return-void
.end method

.method static synthetic access$000(Lcom/hzbhd/bluetooth/calllog/CallLogFragment;)Landroid/os/Handler;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$102(Lcom/hzbhd/bluetooth/calllog/CallLogFragment;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->mRefreshDataRequired:Z

    return p1
.end method

.method static synthetic access$200(Lcom/hzbhd/bluetooth/calllog/CallLogFragment;)Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->mAdapter:Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/hzbhd/bluetooth/calllog/CallLogFragment;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->count:I

    return p0
.end method

.method static synthetic access$302(Lcom/hzbhd/bluetooth/calllog/CallLogFragment;I)I
    .locals 0

    .line 40
    iput p1, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->count:I

    return p1
.end method

.method private dialItemNumber(Ljava/lang/String;)V
    .locals 2

    .line 94
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpCurrentState(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x8c

    if-ne v1, v0, :cond_0

    .line 97
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->reqHfpDialCall(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method private getStringResource(I)Ljava/lang/String;
    .locals 1

    .line 422
    :try_start_0
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 424
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, ""

    return-object p1
.end method

.method private iniNP2(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f040014

    .line 219
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v0, v1, :cond_2

    const v0, 0x7f09018d

    .line 220
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f090197

    .line 221
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f09018f

    .line 222
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 223
    new-instance v2, Lcom/hzbhd/bluetooth/calllog/CallLogFragment$1;

    invoke-direct {v2, p0, v1}, Lcom/hzbhd/bluetooth/calllog/CallLogFragment$1;-><init>(Lcom/hzbhd/bluetooth/calllog/CallLogFragment;Landroid/widget/ImageView;)V

    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-eqz v1, :cond_1

    .line 254
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 255
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method private iniPA6(Landroid/view/View;)V
    .locals 4

    const p1, 0x7f040014

    .line 260
    invoke-static {p1}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 261
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object p1

    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothRemoteDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 262
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "_a6_save_blueTooth_collect"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_a6_clear_contact"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    .line 265
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    .line 266
    iget-object p1, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->emptyText:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 268
    :cond_0
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 269
    iget-object p1, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->emptyText:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/hzbhd/bluetooth/calllog/CallLogFragment;
    .locals 1

    .line 76
    new-instance v0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;

    invoke-direct {v0}, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;-><init>()V

    .line 77
    invoke-virtual {v0, p0}, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private refreshData()V
    .locals 4

    .line 477
    iget-boolean v0, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->mRefreshDataRequired:Z

    if-eqz v0, :cond_2

    const v0, 0x7f040014

    .line 480
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 481
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 482
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 483
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 484
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v1

    const/16 v2, 0x34

    if-eq v1, v2, :cond_1

    .line 485
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v0

    const/16 v1, 0x36

    if-eq v0, v1, :cond_1

    const v0, 0x7f040015

    .line 486
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResStr(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "M1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 487
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResStr(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "A9"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 491
    :cond_0
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->startAllCallsQuery()V

    goto :goto_1

    .line 488
    :cond_1
    :goto_0
    iget v0, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->mCallType:I

    invoke-virtual {p0, v0}, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->startCallsQuery(I)V

    :goto_1
    const/4 v0, 0x0

    .line 493
    iput-boolean v0, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->mRefreshDataRequired:Z

    :cond_2
    return-void
.end method


# virtual methods
.method public clearListData()V
    .locals 2

    .line 397
    iget-object v0, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->mAdapter:Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 400
    invoke-virtual {v0, v1}, Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 401
    iget-object v0, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->mAdapter:Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public deleteCallLogData(J)V
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 452
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "_id=?"

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 454
    :cond_0
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public doDialAction(Ljava/lang/String;)V
    .locals 2

    .line 500
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 501
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->reqHfpDialCall(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public getSelectIndex()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->selectIndex:I

    return v0
.end method

.method public handlerDownEvent()V
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->mAdapter:Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;

    if-nez v0, :cond_0

    return-void

    .line 139
    :cond_0
    iget v0, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->selectIndex:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 140
    iput v2, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->selectIndex:I

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 142
    iput v0, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->selectIndex:I

    .line 143
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_2

    .line 144
    iput v2, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->selectIndex:I

    .line 147
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--------handlerDownEvent() selectIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->selectIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sw-ap006"

    invoke-static {v1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->mAdapter:Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;

    iget v1, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->selectIndex:I

    invoke-virtual {v0, v1}, Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;->setSelectItem(I)V

    .line 149
    iget-object v0, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->mAdapter:Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;->notifyDataSetChanged()V

    .line 150
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget v1, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->selectIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    return-void
.end method

.method public handlerEnterEvent()V
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->mAdapter:Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;

    if-nez v0, :cond_0

    return-void

    .line 106
    :cond_0
    iget v0, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->selectIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v0, v2, :cond_1

    goto :goto_0

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->mAdapter:Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;->getSelectItem()I

    move-result v0

    if-ne v0, v1, :cond_2

    return-void

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->mAdapter:Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;->getSelectedNumber()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->dialItemNumber(Ljava/lang/String;)V

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--------handlerEnterEvent() ItemAtPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget v2, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->selectIndex:I

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sw-ap006"

    invoke-static {v1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public handlerUpEvent()V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->mAdapter:Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;

    if-nez v0, :cond_0

    return-void

    .line 120
    :cond_0
    iget v0, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->selectIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 121
    iput v0, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->selectIndex:I

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 123
    iput v0, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->selectIndex:I

    if-gez v0, :cond_2

    .line 125
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->selectIndex:I

    .line 128
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--------handlerUpEvent() selectIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->selectIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sw-ap006"

    invoke-static {v1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->mAdapter:Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;

    iget v1, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->selectIndex:I

    invoke-virtual {v0, v1}, Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;->setSelectItem(I)V

    .line 130
    iget-object v0, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->mAdapter:Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;->notifyDataSetChanged()V

    .line 131
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget v1, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->selectIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 167
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onAttach(Landroid/app/Activity;)V

    const-string/jumbo p1, "sw-ap006"

    const-string v0, "------CallLogFragment.onAttach()----"

    .line 168
    invoke-static {p1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCallsFetched(Landroid/database/Cursor;)V
    .locals 3

    .line 432
    iget-boolean v0, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->isOnResume:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 436
    iget-object p1, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->emptyText:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void

    .line 439
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------factch data success----"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sw-ap006"

    invoke-static {v2, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_3

    .line 441
    iget-object v1, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->emptyText:Landroid/view/View;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 443
    :cond_3
    iget-object v0, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->emptyText:Landroid/view/View;

    if-eqz v0, :cond_4

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 445
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->mAdapter:Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;

    invoke-virtual {v0, p1}, Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 446
    iget-object p1, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->mAdapter:Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 508
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x2

    .line 513
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->startCallsQuery(I)V

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x3

    .line 516
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->startCallsQuery(I)V

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x1

    .line 510
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->startCallsQuery(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f09005a
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 174
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 175
    iput-boolean p1, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->mRefreshDataRequired:Z

    .line 176
    new-instance v0, Lcom/hzbhd/bluetooth/calllog/CallLogQueryHandler;

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/hzbhd/bluetooth/calllog/CallLogQueryHandler;-><init>(Landroid/content/ContentResolver;Lcom/hzbhd/bluetooth/calllog/CallLogQueryHandler$CallbackListener;)V

    iput-object v0, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/hzbhd/bluetooth/calllog/CallLogQueryHandler;

    .line 177
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->mCallLogObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 179
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->mContactsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 181
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->setHasOptionsMenu(Z)V

    const-string/jumbo p1, "sw-ap006"

    const-string v0, "------CallLogFragment.onCreate()----"

    .line 182
    invoke-static {p1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const p3, 0x7f04002e

    .line 188
    invoke-static {p3}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResId(I)I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0901da

    .line 189
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->emptyText:Landroid/view/View;

    const p2, 0x7f0900df

    .line 190
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->loadMsg:Landroid/view/View;

    const p2, 0x7f0900e2

    .line 191
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->loadProgressIv:Landroid/widget/ImageView;

    .line 192
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f04004a

    invoke-static {p3}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResId(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p2, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->mLoadAnimation:Landroid/graphics/drawable/AnimationDrawable;

    const p2, 0x7f09005a

    .line 193
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    const p3, 0x7f09005c

    .line 194
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/RadioButton;

    const v0, 0x7f09005b

    .line 195
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    if-eqz p2, :cond_2

    const v1, 0x7f040015

    .line 198
    invoke-static {v1}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResStr(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "M1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 199
    invoke-static {v1}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResStr(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "A4"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 200
    invoke-static {v1}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResStr(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "C2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 204
    :cond_0
    invoke-virtual {p3, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    const/4 v1, 0x2

    .line 205
    invoke-virtual {p0, v1}, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->startCallsQuery(I)V

    goto :goto_1

    .line 201
    :cond_1
    :goto_0
    invoke-virtual {p2, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 202
    invoke-virtual {p0, v3}, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->startCallsQuery(I)V

    .line 208
    :goto_1
    invoke-virtual {p2, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    invoke-virtual {p3, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    const-string/jumbo p2, "sw-ap006"

    const-string p3, "------CallLogFragment.onCreateView()----"

    .line 213
    invoke-static {p2, p3}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-direct {p0, p1}, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->iniNP2(Landroid/view/View;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 322
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onDestroy()V

    .line 323
    iget-object v0, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->mAdapter:Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 324
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->mCallLogObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 325
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->mContactsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 330
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onDetach()V

    .line 332
    :try_start_0
    const-class v0, Landroid/support/v4/app/Fragment;

    const-string v1, "mChildFragmentManager"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 333
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v1, 0x0

    .line 334
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 338
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 336
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    if-eqz p2, :cond_0

    const p1, 0x7f0901f2

    .line 345
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 346
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

    .line 347
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->doDialAction(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 310
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onPause()V

    const-string/jumbo v0, "sw-ap006"

    const-string v1, "------CallLogFragment.onPause()----"

    .line 311
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 312
    iput-boolean v0, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->isOnResume:Z

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 289
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onResume()V

    const/4 v0, 0x1

    .line 291
    iput-boolean v0, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->isOnResume:Z

    const/4 v0, -0x1

    .line 292
    iput v0, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->selectIndex:I

    .line 294
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getPbapCurrentState(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getCurrentSyncType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 296
    iget-object v0, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->loadMsg:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 297
    iget-object v0, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->loadProgressIv:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->startAnimation(Landroid/widget/ImageView;)V

    .line 298
    iget-object v0, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->loadMsg:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 301
    :cond_0
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->refreshData()V

    :cond_1
    :goto_0
    const v0, 0x7f040014

    .line 304
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v0

    const/16 v1, 0x34

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->mCallType:I

    invoke-virtual {p0, v0}, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->startCallsQuery(I)V

    :cond_2
    const-string/jumbo v0, "sw-ap006"

    const-string v1, "------CallLogFragment.onResume()----"

    .line 305
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 317
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 275
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/ListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 276
    new-instance p2, Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p2, v0, v1, v2}, Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    iput-object p2, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->mAdapter:Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;

    .line 277
    invoke-virtual {p2, p0}, Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;->setListener(Lcom/hzbhd/bluetooth/calllog/CallLogAdapter$CallLogAdapterListener;)V

    .line 278
    iget-object p2, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->mAdapter:Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;

    invoke-virtual {p0, p2}, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 279
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->getListView()Landroid/widget/ListView;

    move-result-object p2

    new-instance v0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment$ListOnItemLongClickListener;

    invoke-direct {v0, p0}, Lcom/hzbhd/bluetooth/calllog/CallLogFragment$ListOnItemLongClickListener;-><init>(Lcom/hzbhd/bluetooth/calllog/CallLogFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 280
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->getListView()Landroid/widget/ListView;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 281
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->getListView()Landroid/widget/ListView;

    move-result-object p2

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0817eb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    const-string/jumbo p2, "sw-ap006"

    const-string v0, "------CallLogFragment.onViewCreated()----"

    .line 282
    invoke-static {p2, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-direct {p0, p1}, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->iniPA6(Landroid/view/View;)V

    return-void
.end method

.method public resetSelectItem()V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->mAdapter:Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, -0x1

    .line 158
    iput v1, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->selectIndex:I

    .line 159
    invoke-virtual {v0, v1}, Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;->setSelectItem(I)V

    .line 160
    iget-object v0, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->mAdapter:Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;->setSelectedNumber(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->mAdapter:Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setLoadMsgVisibility(I)V
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->loadMsg:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 406
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    if-nez p1, :cond_1

    .line 409
    iget-object v0, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->loadProgressIv:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->startAnimation(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 411
    :cond_1
    iget-object v0, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->loadProgressIv:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->stopAnimation(Landroid/widget/ImageView;)V

    .line 412
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->refreshData()V

    :goto_0
    if-nez p1, :cond_2

    .line 414
    iget-object p1, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->emptyText:Landroid/view/View;

    if-eqz p1, :cond_2

    const/16 v0, 0x8

    .line 415
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public setSelectIndex(I)V
    .locals 0

    .line 90
    iput p1, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->selectIndex:I

    return-void
.end method

.method public startAllCallsQuery()V
    .locals 2

    const-string v0, "CallLogFragment"

    const-string v1, "----startAllCallsQuery()----"

    .line 459
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    iget-object v0, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/hzbhd/bluetooth/calllog/CallLogQueryHandler;

    invoke-virtual {v0}, Lcom/hzbhd/bluetooth/calllog/CallLogQueryHandler;->fetchAllCalls()V

    return-void
.end method

.method public startAnimation(Landroid/widget/ImageView;)V
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->mLoadAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 387
    iget-object p1, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->mLoadAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 388
    iget-object p1, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->mLoadAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void
.end method

.method public startCallsQuery()V
    .locals 2

    .line 470
    iget-object v0, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/hzbhd/bluetooth/calllog/CallLogQueryHandler;

    iget v1, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->mCallType:I

    invoke-virtual {v0, v1}, Lcom/hzbhd/bluetooth/calllog/CallLogQueryHandler;->fetchAllCalls(I)V

    return-void
.end method

.method public startCallsQuery(I)V
    .locals 1

    .line 464
    iput p1, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->mCallType:I

    .line 465
    iget-object v0, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/hzbhd/bluetooth/calllog/CallLogQueryHandler;

    invoke-virtual {v0, p1}, Lcom/hzbhd/bluetooth/calllog/CallLogQueryHandler;->fetchAllCalls(I)V

    .line 466
    iget-object p1, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->loadMsg:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public stopAnimation(Landroid/widget/ImageView;)V
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->mLoadAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    const v0, 0x7f08176f

    .line 393
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
