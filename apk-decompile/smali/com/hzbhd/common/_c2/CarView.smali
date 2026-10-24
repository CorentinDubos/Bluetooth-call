.class public Lcom/hzbhd/common/_c2/CarView;
.super Landroid/widget/RelativeLayout;
.source "CarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/common/_c2/CarView$LocChange;
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

.field private altitude:Landroid/widget/TextView;

.field private gps_speed:Landroid/view/View;

.field private jingdu:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mILocAidlInterface:Lcom/hzbhd/midwareproxy/location/ILocAidlInterface;

.field mLocChange:Lcom/hzbhd/common/_c2/CarView$LocChange;

.field private speed_tv_num1:Landroid/widget/TextView;

.field private speed_tv_num2:Landroid/widget/TextView;

.field private final view:Landroid/view/View;

.field private weidu:Landroid/widget/TextView;

.field private zhinanzhen:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, v0}, Lcom/hzbhd/common/_c2/CarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, v0}, Lcom/hzbhd/common/_c2/CarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/hzbhd/common/_c2/CarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 33
    const-class p2, Lcom/hzbhd/common/_c2/CarView;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/hzbhd/common/_c2/CarView;->TAG:Ljava/lang/String;

    .line 102
    new-instance p2, Lcom/hzbhd/common/_c2/CarView$1;

    invoke-direct {p2, p0}, Lcom/hzbhd/common/_c2/CarView$1;-><init>(Lcom/hzbhd/common/_c2/CarView;)V

    iput-object p2, p0, Lcom/hzbhd/common/_c2/CarView;->LocConnection:Landroid/content/ServiceConnection;

    const/4 p2, 0x0

    .line 120
    iput-object p2, p0, Lcom/hzbhd/common/_c2/CarView;->mLocChange:Lcom/hzbhd/common/_c2/CarView$LocChange;

    const/16 p3, 0x3e8

    .line 213
    iput p3, p0, Lcom/hzbhd/common/_c2/CarView;->MSG_SPEED:I

    const/16 p3, 0x3e9

    .line 214
    iput p3, p0, Lcom/hzbhd/common/_c2/CarView;->MSG_BEAR:I

    const/16 p3, 0x3ea

    .line 215
    iput p3, p0, Lcom/hzbhd/common/_c2/CarView;->MSG_LOC:I

    const/16 p3, 0x3eb

    .line 216
    iput p3, p0, Lcom/hzbhd/common/_c2/CarView;->MSG_MAXSATELLITECOUNT:I

    const/16 p3, 0x3ec

    .line 217
    iput p3, p0, Lcom/hzbhd/common/_c2/CarView;->MSG_ALTITUDE:I

    .line 218
    new-instance p3, Lcom/hzbhd/common/_c2/CarView$2;

    invoke-direct {p3, p0}, Lcom/hzbhd/common/_c2/CarView$2;-><init>(Lcom/hzbhd/common/_c2/CarView;)V

    iput-object p3, p0, Lcom/hzbhd/common/_c2/CarView;->mHandler:Landroid/os/Handler;

    .line 52
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    sget p4, Lcom/hzbhd/common/ui/R$layout;->__c2__main_car_view:I

    const/4 v0, 0x0

    invoke-virtual {p3, p4, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/hzbhd/common/_c2/CarView;->view:Landroid/view/View;

    .line 53
    sget p3, Lcom/hzbhd/common/ui/R$id;->zhinanzhen:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/hzbhd/common/_c2/CarView;->zhinanzhen:Landroid/view/View;

    .line 54
    iget-object p2, p0, Lcom/hzbhd/common/_c2/CarView;->view:Landroid/view/View;

    sget p3, Lcom/hzbhd/common/ui/R$id;->gps_speed:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/hzbhd/common/_c2/CarView;->gps_speed:Landroid/view/View;

    .line 55
    iget-object p2, p0, Lcom/hzbhd/common/_c2/CarView;->view:Landroid/view/View;

    sget p3, Lcom/hzbhd/common/ui/R$id;->jingdu:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/hzbhd/common/_c2/CarView;->jingdu:Landroid/widget/TextView;

    .line 56
    iget-object p2, p0, Lcom/hzbhd/common/_c2/CarView;->view:Landroid/view/View;

    sget p3, Lcom/hzbhd/common/ui/R$id;->weidu:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/hzbhd/common/_c2/CarView;->weidu:Landroid/widget/TextView;

    .line 57
    iget-object p2, p0, Lcom/hzbhd/common/_c2/CarView;->view:Landroid/view/View;

    sget p3, Lcom/hzbhd/common/ui/R$id;->speed_tv_num1:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/hzbhd/common/_c2/CarView;->speed_tv_num1:Landroid/widget/TextView;

    .line 58
    iget-object p2, p0, Lcom/hzbhd/common/_c2/CarView;->view:Landroid/view/View;

    sget p3, Lcom/hzbhd/common/ui/R$id;->speed_tv_num2:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/hzbhd/common/_c2/CarView;->speed_tv_num2:Landroid/widget/TextView;

    .line 59
    iget-object p2, p0, Lcom/hzbhd/common/_c2/CarView;->view:Landroid/view/View;

    sget p3, Lcom/hzbhd/common/ui/R$id;->altitude:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/hzbhd/common/_c2/CarView;->altitude:Landroid/widget/TextView;

    .line 60
    iget-object p2, p0, Lcom/hzbhd/common/_c2/CarView;->zhinanzhen:Landroid/view/View;

    invoke-direct {p0, v0, p2}, Lcom/hzbhd/common/_c2/CarView;->CornerAnimation(ILandroid/view/View;)V

    .line 61
    iget-object p2, p0, Lcom/hzbhd/common/_c2/CarView;->gps_speed:Landroid/view/View;

    invoke-direct {p0, v0, p2}, Lcom/hzbhd/common/_c2/CarView;->CornerAnimation(ILandroid/view/View;)V

    .line 62
    iget-object p2, p0, Lcom/hzbhd/common/_c2/CarView;->view:Landroid/view/View;

    invoke-virtual {p0, p2}, Lcom/hzbhd/common/_c2/CarView;->addView(Landroid/view/View;)V

    .line 63
    iput-object p1, p0, Lcom/hzbhd/common/_c2/CarView;->mContext:Landroid/content/Context;

    return-void
.end method

.method private CornerAnimation(ILandroid/view/View;)V
    .locals 8

    .line 134
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

    .line 137
    invoke-virtual {v7, v0, v1}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    const/4 p1, 0x1

    .line 138
    invoke-virtual {v7, p1}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 139
    invoke-virtual {p2, v7}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic access$000(Lcom/hzbhd/common/_c2/CarView;)Lcom/hzbhd/midwareproxy/location/ILocAidlInterface;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/hzbhd/common/_c2/CarView;->mILocAidlInterface:Lcom/hzbhd/midwareproxy/location/ILocAidlInterface;

    return-object p0
.end method

.method static synthetic access$002(Lcom/hzbhd/common/_c2/CarView;Lcom/hzbhd/midwareproxy/location/ILocAidlInterface;)Lcom/hzbhd/midwareproxy/location/ILocAidlInterface;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/hzbhd/common/_c2/CarView;->mILocAidlInterface:Lcom/hzbhd/midwareproxy/location/ILocAidlInterface;

    return-object p1
.end method

.method static synthetic access$1000(Lcom/hzbhd/common/_c2/CarView;)Landroid/widget/TextView;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/hzbhd/common/_c2/CarView;->jingdu:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/hzbhd/common/_c2/CarView;)Landroid/widget/TextView;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/hzbhd/common/_c2/CarView;->weidu:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/hzbhd/common/_c2/CarView;)Landroid/widget/TextView;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/hzbhd/common/_c2/CarView;->altitude:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/hzbhd/common/_c2/CarView;)Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/hzbhd/common/_c2/CarView;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/hzbhd/common/_c2/CarView;)Landroid/os/Handler;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/hzbhd/common/_c2/CarView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/hzbhd/common/_c2/CarView;)Landroid/content/Context;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/hzbhd/common/_c2/CarView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/hzbhd/common/_c2/CarView;)Landroid/view/View;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/hzbhd/common/_c2/CarView;->gps_speed:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$600(Lcom/hzbhd/common/_c2/CarView;ILandroid/view/View;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/hzbhd/common/_c2/CarView;->CornerAnimation(ILandroid/view/View;)V

    return-void
.end method

.method static synthetic access$700(Lcom/hzbhd/common/_c2/CarView;)Landroid/widget/TextView;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/hzbhd/common/_c2/CarView;->speed_tv_num1:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/hzbhd/common/_c2/CarView;)Landroid/widget/TextView;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/hzbhd/common/_c2/CarView;->speed_tv_num2:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/hzbhd/common/_c2/CarView;)Landroid/view/View;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/hzbhd/common/_c2/CarView;->zhinanzhen:Landroid/view/View;

    return-object p0
