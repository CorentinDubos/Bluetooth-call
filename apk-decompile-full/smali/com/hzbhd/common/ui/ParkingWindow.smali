.class public Lcom/hzbhd/common/ui/ParkingWindow;
.super Landroid/os/Handler;
.source "ParkingWindow.java"


# static fields
.field public static final MSG_CANCEL:I = 0x3ea

.field public static final MSG_SHOW:I = 0x3e8

.field public static final MSG_SHOW_TIMEOUT:I = 0x3e9

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private haveAdded:Z

.field protected mContext:Landroid/content/Context;

.field mFloatLayout:Landroid/widget/RelativeLayout;

.field mFloatView:Landroid/widget/Button;

.field mWindowManager:Landroid/view/WindowManager;

.field wmParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/hzbhd/common/ui/ParkingWindow;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/common/ui/ParkingWindow;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/hzbhd/common/ui/ParkingWindow;->haveAdded:Z

    .line 38
    iput-object p1, p0, Lcom/hzbhd/common/ui/ParkingWindow;->mContext:Landroid/content/Context;

    .line 40
    sget p1, Lcom/hzbhd/common/ui/R$layout;->parking_warning_confirm_layout:I

    sget v0, Lcom/hzbhd/common/ui/R$id;->confirm_yes_btn_id:I

    invoke-direct {p0, p1, v0}, Lcom/hzbhd/common/ui/ParkingWindow;->initFloatView(II)V

    return-void
.end method

.method private initFloatView(II)V
    .locals 2

    .line 76
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/common/ui/ParkingWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    .line 78
    iget-object v0, p0, Lcom/hzbhd/common/ui/ParkingWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    .line 79
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/hzbhd/common/ui/ParkingWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 83
    iget-object v0, p0, Lcom/hzbhd/common/ui/ParkingWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 85
    iget-object v0, p0, Lcom/hzbhd/common/ui/ParkingWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 89
    iget-object v0, p0, Lcom/hzbhd/common/ui/ParkingWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x1030004

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 91
    iget-object v0, p0, Lcom/hzbhd/common/ui/ParkingWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 97
    iget-object v0, p0, Lcom/hzbhd/common/ui/ParkingWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 98
    iget-object v0, p0, Lcom/hzbhd/common/ui/ParkingWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 104
    iget-object v0, p0, Lcom/hzbhd/common/ui/ParkingWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    .line 106
    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/hzbhd/common/ui/ParkingWindow;->mFloatLayout:Landroid/widget/RelativeLayout;

    .line 110
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/hzbhd/common/ui/ParkingWindow;->mFloatView:Landroid/widget/Button;

    .line 140
    new-instance p2, Lcom/hzbhd/common/ui/ParkingWindow$1;

    invoke-direct {p2, p0}, Lcom/hzbhd/common/ui/ParkingWindow$1;-><init>(Lcom/hzbhd/common/ui/ParkingWindow;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object p1, p0, Lcom/hzbhd/common/ui/ParkingWindow;->mFloatLayout:Landroid/widget/RelativeLayout;

    new-instance p2, Lcom/hzbhd/common/ui/ParkingWindow$2;

    invoke-direct {p2, p0}, Lcom/hzbhd/common/ui/ParkingWindow$2;-><init>(Lcom/hzbhd/common/ui/ParkingWindow;)V

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method


# virtual methods
.method public dismissWindow()V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/hzbhd/common/ui/ParkingWindow;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/hzbhd/common/ui/ParkingWindow;->haveAdded:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hzbhd/common/ui/ParkingWindow;->mFloatLayout:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    .line 173
    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 174
    iput-boolean v0, p0, Lcom/hzbhd/common/ui/ParkingWindow;->haveAdded:Z

    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 45
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3ea

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/ParkingWindow;->dismissWindow()V

    :goto_0
    return-void
.end method

.method public onShow()V
    .locals 3

    .line 69
    iget-boolean v0, p0, Lcom/hzbhd/common/ui/ParkingWindow;->haveAdded:Z

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/hzbhd/common/ui/ParkingWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/hzbhd/common/ui/ParkingWindow;->mFloatLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/hzbhd/common/ui/ParkingWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lcom/hzbhd/common/ui/ParkingWindow;->haveAdded:Z

    return-void
.end method

.method public onShow(I)V
    .locals 3

    const/16 v0, 0x3ea

    .line 60
    invoke-virtual {p0, v0}, Lcom/hzbhd/common/ui/ParkingWindow;->removeMessages(I)V

    .line 61
    invoke-virtual {p0, v0}, Lcom/hzbhd/common/ui/ParkingWindow;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    int-to-long v1, p1

    .line 62
    invoke-virtual {p0, v0, v1, v2}, Lcom/hzbhd/common/ui/ParkingWindow;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 64
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/ParkingWindow;->onShow()V

    return-void
.end method
