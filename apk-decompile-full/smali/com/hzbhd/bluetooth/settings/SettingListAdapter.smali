.class public Lcom/hzbhd/bluetooth/settings/SettingListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SettingListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/bluetooth/settings/SettingListAdapter$SettingsAdapterListener;
    }
.end annotation


# instance fields
.field private isShowInputMethod:Z

.field itemIds:[I

.field itemValues:[Z

.field private listener:Lcom/hzbhd/bluetooth/settings/SettingListAdapter$SettingsAdapterListener;

.field private mContext:Landroid/content/Context;

.field private final mPrimaryActionListener:Landroid/view/View$OnClickListener;

.field trackList:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 39
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/hzbhd/bluetooth/settings/SettingListAdapter;->isShowInputMethod:Z

    .line 52
    new-instance v0, Lcom/hzbhd/bluetooth/settings/SettingListAdapter$1;

    invoke-direct {v0, p0}, Lcom/hzbhd/bluetooth/settings/SettingListAdapter$1;-><init>(Lcom/hzbhd/bluetooth/settings/SettingListAdapter;)V

    iput-object v0, p0, Lcom/hzbhd/bluetooth/settings/SettingListAdapter;->mPrimaryActionListener:Landroid/view/View$OnClickListener;

    .line 40
    iput-object p1, p0, Lcom/hzbhd/bluetooth/settings/SettingListAdapter;->mContext:Landroid/content/Context;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f030000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hzbhd/bluetooth/settings/SettingListAdapter;->trackList:[Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f030001

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/bluetooth/settings/SettingListAdapter;->itemIds:[I

    return-void
.end method

.method static synthetic access$000(Lcom/hzbhd/bluetooth/settings/SettingListAdapter;)Lcom/hzbhd/bluetooth/settings/SettingListAdapter$SettingsAdapterListener;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/hzbhd/bluetooth/settings/SettingListAdapter;->listener:Lcom/hzbhd/bluetooth/settings/SettingListAdapter$SettingsAdapterListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/hzbhd/bluetooth/settings/SettingListAdapter;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/hzbhd/bluetooth/settings/SettingListAdapter;->isShowInputMethod:Z

    return p0
.end method

.method static synthetic access$102(Lcom/hzbhd/bluetooth/settings/SettingListAdapter;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/hzbhd/bluetooth/settings/SettingListAdapter;->isShowInputMethod:Z

    return p1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/hzbhd/bluetooth/settings/SettingListAdapter;->trackList:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/hzbhd/bluetooth/settings/SettingListAdapter;->trackList:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemValues()[Z
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/hzbhd/bluetooth/settings/SettingListAdapter;->itemValues:[Z

    return-object v0
.end method

.method public getListener()Lcom/hzbhd/bluetooth/settings/SettingListAdapter$SettingsAdapterListener;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/hzbhd/bluetooth/settings/SettingListAdapter;->listener:Lcom/hzbhd/bluetooth/settings/SettingListAdapter$SettingsAdapterListener;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    if-eqz p2, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    iget-object p2, p0, Lcom/hzbhd/bluetooth/settings/SettingListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f040066

    .line 112
    invoke-static {p3}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResId(I)I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :goto_0
    const p3, 0x7f0901f2

    .line 115
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 116
    iget-object v0, p0, Lcom/hzbhd/bluetooth/settings/SettingListAdapter;->mPrimaryActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v0, p0, Lcom/hzbhd/bluetooth/settings/SettingListAdapter;->itemIds:[I

    aget v0, v0, p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 118
    new-instance v0, Lcom/hzbhd/bluetooth/settings/SettingListAdapter$2;

    invoke-direct {v0, p0}, Lcom/hzbhd/bluetooth/settings/SettingListAdapter$2;-><init>(Lcom/hzbhd/bluetooth/settings/SettingListAdapter;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const p3, 0x7f09023c

    .line 133
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 134
    iget-object v0, p0, Lcom/hzbhd/bluetooth/settings/SettingListAdapter;->trackList:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f090229

    .line 136
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    const v0, 0x7f0901a3

    .line 137
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f09012d

    .line 139
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const/16 v2, 0x11

    .line 140
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setGravity(I)V

    .line 141
    new-instance v2, Lcom/hzbhd/bluetooth/settings/SettingListAdapter$3;

    invoke-direct {v2, p0, v1, v0}, Lcom/hzbhd/bluetooth/settings/SettingListAdapter$3;-><init>(Lcom/hzbhd/bluetooth/settings/SettingListAdapter;Landroid/widget/EditText;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const/4 v2, 0x2

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eq p1, v2, :cond_6

    const/4 v5, 0x3

    if-ne p1, v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x5

    if-ne p1, v5, :cond_2

    goto/16 :goto_2

    .line 193
    :cond_2
    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 194
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 p3, 0x1

    if-ne p1, p3, :cond_3

    .line 199
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getPinCode()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_3
    const/4 p3, 0x4

    if-ne p1, p3, :cond_5

    .line 201
    iget-object p3, p0, Lcom/hzbhd/bluetooth/settings/SettingListAdapter;->itemValues:[Z

    if-eqz p3, :cond_a

    .line 202
    aget-boolean p3, p3, v2

    if-eqz p3, :cond_4

    .line 203
    iget-object p3, p0, Lcom/hzbhd/bluetooth/settings/SettingListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v2, 0x7f0d0220

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 206
    :cond_4
    iget-object p3, p0, Lcom/hzbhd/bluetooth/settings/SettingListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v2, 0x7f0d021f

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    if-nez p1, :cond_a

    .line 210
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothLocalAdapterName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 173
    :cond_6
    :goto_1
    invoke-virtual {p3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 174
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    iget-object v2, p0, Lcom/hzbhd/bluetooth/settings/SettingListAdapter;->itemValues:[Z

    if-eqz v2, :cond_a

    add-int/lit8 v5, p1, -0x2

    .line 176
    aget-boolean v2, v2, v5

    const-string v5, "N52"

    if-eqz v2, :cond_8

    .line 177
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getDeviceInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    const v2, 0x7f080461

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_7
    const v2, 0x7f04006e

    .line 178
    invoke-static {v2}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResId(I)I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 180
    :cond_8
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getDeviceInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    const v2, 0x7f080460

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_9
    const v2, 0x7f04006d

    .line 181
    invoke-static {v2}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResId(I)I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 214
    :cond_a
    :goto_2
    iget-boolean p3, p0, Lcom/hzbhd/bluetooth/settings/SettingListAdapter;->isShowInputMethod:Z

    if-eqz p3, :cond_b

    if-nez p1, :cond_b

    .line 215
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 217
    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 218
    invoke-virtual {v1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p3, "input_method"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 219
    invoke-virtual {p1, v1, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_3

    :cond_b
    if-nez p1, :cond_c

    .line 222
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_c
    const-string p1, ""

    .line 224
    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 225
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setVisibility(I)V

    :goto_3
    return-object p2
.end method

.method public isShowInputMethod()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Lcom/hzbhd/bluetooth/settings/SettingListAdapter;->isShowInputMethod:Z

    return v0
.end method

.method public setItemValues([Z)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/hzbhd/bluetooth/settings/SettingListAdapter;->itemValues:[Z

    return-void
.end method

.method public setListener(Lcom/hzbhd/bluetooth/settings/SettingListAdapter$SettingsAdapterListener;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/hzbhd/bluetooth/settings/SettingListAdapter;->listener:Lcom/hzbhd/bluetooth/settings/SettingListAdapter$SettingsAdapterListener;

    return-void
.end method

.method public setShowInputMethod(Z)V
    .locals 0

    .line 102
    iput-boolean p1, p0, Lcom/hzbhd/bluetooth/settings/SettingListAdapter;->isShowInputMethod:Z

    return-void
.end method
