.class public Lcom/hzbhd/common/_a4/CarView;
.super Landroid/widget/RelativeLayout;
.source "CarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/common/_a4/CarView$LocChange;,
        Lcom/hzbhd/common/_a4/CarView$UnitReceiver;
    }
.end annotation


# instance fields
.field private LocConnection:Landroid/content/ServiceConnection;

.field private final MSG_ALTITUDE:I

.field private final MSG_BEAR:I

.field private final MSG_LOC:I

.field private final MSG_MAXSATELLITECOUNT:I

.field private final MSG_SPEED:I

.field private final TAG:Ljava/lang/String;

.field UnitTag:I

.field private altitude:Landroid/widget/TextView;

.field decimalFormat:Ljava/text/DecimalFormat;

.field private gps_speed:Landroid/view/View;

.field private jingdu:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mILocAidlInterface:Lcom/hzbhd/midwareproxy/location/ILocAidlInterface;

.field mLocChange:Lcom/hzbhd/common/_a4/CarView$LocChange;

.field nowAltitude:D

.field nowSpeed:I

.field speedReceiver:Lcom/hzbhd/common/_a4/CarView$UnitReceiver;

.field private speed_tv_num1:Landroid/widget/TextView;

.field private speed_tv_num2:Landroid/widget/TextView;

.field private weidu:Landroid/widget/TextView;