.end method

.method private bindLocService(Landroid/content/Context;)V
    .locals 4

    .line 97
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 98
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.hzbhd.midware.service"

    const-string v3, "com.hzbhd.midware.location.LocationService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 99
    iget-object v1, p0, Lcom/hzbhd/common/_c2/CarView;->LocConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method


# virtual methods
.method getLocChange()Lcom/hzbhd/common/_c2/CarView$LocChange;
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/hzbhd/common/_c2/CarView;->mLocChange:Lcom/hzbhd/common/_c2/CarView$LocChange;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Lcom/hzbhd/common/_c2/CarView$LocChange;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/hzbhd/common/_c2/CarView$LocChange;-><init>(Lcom/hzbhd/common/_c2/CarView;Lcom/hzbhd/common/_c2/CarView$1;)V

    iput-object v0, p0, Lcom/hzbhd/common/_c2/CarView;->mLocChange:Lcom/hzbhd/common/_c2/CarView$LocChange;

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/common/_c2/CarView;->mLocChange:Lcom/hzbhd/common/_c2/CarView$LocChange;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 75
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 80
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 81
    iget-object v0, p0, Lcom/hzbhd/common/_c2/CarView;->mILocAidlInterface:Lcom/hzbhd/midwareproxy/location/ILocAidlInterface;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/hzbhd/common/_c2/CarView;->mLocChange:Lcom/hzbhd/common/_c2/CarView$LocChange;

    if-eqz v1, :cond_0

    .line 83
    :try_start_0
    invoke-interface {v0, v1}, Lcom/hzbhd/midwareproxy/location/ILocAidlInterface;->removeCallBack(Lcom/hzbhd/midwareproxy/location/LocationCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 85
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 88
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/hzbhd/common/_c2/CarView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/hzbhd/common/_c2/CarView;->LocConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lcom/hzbhd/common/_c2/CarView;->mILocAidlInterface:Lcom/hzbhd/midwareproxy/location/ILocAidlInterface;

    .line 90
    iput-object v0, p0, Lcom/hzbhd/common/_c2/CarView;->mLocChange:Lcom/hzbhd/common/_c2/CarView$LocChange;

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 69
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 70
    iget-object v0, p0, Lcom/hzbhd/common/_c2/CarView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/hzbhd/common/_c2/CarView;->bindLocService(Landroid/content/Context;)V

    return-void
.end method
