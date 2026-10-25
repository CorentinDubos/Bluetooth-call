.class public Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;
.super Landroid/support/v4/app/Fragment;
.source "ExpandPhoneContactFragment.java"

# interfaces
.implements Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter$PhoneNumberListAdapterListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$OnNameAndPhoneResultListener;,
        Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$InitDataTask;,
        Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$SyncContactQueryHandler;,
        Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$ListOnGroupExpandListener;,
        Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$ListOnGroupCollapseListener;,
        Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$ListOnGroupClickListener;,
        Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$ListOnChildClickListener;,
        Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$ListOnItemLongClickListener;,
        Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$ListOnItemClickListener;,
        Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$DeletePhonebookTask;,
        Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$AllContactsLoaderListener;
    }
.end annotation


# static fields
.field public static final CONTACT_ALL:I = 0x0

.field public static final CONTACT_FAVORITY:I = 0x1

.field public static final CONTACT_SOS:I = 0x2

.field public static final EXTRA_ACTION:Ljava/lang/String; = "action"

.field public static final EXTRA_CONTACT_TYPE:Ljava/lang/String; = "contact_type"

.field public static final EXTRA_ID:Ljava/lang/String; = "id"

.field public static final SELECT_CONTACT:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field public static final VIEW_CONTACT:I = 0x1


# instance fields
.field private Ids:[I

.field private final LOADER_ID_ALL_CONTACTS:I

.field private edit_search:Landroid/widget/EditText;

.field private leftButtons:[Landroid/view/View;

.field private mAllContactAdapter:Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;

.field private final mAllContactsLoaderListener:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentLoaderId:I

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnNameAndPhoneResultListener:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$OnNameAndPhoneResultListener;

.field public static sLastPbapAddress:Ljava/lang/String;

.field private final mPhoneSearchCloseListener:Landroid/widget/SearchView$OnCloseListener;

.field private final mPhoneSearchQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

.field private mQueryHandler:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$SyncContactQueryHandler;

.field private mSearchView:Landroid/widget/SearchView;

.field private noContactMsg:Landroid/view/View;

.field private phoneNumberList:Landroid/widget/ExpandableListView;

.field private searchLayout:Landroid/view/View;

.field private selectContactId:J

.field private selectContactName:Ljava/lang/String;

.field private selectContactNum:Ljava/lang/String;

.field private selectIndex:I

.field private tv_allContracts:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 86
    const-class v0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 84
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->leftButtons:[Landroid/view/View;

    const/4 v1, -0x1

    .line 102
    iput v1, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->LOADER_ID_ALL_CONTACTS:I

    .line 110
    iput v1, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->selectIndex:I

    .line 112
    iput v1, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->mCurrentLoaderId:I

    .line 126
    new-instance v1, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$AllContactsLoaderListener;

    invoke-direct {v1, p0, v0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$AllContactsLoaderListener;-><init>(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$1;)V

    iput-object v1, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->mAllContactsLoaderListener:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    .line 243
    new-instance v0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$1;

    invoke-direct {v0, p0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$1;-><init>(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;)V

    iput-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->mPhoneSearchQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

    .line 275
    new-instance v0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$2;

    invoke-direct {v0, p0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$2;-><init>(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;)V

    iput-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->mPhoneSearchCloseListener:Landroid/widget/SearchView$OnCloseListener;

    const/16 v0, 0x1c

    new-array v0, v0, [I

    .line 605
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->Ids:[I

    .line 650
    new-instance v0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$7;

    invoke-direct {v0, p0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$7;-><init>(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;)V

    iput-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void

    nop

    :array_0
    .array-data 4
        0x7f090086
        0x7f09009f
        0x7f09007d
        0x7f09007f
        0x7f090080
        0x7f090082
        0x7f090089
        0x7f09008a
        0x7f09008b
        0x7f09008c
        0x7f09008f
        0x7f090090
        0x7f090091
        0x7f090092
        0x7f090094
        0x7f090097
        0x7f090098
        0x7f09009a
        0x7f09009b
        0x7f09009c
        0x7f09009d
        0x7f0900a0
        0x7f0900a1
        0x7f0900a2
        0x7f0900a3
        0x7f0900a4
        0x7f0900a5
        0x7f0900a6
    .end array-data
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 84
    sget-object v0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;)Landroid/widget/EditText;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->edit_search:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->handlerBackSpace()V

    return-void
.end method

.method static synthetic access$1200(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;Ljava/lang/String;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->keyEventHandler(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;)Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$OnNameAndPhoneResultListener;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->mOnNameAndPhoneResultListener:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$OnNameAndPhoneResultListener;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;)Ljava/lang/String;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->selectContactName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->selectContactName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;)Ljava/lang/String;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->selectContactNum:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->selectContactNum:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;)J
    .locals 2

    .line 84
    iget-wide v0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->selectContactId:J

    return-wide v0
.end method

.method static synthetic access$1602(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;J)J
    .locals 0

    .line 84
    iput-wide p1, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->selectContactId:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;)I
    .locals 0

    .line 84
    iget p0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->mCurrentLoaderId:I

    return p0
.end method

.method static synthetic access$300(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;)Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->mAllContactAdapter:Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;)Landroid/widget/ExpandableListView;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->phoneNumberList:Landroid/widget/ExpandableListView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;)Landroid/view/View;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->noContactMsg:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$600(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;)Landroid/widget/SearchView;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->mSearchView:Landroid/widget/SearchView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->syncPA6Contact()V

    return-void
.end method

.method static synthetic access$800(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;)Landroid/widget/TextView;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->tv_allContracts:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;Landroid/view/View;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->hideInputMethod(Landroid/view/View;)V

    return-void
.end method

.method private addContactToFavorites(JLjava/lang/String;Ljava/lang/String;J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 1014
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "name"

    .line 1015
    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "number"

    .line 1016
    invoke-virtual {v0, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x1

    .line 1017
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string/jumbo v1, "starred"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1018
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    const-string p5, "contact_id"

    invoke-virtual {v0, p5, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1020
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p4

    invoke-virtual {p4}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p4

    sget-object p5, Lcom/hzbhd/bluetooth/db/DataBaseDef$DatabaseInfo;->FAVORITES_CONTENT_URI:Landroid/net/Uri;

    new-array p3, p3, [Ljava/lang/String;

    const/4 p6, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, p6

    const-string p6, "_id=?"

    invoke-virtual {p4, p5, v0, p6, p3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1021
    sget-object p3, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "----addContactToFavorites() id="

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private dialItemNumber(Ljava/lang/String;)V
    .locals 2

    .line 889
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 890
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

    .line 892
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

.method private dialNunber(Ljava/lang/String;)V
    .locals 2

    .line 1027
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1028
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

.method private getHfpMainActivity()Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;
    .locals 1

    .line 1003
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    return-object v0
.end method

.method private handlerBackSpace()V
    .locals 3

    .line 781
    iget-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->edit_search:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->edit_search:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 783
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->edit_search:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->edit_search:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 784
    iget-object v1, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->edit_search:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private hideInputMethod(Landroid/view/View;)V
    .locals 2

    .line 797
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 799
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method private initNM6(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f040014

    .line 371
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    const v0, 0x7f090017

    .line 372
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f090015

    .line 373
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f090019

    .line 374
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/hzbhd/bluetooth/ui/_m6/M6ContactsView;

    .line 376
    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/ui/_m6/M6ContactsView;->startQueryContract()V

    .line 377
    new-instance v2, Lcom/hzbhd/bluetooth/contacts/-$$Lambda$ExpandPhoneContactFragment$gPENAnap1lnHSvB1T-OFf8h2UnM;

    invoke-direct {v2, p1}, Lcom/hzbhd/bluetooth/contacts/-$$Lambda$ExpandPhoneContactFragment$gPENAnap1lnHSvB1T-OFf8h2UnM;-><init>(Lcom/hzbhd/bluetooth/ui/_m6/M6ContactsView;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    new-instance v0, Lcom/hzbhd/bluetooth/contacts/-$$Lambda$ExpandPhoneContactFragment$M8D0goKKRRA17jeauq3TmcAORRw;

    invoke-direct {v0, p1}, Lcom/hzbhd/bluetooth/contacts/-$$Lambda$ExpandPhoneContactFragment$M8D0goKKRRA17jeauq3TmcAORRw;-><init>(Lcom/hzbhd/bluetooth/ui/_m6/M6ContactsView;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 379
    new-instance v0, Lcom/hzbhd/bluetooth/contacts/-$$Lambda$ExpandPhoneContactFragment$itk48D0iPn5AKpvl6WSnmuvR5Jo;

    invoke-direct {v0, p0}, Lcom/hzbhd/bluetooth/contacts/-$$Lambda$ExpandPhoneContactFragment$itk48D0iPn5AKpvl6WSnmuvR5Jo;-><init>(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;)V

    invoke-virtual {p1, v0}, Lcom/hzbhd/bluetooth/ui/_m6/M6ContactsView;->setOnClickListener(Lcom/hzbhd/bluetooth/ui/_m6/AdapterContract$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private initNP2(Landroid/view/View;)V
    .locals 4

    const v0, 0x7f040014

    .line 451
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v0, v1, :cond_3

    const v0, 0x7f09018d

    .line 452
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f090198

    .line 453
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f09018f

    .line 454
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f090240

    .line 455
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->tv_allContracts:Landroid/widget/TextView;

    .line 456
    new-instance p1, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$4;

    invoke-direct {p1, p0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$4;-><init>(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;)V

    if-eqz v0, :cond_0

    .line 477
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-eqz v2, :cond_1

    .line 478
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    if-eqz v1, :cond_2

    .line 479
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 480
    :cond_2
    iget-object p1, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->tv_allContracts:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0d0112

    invoke-virtual {p0, v1}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method private initPA6(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f040014

    .line 384
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x8

    .line 385
    invoke-direct {p0, v0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->setSearchViewVisibility(I)V

    .line 386
    new-instance v0, Lcom/hzbhd/bluetooth/contacts/-$$Lambda$ExpandPhoneContactFragment$rvOS-AMRJJkQHoTDKGkyvOoVCtk;

    invoke-direct {v0, p0}, Lcom/hzbhd/bluetooth/contacts/-$$Lambda$ExpandPhoneContactFragment$rvOS-AMRJJkQHoTDKGkyvOoVCtk;-><init>(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;)V

    const v1, 0x7f09000f

    .line 415
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090012

    .line 416
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09000e

    .line 417
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private initPC6(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f040014

    .line 362
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    const v0, 0x7f090112

    .line 363
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;

    .line 365
    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;->startQueryContract()V

    .line 366
    new-instance v0, Lcom/hzbhd/bluetooth/contacts/-$$Lambda$ExpandPhoneContactFragment$kjPObPTLNXojFKIzfxqyTmWvs3g;

    invoke-direct {v0, p0}, Lcom/hzbhd/bluetooth/contacts/-$$Lambda$ExpandPhoneContactFragment$kjPObPTLNXojFKIzfxqyTmWvs3g;-><init>(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;)V

    invoke-virtual {p1, v0}, Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;->setOnClickListener(Lcom/hzbhd/bluetooth/ui/_m6/AdapterContract$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private keyEventHandler(Ljava/lang/String;)V
    .locals 2

    .line 776
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->edit_search:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 777
    iget-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->edit_search:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$initNM6$1(Lcom/hzbhd/bluetooth/ui/_m6/M6ContactsView;Landroid/view/View;)V
    .locals 0

    .line 377
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/ui/_m6/M6ContactsView;->startQueryContract()V

    return-void
.end method

.method static synthetic lambda$initNM6$2(Lcom/hzbhd/bluetooth/ui/_m6/M6ContactsView;Landroid/view/View;)V
    .locals 0

    .line 378
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/ui/_m6/M6ContactsView;->clearData()V

    return-void
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;
    .locals 1

    .line 289
    new-instance v0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    invoke-direct {v0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;-><init>()V

    .line 290
    invoke-virtual {v0, p0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private onResumePA6()V
    .locals 5

    .line 852
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothRemoteDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 853
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "_a6_save_blueTooth_collect"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 854
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_a6_clear_contact"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 856
    iget-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->noContactMsg:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 858
    :cond_0
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->exitSearchUi()V

    const/4 v0, -0x1

    .line 859
    invoke-virtual {p0, v0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->reloadAllContactData(I)V

    :goto_0
    return-void
.end method

.method private prepareSearchView(Landroid/view/View;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x7f09020a

    .line 496
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SearchView;

    iput-object p1, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->mSearchView:Landroid/widget/SearchView;

    .line 517
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getDeviceInfo()Ljava/lang/String;

    move-result-object p1

    const-string v0, "N47"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    const v0, 0x7f081785

    const-string v1, "android:id/search_mag_icon"

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 518
    iget-object p1, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {p1}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 519
    iget-object v3, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3, p1}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 520
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 522
    :cond_0
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v3, 0x7f040014

    invoke-static {p1, v3}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(Landroid/content/Context;I)I

    move-result p1

    .line 523
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0016

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    if-eq p1, v4, :cond_1

    .line 524
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(Landroid/content/Context;I)I

    move-result p1

    .line 525
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    if-ne p1, v4, :cond_2

    .line 526
    :cond_1
    iget-object p1, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {p1}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 527
    iget-object v4, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v4, p1}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 528
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 530
    :cond_2
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(Landroid/content/Context;I)I

    move-result p1

    .line 531
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0a000a

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 532
    iget-object p1, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {p1}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 533
    iget-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, p1}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const v0, 0x7f0804fc

    .line 534
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 536
    iget-object p1, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {p1}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "android:id/search_src_text"

    invoke-virtual {p1, v0, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 538
    iget-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, p1}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 v0, 0x2

    .line 539
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070bc6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {p1, v0, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_3
    const p1, 0x7f040015

    .line 542
    invoke-static {p1}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResStr(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "M1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v4, "android:id/search_plate"

    if-eqz v0, :cond_4

    .line 543
    iget-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 544
    iget-object v5, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v5}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "android:id/submit_area"

    invoke-virtual {v5, v6, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 545
    iget-object v6, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v6, v0}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 546
    iget-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v5}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 548
    :cond_4
    invoke-static {v3}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0a0013

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    if-ne v0, v3, :cond_5

    .line 550
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 551
    iget-object v3, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3, v0}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 552
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 554
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v3, "android:id/search_close_btn"

    invoke-virtual {v0, v3, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 555
    iget-object v3, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3, v0}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 556
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 559
    :cond_5
    invoke-static {p1}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResStr(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "E3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 561
    :try_start_0
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v0, 0x34

    const/4 v3, -0x1

    invoke-direct {p1, v0, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x10

    .line 562
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 563
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 564
    iget-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 565
    iget-object v1, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1, v0}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 566
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const p1, 0x7f080e13

    .line 567
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 569
    iget-object p1, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {p1}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v4, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 570
    iget-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, p1}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 572
    sget-object v0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareSearchView: error < - >"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->mSearchView:Landroid/widget/SearchView;

    iget-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->mPhoneSearchQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

    invoke-virtual {p1, v0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 577
    iget-object p1, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->mSearchView:Landroid/widget/SearchView;

    iget-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->mPhoneSearchCloseListener:Landroid/widget/SearchView$OnCloseListener;

    invoke-virtual {p1, v0}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    return-void
.end method

.method private prepareSearchView_H1(Landroid/view/View;)V
    .locals 5

    const v0, 0x7f040015

    .line 612
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResStr(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "H1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 615
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->Ids:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    .line 616
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const v0, 0x7f09012e

    .line 618
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->edit_search:Landroid/widget/EditText;

    .line 619
    new-instance v1, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$5;

    invoke-direct {v1, p0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$5;-><init>(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v0, 0x7f090086

    .line 637
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$6;

    invoke-direct {v0, p0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$6;-><init>(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private prepareSearchView_M1(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f040015

    .line 601
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResStr(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "M1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f090056

    .line 602
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setClearContact(Z)V
    .locals 4

    const v0, 0x7f040014

    .line 438
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 439
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothRemoteDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 440
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "_a6_save_blueTooth_collect"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 441
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 442
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_a6_clear_contact"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 443
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 444
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method private setLeftButtonDisable()V
    .locals 4

    .line 1034
    iget-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->leftButtons:[Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 1037
    :goto_0
    iget-object v2, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->leftButtons:[Landroid/view/View;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 1038
    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setSearchViewVisibility(I)V
    .locals 1

    .line 805
    iget-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->searchLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 806
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private showInputMethod(Landroid/view/View;)V
    .locals 2

    .line 788
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 790
    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 791
    sget-object p1, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->TAG:Ljava/lang/String;

    const-string v0, "Failed to show soft input method."

    invoke-static {p1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private syncPA6Contact()V
    .locals 6

    const v0, 0x7f040014

    .line 422
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 423
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothRemoteDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 424
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "_a6_save_blueTooth_collect"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 425
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_a6_clear_contact"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 427
    iget-object v2, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->phoneNumberList:Landroid/widget/ExpandableListView;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    .line 429
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 430
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 431
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 432
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method


# virtual methods
.method public contactsDelete(JLjava/lang/String;)V
    .locals 5

    const-string v0, "error"

    .line 1058
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    .line 1061
    sget-object p3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p3}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contact_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    .line 1062
    invoke-virtual {p3, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p3

    .line 1063
    invoke-virtual {p3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p3

    .line 1061
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1065
    sget-object p3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p3}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1066
    invoke-virtual {p3, p1, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    .line 1067
    invoke-virtual {p1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p1

    .line 1065
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1069
    :cond_0
    sget-object p1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "com.mac.addr"

    aput-object v3, p2, v2

    const/4 v2, 0x1

    aput-object p3, p2, v2

    const-string p3, "account_type = ? and account_name = ?"

    .line 1070
    invoke-virtual {p1, p3, p2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    .line 1071
    invoke-virtual {p1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1074
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "com.android.contacts"

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1078
    invoke-virtual {p1}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 1076
    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public deleteAllFavority(Ljava/lang/String;)V
    .locals 6

    const-string v0, "error"

    .line 1083
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1085
    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "com.mac.addr"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const-string p1, "account_type = ? and account_name = ? and starred = 1"

    .line 1086
    invoke-virtual {v2, p1, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    .line 1088
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "starred"

    invoke-virtual {p1, v3, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    .line 1089
    invoke-virtual {p1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1091
    :try_start_0
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "com.android.contacts"

    invoke-virtual {p1, v2, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1095
    invoke-virtual {p1}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 1093
    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public deleteAllsos(Ljava/lang/String;)V
    .locals 6

    const-string v0, "error"

    .line 1100
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1102
    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "com.mac.addr"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const-string p1, "account_type = ? and account_name = ? and starred = 2"

    .line 1103
    invoke-virtual {v2, p1, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    .line 1105
    invoke-virtual {p1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1107
    :try_start_0
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "com.android.contacts"

    invoke-virtual {p1, v2, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1111
    invoke-virtual {p1}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 1109
    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public doDialAction(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1008
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "---------------doDialAction-----------number="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "sw-ap006"

    invoke-static {p2, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    invoke-direct {p0, p3}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->dialNunber(Ljava/lang/String;)V

    return-void
.end method

.method public doLongAction(JLjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public exitSearchUi()V
    .locals 3

    .line 486
    iget-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 487
    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 488
    iget-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-direct {p0, v0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->hideInputMethod(Landroid/view/View;)V

    .line 489
    iget-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    :cond_0
    return-void
.end method

.method public getSelectIndex()I
    .locals 1

    .line 880
    iget v0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->selectIndex:I

    return v0
.end method

.method public handlerDownEvent()V
    .locals 3

    .line 930
    iget-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->mAllContactAdapter:Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;

    if-nez v0, :cond_0

    return-void

    .line 933
    :cond_0
    iget v0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->selectIndex:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 934
    iput v2, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->selectIndex:I

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 936
    iput v0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->selectIndex:I

    .line 937
    iget-object v1, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->phoneNumberList:Landroid/widget/ExpandableListView;

    invoke-virtual {v1}, Landroid/widget/ExpandableListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_2

    .line 938
    iput v2, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->selectIndex:I

    .line 941
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--------handlerDownEvent() selectIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->selectIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sw-ap006"

    invoke-static {v1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    iget-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->mAllContactAdapter:Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;

    iget v1, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->selectIndex:I

    invoke-virtual {v0, v1}, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->setSelectItem(I)V

    .line 943
    iget-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->mAllContactAdapter:Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;

    invoke-virtual {v0}, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->notifyDataSetChanged()V

    .line 944
    iget-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->phoneNumberList:Landroid/widget/ExpandableListView;

    iget v1, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->selectIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setSelection(I)V

    return-void
.end method

.method public handlerEnterEvent()V
    .locals 3

    .line 898
    iget-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->mAllContactAdapter:Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;

    if-nez v0, :cond_0

    return-void

    .line 901
    :cond_0
    iget v0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->selectIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget-object v2, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->phoneNumberList:Landroid/widget/ExpandableListView;

    invoke-virtual {v2}, Landroid/widget/ExpandableListView;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v0, v2, :cond_1

    goto :goto_0

    .line 904
    :cond_1
    iget-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->mAllContactAdapter:Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;

    invoke-virtual {v0}, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->getSelectItem()I

    move-result v0

    if-ne v0, v1, :cond_2

    return-void

    .line 907
    :cond_2
    iget-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->mAllContactAdapter:Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;

    invoke-virtual {v0}, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->getSelectedNumber()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->dialItemNumber(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public handlerUpEvent()V
    .locals 2

    .line 911
    iget-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->mAllContactAdapter:Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;

    if-nez v0, :cond_0

    return-void

    .line 914
    :cond_0
    iget v0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->selectIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 915
    iput v0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->selectIndex:I

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 917
    iput v0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->selectIndex:I

    if-gez v0, :cond_2

    .line 919
    iget-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->phoneNumberList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->selectIndex:I

    .line 922
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--------handlerUpEvent() selectIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->selectIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sw-ap006"

    invoke-static {v1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    iget-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->mAllContactAdapter:Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;

    iget v1, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->selectIndex:I

    invoke-virtual {v0, v1}, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->setSelectItem(I)V

    .line 924
    iget-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->mAllContactAdapter:Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;

    invoke-virtual {v0}, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->notifyDataSetChanged()V

    .line 925
    iget-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->phoneNumberList:Landroid/widget/ExpandableListView;

    iget v1, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->selectIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setSelection(I)V

    return-void
.end method

.method public synthetic lambda$initNM6$3$ExpandPhoneContactFragment(Landroid/view/View;ILjava/lang/String;)V
    .locals 0

    .line 379
    invoke-direct {p0, p3}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->dialNunber(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$initPA6$4$ExpandPhoneContactFragment(Landroid/view/View;)V
    .locals 3

    .line 387
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 390
    :pswitch_1
    :try_start_0
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/hzbhd/bluetooth/MainActivity;

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/MainActivity;->isHfpConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    .line 391
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->reloadAllContactData(I)V

    .line 392
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object p1

    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0, v0, v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->reqPbapDownloadAllVcards(Ljava/lang/String;IIZ)Z

    .line 393
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/hzbhd/bluetooth/MainActivity;

    const v0, 0x7f0d0248

    const/16 v1, 0x1b58

    invoke-virtual {p1, v0, v1}, Lcom/hzbhd/bluetooth/MainActivity;->showPopupInfoDialog(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 396
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 400
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->setSearchViewVisibility(I)V

    .line 401
    iget-object p1, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {p1}, Landroid/widget/SearchView;->requestFocus()Z

    .line 402
    iget-object p1, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {p1}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "input_method"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x2

    .line 403
    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    goto :goto_0

    .line 406
    :pswitch_3
    new-instance p1, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p1, v1, v2}, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object p1, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->mAllContactAdapter:Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;

    .line 407
    iget-object v1, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->phoneNumberList:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, p1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 408
    iget-object p1, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->noContactMsg:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x1

    .line 410
    invoke-direct {p0, p1}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->setClearContact(Z)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f09000e
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public synthetic lambda$initPC6$0$ExpandPhoneContactFragment(Landroid/view/View;ILjava/lang/String;)V
    .locals 0

    .line 366
    invoke-direct {p0, p3}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->dialNunber(Ljava/lang/String;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 298
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1047
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->exitSearchUi()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 303
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 304
    sget-object p1, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->TAG:Ljava/lang/String;

    const-string v0, "-------PhoneContactFragment.onCreate()"

    invoke-static {p1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    .line 309
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f04002f

    .line 317
    invoke-static {p3}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResId(I)I

    move-result p3

    const/4 v0, 0x0

    .line 316
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09010e

    .line 318
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ExpandableListView;

    iput-object p2, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->phoneNumberList:Landroid/widget/ExpandableListView;

    const p2, 0x7f0901dc

    .line 319
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->noContactMsg:Landroid/view/View;

    const p2, 0x7f090209

    .line 321
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->searchLayout:Landroid/view/View;

    .line 324
    :try_start_0
    invoke-direct {p0, p1}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->prepareSearchView(Landroid/view/View;)V

    .line 325
    invoke-direct {p0, p1}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->prepareSearchView_H1(Landroid/view/View;)V

    .line 326
    invoke-direct {p0, p1}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->prepareSearchView_M1(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 328
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 331
    :goto_0
    iget-object p2, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->phoneNumberList:Landroid/widget/ExpandableListView;

    new-instance p3, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$ListOnItemClickListener;

    invoke-direct {p3, p0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$ListOnItemClickListener;-><init>(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/ExpandableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 332
    iget-object p2, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->phoneNumberList:Landroid/widget/ExpandableListView;

    new-instance p3, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$ListOnItemLongClickListener;

    invoke-direct {p3, p0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$ListOnItemLongClickListener;-><init>(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/ExpandableListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 333
    iget-object p2, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->phoneNumberList:Landroid/widget/ExpandableListView;

    new-instance p3, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$ListOnChildClickListener;

    invoke-direct {p3, p0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$ListOnChildClickListener;-><init>(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 334
    iget-object p2, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->phoneNumberList:Landroid/widget/ExpandableListView;

    new-instance p3, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$ListOnGroupClickListener;

    invoke-direct {p3, p0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$ListOnGroupClickListener;-><init>(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 335
    iget-object p2, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->phoneNumberList:Landroid/widget/ExpandableListView;

    new-instance p3, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$ListOnGroupCollapseListener;

    invoke-direct {p3, p0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$ListOnGroupCollapseListener;-><init>(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/ExpandableListView;->setOnGroupCollapseListener(Landroid/widget/ExpandableListView$OnGroupCollapseListener;)V

    .line 336
    iget-object p2, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->phoneNumberList:Landroid/widget/ExpandableListView;

    new-instance p3, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$ListOnGroupExpandListener;

    invoke-direct {p3, p0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$ListOnGroupExpandListener;-><init>(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/ExpandableListView;->setOnGroupExpandListener(Landroid/widget/ExpandableListView$OnGroupExpandListener;)V

    .line 338
    iget-object p2, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->phoneNumberList:Landroid/widget/ExpandableListView;

    new-instance p3, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$3;

    invoke-direct {p3, p0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$3;-><init>(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/ExpandableListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 349
    new-instance p2, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$SyncContactQueryHandler;

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    invoke-virtual {p3}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$SyncContactQueryHandler;-><init>(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;Landroid/content/ContentResolver;)V

    iput-object p2, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->mQueryHandler:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$SyncContactQueryHandler;

    .line 353
    sget-object p2, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->TAG:Ljava/lang/String;

    const-string p3, "-------PhoneContactFragment.onCreateView()"

    invoke-static {p2, p3}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    invoke-direct {p0, p1}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->initNP2(Landroid/view/View;)V

    .line 355
    invoke-direct {p0, p1}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->initPA6(Landroid/view/View;)V

    .line 356
    invoke-direct {p0, p1}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->initNM6(Landroid/view/View;)V

    .line 357
    invoke-direct {p0, p1}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->initPC6(Landroid/view/View;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 812
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 813
    sget-object v0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->TAG:Ljava/lang/String;

    const-string v1, "-------PhoneContactFragment.onDestroy()"

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .line 818
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 823
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    const/4 v0, 0x0

    .line 824
    iput-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->mAllContactAdapter:Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;

    .line 825
    iget-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-direct {p0, v0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->hideInputMethod(Landroid/view/View;)V

    .line 826
    sget-object v0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->TAG:Ljava/lang/String;

    const-string v1, "-------PhoneContactFragment.onPause()"

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 831
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 832
    new-instance v0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->mAllContactAdapter:Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;

    .line 834
    iget-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->phoneNumberList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 835
    iget-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->phoneNumberList:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->mAllContactAdapter:Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    const v0, 0x7f040051

    .line 836
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResBool(I)Z

    move-result v0

    const v1, 0x7f0a0017

    const v2, 0x7f040014

    if-eqz v0, :cond_0

    goto :goto_0

    .line 838
    :cond_0
    invoke-static {v2}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    if-eq v0, v3, :cond_1

    const/4 v0, 0x0

    .line 839
    invoke-direct {p0, v0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->setSearchViewVisibility(I)V

    .line 842
    :cond_1
    :goto_0
    invoke-static {v2}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 843
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->onResumePA6()V

    goto :goto_1

    .line 845
    :cond_2
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->exitSearchUi()V

    const/4 v0, -0x1

    .line 846
    invoke-virtual {p0, v0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->reloadAllContactData(I)V

    .line 848
    :goto_1
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->requestPhoneBookDownloadIfNeeded()V

    sget-object v0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->TAG:Ljava/lang/String;

    const-string v1, "-------PhoneContactFragment.onResume()"

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 865
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 866
    sget-object v0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->TAG:Ljava/lang/String;

    const-string v1, "-------PhoneContactFragment.onStart()"

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 871
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 876
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method private requestPhoneBookDownloadIfNeeded()V
    .locals 3

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_2

    check-cast v2, Lcom/hzbhd/bluetooth/MainActivity;

    invoke-virtual {v2}, Lcom/hzbhd/bluetooth/MainActivity;->isHfpConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->isPhoneBookLoading()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->sLastPbapAddress:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->reqPbapDownloadAllVcards(Ljava/lang/String;IIZ)Z

    move-result v0

    if-eqz v0, :cond_2

    sput-object v1, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->sLastPbapAddress:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public reloadAllContactData(I)V
    .locals 3

    .line 959
    iget-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->mAllContactAdapter:Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;

    if-nez v0, :cond_0

    return-void

    .line 965
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->phoneNumberList:Landroid/widget/ExpandableListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setFastScrollAlwaysVisible(Z)V

    .line 967
    iget-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->mAllContactAdapter:Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->setmSearchMode(Z)V

    .line 968
    iget-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->mAllContactAdapter:Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;

    invoke-virtual {v0, p0}, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->setListener(Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter$PhoneNumberListAdapterListener;)V

    .line 969
    iget-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->mAllContactAdapter:Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->setLoaderManager(Landroid/support/v4/app/LoaderManager;)V

    .line 970
    iget-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->mAllContactAdapter:Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;

    iget-object v1, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->mAllContactsLoaderListener:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1}, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->setAllContactsLoaderListener(Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)V

    .line 972
    iput p1, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->mCurrentLoaderId:I

    .line 973
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/LoaderManager;->getLoader(I)Landroid/support/v4/content/Loader;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 974
    sget-object v0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->TAG:Ljava/lang/String;

    const-string v2, "-------PhoneContactFragment.reloadAllContactData(1)"

    invoke-static {v0, v2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    iget-object v2, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->mAllContactsLoaderListener:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto :goto_0

    .line 977
    :cond_1
    sget-object v0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->TAG:Ljava/lang/String;

    const-string v2, "-------PhoneContactFragment.reloadAllContactData(0)"

    invoke-static {v0, v2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    iget-object v2, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->mAllContactsLoaderListener:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    :goto_0
    return-void
.end method

.method public resetSelectItem()V
    .locals 2

    .line 949
    iget-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->mAllContactAdapter:Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, -0x1

    .line 952
    iput v1, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->selectIndex:I

    .line 953
    invoke-virtual {v0, v1}, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->setSelectItem(I)V

    .line 954
    iget-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->mAllContactAdapter:Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->setSelectedNumber(Ljava/lang/String;)V

    .line 955
    iget-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->mAllContactAdapter:Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;

    invoke-virtual {v0}, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnNameAndPhoneResultListener(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$OnNameAndPhoneResultListener;)V
    .locals 0

    .line 1550
    iput-object p1, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->mOnNameAndPhoneResultListener:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$OnNameAndPhoneResultListener;

    return-void
.end method

.method public setQueryString(Ljava/lang/String;I)V
    .locals 2

    .line 984
    iget-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->mAllContactAdapter:Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;

    if-nez v0, :cond_0

    return-void

    .line 987
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->phoneNumberList:Landroid/widget/ExpandableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setFastScrollAlwaysVisible(Z)V

    .line 988
    iget-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->mAllContactAdapter:Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->setmSearchMode(Z)V

    .line 989
    iget-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->mAllContactAdapter:Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;

    invoke-virtual {v0, p1}, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->setmQueryString(Ljava/lang/String;)V

    .line 991
    iput p2, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->mCurrentLoaderId:I

    .line 993
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/support/v4/app/LoaderManager;->getLoader(I)Landroid/support/v4/content/Loader;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 994
    sget-object p1, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->TAG:Ljava/lang/String;

    const-string v1, "-------ExpandFavoritesFragment.reloadAllContactData(1)"

    invoke-static {p1, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object p1

    iget-object v1, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->mAllContactsLoaderListener:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {p1, p2, v0, v1}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto :goto_0

    .line 997
    :cond_1
    sget-object p1, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->TAG:Ljava/lang/String;

    const-string v1, "-------ExpandFavoritesFragment.reloadAllContactData(0)"

    invoke-static {p1, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object p1

    iget-object v1, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->mAllContactsLoaderListener:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {p1, p2, v0, v1}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    :goto_0
    return-void
.end method

.method public setSelectIndex(I)V
    .locals 0

    .line 885
    iput p1, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->selectIndex:I

    return-void
.end method

.method public setStarred(JI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1052
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 1053
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string/jumbo v2, "starred"

    invoke-virtual {v0, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1054
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    invoke-virtual {p3}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    const-string p1, "_id =?"

    invoke-virtual {p3, v2, v0, p1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