.field private zhinanzhen:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, v0}, Lcom/hzbhd/common/_a4/CarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2, v0}, Lcom/hzbhd/common/_a4/CarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/hzbhd/common/_a4/CarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 35
    const-class p2, Lcom/hzbhd/common/_a4/CarView;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/hzbhd/common/_a4/CarView;->TAG:Ljava/lang/String;

    const/4 p2, 0x1

    .line 43
    iput p2, p0, Lcom/hzbhd/common/_a4/CarView;->UnitTag:I

    const/4 p2, 0x0

    .line 44
    iput p2, p0, Lcom/hzbhd/common/_a4/CarView;->nowSpeed:I

    const-wide/16 p3, 0x0

    .line 45
    iput-wide p3, p0, Lcom/hzbhd/common/_a4/CarView;->nowAltitude:D

    .line 178
    new-instance p3, Lcom/hzbhd/common/_a4/CarView$1;

    invoke-direct {p3, p0}, Lcom/hzbhd/common/_a4/CarView$1;-><init>(Lcom/hzbhd/common/_a4/CarView;)V

    iput-object p3, p0, Lcom/hzbhd/common/_a4/CarView;->LocConnection:Landroid/content/ServiceConnection;

    const/4 p3, 0x0

    .line 196
    iput-object p3, p0, Lcom/hzbhd/common/_a4/CarView;->mLocChange:Lcom/hzbhd/common/_a4/CarView$LocChange;

    const/16 p4, 0x3e8

    .line 289
    iput p4, p0, Lcom/hzbhd/common/_a4/CarView;->MSG_SPEED:I

    const/16 p4, 0x3e9

    .line 290
    iput p4, p0, Lcom/hzbhd/common/_a4/CarView;->MSG_BEAR:I

    const/16 p4, 0x3ea

    .line 291
    iput p4, p0, Lcom/hzbhd/common/_a4/CarView;->MSG_LOC:I

    const/16 p4, 0x3eb

    .line 292
    iput p4, p0, Lcom/hzbhd/common/_a4/CarView;->MSG_MAXSATELLITECOUNT:I

    const/16 p4, 0x3ec

    .line 293
    iput p4, p0, Lcom/hzbhd/common/_a4/CarView;->MSG_ALTITUDE:I

    .line 294
    new-instance p4, Lcom/hzbhd/common/_a4/CarView$2;

    invoke-direct {p4, p0}, Lcom/hzbhd/common/_a4/CarView$2;-><init>(Lcom/hzbhd/common/_a4/CarView;)V

    iput-object p4, p0, Lcom/hzbhd/common/_a4/CarView;->mHandler:Landroid/os/Handler;

    .line 61
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p4

    sget v0, Lcom/hzbhd/common/ui/R$layout;->__a4__main_car_view:I

    invoke-virtual {p4, v0, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 62
    sget p4, Lcom/hzbhd/common/ui/R$id;->zhinanzhen:I

    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    iput-object p4, p0, Lcom/hzbhd/common/_a4/CarView;->zhinanzhen:Landroid/view/View;

    .line 63
    sget p4, Lcom/hzbhd/common/ui/R$id;->gps_speed:I

    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    iput-object p4, p0, Lcom/hzbhd/common/_a4/CarView;->gps_speed:Landroid/view/View;

    .line 64
    sget p4, Lcom/hzbhd/common/ui/R$id;->jingdu:I

    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p0, Lcom/hzbhd/common/_a4/CarView;->jingdu:Landroid/widget/TextView;

    .line 65
    sget p4, Lcom/hzbhd/common/ui/R$id;->weidu:I

    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p0, Lcom/hzbhd/common/_a4/CarView;->weidu:Landroid/widget/TextView;

    .line 66
    sget p4, Lcom/hzbhd/common/ui/R$id;->speed_tv_num1:I

    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p0, Lcom/hzbhd/common/_a4/CarView;->speed_tv_num1:Landroid/widget/TextView;

    .line 67
    sget p4, Lcom/hzbhd/common/ui/R$id;->speed_tv_num2:I

    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p0, Lcom/hzbhd/common/_a4/CarView;->speed_tv_num2:Landroid/widget/TextView;

    .line 68
    sget p4, Lcom/hzbhd/common/ui/R$id;->altitude:I

    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p0, Lcom/hzbhd/common/_a4/CarView;->altitude:Landroid/widget/TextView;

    .line 69
    iget-object p4, p0, Lcom/hzbhd/common/_a4/CarView;->zhinanzhen:Landroid/view/View;

    invoke-direct {p0, p2, p4}, Lcom/hzbhd/common/_a4/CarView;->CornerAnimation(ILandroid/view/View;)V

    .line 70
    iget-object p4, p0, Lcom/hzbhd/common/_a4/CarView;->gps_speed:Landroid/view/View;

    invoke-direct {p0, p2, p4}, Lcom/hzbhd/common/_a4/CarView;->CornerAnimation(ILandroid/view/View;)V

    .line 71
    invoke-virtual {p0, p3}, Lcom/hzbhd/common/_a4/CarView;->addView(Landroid/view/View;)V

    .line 72
    iput-object p1, p0, Lcom/hzbhd/common/_a4/CarView;->mContext:Landroid/content/Context;

    .line 75
    new-instance p2, Ljava/text/DecimalFormat;

    const-string p3, "########00.00"

    invoke-direct {p2, p3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/hzbhd/common/_a4/CarView;->decimalFormat:Ljava/text/DecimalFormat;

    .line 76
    invoke-direct {p0, p1}, Lcom/hzbhd/common/_a4/CarView;->mRegisterReceiver(Landroid/content/Context;)V

    return-void
.end method

.method private CornerAnimation(ILandroid/view/View;)V
    .locals 8

    .line 210
    new-instance v7, Landroid/view/animation/RotateAnimation;

    int-to-float v2, p1

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    move-object v0, v7

    move v1, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    const-wide/16 v0, 0x3e8

    .line 213
    invoke-virtual {v7, v0, v1}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    const/4 p1, 0x1

    .line 214
    invoke-virtual {v7, p1}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 215
    invoke-virtual {p2, v7}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic access$000(Lcom/hzbhd/common/_a4/CarView;)Landroid/widget/TextView;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/hzbhd/common/_a4/CarView;->speed_tv_num1:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/hzbhd/common/_a4/CarView;)Landroid/content/Context;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/hzbhd/common/_a4/CarView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/hzbhd/common/_a4/CarView;)Landroid/view/View;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/hzbhd/common/_a4/CarView;->zhinanzhen:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/hzbhd/common/_a4/CarView;)Landroid/widget/TextView;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/hzbhd/common/_a4/CarView;->jingdu:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/hzbhd/common/_a4/CarView;)Landroid/widget/TextView;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/hzbhd/common/_a4/CarView;->weidu:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/hzbhd/common/_a4/CarView;)Landroid/widget/TextView;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/hzbhd/common/_a4/CarView;->speed_tv_num2:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/hzbhd/common/_a4/CarView;)Landroid/widget/TextView;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/hzbhd/common/_a4/CarView;->altitude:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/hzbhd/common/_a4/CarView;)Lcom/hzbhd/midwareproxy/location/ILocAidlInterface;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/hzbhd/common/_a4/CarView;->mILocAidlInterface:Lcom/hzbhd/midwareproxy/location/ILocAidlInterface;

    return-object p0
