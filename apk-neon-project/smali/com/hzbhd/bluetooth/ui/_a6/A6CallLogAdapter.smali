.class public Lcom/hzbhd/bluetooth/ui/_a6/A6CallLogAdapter;
.super Landroid/widget/CursorAdapter;
.source "A6CallLogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/bluetooth/ui/_a6/A6CallLogAdapter$CallLogAdapterListener;
    }
.end annotation


# instance fields
.field private countryIso:Ljava/lang/String;

.field private listener:Lcom/hzbhd/bluetooth/ui/_a6/A6CallLogAdapter$CallLogAdapterListener;

.field private final mContactPhotoManager:Lcom/hzbhd/bluetooth/ContactPhotoManager;

.field private mContext:Landroid/content/Context;

.field private mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 39
    iput-object p1, p0, Lcom/hzbhd/bluetooth/ui/_a6/A6CallLogAdapter;->mContext:Landroid/content/Context;

    .line 40
    invoke-static {p1}, Lcom/hzbhd/bluetooth/calllog/CallLogQuery;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/bluetooth/ui/_a6/A6CallLogAdapter;->countryIso:Ljava/lang/String;

    .line 41
    iget-object p1, p0, Lcom/hzbhd/bluetooth/ui/_a6/A6CallLogAdapter;->mContext:Landroid/content/Context;

    const-string p2, "layout_inflater"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/hzbhd/bluetooth/ui/_a6/A6CallLogAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 42
    iget-object p1, p0, Lcom/hzbhd/bluetooth/ui/_a6/A6CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/hzbhd/bluetooth/ContactPhotoManager;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/bluetooth/ui/_a6/A6CallLogAdapter;->mContactPhotoManager:Lcom/hzbhd/bluetooth/ContactPhotoManager;

    return-void
.end method

.method static synthetic access$000(Lcom/hzbhd/bluetooth/ui/_a6/A6CallLogAdapter;)Lcom/hzbhd/bluetooth/ui/_a6/A6CallLogAdapter$CallLogAdapterListener;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/hzbhd/bluetooth/ui/_a6/A6CallLogAdapter;->listener:Lcom/hzbhd/bluetooth/ui/_a6/A6CallLogAdapter$CallLogAdapterListener;

    return-object p0
.end method

.method private getDisplayNumber(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3

    .line 75
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "-1"

    .line 78
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    iget-object p1, p0, Lcom/hzbhd/bluetooth/ui/_a6/A6CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0d023b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v0, "-2"

    .line 81
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    iget-object p1, p0, Lcom/hzbhd/bluetooth/ui/_a6/A6CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0d0205

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const-string v0, "-3"

    .line 84
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 85
    iget-object p1, p0, Lcom/hzbhd/bluetooth/ui/_a6/A6CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0d01f1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 87
    :cond_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/hzbhd/bluetooth/ui/_a6/A6CallLogAdapter;->countryIso:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    return-object v0

    .line 91
    :cond_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2

    const-string p2, "number"

    .line 49
    invoke-interface {p3, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p3, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/hzbhd/bluetooth/ui/_a6/A6CallLogAdapter;->getDisplayNumber(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    const-string v0, "name"

    .line 51
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object p3, p2

    goto :goto_0

    .line 54
    :cond_0
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    :goto_0
    const v0, 0x7f0901d9

    .line 57
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 58
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f0901f2

    .line 59
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 60
    new-instance p3, Lcom/hzbhd/bluetooth/ui/_a6/A6CallLogAdapter$1;

    invoke-direct {p3, p0, p2}, Lcom/hzbhd/bluetooth/ui/_a6/A6CallLogAdapter$1;-><init>(Lcom/hzbhd/bluetooth/ui/_a6/A6CallLogAdapter;Ljava/lang/CharSequence;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 71
    iget-object p1, p0, Lcom/hzbhd/bluetooth/ui/_a6/A6CallLogAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const p2, 0x7f0b0165

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public setListener(Lcom/hzbhd/bluetooth/ui/_a6/A6CallLogAdapter$CallLogAdapterListener;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/hzbhd/bluetooth/ui/_a6/A6CallLogAdapter;->listener:Lcom/hzbhd/bluetooth/ui/_a6/A6CallLogAdapter$CallLogAdapterListener;

    return-void
.end method
