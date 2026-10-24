.class public Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;
.super Landroid/widget/CursorAdapter;
.source "CallLogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/bluetooth/calllog/CallLogAdapter$CallLogAdapterListener;
    }
.end annotation


# instance fields
.field private countryIso:Ljava/lang/String;

.field private listener:Lcom/hzbhd/bluetooth/calllog/CallLogAdapter$CallLogAdapterListener;

.field private final mContactPhotoManager:Lcom/hzbhd/bluetooth/ContactPhotoManager;

.field private mContext:Landroid/content/Context;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mPrimaryActionListener:Landroid/view/View$OnClickListener;

.field private position:I

.field private selectItem:I

.field private selectedNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    const/4 p2, -0x1

    .line 38
    iput p2, p0, Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;->selectItem:I

    .line 46
    new-instance p2, Lcom/hzbhd/bluetooth/calllog/CallLogAdapter$1;

    invoke-direct {p2, p0}, Lcom/hzbhd/bluetooth/calllog/CallLogAdapter$1;-><init>(Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;)V

    iput-object p2, p0, Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;->mPrimaryActionListener:Landroid/view/View$OnClickListener;

    .line 84
    iput-object p1, p0, Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    const-string p2, ""

    .line 85
    iput-object p2, p0, Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;->selectedNumber:Ljava/lang/String;

    .line 86
    invoke-static {p1}, Lcom/hzbhd/bluetooth/calllog/CallLogQuery;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;->countryIso:Ljava/lang/String;

    .line 87
    iget-object p1, p0, Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    const-string p2, "layout_inflater"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 88
    iget-object p1, p0, Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/hzbhd/bluetooth/ContactPhotoManager;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;->mContactPhotoManager:Lcom/hzbhd/bluetooth/ContactPhotoManager;

    return-void
.end method

.method static synthetic access$000(Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;)Lcom/hzbhd/bluetooth/calllog/CallLogAdapter$CallLogAdapterListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;->listener:Lcom/hzbhd/bluetooth/calllog/CallLogAdapter$CallLogAdapterListener;

    return-object p0
.end method

