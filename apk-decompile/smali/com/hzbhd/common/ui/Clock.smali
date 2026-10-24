.class public Lcom/hzbhd/common/ui/Clock;
.super Landroid/widget/RelativeLayout;
.source "Clock.java"


# instance fields
.field private mAttached:Z

.field private mCalendar:Ljava/util/Calendar;

.field private mClockFormat:Ljava/text/SimpleDateFormat;

.field private mClockFormatString:Ljava/lang/String;

.field private mClockLayout:Landroid/widget/RelativeLayout;

.field private mClockTv:Landroid/widget/TextView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, v0}, Lcom/hzbhd/common/ui/Clock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, p2, v0}, Lcom/hzbhd/common/ui/Clock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 104
    new-instance p2, Lcom/hzbhd/common/ui/Clock$1;

    invoke-direct {p2, p0}, Lcom/hzbhd/common/ui/Clock$1;-><init>(Lcom/hzbhd/common/ui/Clock;)V

    iput-object p2, p0, Lcom/hzbhd/common/ui/Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 72
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/common/ui/Clock;->mInflater:Landroid/view/LayoutInflater;

    .line 73
    sget p2, Lcom/hzbhd/common/ui/R$layout;->header_clock:I

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/hzbhd/common/ui/Clock;->mClockLayout:Landroid/widget/RelativeLayout;

    .line 75
    sget p2, Lcom/hzbhd/common/ui/R$id;->tv_clock:I

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/hzbhd/common/ui/Clock;->mClockTv:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$000(Lcom/hzbhd/common/ui/Clock;)Ljava/util/Calendar;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/hzbhd/common/ui/Clock;->mCalendar:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic access$002(Lcom/hzbhd/common/ui/Clock;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/hzbhd/common/ui/Clock;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$100(Lcom/hzbhd/common/ui/Clock;)Ljava/text/SimpleDateFormat;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/hzbhd/common/ui/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method static synthetic access$200(Lcom/hzbhd/common/ui/Clock;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/hzbhd/common/ui/Clock;->updateClock()V

    return-void
.end method

.method private final refresh()V
    .locals 2

    .line 126
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/Clock;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 127
    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    sget v1, Lcom/hzbhd/common/ui/R$string;->twenty_four_hour_time_format:I

    goto :goto_0

    .line 133
    :cond_0
    sget v1, Lcom/hzbhd/common/ui/R$string;->twelve_hour_time_format:I

    .line 137
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 138
    iget-object v1, p0, Lcom/hzbhd/common/ui/Clock;->mClockFormatString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 139
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/hzbhd/common/ui/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;

    .line 140
    iput-object v0, p0, Lcom/hzbhd/common/ui/Clock;->mClockFormatString:Ljava/lang/String;

    goto :goto_1

    .line 142
    :cond_1
    iget-object v1, p0, Lcom/hzbhd/common/ui/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;

    .line 145
    :goto_1
    iget-object v0, p0, Lcom/hzbhd/common/ui/Clock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/hzbhd/common/ui/Clock;->mClockTv:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final updateClock()V
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/hzbhd/common/ui/Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 122
    invoke-direct {p0}, Lcom/hzbhd/common/ui/Clock;->refresh()V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 3

    .line 80
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 81
    iget-boolean v0, p0, Lcom/hzbhd/common/ui/Clock;->mAttached:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Lcom/hzbhd/common/ui/Clock;->mAttached:Z

    .line 83
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_TICK"

    .line 84
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    .line 85
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    .line 86
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    .line 87
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/Clock;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/hzbhd/common/ui/Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 91
    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/hzbhd/common/ui/Clock;->mCalendar:Ljava/util/Calendar;

    .line 92
    invoke-direct {p0}, Lcom/hzbhd/common/ui/Clock;->updateClock()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 97
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 98
    iget-boolean v0, p0, Lcom/hzbhd/common/ui/Clock;->mAttached:Z

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/Clock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/hzbhd/common/ui/Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 100
    iput-boolean v0, p0, Lcom/hzbhd/common/ui/Clock;->mAttached:Z

    :cond_0
    return-void
.end method
