.class public Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;
.super Landroid/widget/CursorTreeAdapter;
.source "ContactsTreeCursorAdapter.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter$ViewNumberHolder;,
        Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter$ViewContactsHolder;,
        Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter$ContactQuery;,
        Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter$PhoneQuery;,
        Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter$PhoneNumberListAdapterListener;
    }
.end annotation


# static fields
.field private static final BLANK_HEADER_STRING:Ljava/lang/String; = " "

.field public static EXTRA_ID:Ljava/lang/String; = null

.field public static EXTRA_NAME:Ljava/lang/String; = null

.field public static EXTRA_NUMBER:Ljava/lang/String; = null

.field public static EXTRA_STARRED:Ljava/lang/String; = null

.field public static LIST_ITEM_ACTION:Ljava/lang/String; = null

.field public static final SNIPPET_ARGS:Ljava/lang/String; = "\u0001,\u0001,\u2026,5"

.field public static final SNIPPET_ELLIPSIS:Ljava/lang/String; = "\u2026"

.field public static final SNIPPET_END_MATCH:C = '\u0001'

.field public static final SNIPPET_MAX_TOKENS:I = 0x5

.field public static final SNIPPET_START_MATCH:C = '\u0001'

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private countryIso:Ljava/lang/String;

.field private listener:Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter$PhoneNumberListAdapterListener;

.field private mAllContactsLoaderListener:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private final mContactPhotoManager:Lcom/hzbhd/bluetooth/ContactPhotoManager;

.field private mContext:Landroid/content/Context;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mManager:Landroid/support/v4/app/LoaderManager;