.method private getDisplayNumber(Ljava/lang/CharSequence;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 2

    .line 230
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string v0, ""

    if-eqz p2, :cond_0

    return-object v0

    :cond_0
    const-string p2, "-1"

    .line 233
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 234
    iget-object p1, p0, Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0d023b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p2, "-2"

    .line 236
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 237
    iget-object p1, p0, Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0d0205

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const-string p2, "-3"

    .line 239
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 240
    iget-object p1, p0, Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0d01f1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 242
    :cond_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;->countryIso:Ljava/lang/String;

    invoke-static {p2, v0, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 243
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    return-object p2

    .line 246
    :cond_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private setCallTypeIcon(Landroid/widget/ImageView;I)V
    .locals 4

    const/4 v0, 0x1

    const-string v1, "54"

    const v2, 0x7f040015

    const-string v3, "N52"

    if-eq p2, v0, :cond_6

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    const/4 p2, 0x0

    .line 271
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 259
    :cond_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getDeviceInfo()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    const p2, 0x7f08044f

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 260
    :cond_1
    invoke-static {v2}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResStr(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const p2, 0x7f0804e6

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    const p2, 0x7f04004f

    .line 261
    invoke-static {p2}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResId(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 265
    :cond_3
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getDeviceInfo()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    const p2, 0x7f080418

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 266
    :cond_4
    invoke-static {v2}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResStr(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    const p2, 0x7f08048c

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_5
    const p2, 0x7f040017

    .line 267
    invoke-static {p2}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResId(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 253
    :cond_6
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getDeviceInfo()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_7

    const p2, 0x7f080424

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 254
    :cond_7
    invoke-static {v2}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResStr(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    const p2, 0x7f0804a8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_8
    const p2, 0x7f040034

    .line 255
    invoke-static {p2}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResId(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const-string v3, "number"

    .line 103
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p2

    invoke-direct {v0, v3, v4}, Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;->getDisplayNumber(Ljava/lang/CharSequence;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    const-string v4, "name"

    .line 105
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const v6, 0x7f0d013e

    if-eqz v5, :cond_0

    .line 107
    iget-object v4, v0, Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    move-object v4, v3

    goto :goto_0

    .line 109
    :cond_0
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v5, v3

    :goto_0
    const v7, 0x7f0900d2

    .line 113
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    const v8, 0x7f0901d9

    .line 114
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f090250

    .line 115
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v10, 0x7f040051

    .line 116
    invoke-static {v10}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResBool(I)Z

    move-result v11

    const/4 v12, 0x0

    if-eqz v11, :cond_1

    const v11, 0x7f0900e0

    .line 117
    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    move-object v12, v11

    check-cast v12, Landroid/widget/TextView;

    const v11, 0x7f0900e1

    .line 118
    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const v13, 0x7f0900de

    .line 119
    invoke-virtual {v1, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    const v14, 0x7f0900e4

    .line 120
    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    goto :goto_1

    :cond_1
    move-object v11, v12

    move-object v13, v11

    move-object v14, v13

    :goto_1
    const v15, 0x7f0901f2

    .line 127
    invoke-virtual {v1, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 128
    iget-object v10, v0, Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;->mPrimaryActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v15, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    if-eqz v8, :cond_2

    .line 133
    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    if-eqz v9, :cond_3

    .line 134
    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    const v3, 0x7f040014

    .line 136
    invoke-static {v3}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result v3

    iget-object v9, v0, Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0017

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    if-ne v3, v9, :cond_6

    const v3, 0x7f090011

    .line 137
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 140
    iget-object v3, v0, Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v6, ""

    if-nez v3, :cond_5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v9, " "

    invoke-virtual {v3, v9, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    move-object v6, v5

    .line 146
    :cond_5
    :goto_2
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    if-eqz v12, :cond_7

    .line 149
    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    if-eqz v11, :cond_8

    .line 150
    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    const-string/jumbo v1, "type"

    .line 153
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-direct {v0, v7, v1}, Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;->setCallTypeIcon(Landroid/widget/ImageView;I)V

    .line 155
    iget v1, v0, Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;->position:I

    invoke-interface {v2, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    const-string v1, "date"

    .line 156
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const-wide/16 v6, 0x0

    cmp-long v6, v3, v6

    if-lez v6, :cond_b

    .line 158
    iget-object v6, v0, Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    const/high16 v7, 0x40000

    .line 159
    invoke-static {v6, v3, v4, v7}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v3

    .line 160
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v4

    if-nez v4, :cond_9

    .line 161
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 162
    iget-object v4, v0, Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    .line 163
    invoke-static {v4, v9, v10, v7}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v4

    .line 164
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 169
    :cond_9
    iget v3, v0, Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;->position:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 171
    iget-object v3, v0, Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v4, 0x1

    invoke-static {v3, v6, v7, v4}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v3

    .line 172
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 173
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 176
    :cond_a
    new-instance v4, Ljava/util/Date;

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-direct {v4, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 177
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 178
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const v1, 0x7f040051

    .line 179
    invoke-static {v1}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResBool(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 180
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string/jumbo v6, "yyyy-MM-dd"

    invoke-direct {v1, v6, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 181
    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 182
    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    :cond_b
    iget v1, v0, Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;->selectItem:I

    iget v2, v0, Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;->position:I

    const v3, 0x7f04003b

    if-ne v1, v2, :cond_d

    .line 201
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;->selectedNumber:Ljava/lang/String;

    .line 202
    invoke-static {v3}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResBool(I)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_3

    :cond_c
    if-eqz v8, :cond_f

    .line 204
    iget-object v1, v0, Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0e016c

    invoke-virtual {v8, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_3

    .line 207
    :cond_d
    invoke-static {v3}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResBool(I)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_3

    :cond_e
    if-eqz v8, :cond_f

    .line 209
    iget-object v1, v0, Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f040009

    .line 210
    invoke-static {v2}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResId(I)I

    move-result v2

    .line 209
    invoke-virtual {v8, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_f
    :goto_3
    return-void
.end method

.method public getListener()Lcom/hzbhd/bluetooth/calllog/CallLogAdapter$CallLogAdapterListener;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;->listener:Lcom/hzbhd/bluetooth/calllog/CallLogAdapter$CallLogAdapterListener;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 3

    .line 277
    :try_start_0
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 278
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    const-string v2, "number"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 280
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    return-object v0
.end method

.method public getSelectItem()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;->selectItem:I

    return v0
.end method

.method public getSelectedNumber()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;->selectedNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 225
    iput p1, p0, Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;->position:I

    .line 226
    invoke-super {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 220
    iget-object p1, p0, Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const p2, 0x7f040008

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResId(I)I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public setListener(Lcom/hzbhd/bluetooth/calllog/CallLogAdapter$CallLogAdapterListener;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;->listener:Lcom/hzbhd/bluetooth/calllog/CallLogAdapter$CallLogAdapterListener;

    return-void
.end method

.method public setSelectItem(I)V
    .locals 0

    .line 70
    iput p1, p0, Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;->selectItem:I

    return-void
.end method

.method public setSelectedNumber(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;->selectedNumber:Ljava/lang/String;

    return-void
.end method
