.class public Lcom/hzbhd/bluetooth/call/BubbleCall;
.super Landroid/app/Service;
.source "BubbleCall.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/bluetooth/call/BubbleCall$ContactAsyncQueryHandler;
    }
.end annotation


# static fields
.field public static final SHARED_PREFERENCES_KEY:Ljava/lang/String; = "com.hzbhd.bluetooth.prefs"

.field public static final SNIPPET_ARGS:Ljava/lang/String; = "\u0001,\u0001,\u2026,5"

.field public static final SNIPPET_ELLIPSIS:Ljava/lang/String; = "\u2026"

.field public static final SNIPPET_END_MATCH:C = '\u0001'

.field public static final SNIPPET_MAX_TOKENS:I = 0x5

.field public static final SNIPPET_START_MATCH:C = '\u0001'

.field private static final TAG:Ljava/lang/String; = "bubblecall"


# instance fields
.field public final GET_CALL_TIME_MSG:I

.field public final GET_CURRENT_CALL_NUMBER:I

.field private HASADDwindowView:Z

.field public final MSG_HANDERUP_DELAY:I

.field public final MSG_SET_CLICKABLE:I

.field public final MSG_UI_SHOW_INCOME_DELAY:I

.field public final UPDATE_CONTACT_NAME_MSG:I

.field private activeBtnView:Landroid/view/View;

.field private activeChangeBtn:Landroid/widget/ImageButton;

.field private activeMuteBtn:Landroid/widget/ImageButton;

.field private callNameTitle:Landroid/widget/TextView;

.field private callNameTitleIncoming:Landroid/widget/TextView;

.field private callNumberTitle:Landroid/widget/TextView;

.field private callNumberTitleIncoming:Landroid/widget/TextView;

.field private callNumberView:Landroid/view/View;

.field private callTimeTitle:Landroid/widget/TextView;

.field private dialBtnView:Landroid/view/View;

.field private handler:Landroid/os/Handler;

.field private incomBtnView:Landroid/view/View;

.field private isClickAble:Z

.field private lastQueryNum:Ljava/lang/String;

.field private mBluetoothManager:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

.field private mCallView:Landroid/view/View;

.field private mCallViewParams:Landroid/view/WindowManager$LayoutParams;

.field mHandlerUICheck:Landroid/os/Handler;

.field mHandupHandler:Landroid/os/Handler;

.field private mHfpCallbackListener:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHfpCallbackListener;

.field private mSharedPrefs:Landroid/content/SharedPreferences;

.field private mWindowManager:Landroid/view/WindowManager;

