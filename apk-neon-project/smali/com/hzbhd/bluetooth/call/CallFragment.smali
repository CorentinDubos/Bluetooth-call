.class public Lcom/hzbhd/bluetooth/call/CallFragment;
.super Landroid/support/v4/app/Fragment;
.source "CallFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/bluetooth/call/CallFragment$ContactAsyncQueryHandler;
    }
.end annotation


# static fields
.field public static final CALL_DOWN:I = 0x1f44

.field public static final CALL_KEY:I = 0x1f42

.field public static final CALL_MUTE:I = 0x1f41

.field public static CALL_MUTE_FLGS:Z = false

.field public static final CALL_UP:I = 0x1f43

.field public static final CALL_VOICE:I = 0x1f40

.field public static CALL_VOICE_FLGS:Z = false

.field public static final DIALPAD_KEY_IDS_83:[I

.field public static final SNIPPET_ARGS:Ljava/lang/String; = "\u0001,\u0001,\u2026,5"

.field public static final SNIPPET_ELLIPSIS:Ljava/lang/String; = "\u2026"

.field public static final SNIPPET_END_MATCH:C = '\u0001'

.field public static final SNIPPET_MAX_TOKENS:I = 0x5

.field public static final SNIPPET_START_MATCH:C = '\u0001'

.field private static final TAG:Ljava/lang/String; = "BluetoothCallFragment"


# instance fields
.field public final CALL_END_MSG:I

.field public final GET_CALL_TIME_MSG:I

.field public final GET_CURRENT_CALL_NUMBER:I

.field public final GET_CURRENT_CALL_PHOTO:I

.field public final MSG_SET_CLICKABLE:I

.field public final UPDATE_CONTACT_NAME_MSG:I

.field private activeBtnView:Landroid/view/View;

.field private activeChangeBtn:Landroid/widget/ImageButton;

.field private activeChangeBtn_1:Landroid/widget/ImageButton;

.field private activeMuteBtn:Landroid/widget/ImageButton;

.field private callAlbumIamge:Lcom/hzbhd/bluetooth/widget/CircularImageView;

.field private callNameTitle:Landroid/widget/TextView;

.field private callNumberTitle:Landroid/widget/TextView;

.field private callTimeTitle:Landroid/widget/TextView;

.field private callTypeTitle:Landroid/widget/TextView;

.field private call_key_number:Landroid/widget/TextView;

.field private call_keyborad:Landroid/widget/RelativeLayout;

.field private coming_call:Landroid/widget/ImageView;

.field private dialBtnView:Landroid/view/View;

.field private dialpad_clear_btn_id:Landroid/widget/ImageButton;

.field private digitsTv:Landroid/widget/TextView;

.field private handler:Landroid/os/Handler;

.field private ids_H1:[I

.field private incomBtnView:Landroid/view/View;

.field private incomeChangeBtn:Landroid/widget/ImageButton;

.field private incomingCallAudioChangeToAg:Z

.field private isClickAble:Z

.field private isIn3WayCall:Z

.field private lastQueryNum:Ljava/lang/String;

.field private mAudioInPhoneAnim:Lcom/hzbhd/bluetooth/widget/_t1/AudioInPhoneAnim;

.field private mBluetoothManager:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

.field private mH1Handker:Landroid/os/Handler;

.field private mH1OnClickListener:Landroid/view/View$OnClickListener;

.field private mWindowManager:Landroid/view/WindowManager;

.field private queryHandler:Lcom/hzbhd/bluetooth/call/CallFragment$ContactAsyncQueryHandler;

.field private secCallNameTitle:Landroid/widget/TextView;

.field private secCallNumberTitle:Landroid/widget/TextView;

.field private secondCallView:Landroid/view/View;

.field private switchCallBtn:Landroid/widget/ImageButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xe

    new-array v0, v0, [I

    .line 103
    fill-array-data v0, :array_0

    sput-object v0, Lcom/hzbhd/bluetooth/call/CallFragment;->DIALPAD_KEY_IDS_83:[I

    const/4 v0, 0x0

    .line 918
    sput-boolean v0, Lcom/hzbhd/bluetooth/call/CallFragment;->CALL_VOICE_FLGS:Z

    .line 919
    sput-boolean v0, Lcom/hzbhd/bluetooth/call/CallFragment;->CALL_MUTE_FLGS:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x7f090063
        0x7f090066
        0x7f090069
        0x7f09006c
        0x7f09006f
        0x7f090072
        0x7f090075
        0x7f090078
        0x7f09007b
        0x7f090060
        0x7f09015a
        0x7f09015d
        0x7f09008e
        0x7f090085
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x1

    .line 72
    iput v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->CALL_END_MSG:I

    const/4 v0, 0x2

    .line 73
    iput v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->GET_CALL_TIME_MSG:I

    const/4 v0, 0x3

    .line 74
    iput v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->UPDATE_CONTACT_NAME_MSG:I

    const/4 v0, 0x4

    .line 75
    iput v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->GET_CURRENT_CALL_NUMBER:I

    const/4 v0, 0x5

    .line 76
    iput v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->GET_CURRENT_CALL_PHOTO:I

    const/16 v0, 0x9

    .line 77
    iput v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->MSG_SET_CLICKABLE:I

    .line 562
    new-instance v0, Lcom/hzbhd/bluetooth/call/CallFragment$2;

    invoke-direct {v0, p0}, Lcom/hzbhd/bluetooth/call/CallFragment$2;-><init>(Lcom/hzbhd/bluetooth/call/CallFragment;)V

    iput-object v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->handler:Landroid/os/Handler;

    const/16 v0, 0xd

    new-array v0, v0, [I

    .line 911
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->ids_H1:[I

    .line 977
    new-instance v0, Lcom/hzbhd/bluetooth/call/CallFragment$4;

    invoke-direct {v0, p0}, Lcom/hzbhd/bluetooth/call/CallFragment$4;-><init>(Lcom/hzbhd/bluetooth/call/CallFragment;)V

    iput-object v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->mH1OnClickListener:Landroid/view/View$OnClickListener;

    return-void

    :array_0
    .array-data 4
        0x7f0900c7
        0x7f0900b6
        0x7f0900b7
        0x7f0900b8
        0x7f0900b9
        0x7f0900ba
        0x7f0900bb
        0x7f0900bc
        0x7f0900bd
        0x7f0900be
        0x7f0900b5
        0x7f0900bf
        0x7f0900c0
    .end array-data
.end method

.method static synthetic access$000(Lcom/hzbhd/bluetooth/call/CallFragment;)Landroid/widget/ImageButton;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->activeChangeBtn:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$100(Lcom/hzbhd/bluetooth/call/CallFragment;)Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/call/CallFragment;->getTopActivity()Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lcom/hzbhd/bluetooth/call/CallFragment;)Ljava/lang/String;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->lastQueryNum:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/hzbhd/bluetooth/call/CallFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->lastQueryNum:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/hzbhd/bluetooth/call/CallFragment;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/hzbhd/bluetooth/call/CallFragment;->generateQueryUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/hzbhd/bluetooth/call/CallFragment;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->call_keyborad:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/hzbhd/bluetooth/call/CallFragment;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/call/CallFragment;->handlerHandupEvent()V

    return-void
.end method

.method static synthetic access$1400(Lcom/hzbhd/bluetooth/call/CallFragment;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/call/CallFragment;->handlerBackSpace_H1()V

    return-void
.end method

.method static synthetic access$1500(Lcom/hzbhd/bluetooth/call/CallFragment;Ljava/lang/String;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/hzbhd/bluetooth/call/CallFragment;->keyEventHandler_H1(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/hzbhd/bluetooth/call/CallFragment;Ljava/lang/String;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/hzbhd/bluetooth/call/CallFragment;->keyEventHandler(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/hzbhd/bluetooth/call/CallFragment;)Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->mBluetoothManager:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/hzbhd/bluetooth/call/CallFragment;)Landroid/widget/TextView;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->callTimeTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/hzbhd/bluetooth/call/CallFragment;)Landroid/os/Handler;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/hzbhd/bluetooth/call/CallFragment;)Landroid/widget/TextView;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->callNameTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/hzbhd/bluetooth/call/CallFragment;)Landroid/widget/TextView;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->callNumberTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/hzbhd/bluetooth/call/CallFragment;)Lcom/hzbhd/bluetooth/call/CallFragment$ContactAsyncQueryHandler;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->queryHandler:Lcom/hzbhd/bluetooth/call/CallFragment$ContactAsyncQueryHandler;

    return-object p0
.end method

.method static synthetic access$800(Lcom/hzbhd/bluetooth/call/CallFragment;)Lcom/hzbhd/bluetooth/widget/CircularImageView;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->callAlbumIamge:Lcom/hzbhd/bluetooth/widget/CircularImageView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/hzbhd/bluetooth/call/CallFragment;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->isClickAble:Z

    return p0
.end method

.method static synthetic access$902(Lcom/hzbhd/bluetooth/call/CallFragment;Z)Z
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->isClickAble:Z

    return p1
.end method

.method private findSecondView()V
    .locals 7

    .line 474
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/call/CallFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b02d3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->secondCallView:Landroid/view/View;

    const/16 v1, 0x8

    .line 475
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 476
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->secondCallView:Landroid/view/View;

    const v1, 0x7f09020c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->secCallNumberTitle:Landroid/widget/TextView;

    .line 477
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->secondCallView:Landroid/view/View;

    const v1, 0x7f09020b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->secCallNameTitle:Landroid/widget/TextView;

    .line 478
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    const/4 v4, 0x2

    const/16 v5, 0x18

    const/4 v6, -0x3

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 484
    iget-object v1, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->secondCallView:Landroid/view/View;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private generateQueryUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3

    .line 697
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 698
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-wide/16 v1, 0x0

    .line 700
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string v1, "directory"

    .line 699
    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string/jumbo p1, "snippet_args"

    const-string v1, "\u0001,\u0001,\u2026,5"

    .line 701
    invoke-virtual {v0, p1, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string p1, "deferred_snippeting"

    const-string v1, "1"

    .line 702
    invoke-virtual {v0, p1, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string p1, "account_name"

    .line 704
    invoke-virtual {v0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string p1, "account_type"

    const-string p2, "com.mac.addr"

    .line 705
    invoke-virtual {v0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string/jumbo p1, "remove_duplicate_entries"

    const-string/jumbo p2, "true"

    .line 707
    invoke-virtual {v0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 709
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method private getHfpMainActivity()Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;
    .locals 1

    .line 536
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/call/CallFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    return-object v0
.end method

.method private getMainActivity()Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;
    .locals 1

    .line 904
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/call/CallFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    return-object v0
.end method

.method private getTopActivity()Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;
    .locals 1

    .line 559
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/call/CallFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    return-object v0
.end method

.method private handlerBackSpace()V
    .locals 3

    .line 873
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->digitsTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->digitsTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 875
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->digitsTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->digitsTv:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 876
    iget-object v1, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->digitsTv:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private handlerBackSpace_H1()V
    .locals 3

    .line 890
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->call_key_number:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->call_key_number:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 892
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->call_key_number:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->call_key_number:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 893
    iget-object v1, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->call_key_number:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private handlerHandupEvent()V
    .locals 2

    .line 855
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->reqHfpTerminateOngoingCall(Ljava/lang/String;)V

    return-void
.end method

.method private initPA6(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f040014

    .line 1025
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/call/CallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    const v0, 0x7f090188

    .line 1026
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hzbhd/bluetooth/ui/_a6/DialPadViews;

    const v1, 0x7f090010

    .line 1027
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/hzbhd/bluetooth/call/CallFragment$5;

    invoke-direct {v2, p0, v0, p1}, Lcom/hzbhd/bluetooth/call/CallFragment$5;-><init>(Lcom/hzbhd/bluetooth/call/CallFragment;Lcom/hzbhd/bluetooth/ui/_a6/DialPadViews;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private initPC6(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f040015

    .line 1055
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResStr(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "C6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1056
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResStr(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const v0, 0x7f090113

    .line 1057
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomDialpadView;

    .line 1058
    new-instance v0, Lcom/hzbhd/bluetooth/call/CallFragment$6;

    invoke-direct {v0, p0}, Lcom/hzbhd/bluetooth/call/CallFragment$6;-><init>(Lcom/hzbhd/bluetooth/call/CallFragment;)V

    invoke-virtual {p1, v0}, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomDialpadView;->setOnAdapterClickListener(Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad$OnItemClickListener;)V

    :cond_1
    return-void
.end method

.method private initUI_H1(Landroid/view/View;)V
    .locals 5

    const v0, 0x7f040015

    .line 921
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResStr(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "H1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 922
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->ids_H1:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    .line 923
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->mH1OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const v0, 0x7f0900c8

    .line 925
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->call_key_number:Landroid/widget/TextView;

    const v0, 0x7f0900c9

    .line 926
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->call_keyborad:Landroid/widget/RelativeLayout;

    .line 929
    new-instance p1, Lcom/hzbhd/bluetooth/call/CallFragment$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/hzbhd/bluetooth/call/CallFragment$3;-><init>(Lcom/hzbhd/bluetooth/call/CallFragment;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->mH1Handker:Landroid/os/Handler;

    return-void
.end method

.method private keyEventHandler(Ljava/lang/String;)V
    .locals 2

    .line 880
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->digitsTv:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 881
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->digitsTv:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 882
    iget-object v1, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->digitsTv:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 884
    :cond_0
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/call/CallFragment;->getMainActivity()Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/hzbhd/bluetooth/call/CallFragment;->getMainActivity()Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->inInCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 885
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

.method private keyEventHandler_H1(Ljava/lang/String;)V
    .locals 2

    .line 897
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->call_key_number:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 898
    iget-object v1, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->call_key_number:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 899
    :cond_0
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/call/CallFragment;->getMainActivity()Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/hzbhd/bluetooth/call/CallFragment;->getMainActivity()Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->inInCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 900
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

.method public static newInstance(Landroid/os/Bundle;)Lcom/hzbhd/bluetooth/call/CallFragment;
    .locals 1

    .line 110
    new-instance v0, Lcom/hzbhd/bluetooth/call/CallFragment;

    invoke-direct {v0}, Lcom/hzbhd/bluetooth/call/CallFragment;-><init>()V

    .line 111
    invoke-virtual {v0, p0}, Lcom/hzbhd/bluetooth/call/CallFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private resetCallInfo()V
    .locals 3

    .line 451
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->callTypeTitle:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->callNameTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->mBluetoothManager:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getCurrentCallNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getCallerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->callNumberTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->mBluetoothManager:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getCurrentCallNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setPA6MicMute()V
    .locals 2

    const v0, 0x7f040015

    .line 1045
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResStr(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "A6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1047
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->activeMuteBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isSelected()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hzbhd/bluetooth/call/CallFragment;->setMuteState(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1049
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private setupOtherView(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f090117

    .line 490
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->coming_call:Landroid/widget/ImageView;

    const v0, 0x7f0900d4

    .line 491
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->callTypeTitle:Landroid/widget/TextView;

    const v0, 0x7f0900d0

    .line 492
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->callTimeTitle:Landroid/widget/TextView;

    const v0, 0x7f0900da

    .line 493
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->callNameTitle:Landroid/widget/TextView;

    const v0, 0x7f0900d8

    .line 494
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->callNumberTitle:Landroid/widget/TextView;

    const v0, 0x7f0900cd

    .line 496
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hzbhd/bluetooth/widget/CircularImageView;

    iput-object v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->callAlbumIamge:Lcom/hzbhd/bluetooth/widget/CircularImageView;

    const v0, 0x7f0901d7

    .line 499
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->activeMuteBtn:Landroid/widget/ImageButton;

    const v0, 0x7f0900c3

    .line 500
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->activeChangeBtn:Landroid/widget/ImageButton;

    const v0, 0x7f0900c1

    .line 501
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->activeChangeBtn_1:Landroid/widget/ImageButton;

    const v0, 0x7f090141

    .line 502
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 505
    iget-object v1, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->activeMuteBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 506
    iget-object v1, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->activeChangeBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 507
    iget-object v1, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->activeChangeBtn_1:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 508
    :cond_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09013e

    .line 511
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 512
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09003e

    .line 514
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09013f

    .line 515
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 517
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 518
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090122

    .line 523
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->dialBtnView:Landroid/view/View;

    const v0, 0x7f090185

    .line 524
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->incomBtnView:Landroid/view/View;

    const v0, 0x7f090184

    .line 525
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->activeBtnView:Landroid/view/View;

    const p1, 0x7f04003a

    .line 526
    invoke-static {p1}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResBool(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 528
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/call/CallFragment;->setMuteState(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 530
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public SendMsg(I)V
    .locals 2

    .line 970
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->mH1Handker:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 971
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 972
    iput p1, v0, Landroid/os/Message;->what:I

    .line 973
    iget-object v1, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->mH1Handker:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 974
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothCallFragmentSendMsg-->"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public handlerDialBtnEvent()V
    .locals 2

    .line 867
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->reqHfpAnswerCall(Ljava/lang/String;)V

    const-string v0, "BluetoothCallFragment"

    const-string v1, "handlerDialBtnEvent handlerHandupEvent 9944"

    .line 868
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public managerCallUI(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--------managerCallUI() callState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothCallFragment"

    invoke-static {v1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xa0

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa5

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_0

    .line 345
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/call/CallFragment;->setActiveCallUI()V

    goto :goto_0

    .line 336
    :cond_0
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/call/CallFragment;->setActiveCallUI()V

    goto :goto_0

    .line 342
    :cond_1
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/call/CallFragment;->setIncomingCallUI()V

    goto :goto_0

    .line 339
    :cond_2
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/call/CallFragment;->setOutgoingCallUI()V

    :goto_0
    const/16 v0, 0xc3

    if-eq p1, v0, :cond_3

    .line 349
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/call/CallFragment;->updateCurrentNumber()V

    :cond_3
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 119
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 124
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 714
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "BluetoothCallFragment__sswang"

    const/16 v3, 0x9

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 754
    :sswitch_0
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->mBluetoothManager:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->reqHfpMicMute()Z

    .line 755
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/call/CallFragment;->setPA6MicMute()V

    goto/16 :goto_0

    :sswitch_1
    const-string p1, "#"

    .line 829
    invoke-direct {p0, p1}, Lcom/hzbhd/bluetooth/call/CallFragment;->keyEventHandler(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_2
    const-string p1, "*"

    .line 819
    invoke-direct {p0, p1}, Lcom/hzbhd/bluetooth/call/CallFragment;->keyEventHandler(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 750
    :sswitch_3
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->mBluetoothManager:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->reqHfpTerminateOngoingCall(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 733
    :sswitch_4
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->mBluetoothManager:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->reqHfpRejectIncomingCall(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 716
    :sswitch_5
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->mBluetoothManager:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->reqHfpTerminateOngoingCall(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 834
    :sswitch_6
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/call/CallFragment;->handlerBackSpace()V

    goto/16 :goto_0

    .line 763
    :sswitch_7
    iget-boolean p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->isClickAble:Z

    if-eqz p1, :cond_0

    .line 764
    iput-boolean v1, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->isClickAble:Z

    .line 765
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->mBluetoothManager:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->reqHfpAudioTransfer(Ljava/lang/String;B)Z

    .line 767
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 768
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->handler:Landroid/os/Handler;

    const-wide/16 v0, 0x4b0

    invoke-virtual {p1, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 720
    :sswitch_8
    iget-boolean p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->isClickAble:Z

    if-eqz p1, :cond_0

    .line 721
    iput-boolean v1, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->isClickAble:Z

    .line 722
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->mBluetoothManager:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->reqHfpAudioTransfer(Ljava/lang/String;B)Z

    .line 723
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 724
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->handler:Landroid/os/Handler;

    const-wide/16 v0, 0x258

    invoke-virtual {p1, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :sswitch_9
    const-string p1, "bt hand up"

    .line 845
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/call/CallFragment;->handlerHandupEvent()V

    goto :goto_0

    :sswitch_a
    const-string p1, "bt hand in"

    .line 839
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/call/CallFragment;->handlerDialBtnEvent()V

    goto :goto_0

    :sswitch_b
    const-string p1, "9"

    .line 814
    invoke-direct {p0, p1}, Lcom/hzbhd/bluetooth/call/CallFragment;->keyEventHandler(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_c
    const-string p1, "8"

    .line 809
    invoke-direct {p0, p1}, Lcom/hzbhd/bluetooth/call/CallFragment;->keyEventHandler(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_d
    const-string p1, "7"

    .line 804
    invoke-direct {p0, p1}, Lcom/hzbhd/bluetooth/call/CallFragment;->keyEventHandler(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_e
    const-string p1, "6"

    .line 799
    invoke-direct {p0, p1}, Lcom/hzbhd/bluetooth/call/CallFragment;->keyEventHandler(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_f
    const-string p1, "5"

    .line 794
    invoke-direct {p0, p1}, Lcom/hzbhd/bluetooth/call/CallFragment;->keyEventHandler(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_10
    const-string p1, "4"

    .line 789
    invoke-direct {p0, p1}, Lcom/hzbhd/bluetooth/call/CallFragment;->keyEventHandler(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_11
    const-string p1, "3"

    .line 784
    invoke-direct {p0, p1}, Lcom/hzbhd/bluetooth/call/CallFragment;->keyEventHandler(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_12
    const-string p1, "2"

    .line 779
    invoke-direct {p0, p1}, Lcom/hzbhd/bluetooth/call/CallFragment;->keyEventHandler(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_13
    const-string p1, "1"

    .line 774
    invoke-direct {p0, p1}, Lcom/hzbhd/bluetooth/call/CallFragment;->keyEventHandler(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_14
    const-string p1, "0"

    .line 824
    invoke-direct {p0, p1}, Lcom/hzbhd/bluetooth/call/CallFragment;->keyEventHandler(Ljava/lang/String;)V

    goto :goto_0

    .line 729
    :sswitch_15
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->mBluetoothManager:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->reqHfpAnswerCall(Ljava/lang/String;)V

    .line 850
    :cond_0
    :goto_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->playBeep()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09003e -> :sswitch_15
        0x7f09005f -> :sswitch_14
        0x7f090060 -> :sswitch_14
        0x7f090062 -> :sswitch_13
        0x7f090063 -> :sswitch_13
        0x7f090065 -> :sswitch_12
        0x7f090066 -> :sswitch_12
        0x7f090068 -> :sswitch_11
        0x7f090069 -> :sswitch_11
        0x7f09006b -> :sswitch_10
        0x7f09006c -> :sswitch_10
        0x7f09006e -> :sswitch_f
        0x7f09006f -> :sswitch_f
        0x7f090071 -> :sswitch_e
        0x7f090072 -> :sswitch_e
        0x7f090074 -> :sswitch_d
        0x7f090075 -> :sswitch_d
        0x7f090077 -> :sswitch_c
        0x7f090078 -> :sswitch_c
        0x7f09007a -> :sswitch_b
        0x7f09007b -> :sswitch_b
        0x7f090085 -> :sswitch_a
        0x7f09008e -> :sswitch_9
        0x7f0900c1 -> :sswitch_8
        0x7f0900c3 -> :sswitch_7
        0x7f090125 -> :sswitch_6
        0x7f090126 -> :sswitch_6
        0x7f090127 -> :sswitch_a
        0x7f09013e -> :sswitch_5
        0x7f09013f -> :sswitch_4
        0x7f090141 -> :sswitch_3
        0x7f090159 -> :sswitch_2
        0x7f09015a -> :sswitch_2
        0x7f09015c -> :sswitch_1
        0x7f09015d -> :sswitch_1
        0x7f0901d7 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 129
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    .line 134
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const p3, 0x7f04002d

    .line 140
    invoke-static {p3}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResId(I)I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 141
    invoke-direct {p0, p1}, Lcom/hzbhd/bluetooth/call/CallFragment;->setupOtherView(Landroid/view/View;)V

    .line 142
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object p2

    iput-object p2, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->mBluetoothManager:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    .line 143
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/call/CallFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    const-string/jumbo p3, "window"

    invoke-virtual {p2, p3}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    iput-object p2, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->mWindowManager:Landroid/view/WindowManager;

    .line 144
    new-instance p2, Lcom/hzbhd/bluetooth/call/CallFragment$ContactAsyncQueryHandler;

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/call/CallFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    invoke-virtual {p3}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Lcom/hzbhd/bluetooth/call/CallFragment$ContactAsyncQueryHandler;-><init>(Lcom/hzbhd/bluetooth/call/CallFragment;Landroid/content/ContentResolver;)V

    iput-object p2, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->queryHandler:Lcom/hzbhd/bluetooth/call/CallFragment$ContactAsyncQueryHandler;

    const p2, 0x7f040051

    .line 145
    invoke-static {p2}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResBool(I)Z

    move-result p2

    if-eqz p2, :cond_4

    move p2, v0

    .line 146
    :goto_0
    sget-object p3, Lcom/hzbhd/bluetooth/constants/BluetoothConstants;->DIALPAD_KEY_IDS:[I

    array-length p3, p3

    if-ge p2, p3, :cond_3

    .line 147
    sget-object p3, Lcom/hzbhd/bluetooth/constants/BluetoothConstants;->DIALPAD_KEY_IDS:[I

    array-length p3, p3

    add-int/lit8 p3, p3, -0x1

    if-eq p2, p3, :cond_1

    sget-object p3, Lcom/hzbhd/bluetooth/constants/BluetoothConstants;->DIALPAD_KEY_IDS:[I

    array-length p3, p3

    add-int/lit8 p3, p3, -0x2

    if-ne p2, p3, :cond_0

    goto :goto_1

    .line 153
    :cond_0
    sget-object p3, Lcom/hzbhd/bluetooth/constants/BluetoothConstants;->DIALPAD_KEY_IDS:[I

    aget p3, p3, p2

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 155
    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 148
    :cond_1
    :goto_1
    sget-object p3, Lcom/hzbhd/bluetooth/constants/BluetoothConstants;->DIALPAD_KEY_IDS:[I

    aget p3, p3, p2

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 150
    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    const p2, 0x7f090129

    .line 159
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->digitsTv:Landroid/widget/TextView;

    const p2, 0x7f090125

    .line 160
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->dialpad_clear_btn_id:Landroid/widget/ImageButton;

    if-eqz p2, :cond_4

    .line 161
    invoke-virtual {p2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    :cond_4
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/call/CallFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f040014

    invoke-static {p2, p3}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/call/CallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-eq p2, v1, :cond_5

    .line 165
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/call/CallFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p3}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/call/CallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne p2, v1, :cond_7

    :cond_5
    const p2, 0x7f09012a

    .line 166
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->digitsTv:Landroid/widget/TextView;

    const p2, 0x7f090126

    .line 167
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->dialpad_clear_btn_id:Landroid/widget/ImageButton;

    .line 168
    invoke-virtual {p2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    :goto_3
    sget-object p2, Lcom/hzbhd/bluetooth/call/CallFragment;->DIALPAD_KEY_IDS_83:[I

    array-length v1, p2

    if-ge v0, v1, :cond_6

    .line 170
    aget p2, p2, v0

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    const-string p2, "BluetoothCallFragment__sswang"

    const-string v0, "bt__ok"

    .line 172
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_7
    invoke-direct {p0, p1}, Lcom/hzbhd/bluetooth/call/CallFragment;->initUI_H1(Landroid/view/View;)V

    .line 175
    invoke-direct {p0, p1}, Lcom/hzbhd/bluetooth/call/CallFragment;->initPA6(Landroid/view/View;)V

    .line 176
    invoke-direct {p0, p1}, Lcom/hzbhd/bluetooth/call/CallFragment;->initPC6(Landroid/view/View;)V

    const-string/jumbo p2, "sw-ap006"

    const-string v0, "---------BluetoothCallFragment.onCreateView()-----------"

    .line 177
    invoke-static {p2, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/call/CallFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f040036

    invoke-static {p2, v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResBool(Landroid/content/Context;I)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 179
    new-instance p2, Lcom/hzbhd/bluetooth/widget/_t1/AudioInPhoneAnim;

    new-instance v0, Lcom/hzbhd/bluetooth/call/CallFragment$1;

    invoke-direct {v0, p0}, Lcom/hzbhd/bluetooth/call/CallFragment$1;-><init>(Lcom/hzbhd/bluetooth/call/CallFragment;)V

    invoke-direct {p2, v0}, Lcom/hzbhd/bluetooth/widget/_t1/AudioInPhoneAnim;-><init>(Lcom/hzbhd/bluetooth/widget/_t1/AudioInPhoneAnim$IAudioInPhoneAnimCallback;)V

    iput-object p2, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->mAudioInPhoneAnim:Lcom/hzbhd/bluetooth/widget/_t1/AudioInPhoneAnim;

    .line 186
    :cond_8
    invoke-static {p3}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result p2

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/call/CallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f0a0013

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    if-ne p2, p3, :cond_9

    .line 187
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/call/CallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f081383

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/AnimationDrawable;

    const p3, 0x7f09019f

    .line 188
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 189
    invoke-virtual {p2}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_9
    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 196
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 197
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/call/CallFragment;->getHfpMainActivity()Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    move-result-object v0

    invoke-direct {p0}, Lcom/hzbhd/bluetooth/call/CallFragment;->getHfpMainActivity()Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    const/16 v1, 0x1f4a

    invoke-virtual {v0, v1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->SendMsg(I)V

    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 202
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 204
    :try_start_0
    const-class v0, Landroid/support/v4/app/Fragment;

    const-string v1, "mChildFragmentManager"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v1, 0x0

    .line 206
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 210
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 208
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    .line 216
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 2

    .line 221
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 229
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->secondCallView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 230
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 231
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 236
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    const-string v0, ""

    .line 237
    iput-object v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->lastQueryNum:Ljava/lang/String;

    const/4 v0, 0x1

    .line 238
    iput-boolean v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->isClickAble:Z

    const/4 v1, 0x0

    .line 239
    iput-boolean v1, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->incomingCallAudioChangeToAg:Z

    .line 240
    iget-object v1, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->mBluetoothManager:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpCallCounts()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 241
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/call/CallFragment;->resetCallInfo()V

    .line 243
    :cond_0
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/call/CallFragment;->findSecondView()V

    .line 245
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->mBluetoothManager:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpCallState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hzbhd/bluetooth/call/CallFragment;->managerCallUI(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 247
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const-string/jumbo v0, "sw-ap006"

    const-string v1, "---------BluetoothCallFragment.onResume()-----------"

    .line 249
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 254
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 259
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    return-void
.end method

.method public parseSecond2String(I)Ljava/lang/String;
    .locals 10

    add-int/lit8 v0, p1, 0x0

    const/16 v1, 0xe10

    .line 616
    div-int/2addr v0, v1

    int-to-long v2, v0

    int-to-long v4, p1

    int-to-long v0, v1

    mul-long/2addr v0, v2

    sub-long/2addr v4, v0

    const/16 p1, 0x3c

    int-to-long v0, p1

    .line 617
    div-long v6, v4, v0

    mul-long/2addr v0, v6

    sub-long/2addr v4, v0

    const/4 p1, 0x1

    int-to-long v0, p1

    .line 618
    div-long/2addr v4, v0

    const-wide/16 v0, 0xa

    cmp-long p1, v2, v0

    const-string v8, "0"

    const-string v9, ""

    if-gez p1, :cond_0

    .line 620
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

    .line 621
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

    .line 622
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

    .line 624
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

.method public set3WayIncomingCallUI()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    .line 309
    iput-boolean v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->isIn3WayCall:Z

    const/4 v0, 0x0

    .line 310
    invoke-virtual {p0, v0}, Lcom/hzbhd/bluetooth/call/CallFragment;->setSecondCallViewVisibility(I)V

    .line 311
    iget-object v1, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->dialBtnView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 312
    iget-object v1, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->incomBtnView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 313
    iget-object v1, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->activeBtnView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setActiveCallUI()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 263
    iput-boolean v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->isIn3WayCall:Z

    .line 264
    iget-object v1, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->callTypeTitle:Landroid/widget/TextView;

    const v2, 0x7f0d0143

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 265
    iget-object v1, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->callTimeTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->mBluetoothManager:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getCurrentCallNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getCallTime(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/hzbhd/bluetooth/call/CallFragment;->parseSecond2String(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v1, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->handler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 268
    iget-object v1, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->handler:Landroid/os/Handler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 270
    iget-object v1, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->dialBtnView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 271
    iget-object v1, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->incomBtnView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 272
    iget-object v1, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->activeBtnView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setCallAudioState(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x7f040015

    .line 354
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResStr(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "A4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_8

    .line 355
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResStr(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "C2"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 356
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResStr(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "M6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const v0, 0x7f040051

    .line 363
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResBool(I)Z

    move-result v0

    const v1, 0x7f040014

    if-eqz v0, :cond_3

    if-ne p1, v3, :cond_1

    .line 365
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->activeChangeBtn:Landroid/widget/ImageButton;

    const v2, 0x7f080542

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 367
    :cond_1
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->activeChangeBtn:Landroid/widget/ImageButton;

    const v2, 0x7f080543

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 370
    :goto_0
    invoke-static {v1}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/call/CallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v0, v1, :cond_a

    if-ne p1, v3, :cond_2

    .line 372
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->activeChangeBtn:Landroid/widget/ImageButton;

    const v0, 0x7f080abc

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_2

    .line 374
    :cond_2
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->activeChangeBtn:Landroid/widget/ImageButton;

    const v0, 0x7f080abe

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_2

    :cond_3
    const v0, 0x7f040035

    .line 377
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResBool(I)Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x7f040036

    if-ne p1, v3, :cond_5

    .line 379
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResBool(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 380
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->mAudioInPhoneAnim:Lcom/hzbhd/bluetooth/widget/_t1/AudioInPhoneAnim;

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/widget/_t1/AudioInPhoneAnim;->animStop()V

    .line 382
    :cond_4
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->activeChangeBtn:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_2

    .line 384
    :cond_5
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->activeChangeBtn:Landroid/widget/ImageButton;

    invoke-virtual {p1, v3}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 385
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResBool(I)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 386
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->mAudioInPhoneAnim:Lcom/hzbhd/bluetooth/widget/_t1/AudioInPhoneAnim;

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/widget/_t1/AudioInPhoneAnim;->animStart()V

    goto :goto_2

    .line 389
    :cond_6
    invoke-static {v1}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/call/CallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v0, v1, :cond_a

    if-ne p1, v3, :cond_7

    .line 391
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->activeChangeBtn:Landroid/widget/ImageButton;

    const v0, 0x7f080da2

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_2

    .line 393
    :cond_7
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->activeChangeBtn:Landroid/widget/ImageButton;

    const v0, 0x7f080da3

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_2

    :cond_8
    :goto_1
    if-ne p1, v3, :cond_9

    .line 358
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->activeChangeBtn:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_2

    .line 360
    :cond_9
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->activeChangeBtn:Landroid/widget/ImageButton;

    invoke-virtual {p1, v3}, Landroid/widget/ImageButton;->setSelected(Z)V

    :cond_a
    :goto_2
    return-void
.end method

.method public setCallNumber(Ljava/lang/String;)V
    .locals 2

    .line 544
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->callNumberTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 545
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 546
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->queryHandler:Lcom/hzbhd/bluetooth/call/CallFragment$ContactAsyncQueryHandler;

    iget-object v1, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->mBluetoothManager:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/hzbhd/bluetooth/call/CallFragment$ContactAsyncQueryHandler;->queryContactName(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setCallerName(Ljava/lang/String;)V
    .locals 1

    .line 553
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->callNameTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 554
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setEndCallUI()V
    .locals 4

    const v0, 0x7f040036

    .line 317
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResBool(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->mAudioInPhoneAnim:Lcom/hzbhd/bluetooth/widget/_t1/AudioInPhoneAnim;

    invoke-virtual {v0}, Lcom/hzbhd/bluetooth/widget/_t1/AudioInPhoneAnim;->animStop()V

    :cond_0
    const/4 v0, 0x0

    .line 320
    iput-boolean v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->isIn3WayCall:Z

    const-string v0, ""

    .line 321
    iput-object v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->lastQueryNum:Ljava/lang/String;

    .line 322
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->callTypeTitle:Landroid/widget/TextView;

    const v1, 0x7f0d013b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 324
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->dialBtnView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 325
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->incomBtnView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 326
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->activeBtnView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 328
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 329
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public setIncomingCallUI()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 296
    iput-boolean v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->incomingCallAudioChangeToAg:Z

    .line 297
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/call/CallFragment;->getTopActivity()Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    move-result-object v1

    const v2, 0x7f040014

    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(Landroid/content/Context;I)I

    move-result v1

    .line 298
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/call/CallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 299
    iget-object v1, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->coming_call:Landroid/widget/ImageView;

    const v2, 0x7f0806b8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 302
    :cond_0
    iget-object v1, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->callTypeTitle:Landroid/widget/TextView;

    const v2, 0x7f0d0139

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 303
    iget-object v1, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->dialBtnView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 304
    iget-object v1, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->incomBtnView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->activeBtnView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setMuteState(Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x7f0a0018

    const-string v1, "C2"

    const v2, 0x7f0a0012

    const-string v3, "A4"

    const v4, 0x7f0a000e

    const v5, 0x7f0a000a

    const v6, 0x7f04003a

    const v7, 0x7f040015

    const v8, 0x7f040014

    if-nez p1, :cond_7

    .line 408
    invoke-static {v6}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResBool(I)Z

    move-result p1

    const/4 v6, 0x1

    if-eqz p1, :cond_0

    .line 409
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->activeMuteBtn:Landroid/widget/ImageButton;

    invoke-virtual {p1, v6}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto/16 :goto_2

    .line 410
    :cond_0
    invoke-static {v8}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/call/CallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    if-ne p1, v5, :cond_3

    .line 411
    invoke-static {v7}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResStr(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 412
    invoke-static {v7}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResStr(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 415
    :cond_1
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->activeMuteBtn:Landroid/widget/ImageButton;

    const v0, 0x7f080515

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_2

    .line 413
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->activeMuteBtn:Landroid/widget/ImageButton;

    invoke-virtual {p1, v6}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto/16 :goto_2

    .line 418
    :cond_3
    invoke-static {v8}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/call/CallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne p1, v1, :cond_4

    .line 419
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->activeMuteBtn:Landroid/widget/ImageButton;

    const v0, 0x7f080897

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 420
    :cond_4
    invoke-static {v8}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/call/CallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne p1, v1, :cond_5

    .line 421
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->activeMuteBtn:Landroid/widget/ImageButton;

    const v0, 0x7f0812e3

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_2

    .line 422
    :cond_5
    invoke-static {v8}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/call/CallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-ne p1, v0, :cond_6

    .line 423
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->activeMuteBtn:Landroid/widget/ImageButton;

    const v0, 0x7f080da0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_2

    .line 425
    :cond_6
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->activeMuteBtn:Landroid/widget/ImageButton;

    const v0, 0x7f081754

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_2

    .line 429
    :cond_7
    invoke-static {v6}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResBool(I)Z

    move-result p1

    const/4 v6, 0x0

    if-eqz p1, :cond_8

    .line 430
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->activeMuteBtn:Landroid/widget/ImageButton;

    invoke-virtual {p1, v6}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto/16 :goto_2

    .line 431
    :cond_8
    invoke-static {v8}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/call/CallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    if-ne p1, v5, :cond_b

    .line 432
    invoke-static {v7}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResStr(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 433
    invoke-static {v7}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResStr(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_1

    .line 436
    :cond_9
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->activeMuteBtn:Landroid/widget/ImageButton;

    const v0, 0x7f080516

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_2

    .line 434
    :cond_a
    :goto_1
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->activeMuteBtn:Landroid/widget/ImageButton;

    invoke-virtual {p1, v6}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_2

    .line 437
    :cond_b
    invoke-static {v8}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/call/CallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne p1, v1, :cond_c

    .line 438
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->activeMuteBtn:Landroid/widget/ImageButton;

    const v0, 0x7f080894

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_2

    .line 439
    :cond_c
    invoke-static {v8}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/call/CallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne p1, v1, :cond_d

    .line 440
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->activeMuteBtn:Landroid/widget/ImageButton;

    const v0, 0x7f0812e4

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_2

    .line 441
    :cond_d
    invoke-static {v8}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/call/CallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-ne p1, v0, :cond_e

    .line 442
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->activeMuteBtn:Landroid/widget/ImageButton;

    const v0, 0x7f080da1

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_2

    .line 444
    :cond_e
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->activeMuteBtn:Landroid/widget/ImageButton;

    const v0, 0x7f081753

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    :goto_2
    return-void
.end method

.method public setOutgoingCallUI()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 284
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/call/CallFragment;->getTopActivity()Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    move-result-object v0

    const v1, 0x7f040014

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(Landroid/content/Context;I)I

    move-result v0

    .line 285
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/call/CallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 286
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->coming_call:Landroid/widget/ImageView;

    const v1, 0x7f0806ca

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->callTypeTitle:Landroid/widget/TextView;

    const v1, 0x7f0d013a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 290
    const/16 v1, 0x8

    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->dialBtnView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 291
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->incomBtnView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 292
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->activeBtnView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setSecondCallInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 464
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->secCallNumberTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 465
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    :cond_0
    iget-object p2, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->secCallNameTitle:Landroid/widget/TextView;

    if-eqz p2, :cond_1

    .line 468
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setSecondCallViewVisibility(I)V
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->secondCallView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 459
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public updateCurrentNumber()V
    .locals 4

    .line 540
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment;->handler:Landroid/os/Handler;

    const/4 v1, 0x4

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