.end method

.method static synthetic access$402(Lcom/hzbhd/common/_a4/CarView;Lcom/hzbhd/midwareproxy/location/ILocAidlInterface;)Lcom/hzbhd/midwareproxy/location/ILocAidlInterface;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/hzbhd/common/_a4/CarView;->mILocAidlInterface:Lcom/hzbhd/midwareproxy/location/ILocAidlInterface;

    return-object p1
.end method

.method static synthetic access$600(Lcom/hzbhd/common/_a4/CarView;)Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/hzbhd/common/_a4/CarView;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/hzbhd/common/_a4/CarView;)Landroid/os/Handler;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/hzbhd/common/_a4/CarView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$800(Lcom/hzbhd/common/_a4/CarView;)Landroid/view/View;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/hzbhd/common/_a4/CarView;->gps_speed:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$900(Lcom/hzbhd/common/_a4/CarView;ILandroid/view/View;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/hzbhd/common/_a4/CarView;->CornerAnimation(ILandroid/view/View;)V

    return-void
.end method

.method private bindLocService(Landroid/content/Context;)V
    .locals 4

    .line 173
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 174
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.hzbhd.midware.service"

    const-string v3, "com.hzbhd.midware.location.LocationService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 175
    iget-object v1, p0, Lcom/hzbhd/common/_a4/CarView;->LocConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private mRegisterReceiver(Landroid/content/Context;)V
    .locals 2

    .line 90
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "CAN_ID330_GX470_UNIT_TYPE"

    .line 91
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    new-instance v1, Lcom/hzbhd/common/_a4/CarView$UnitReceiver;

    invoke-direct {v1, p0}, Lcom/hzbhd/common/_a4/CarView$UnitReceiver;-><init>(Lcom/hzbhd/common/_a4/CarView;)V

    iput-object v1, p0, Lcom/hzbhd/common/_a4/CarView;->speedReceiver:Lcom/hzbhd/common/_a4/CarView$UnitReceiver;

    .line 94
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo p1, "\u5355\u4f4d\u8bbe\u7f6e"

    const-string/jumbo v0, "\u6ce8\u518c\u4e86\u5e7f\u64ad"

    .line 95
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method getLocChange()Lcom/hzbhd/common/_a4/CarView$LocChange;
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/hzbhd/common/_a4/CarView;->mLocChange:Lcom/hzbhd/common/_a4/CarView$LocChange;

    if-nez v0, :cond_0

    .line 199
    new-instance v0, Lcom/hzbhd/common/_a4/CarView$LocChange;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/hzbhd/common/_a4/CarView$LocChange;-><init>(Lcom/hzbhd/common/_a4/CarView;Lcom/hzbhd/common/_a4/CarView$1;)V

    iput-object v0, p0, Lcom/hzbhd/common/_a4/CarView;->mLocChange:Lcom/hzbhd/common/_a4/CarView$LocChange;

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/common/_a4/CarView;->mLocChange:Lcom/hzbhd/common/_a4/CarView$LocChange;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 151
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 156
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 157
    iget-object v0, p0, Lcom/hzbhd/common/_a4/CarView;->mILocAidlInterface:Lcom/hzbhd/midwareproxy/location/ILocAidlInterface;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/hzbhd/common/_a4/CarView;->mLocChange:Lcom/hzbhd/common/_a4/CarView$LocChange;

    if-eqz v1, :cond_0

    .line 159
    :try_start_0
    invoke-interface {v0, v1}, Lcom/hzbhd/midwareproxy/location/ILocAidlInterface;->removeCallBack(Lcom/hzbhd/midwareproxy/location/LocationCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 161
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 164
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/hzbhd/common/_a4/CarView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/hzbhd/common/_a4/CarView;->LocConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 165
    iput-object v0, p0, Lcom/hzbhd/common/_a4/CarView;->mILocAidlInterface:Lcom/hzbhd/midwareproxy/location/ILocAidlInterface;

    .line 166
    iput-object v0, p0, Lcom/hzbhd/common/_a4/CarView;->mLocChange:Lcom/hzbhd/common/_a4/CarView$LocChange;

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 145
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 146
    iget-object v0, p0, Lcom/hzbhd/common/_a4/CarView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/hzbhd/common/_a4/CarView;->bindLocService(Landroid/content/Context;)V

    return-void
.end method