.field private queryHandler:Lcom/hzbhd/bluetooth/call/BubbleCall$ContactAsyncQueryHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x1

    .line 74
    iput v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->GET_CALL_TIME_MSG:I

    const/4 v0, 0x2

    .line 75
    iput v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->UPDATE_CONTACT_NAME_MSG:I

    const/4 v0, 0x3

    .line 76
    iput v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->GET_CURRENT_CALL_NUMBER:I

    const/4 v0, 0x4

    .line 77
    iput v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->MSG_SET_CLICKABLE:I

    const/4 v0, 0x5

    .line 79
    iput v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->MSG_UI_SHOW_INCOME_DELAY:I

    const/16 v0, 0xbb8

    .line 81
    iput v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->MSG_HANDERUP_DELAY:I

    const/4 v0, 0x0

    .line 86
    iput-boolean v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->HASADDwindowView:Z

    .line 254
    new-instance v0, Lcom/hzbhd/bluetooth/call/BubbleCall$3;

    invoke-direct {v0, p0}, Lcom/hzbhd/bluetooth/call/BubbleCall$3;-><init>(Lcom/hzbhd/bluetooth/call/BubbleCall;)V

    iput-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mHandlerUICheck:Landroid/os/Handler;

    .line 444
    new-instance v0, Lcom/hzbhd/bluetooth/call/BubbleCall$4;

    invoke-direct {v0, p0}, Lcom/hzbhd/bluetooth/call/BubbleCall$4;-><init>(Lcom/hzbhd/bluetooth/call/BubbleCall;)V

    iput-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mHfpCallbackListener:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHfpCallbackListener;

    .line 610
    new-instance v0, Lcom/hzbhd/bluetooth/call/BubbleCall$5;

    invoke-direct {v0, p0}, Lcom/hzbhd/bluetooth/call/BubbleCall$5;-><init>(Lcom/hzbhd/bluetooth/call/BubbleCall;)V

    iput-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->handler:Landroid/os/Handler;

    .line 673
    new-instance v0, Lcom/hzbhd/bluetooth/call/BubbleCall$6;

    invoke-direct {v0, p0}, Lcom/hzbhd/bluetooth/call/BubbleCall$6;-><init>(Lcom/hzbhd/bluetooth/call/BubbleCall;)V

    iput-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mHandupHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/hzbhd/bluetooth/call/BubbleCall;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mCallViewParams:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method static synthetic access$100(Lcom/hzbhd/bluetooth/call/BubbleCall;)Landroid/view/View;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mCallView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/hzbhd/bluetooth/call/BubbleCall;)Landroid/widget/TextView;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->callNameTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/hzbhd/bluetooth/call/BubbleCall;)Landroid/widget/TextView;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->callNameTitleIncoming:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/hzbhd/bluetooth/call/BubbleCall;)Landroid/widget/TextView;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->callNumberTitleIncoming:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/hzbhd/bluetooth/call/BubbleCall;)Landroid/widget/TextView;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->callNumberTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/hzbhd/bluetooth/call/BubbleCall;)Lcom/hzbhd/bluetooth/call/BubbleCall$ContactAsyncQueryHandler;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->queryHandler:Lcom/hzbhd/bluetooth/call/BubbleCall$ContactAsyncQueryHandler;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/hzbhd/bluetooth/call/BubbleCall;Z)Z
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->isClickAble:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/hzbhd/bluetooth/call/BubbleCall;)Landroid/view/View;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->incomBtnView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/hzbhd/bluetooth/call/BubbleCall;)Landroid/view/WindowManager;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mWindowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/hzbhd/bluetooth/call/BubbleCall;)Landroid/content/SharedPreferences;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mSharedPrefs:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic access$400(Lcom/hzbhd/bluetooth/call/BubbleCall;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->HASADDwindowView:Z

    return p0
.end method

.method static synthetic access$402(Lcom/hzbhd/bluetooth/call/BubbleCall;Z)Z
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->HASADDwindowView:Z

    return p1
.end method

.method static synthetic access$500(Lcom/hzbhd/bluetooth/call/BubbleCall;)Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mBluetoothManager:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    return-object p0
.end method

.method static synthetic access$600(Lcom/hzbhd/bluetooth/call/BubbleCall;)Landroid/os/Handler;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$700(Lcom/hzbhd/bluetooth/call/BubbleCall;)Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->lastQueryNum:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$702(Lcom/hzbhd/bluetooth/call/BubbleCall;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->lastQueryNum:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/hzbhd/bluetooth/call/BubbleCall;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/hzbhd/bluetooth/call/BubbleCall;->generateQueryUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/hzbhd/bluetooth/call/BubbleCall;)Landroid/widget/TextView;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->callTimeTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method private generateQueryUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3

    .line 597
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 598
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-wide/16 v1, 0x0

    .line 599
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string v1, "directory"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string/jumbo p1, "snippet_args"

    const-string v1, "\u0001,\u0001,\u2026,5"

    .line 600
    invoke-virtual {v0, p1, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string p1, "deferred_snippeting"

    const-string v1, "1"

    .line 601
    invoke-virtual {v0, p1, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string p1, "account_name"

    .line 603
    invoke-virtual {v0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string p1, "account_type"

    const-string p2, "com.mac.addr"

    .line 604
    invoke-virtual {v0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string/jumbo p1, "remove_duplicate_entries"

    const-string/jumbo p2, "true"

    .line 606
    invoke-virtual {v0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 607
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method private initNM6(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f040014

    .line 197
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/call/BubbleCall;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 198
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->activeMuteBtn:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    const v0, 0x7f0900b3

    .line 199
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/hzbhd/bluetooth/call/-$$Lambda$BubbleCall$09ATb3a8bRKXrts7M14fecgNReI;

    invoke-direct {v0, p0}, Lcom/hzbhd/bluetooth/call/-$$Lambda$BubbleCall$09ATb3a8bRKXrts7M14fecgNReI;-><init>(Lcom/hzbhd/bluetooth/call/BubbleCall;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private initPA6(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f040014

    .line 209
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/call/BubbleCall;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    const v0, 0x7f090010

    .line 210
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f090188

    .line 211
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/hzbhd/bluetooth/ui/_a6/DialBubblePadViews;

    .line 212
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/hzbhd/bluetooth/call/BubbleCall$2;

    invoke-direct {v0, p0, v2, v1}, Lcom/hzbhd/bluetooth/call/BubbleCall$2;-><init>(Lcom/hzbhd/bluetooth/call/BubbleCall;Lcom/hzbhd/bluetooth/ui/_a6/DialBubblePadViews;Landroid/widget/ImageView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public static isBackground(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 277
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "activity"

    .line 281
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const/4 v1, 0x1

    .line 282
    invoke-virtual {p0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 283
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 284
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 285
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    return v1

    :cond_2
    :goto_0
    return v0
.end method

.method private resetCallInfo()V
    .locals 3

    .line 308
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->callNameTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mBluetoothManager:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getCurrentCallNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getCallerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->callNumberTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mBluetoothManager:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getCurrentCallNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->callNameTitleIncoming:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mBluetoothManager:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getCurrentCallNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getCallerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->callNumberTitleIncoming:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mBluetoothManager:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getCurrentCallNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->callTimeTitle:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x1

    .line 313
    iput-boolean v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->isClickAble:Z

    return-void
.end method

.method private setPA6MicMute()V
    .locals 2

    const v0, 0x7f040015

    .line 738
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResStr(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "A6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 740
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->activeMuteBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isSelected()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hzbhd/bluetooth/call/BubbleCall;->setMuteState(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 742
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public addCallView()V
    .locals 3

    const-string v0, "bubblecall"

    const-string v1, "---------->addCallView"

    .line 237
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mBluetoothManager:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpCallState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hzbhd/bluetooth/call/BubbleCall;->managerCallUI(I)V

    .line 241
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/call/BubbleCall;->resetCallInfo()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 243
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 245
    :goto_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mHfpCallbackListener:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHfpCallbackListener;

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->registerHfpCallBackListenr(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHfpCallbackListener;)V

    .line 246
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mCallView:Landroid/view/View;

    iget-object v2, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mCallViewParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    .line 247
    iput-boolean v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->HASADDwindowView:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 250
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public synthetic lambda$initNM6$0$BubbleCall(Landroid/view/View;)V
    .locals 1

    .line 200
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 201
    sget-object v0, Lcom/hzbhd/midware/constant/HzbhdComponentName;->BlueTeethActivity:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 202
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 203
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/call/BubbleCall;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public managerCallUI(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "managerCallUI---------->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bubblecall"

    invoke-static {v1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xa0

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa5

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_0

    .line 329
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/call/BubbleCall;->setActiveCallUI()V

    goto :goto_0

    .line 320
    :cond_0
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/call/BubbleCall;->setActiveCallUI()V

    goto :goto_0

    .line 326
    :cond_1
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/call/BubbleCall;->setIncomingCallUI()V

    goto :goto_0

    .line 323
    :cond_2
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/call/BubbleCall;->setOutgoingCallUI()V

    :goto_0
    const/16 v0, 0xc3

    if-eq p1, v0, :cond_3

    .line 332
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->handler:Landroid/os/Handler;

    const/4 v0, 0x3

    const-wide/16 v1, 0x5dc

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 687
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-wide/16 v0, 0xbb8

    const-string v2, "bubblecall"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 720
    :sswitch_0
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mBluetoothManager:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->reqHfpMicMute()Z

    .line 721
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/call/BubbleCall;->setPA6MicMute()V

    goto/16 :goto_0

    .line 711
    :sswitch_1
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mBluetoothManager:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->reqHfpTerminateOngoingCall(Ljava/lang/String;)V

    const-string/jumbo p1, "stop self 3"

    .line 712
    invoke-static {v2, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mHandupHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    iget v2, v2, Landroid/os/Message;->what:I

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 714
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mHandupHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 702
    :sswitch_2
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mBluetoothManager:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->reqHfpRejectIncomingCall(Ljava/lang/String;)V

    const-string/jumbo p1, "stop self 2"

    .line 703
    invoke-static {v2, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mHandupHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    iget v2, v2, Landroid/os/Message;->what:I

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 705
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mHandupHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 689
    :sswitch_3
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mBluetoothManager:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->reqHfpTerminateOngoingCall(Ljava/lang/String;)V

    const-string/jumbo p1, "stop self 1"

    .line 690
    invoke-static {v2, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mHandupHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    iget v2, v2, Landroid/os/Message;->what:I

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 694
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mHandupHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 725
    :sswitch_4
    iget-boolean p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->isClickAble:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 726
    iput-boolean p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->isClickAble:Z

    .line 727
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mBluetoothManager:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->reqHfpAudioTransfer(Ljava/lang/String;B)Z

    .line 729
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->handler:Landroid/os/Handler;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 730
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0x4b0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 698
    :sswitch_5
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mBluetoothManager:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->reqHfpAnswerCall(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f09003e -> :sswitch_5
        0x7f0900c3 -> :sswitch_4
        0x7f09013e -> :sswitch_3
        0x7f09013f -> :sswitch_2
        0x7f090141 -> :sswitch_1
        0x7f0901d7 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate()V
    .locals 3

    .line 104
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "bubblecall"

    const-string v1, "---------->onCreate"

    .line 105
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040007

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResId(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mCallView:Landroid/view/View;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "bubblecall"

    const-string v1, "---------->onDestroy"

    .line 229
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/call/BubbleCall;->removeCallView()V

    .line 231
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mHandlerUICheck:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    iget v1, v1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 232
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 233
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 6

    const-string p1, "bubblecall"

    const-string p2, "---------->onStart"

    .line 111
    invoke-static {p1, p2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/call/BubbleCall;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0e0171

    invoke-static {p1, p0, p2}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->init(Landroid/content/res/Resources;Landroid/content/Context;I)V

    const-string/jumbo p1, "window"

    .line 113
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/call/BubbleCall;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mWindowManager:Landroid/view/WindowManager;

    .line 114
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mCallViewParams:Landroid/view/WindowManager$LayoutParams;

    const/16 p2, 0x7d3

    .line 115
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 116
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mCallViewParams:Landroid/view/WindowManager$LayoutParams;

    const/4 p2, -0x1

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 117
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mCallViewParams:Landroid/view/WindowManager$LayoutParams;

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 118
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mCallViewParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v0, 0x1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 119
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/call/BubbleCall;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070de5

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    const-string v0, "com.hzbhd.bluetooth.prefs"

    const/4 v1, 0x0

    .line 120
    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/bluetooth/call/BubbleCall;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 122
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isOriginalScreen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getDeviceInfo()Ljava/lang/String;

    move-result-object v0

    const-string v2, "O63"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mCallViewParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x500

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 127
    :cond_1
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getDeviceInfo()Ljava/lang/String;

    move-result-object v0

    const-string v2, "IKW"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v2, 0x51

    const v3, 0x7f070b9a

    const/16 v4, 0x20

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getDeviceInfo()Ljava/lang/String;

    move-result-object v0

    const-string v5, "66"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 128
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mCallViewParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 129
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mCallViewParams:Landroid/view/WindowManager$LayoutParams;

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 130
    iget-object p2, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mCallViewParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/call/BubbleCall;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 131
    iget-object p2, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mCallViewParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_1

    .line 132
    :cond_2
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getDeviceInfo()Ljava/lang/String;

    move-result-object v0

    const-string v5, "IL1"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getDeviceInfo()Ljava/lang/String;

    move-result-object v0

    const-string v5, "KC1E0107-P49"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const v0, 0x7f040010

    .line 137
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResBool(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 138
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mCallViewParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 139
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mCallViewParams:Landroid/view/WindowManager$LayoutParams;

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 140
    iget-object p2, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mCallViewParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/call/BubbleCall;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 141
    iget-object p2, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mCallViewParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_1

    .line 133
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mCallViewParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 134
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mCallViewParams:Landroid/view/WindowManager$LayoutParams;

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 135
    iget-object p2, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mCallViewParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/call/BubbleCall;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 136
    iget-object p2, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mCallViewParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mSharedPrefs:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    const-string v3, "bubbleY"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 145
    :cond_5
    :goto_1
    iget-object p2, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mCallView:Landroid/view/View;

    new-instance v0, Lcom/hzbhd/bluetooth/call/BubbleCall$1;

    invoke-direct {v0, p0, p1}, Lcom/hzbhd/bluetooth/call/BubbleCall$1;-><init>(Lcom/hzbhd/bluetooth/call/BubbleCall;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 164
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mCallView:Landroid/view/View;

    const p2, 0x7f0900d0

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->callTimeTitle:Landroid/widget/TextView;

    .line 165
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mCallView:Landroid/view/View;

    const p2, 0x7f0900da

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->callNameTitle:Landroid/widget/TextView;

    .line 166
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mCallView:Landroid/view/View;

    const p2, 0x7f0900d8

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->callNumberTitle:Landroid/widget/TextView;

    .line 167
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mCallView:Landroid/view/View;

    const p2, 0x7f0900d7

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->callNameTitleIncoming:Landroid/widget/TextView;

    .line 168
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mCallView:Landroid/view/View;

    const p2, 0x7f0900d6

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->callNumberTitleIncoming:Landroid/widget/TextView;

    .line 169
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mCallView:Landroid/view/View;

    const p2, 0x7f090122

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->dialBtnView:Landroid/view/View;

    .line 170
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mCallView:Landroid/view/View;

    const p2, 0x7f090185

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->incomBtnView:Landroid/view/View;

    .line 171
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mCallView:Landroid/view/View;

    const p2, 0x7f090184

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->activeBtnView:Landroid/view/View;

    .line 172
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mCallView:Landroid/view/View;

    const p2, 0x7f0900cb

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->callNumberView:Landroid/view/View;

    .line 173
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mCallView:Landroid/view/View;

    const p2, 0x7f0900c3

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->activeChangeBtn:Landroid/widget/ImageButton;

    .line 174
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mCallView:Landroid/view/View;

    const p2, 0x7f0901d7

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->activeMuteBtn:Landroid/widget/ImageButton;

    .line 175
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mCallView:Landroid/view/View;

    const p2, 0x7f09013e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mCallView:Landroid/view/View;

    const p2, 0x7f09003e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mCallView:Landroid/view/View;

    const p2, 0x7f09013f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mCallView:Landroid/view/View;

    const p2, 0x7f090141

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->activeChangeBtn:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->activeMuteBtn:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mBluetoothManager:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    .line 182
    new-instance p1, Lcom/hzbhd/bluetooth/call/BubbleCall$ContactAsyncQueryHandler;

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/call/BubbleCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/hzbhd/bluetooth/call/BubbleCall$ContactAsyncQueryHandler;-><init>(Lcom/hzbhd/bluetooth/call/BubbleCall;Landroid/content/ContentResolver;)V

    iput-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->queryHandler:Lcom/hzbhd/bluetooth/call/BubbleCall$ContactAsyncQueryHandler;

    .line 183
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/call/BubbleCall;->addCallView()V

    .line 184
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mHandlerUICheck:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p2

    iget p2, p2, Landroid/os/Message;->what:I

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const p1, 0x7f04003a

    .line 185
    invoke-static {p1}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResBool(I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 187
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/hzbhd/bluetooth/call/BubbleCall;->setMuteState(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 189
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 192
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mCallView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/hzbhd/bluetooth/call/BubbleCall;->initPA6(Landroid/view/View;)V

    .line 193
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mCallView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/hzbhd/bluetooth/call/BubbleCall;->initNM6(Landroid/view/View;)V

    return-void
.end method

.method public parseSecond2String(I)Ljava/lang/String;
    .locals 10

    add-int/lit8 v0, p1, 0x0

    const/16 v1, 0xe10

    .line 661
    div-int/2addr v0, v1

    int-to-long v2, v0

    int-to-long v4, p1

    int-to-long v0, v1

    mul-long/2addr v0, v2

    sub-long/2addr v4, v0

    const/16 p1, 0x3c

    int-to-long v0, p1

    .line 662
    div-long v6, v4, v0

    mul-long/2addr v0, v6

    sub-long/2addr v4, v0

    const/4 p1, 0x1

    int-to-long v0, p1

    .line 663
    div-long/2addr v4, v0

    const-wide/16 v0, 0xa

    cmp-long p1, v2, v0

    const-string v8, "0"

    const-string v9, ""

    if-gez p1, :cond_0

    .line 665
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    cmp-long v2, v6, v0

    if-gez v2, :cond_1

    .line 666
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    cmp-long v0, v4, v0

    if-gez v0, :cond_2

    .line 667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 669
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public removeCallView()V
    .locals 2

    const-string v0, "bubblecall"

    const-string v1, "---------->removeCallView"

    .line 294
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 297
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mCallView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 298
    iput-boolean v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->HASADDwindowView:Z

    .line 299
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mHfpCallbackListener:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHfpCallbackListener;

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->unRegisterHfpCallBackListenr(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHfpCallbackListener;)V

    .line 300
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mHandupHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mHandupHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    iget v1, v1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 303
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public set3WayIncomingCallUI()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 416
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->dialBtnView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 417
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->handler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 418
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->incomBtnView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 419
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->callNumberView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 420
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->activeBtnView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setActiveCallUI()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "bubblecall"

    const-string v1, "---------->setActiveCallUI"

    .line 349
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->callTimeTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 351
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->callTimeTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mBluetoothManager:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    .line 352
    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getCurrentCallNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getCallTime(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/hzbhd/bluetooth/call/BubbleCall;->parseSecond2String(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->handler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 354
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->handler:Landroid/os/Handler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 355
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->handler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 356
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->dialBtnView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 357
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->incomBtnView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 358
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->callNumberView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 359
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->activeBtnView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f040014

    .line 362
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/call/BubbleCall;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0013

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 363
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/call/BubbleCall;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0018

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 364
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/call/BubbleCall;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0017

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    if-ne v0, v3, :cond_1

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mCallView:Landroid/view/View;

    const v3, 0x7f090243

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f0d0143

    invoke-virtual {p0, v3}, Lcom/hzbhd/bluetooth/call/BubbleCall;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mCallView:Landroid/view/View;

    const v3, 0x7f09003e

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 367
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->activeMuteBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 368
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->activeChangeBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setCallAudioState(I)V
    .locals 6

    const v0, 0x7f040051

    .line 748
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResBool(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    if-ne p1, v2, :cond_0

    .line 750
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->activeChangeBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_0

    .line 752
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->activeChangeBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    :goto_0
    const v0, 0x7f040014

    .line 755
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/call/BubbleCall;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0012

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    if-ne v3, v4, :cond_2

    if-ne p1, v2, :cond_1

    .line 757
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->activeChangeBtn:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto/16 :goto_1

    .line 759
    :cond_1
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->activeChangeBtn:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto/16 :goto_1

    .line 761
    :cond_2
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/call/BubbleCall;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0a0017

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v0, v1, :cond_a

    if-ne p1, v2, :cond_3

    .line 763
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->activeChangeBtn:Landroid/widget/ImageButton;

    const v0, 0x7f080abd

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_1

    .line 765
    :cond_3
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->activeChangeBtn:Landroid/widget/ImageButton;

    const v0, 0x7f080acf

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_1

    :cond_4
    const v0, 0x7f040035

    .line 768
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResBool(I)Z

    move-result v0

    if-eqz v0, :cond_6

    if-ne p1, v2, :cond_5

    .line 770
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->activeChangeBtn:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_1

    .line 772
    :cond_5
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->activeChangeBtn:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_1

    :cond_6
    const v0, 0x7f040015

    .line 775
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResStr(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "C6"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    if-ne p1, v2, :cond_7

    .line 777
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->activeChangeBtn:Landroid/widget/ImageButton;

    const v0, 0x7f080da2

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_1

    .line 779
    :cond_7
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->activeChangeBtn:Landroid/widget/ImageButton;

    const v0, 0x7f080da3

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_1

    .line 781
    :cond_8
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResStr(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    if-ne p1, v2, :cond_9

    .line 783
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->activeChangeBtn:Landroid/widget/ImageButton;

    const v0, 0x7f080e48

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_1

    .line 785
    :cond_9
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->activeChangeBtn:Landroid/widget/ImageButton;

    const v0, 0x7f080e49

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    :cond_a
    :goto_1
    return-void
.end method

.method public setCallNumber(Ljava/lang/String;)V
    .locals 2

    .line 337
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->callNumberTitleIncoming:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 338
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->callNumberTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 341
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 344
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->queryHandler:Lcom/hzbhd/bluetooth/call/BubbleCall$ContactAsyncQueryHandler;

    iget-object v1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mBluetoothManager:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/hzbhd/bluetooth/call/BubbleCall$ContactAsyncQueryHandler;->queryContactName(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public setEndCallUI()V
    .locals 4

    const-string v0, "bubblecall"

    const-string v1, "---------->setEndCallUI"

    .line 424
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->dialBtnView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 426
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->handler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 427
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->incomBtnView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 428
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->callNumberView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 433
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->activeBtnView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 434
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const v0, 0x7f040014

    .line 436
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/call/BubbleCall;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0013

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 437
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/call/BubbleCall;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0018

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 438
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/call/BubbleCall;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mCallView:Landroid/view/View;

    const v1, 0x7f090243

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0d013b

    invoke-virtual {p0, v1}, Lcom/hzbhd/bluetooth/call/BubbleCall;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setIncomingCallUI()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "bubblecall"

    const-string v1, "---------->setIncomingCallUI"

    .line 392
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->dialBtnView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 394
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->callNumberView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 395
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->activeBtnView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 396
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->handler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 397
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->handler:Landroid/os/Handler;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const v0, 0x7f040014

    .line 400
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/call/BubbleCall;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0013

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    .line 401
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/call/BubbleCall;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0a0018

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 402
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/call/BubbleCall;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0a0017

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 403
    :cond_0
    iget-object v2, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mCallView:Landroid/view/View;

    const v3, 0x7f090243

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0d0139

    invoke-virtual {p0, v3}, Lcom/hzbhd/bluetooth/call/BubbleCall;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 404
    iget-object v2, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mCallView:Landroid/view/View;

    const v3, 0x7f09003e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 405
    iget-object v2, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->activeMuteBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 408
    :cond_1
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/call/BubbleCall;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 409
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->dialBtnView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public setMuteState(Z)V
    .locals 5

    const v0, 0x7f0a0013

    const v1, 0x7f0a0012

    const v2, 0x7f04003a

    const v3, 0x7f040014

    if-nez p1, :cond_2

    .line 794
    invoke-static {v2}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResBool(I)Z

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 795
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->activeMuteBtn:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_0

    .line 801
    :cond_0
    invoke-static {v3}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/call/BubbleCall;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 802
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->activeMuteBtn:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_0

    .line 804
    :cond_1
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->activeMuteBtn:Landroid/widget/ImageButton;

    const v1, 0x7f081754

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 807
    :goto_0
    invoke-static {v3}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/call/BubbleCall;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-ne p1, v0, :cond_5

    .line 808
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->activeMuteBtn:Landroid/widget/ImageButton;

    const v0, 0x7f08132c

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_2

    .line 812
    :cond_2
    invoke-static {v2}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResBool(I)Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    .line 813
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->activeMuteBtn:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_1

    .line 819
    :cond_3
    invoke-static {v3}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/call/BubbleCall;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne p1, v1, :cond_4

    .line 820
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->activeMuteBtn:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_1

    .line 822
    :cond_4
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->activeMuteBtn:Landroid/widget/ImageButton;

    const v1, 0x7f081753

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 825
    :goto_1
    invoke-static {v3}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/call/BubbleCall;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-ne p1, v0, :cond_5

    .line 826
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->activeMuteBtn:Landroid/widget/ImageButton;

    const v0, 0x7f08132b

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    :cond_5
    :goto_2
    return-void
.end method

.method public setOutgoingCallUI()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "bubblecall"

    const-string v1, "---------->setOutgoingCallUI"

    .line 377
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->dialBtnView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 379
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->callNumberView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 380
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->handler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 381
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->incomBtnView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 382
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->activeBtnView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f040014

    .line 383
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/call/BubbleCall;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0013

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 384
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/call/BubbleCall;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0018

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 385
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/call/BubbleCall;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mCallView:Landroid/view/View;

    const v1, 0x7f090243

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0d013a

    invoke-virtual {p0, v1}, Lcom/hzbhd/bluetooth/call/BubbleCall;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mCallView:Landroid/view/View;

    const v1, 0x7f09003e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_1
    return-void
.end method
