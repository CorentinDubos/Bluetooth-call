.class public Lcom/hzbhd/common/ui/_b1/TimeAppWidgetProvider;
.super Landroid/widget/LinearLayout;
.source "TimeAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/common/ui/_b1/TimeAppWidgetProvider$TimeBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final LOGD:Z = false

.field private static final TAG:Ljava/lang/String; = "TimeAppWidgetProvider"

.field private static mFormat:Ljava/text/DateFormat;


# instance fields
.field private mTimeBroadcastReceiver:Lcom/hzbhd/common/ui/_b1/TimeAppWidgetProvider$TimeBroadcastReceiver;

.field private time_am_pm:Landroid/widget/TextView;

.field private time_date:Landroid/widget/TextView;

.field private time_hour:Landroid/widget/TextView;

.field private time_minute:Landroid/widget/TextView;

.field private time_week:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/hzbhd/common/ui/_b1/TimeAppWidgetProvider;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/hzbhd/common/ui/_b1/TimeAppWidgetProvider;->updateClock()V

    return-void
.end method

.method private check(Landroid/content/Context;)V
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/hzbhd/common/ui/_b1/TimeAppWidgetProvider;->mTimeBroadcastReceiver:Lcom/hzbhd/common/ui/_b1/TimeAppWidgetProvider$TimeBroadcastReceiver;

    if-nez v0, :cond_0

    .line 241
    new-instance v0, Lcom/hzbhd/common/ui/_b1/TimeAppWidgetProvider$TimeBroadcastReceiver;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/hzbhd/common/ui/_b1/TimeAppWidgetProvider$TimeBroadcastReceiver;-><init>(Lcom/hzbhd/common/ui/_b1/TimeAppWidgetProvider;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hzbhd/common/ui/_b1/TimeAppWidgetProvider;->mTimeBroadcastReceiver:Lcom/hzbhd/common/ui/_b1/TimeAppWidgetProvider$TimeBroadcastReceiver;

    .line 242
    invoke-virtual {v0}, Lcom/hzbhd/common/ui/_b1/TimeAppWidgetProvider$TimeBroadcastReceiver;->registerReceiver()V

    :cond_0
    return-void
.end method

.method private static getDateFormat()Ljava/text/DateFormat;
    .locals 2

    .line 65
    sget-object v0, Lcom/hzbhd/common/ui/_b1/TimeAppWidgetProvider;->mFormat:Ljava/text/DateFormat;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy/MM/dd==HHmm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/hzbhd/common/ui/_b1/TimeAppWidgetProvider;->mFormat:Ljava/text/DateFormat;

    .line 70
    :cond_0
    sget-object v0, Lcom/hzbhd/common/ui/_b1/TimeAppWidgetProvider;->mFormat:Ljava/text/DateFormat;

    return-object v0
.end method

.method private updateClock()V
    .locals 14

    .line 136
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 137
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 138
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/_b1/TimeAppWidgetProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 141
    invoke-static {}, Lcom/hzbhd/common/ui/_b1/TimeAppWidgetProvider;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v3

    .line 142
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 144
    invoke-virtual {v3, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 145
    invoke-direct {p0, v2}, Lcom/hzbhd/common/ui/_b1/TimeAppWidgetProvider;->updateDataFormat1(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 146
    invoke-direct {p0, v2}, Lcom/hzbhd/common/ui/_b1/TimeAppWidgetProvider;->updateTime(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "=="

    .line 147
    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    aget-object v1, v1, v5

    const-string v6, "-"

    .line 149
    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 150
    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 152
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    div-int/lit8 v6, v6, 0x64

    .line 153
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    rem-int/lit8 v1, v1, 0x64

    .line 157
    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    const-string v9, "00"

    const/16 v10, 0xc

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/hzbhd/common/ui/_b1/TimeAppWidgetProvider;->time_hour:Landroid/widget/TextView;

    new-instance v11, Ljava/text/DecimalFormat;

    invoke-direct {v11, v9}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    int-to-long v12, v7

    invoke-virtual {v11, v12, v13}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v1, p0, Lcom/hzbhd/common/ui/_b1/TimeAppWidgetProvider;->time_minute:Landroid/widget/TextView;

    new-instance v7, Ljava/text/DecimalFormat;

    invoke-direct {v7, v9}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    int-to-long v11, v4

    invoke-virtual {v7, v11, v12}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    if-lt v7, v10, :cond_1

    if-eq v10, v7, :cond_1

    add-int/lit8 v7, v7, -0xc

    :cond_1
    if-nez v7, :cond_2

    move v7, v10

    .line 172
    :cond_2
    iget-object v1, p0, Lcom/hzbhd/common/ui/_b1/TimeAppWidgetProvider;->time_hour:Landroid/widget/TextView;

    new-instance v11, Ljava/text/DecimalFormat;

    invoke-direct {v11, v9}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    int-to-long v12, v7

    invoke-virtual {v11, v12, v13}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v1, p0, Lcom/hzbhd/common/ui/_b1/TimeAppWidgetProvider;->time_minute:Landroid/widget/TextView;

    new-instance v7, Ljava/text/DecimalFormat;

    invoke-direct {v7, v9}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    int-to-long v11, v4

    invoke-virtual {v7, v11, v12}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    :goto_0
    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 178
    iget-object v0, p0, Lcom/hzbhd/common/ui/_b1/TimeAppWidgetProvider;->time_am_pm:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    if-lt v6, v10, :cond_4

    if-eq v10, v6, :cond_4

    add-int/lit8 v6, v6, -0xc

    .line 197
    :cond_4
    invoke-static {v2}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    move v4, v1

    move v6, v4

    move v2, v8

    .line 202
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v2, v7, :cond_9

    .line 204
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x30

    if-lt v7, v9, :cond_5

    const/16 v9, 0x39

    if-le v7, v9, :cond_6

    :cond_5
    const/16 v9, 0x3a

    if-ne v7, v9, :cond_8

    :cond_6
    if-ne v4, v1, :cond_7

    move v4, v2

    :cond_7
    move v6, v2

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_9
    if-nez v4, :cond_a

    .line 219
    iget-object v1, p0, Lcom/hzbhd/common/ui/_b1/TimeAppWidgetProvider;->time_am_pm:Landroid/widget/TextView;

    add-int/2addr v6, v5

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 223
    :cond_a
    iget-object v1, p0, Lcom/hzbhd/common/ui/_b1/TimeAppWidgetProvider;->time_am_pm:Landroid/widget/TextView;

    invoke-virtual {v0, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    :goto_2
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/_b1/TimeAppWidgetProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 230
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const v4, 0x18002

    .line 229
    invoke-static {v0, v1, v2, v4}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 233
    iget-object v1, p0, Lcom/hzbhd/common/ui/_b1/TimeAppWidgetProvider;->time_week:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v0, p0, Lcom/hzbhd/common/ui/_b1/TimeAppWidgetProvider;->time_date:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateDataFormat(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 127
    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p1

    .line 128
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private updateDataFormat1(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 118
    new-instance p1, Ljava/text/SimpleDateFormat;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "YYYY.MM.dd"

    invoke-direct {p1, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 119
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private updateTime(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 108
    new-instance p1, Ljava/text/SimpleDateFormat;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "HH-mm"

    invoke-direct {p1, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 109
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 102
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 103
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/_b1/TimeAppWidgetProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 104
    invoke-direct {p0, v0}, Lcom/hzbhd/common/ui/_b1/TimeAppWidgetProvider;->check(Landroid/content/Context;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/hzbhd/common/ui/_b1/TimeAppWidgetProvider;->mTimeBroadcastReceiver:Lcom/hzbhd/common/ui/_b1/TimeAppWidgetProvider$TimeBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0}, Lcom/hzbhd/common/ui/_b1/TimeAppWidgetProvider$TimeBroadcastReceiver;->unregisterReceiver()V

    const/4 v0, 0x0

    .line 95
    iput-object v0, p0, Lcom/hzbhd/common/ui/_b1/TimeAppWidgetProvider;->mTimeBroadcastReceiver:Lcom/hzbhd/common/ui/_b1/TimeAppWidgetProvider$TimeBroadcastReceiver;

    .line 97
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 75
    sget v0, Lcom/hzbhd/common/ui/R$id;->time_am_pm:I

    invoke-virtual {p0, v0}, Lcom/hzbhd/common/ui/_b1/TimeAppWidgetProvider;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hzbhd/common/ui/_b1/TimeAppWidgetProvider;->time_am_pm:Landroid/widget/TextView;

    .line 76
    sget v0, Lcom/hzbhd/common/ui/R$id;->time_week:I

    invoke-virtual {p0, v0}, Lcom/hzbhd/common/ui/_b1/TimeAppWidgetProvider;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hzbhd/common/ui/_b1/TimeAppWidgetProvider;->time_week:Landroid/widget/TextView;

    .line 77
    sget v0, Lcom/hzbhd/common/ui/R$id;->time_date:I

    invoke-virtual {p0, v0}, Lcom/hzbhd/common/ui/_b1/TimeAppWidgetProvider;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hzbhd/common/ui/_b1/TimeAppWidgetProvider;->time_date:Landroid/widget/TextView;

    .line 78
    sget v0, Lcom/hzbhd/common/ui/R$id;->time_hour:I

    invoke-virtual {p0, v0}, Lcom/hzbhd/common/ui/_b1/TimeAppWidgetProvider;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hzbhd/common/ui/_b1/TimeAppWidgetProvider;->time_hour:Landroid/widget/TextView;

    .line 79
    sget v0, Lcom/hzbhd/common/ui/R$id;->time_minute:I

    invoke-virtual {p0, v0}, Lcom/hzbhd/common/ui/_b1/TimeAppWidgetProvider;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hzbhd/common/ui/_b1/TimeAppWidgetProvider;->time_minute:Landroid/widget/TextView;

    .line 80
    sget v0, Lcom/hzbhd/common/ui/R$id;->digital_appwidget:I

    invoke-virtual {p0, v0}, Lcom/hzbhd/common/ui/_b1/TimeAppWidgetProvider;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/hzbhd/common/ui/_b1/TimeAppWidgetProvider$1;

    invoke-direct {v1, p0}, Lcom/hzbhd/common/ui/_b1/TimeAppWidgetProvider$1;-><init>(Lcom/hzbhd/common/ui/_b1/TimeAppWidgetProvider;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    invoke-direct {p0}, Lcom/hzbhd/common/ui/_b1/TimeAppWidgetProvider;->updateClock()V

    .line 88
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    return-void
.end method