.field private mPositions:[I

.field private final mPrimaryActionListener:Landroid/view/View$OnClickListener;

.field private final mPrimaryLongActionListener:Landroid/view/View$OnLongClickListener;

.field private mQueryString:Ljava/lang/String;

.field private mSearchMode:Z

.field private mSortOrder:I

.field private position:I

.field private sections:[Ljava/lang/String;

.field private selectItem:I

.field private selectedNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-class v0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->TAG:Ljava/lang/String;

    const-string v0, "calllog.item.action"

    .line 53
    sput-object v0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->LIST_ITEM_ACTION:Ljava/lang/String;

    const-string v0, "number"

    .line 54
    sput-object v0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->EXTRA_NUMBER:Ljava/lang/String;

    const-string v0, "id"

    .line 55
    sput-object v0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->EXTRA_ID:Ljava/lang/String;

    const-string v0, "name"

    .line 56
    sput-object v0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->EXTRA_NAME:Ljava/lang/String;

    const-string/jumbo v0, "starred"

    .line 57
    sput-object v0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->EXTRA_STARRED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1

    .line 137
    invoke-direct {p0, p2, p1}, Landroid/widget/CursorTreeAdapter;-><init>(Landroid/database/Cursor;Landroid/content/Context;)V

    const/4 p2, -0x1

    .line 67
    iput p2, p0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->selectItem:I

    .line 95
    new-instance v0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter$1;

    invoke-direct {v0, p0}, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter$1;-><init>(Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;)V

    iput-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->mPrimaryActionListener:Landroid/view/View$OnClickListener;

    .line 110
    new-instance v0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter$2;

    invoke-direct {v0, p0}, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter$2;-><init>(Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;)V

    iput-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->mPrimaryLongActionListener:Landroid/view/View$OnLongClickListener;

    .line 138
    iput-object p1, p0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->mContext:Landroid/content/Context;

    .line 139
    invoke-static {p1}, Lcom/hzbhd/bluetooth/calllog/CallLogQuery;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->countryIso:Ljava/lang/String;

    .line 140
    iget-object p1, p0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 141
    iput p2, p0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->selectItem:I

    const-string p1, ""

    .line 142
    iput-object p1, p0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->selectedNumber:Ljava/lang/String;

    .line 143
    iget-object p1, p0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/hzbhd/bluetooth/ContactPhotoManager;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->mContactPhotoManager:Lcom/hzbhd/bluetooth/ContactPhotoManager;

    .line 144
    iget-object p1, p0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "sort_key"

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->mSortOrder:I

    return-void
.end method

.method static synthetic access$000(Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;)Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter$PhoneNumberListAdapterListener;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->listener:Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter$PhoneNumberListAdapterListener;

    return-object p0
.end method

.method private getDisplayNumber(Ljava/lang/CharSequence;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 2

    .line 472
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string v0, ""

    if-eqz p2, :cond_0

    return-object v0

    :cond_0
    const-string p2, "-1"

    .line 475
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 476
    iget-object p1, p0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0d023b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p2, "-2"

    .line 478
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 479
    iget-object p1, p0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0d0205

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const-string p2, "-3"

    .line 481
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 482
    iget-object p1, p0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0d01f1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 484
    :cond_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->countryIso:Ljava/lang/String;

    invoke-static {p2, v0, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 485
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    return-object p2

    .line 488
    :cond_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getIntent(JLjava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 2

    .line 148
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->LIST_ITEM_ACTION:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 149
    sget-object v1, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->EXTRA_ID:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 150
    sget-object p1, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->EXTRA_NUMBER:Ljava/lang/String;

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    sget-object p1, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->EXTRA_NAME:Ljava/lang/String;

    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    sget-object p1, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->EXTRA_STARRED:Ljava/lang/String;

    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method private getSortOrder()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "sort_key"

    return-object v0
.end method


# virtual methods
.method public addAccountQueryParameterToUrl(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "account_name"

    .line 421
    invoke-virtual {p1, v0, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string p2, "account_type"

    .line 422
    invoke-virtual {p1, p2, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 423
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "data_set"

    .line 424
    invoke-virtual {p1, p2, p4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_0
    return-void
.end method

.method protected bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 1

    .line 638
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter$ViewNumberHolder;

    const/4 p2, 0x3

    .line 639
    invoke-interface {p3, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object p4, p0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p0, p2, p4}, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->getDisplayNumber(Ljava/lang/CharSequence;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 640
    iget-object p4, p1, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter$ViewNumberHolder;->number:Landroid/widget/TextView;

    invoke-virtual {p4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 641
    iget-object p4, p1, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter$ViewNumberHolder;->number:Landroid/widget/TextView;

    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 p2, 0x1

    .line 645
    invoke-interface {p3, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result p4

    if-nez p4, :cond_0

    .line 646
    invoke-interface {p3, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    const/4 p4, 0x2

    .line 647
    invoke-interface {p3, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p4

    .line 650
    iget-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p2, p4}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 652
    :goto_0
    iget-object p1, p1, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter$ViewNumberHolder;->label:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 653
    sget-object p1, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "bindChildView() Phone_id="

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p4, 0x0

    invoke-interface {p3, p4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 7

    .line 661
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter$ViewContactsHolder;

    .line 662
    iget p2, p0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->mSortOrder:I

    const/4 p4, 0x1

    if-ne p2, p4, :cond_0

    .line 663
    iget-object p2, p1, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter$ViewContactsHolder;->name:Landroid/widget/TextView;

    invoke-interface {p3, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 665
    :cond_0
    iget-object p2, p1, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter$ViewContactsHolder;->name:Landroid/widget/TextView;

    const/16 v0, 0x9

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 667
    :goto_0
    iget-object p2, p1, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter$ViewContactsHolder;->header:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 669
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result p2

    iput p2, p0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->position:I

    .line 670
    iget-object v1, p0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->mPositions:[I

    const/4 v2, 0x4

    const-string v3, ""

    if-eqz v1, :cond_2

    .line 671
    invoke-static {v1, p2}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p2

    if-ltz p2, :cond_1

    .line 672
    iget-object v1, p0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->sections:[Ljava/lang/String;

    array-length v1, v1

    if-ge p2, v1, :cond_1

    .line 673
    iget-object v1, p1, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter$ViewContactsHolder;->header:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->sections:[Ljava/lang/String;

    aget-object p2, v2, p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 675
    :cond_1
    iget-object p2, p1, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter$ViewContactsHolder;->header:Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 676
    iget-object p2, p1, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter$ViewContactsHolder;->header:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 679
    :cond_2
    iget-object p2, p1, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter$ViewContactsHolder;->header:Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 680
    iget-object p2, p1, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter$ViewContactsHolder;->header:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 687
    :goto_1
    iget-object p1, p1, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter$ViewContactsHolder;->name:Landroid/widget/TextView;

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-interface {p3, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 p2, 0x8

    invoke-interface {p3, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->getIntent(JLjava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public configureContactsLoader(Landroid/support/v4/content/CursorLoader;JI)V
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long p4, p2, v0

    if-eqz p4, :cond_0

    .line 336
    sget-object p4, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PhoneNumberListAdapter is not ready for non-default directory ID (directoryId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p4, v2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    :cond_0
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->isSearchMode()Z

    move-result p4

    const-string v2, "android.provider.extra.ADDRESS_BOOK_INDEX"

    const/4 v3, 0x0

    const-string v4, "_id IN (SELECT max(contact_id) FROM raw_contacts GROUP BY display_name)"

    const-string/jumbo v5, "true"

    const-string v6, "directory"

    if-eqz p4, :cond_4

    .line 342
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->getQueryString()Ljava/lang/String;

    move-result-object p4

    if-nez p4, :cond_1

    const-string p4, ""

    .line 346
    :cond_1
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p4

    .line 347
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 355
    sget-object p2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 356
    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p2

    .line 358
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    .line 357
    invoke-virtual {p2, v6, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 359
    invoke-virtual {p2, v2, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 360
    invoke-virtual {p1, v4}, Landroid/support/v4/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p0, v3}, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->getProjection(Z)[Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/support/v4/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto :goto_1

    .line 363
    :cond_2
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 364
    invoke-virtual {v0, p4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 366
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    .line 365
    invoke-virtual {v0, v6, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string/jumbo p2, "snippet_args"

    const-string p3, "\u0001,\u0001,\u2026,5"

    .line 367
    invoke-virtual {v0, p2, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string p2, "deferred_snippeting"

    const-string p3, "1"

    .line 369
    invoke-virtual {v0, p2, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string p2, "[0-9]*"

    .line 370
    invoke-virtual {p4, p2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_3

    const-string p2, "_id IN (SELECT max(a.contact_id) FROM raw_contacts a JOIN (select contact_id as search_id from search_index where content like ?||\'%\' or tokens like ?||\'%\') b ON a.contact_id=b.search_id GROUP BY a.display_name)"

    .line 371
    invoke-virtual {p1, p2}, Landroid/support/v4/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/String;

    .line 374
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v3

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    aput-object p4, p2, p3

    invoke-virtual {p1, p2}, Landroid/support/v4/content/CursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    goto :goto_0

    .line 376
    :cond_3
    invoke-virtual {p1, v4}, Landroid/support/v4/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 378
    :goto_0
    invoke-virtual {p0, p3}, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->getProjection(Z)[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v4/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    move-object p2, v0

    goto :goto_1

    .line 381
    :cond_4
    sget-object p2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 382
    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p2

    .line 384
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    .line 383
    invoke-virtual {p2, v6, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 385
    invoke-virtual {p2, v2, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 386
    invoke-virtual {p1, v4}, Landroid/support/v4/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p0, v3}, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->getProjection(Z)[Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/support/v4/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 392
    :goto_1
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    const-string v0, "com.mac.addr"

    invoke-virtual {p0, p2, p3, v0, p4}, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->addAccountQueryParameterToUrl(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p3, "remove_duplicate_entries"

    .line 394
    invoke-virtual {p2, p3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 396
    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v4/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 407
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->getSortOrder()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v4/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    return-void
.end method

.method public configureNumberLoader(Landroid/support/v4/content/CursorLoader;J)V
    .locals 4

    .line 432
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    .line 433
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "remove_duplicate_entries"

    const-string/jumbo v2, "true"

    .line 436
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 437
    sget-object v1, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "------uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    const-string v0, "contact_id=?"

    .line 440
    invoke-virtual {p1, v0}, Landroid/support/v4/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 441
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, v0, p3

    invoke-virtual {p1, v0}, Landroid/support/v4/content/CursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    .line 444
    sget-object p2, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter$PhoneQuery;->PROJECTION_PRIMARY:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/support/v4/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    const-string/jumbo p2, "sort_key"

    .line 446
    invoke-virtual {p1, p2}, Landroid/support/v4/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    return-void
.end method

.method public configureNumberLoader(Landroid/support/v4/content/CursorLoader;Ljava/lang/String;)V
    .locals 4

    .line 451
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    .line 452
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "remove_duplicate_entries"

    const-string/jumbo v2, "true"

    .line 455
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 456
    sget-object v1, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "------uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    :try_start_0
    const-string v0, "display_name=?"

    .line 459
    invoke-virtual {p1, v0}, Landroid/support/v4/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 460
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v1

    invoke-virtual {p1, v0}, Landroid/support/v4/content/CursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    .line 462
    sget-object p2, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter$PhoneQuery;->PROJECTION_PRIMARY:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/support/v4/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    const-string/jumbo p2, "sort_key"

    .line 464
    invoke-virtual {p1, p2}, Landroid/support/v4/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 466
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getAllContactsLoaderListener()Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .line 513
    iget-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->mAllContactsLoaderListener:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    return-object v0
.end method

.method protected getChildrenCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 3

    const/4 v0, 0x1

    .line 694
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 695
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "nameGroup"

    .line 696
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result p1

    .line 699
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->mManager:Landroid/support/v4/app/LoaderManager;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/LoaderManager;->getLoader(I)Landroid/support/v4/content/Loader;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->mManager:Landroid/support/v4/app/LoaderManager;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/LoaderManager;->getLoader(I)Landroid/support/v4/content/Loader;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->isReset()Z

    move-result v0

    if-nez v0, :cond_0

    .line 700
    iget-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->mManager:Landroid/support/v4/app/LoaderManager;

    iget-object v2, p0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->mAllContactsLoaderListener:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto :goto_0

    .line 703
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->mManager:Landroid/support/v4/app/LoaderManager;

    iget-object v2, p0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->mAllContactsLoaderListener:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 706
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getListener()Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter$PhoneNumberListAdapterListener;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->listener:Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter$PhoneNumberListAdapterListener;

    return-object v0
.end method

.method public getLoaderManager()Landroid/support/v4/app/LoaderManager;
    .locals 1

    .line 504
    iget-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->mManager:Landroid/support/v4/app/LoaderManager;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 2

    .line 83
    :try_start_0
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 84
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, v1}, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->getDisplayNumber(Ljava/lang/CharSequence;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 86
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    return-object v0
.end method

.method public getPositionForSection(I)I
    .locals 3

    .line 590
    iget-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->sections:[Ljava/lang/String;

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->mPositions:[I

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_2

    .line 593
    array-length v0, v0

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 597
    :cond_1
    aget p1, v2, p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method protected final getProjection(Z)[Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 496
    sget-object p1, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter$ContactQuery;->FILTER_PROJECTION_PRIMARY:[Ljava/lang/String;

    return-object p1

    .line 498
    :cond_0
    sget-object p1, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter$ContactQuery;->CONTACT_PROJECTION_PRIMARY:[Ljava/lang/String;

    return-object p1
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->mQueryString:Ljava/lang/String;

    return-object v0
.end method

.method public getSectionForPosition(I)I
    .locals 2

    .line 604
    iget-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->mPositions:[I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-ltz p1, :cond_3

    .line 607
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->getGroupCount()I

    move-result v0

    if-le p1, v0, :cond_1

    goto :goto_1

    .line 611
    :cond_1
    iget-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->mPositions:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p1

    if-ltz p1, :cond_2

    goto :goto_0

    :cond_2
    neg-int p1, p1

    add-int/lit8 p1, p1, -0x2

    :goto_0
    return p1

    :cond_3
    :goto_1
    return v1
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .line 628
    iget-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->sections:[Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, " "

    .line 629
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSelectItem()I
    .locals 1

    .line 271
    iget v0, p0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->selectItem:I

    return v0
.end method

.method public getSelectedNumber()Ljava/lang/String;
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->selectedNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getmPositions()[I
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->mPositions:[I

    return-object v0
.end method

.method public isSearchMode()Z
    .locals 1

    .line 295
    iget-boolean v0, p0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->mSearchMode:Z

    return v0
.end method

.method protected newChildView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 715
    iget-object p1, p0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const p2, 0x7f040012

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResId(I)I

    move-result p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 717
    new-instance p2, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter$ViewNumberHolder;

    invoke-direct {p2, p3}, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter$ViewNumberHolder;-><init>(Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter$1;)V

    const p3, 0x7f0901e3

    .line 718
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p2, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter$ViewNumberHolder;->number:Landroid/widget/TextView;

    const p3, 0x7f0901a3

    .line 719
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p2, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter$ViewNumberHolder;->label:Landroid/widget/TextView;

    .line 720
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p1
.end method

.method protected newGroupView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 729
    iget-object p1, p0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const p2, 0x7f040011

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResId(I)I

    move-result p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 731
    new-instance p2, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter$ViewContactsHolder;

    invoke-direct {p2, p3}, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter$ViewContactsHolder;-><init>(Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter$1;)V

    const p3, 0x7f0901d9

    .line 732
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p2, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter$ViewContactsHolder;->name:Landroid/widget/TextView;

    const p3, 0x7f090142

    .line 733
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p2, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter$ViewContactsHolder;->header:Landroid/widget/TextView;

    const p3, 0x7f0901f5

    .line 734
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p2, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter$ViewContactsHolder;->image:Landroid/widget/ImageView;

    .line 735
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p1
.end method

.method public setAllContactsLoaderListener(Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .line 518
    iput-object p1, p0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->mAllContactsLoaderListener:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method public setListener(Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter$PhoneNumberListAdapterListener;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->listener:Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter$PhoneNumberListAdapterListener;

    return-void
.end method

.method public setLoaderManager(Landroid/support/v4/app/LoaderManager;)V
    .locals 0

    .line 508
    iput-object p1, p0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->mManager:Landroid/support/v4/app/LoaderManager;

    return-void
.end method

.method public setSections([Ljava/lang/String;)V
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->sections:[Ljava/lang/String;

    return-void
.end method

.method public setSelectItem(I)V
    .locals 0

    .line 275
    iput p1, p0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->selectItem:I

    return-void
.end method

.method public setSelectedNumber(Ljava/lang/String;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->selectedNumber:Ljava/lang/String;

    return-void
.end method

.method public setmPositions([I)V
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 310
    iput-object p1, p0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->mPositions:[I

    return-void

    .line 313
    :cond_0
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->mPositions:[I

    const/4 v0, 0x0

    move v1, v0

    .line 315
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_3

    .line 316
    iget-object v2, p0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->sections:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, " "

    if-eqz v2, :cond_1

    .line 317
    iget-object v2, p0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->sections:[Ljava/lang/String;

    aput-object v3, v2, v0

    goto :goto_1

    .line 318
    :cond_1
    iget-object v2, p0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->sections:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 319
    iget-object v2, p0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->sections:[Ljava/lang/String;

    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 322
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->mPositions:[I

    aput v1, v2, v0

    .line 323
    aget v2, p1, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setmQueryString(Ljava/lang/String;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->mQueryString:Ljava/lang/String;

    return-void
.end method

.method public setmSearchMode(Z)V
    .locals 0

    .line 299
    iput-boolean p1, p0, Lcom/hzbhd/bluetooth/contacts/ContactsTreeCursorAdapter;->mSearchMode:Z

    return-void
.end method
