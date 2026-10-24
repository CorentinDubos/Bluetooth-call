.class public Lcom/hzbhd/midwareproxy/screen/utils/DebugView;
.super Ljava/lang/Object;
.source "DebugView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/screen/utils/DebugView$DebugContentObserver;
    }
.end annotation


# static fields
.field static MDebugView:Lcom/hzbhd/midwareproxy/screen/utils/DebugView;


# instance fields
.field private mBackCameraFloatView:Landroid/view/View;

.field private mBackCameraFloatViewParams:Landroid/view/WindowManager$LayoutParams;

.field mContext:Landroid/content/Context;

.field private mWindowManager:Landroid/view/WindowManager;

.field private radio_debug:Landroid/widget/TextView;

.field radiodebg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 92
    iput-object v0, p0, Lcom/hzbhd/midwareproxy/screen/utils/DebugView;->radiodebg:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/screen/utils/DebugView;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "window"

    .line 36
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/screen/utils/DebugView;->mWindowManager:Landroid/view/WindowManager;

    .line 37
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/screen/utils/DebugView;->mBackCameraFloatViewParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7da

    .line 38
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 39
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/utils/DebugView;->mBackCameraFloatViewParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x18

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 41
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/utils/DebugView;->mBackCameraFloatViewParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 42
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/utils/DebugView;->mBackCameraFloatViewParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 43
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/utils/DebugView;->mBackCameraFloatViewParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 44
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/utils/DebugView;->mBackCameraFloatViewParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 45
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/hzbhd/midware/proxy/R$layout;->debug_view:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/screen/utils/DebugView;->mBackCameraFloatView:Landroid/view/View;

    .line 47
    sget v2, Lcom/hzbhd/midware/proxy/R$id;->radio_debug:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/screen/utils/DebugView;->radio_debug:Landroid/widget/TextView;

    .line 48
    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "radio_debug"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v4, Lcom/hzbhd/midwareproxy/screen/utils/DebugView$DebugContentObserver;

    invoke-direct {v4, p0}, Lcom/hzbhd/midwareproxy/screen/utils/DebugView$DebugContentObserver;-><init>(Lcom/hzbhd/midwareproxy/screen/utils/DebugView;)V

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DebugContentObserver radio_debugInt= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mww"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/screen/utils/DebugView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/utils/DebugView;->mBackCameraFloatView:Landroid/view/View;

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/screen/utils/DebugView;->mBackCameraFloatViewParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$000(Lcom/hzbhd/midwareproxy/screen/utils/DebugView;)Landroid/view/View;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/hzbhd/midwareproxy/screen/utils/DebugView;->mBackCameraFloatView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/hzbhd/midwareproxy/screen/utils/DebugView;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/hzbhd/midwareproxy/screen/utils/DebugView;->mBackCameraFloatViewParams:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method static synthetic access$200(Lcom/hzbhd/midwareproxy/screen/utils/DebugView;)Landroid/view/WindowManager;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/hzbhd/midwareproxy/screen/utils/DebugView;->mWindowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/hzbhd/midwareproxy/screen/utils/DebugView;)Landroid/widget/TextView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/hzbhd/midwareproxy/screen/utils/DebugView;->radio_debug:Landroid/widget/TextView;

    return-object p0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/screen/utils/DebugView;
    .locals 2

    const-class v0, Lcom/hzbhd/midwareproxy/screen/utils/DebugView;

    monitor-enter v0

    .line 29
    :try_start_0
    sget-object v1, Lcom/hzbhd/midwareproxy/screen/utils/DebugView;->MDebugView:Lcom/hzbhd/midwareproxy/screen/utils/DebugView;

    if-nez v1, :cond_0

    .line 30
    new-instance v1, Lcom/hzbhd/midwareproxy/screen/utils/DebugView;

    invoke-direct {v1, p0}, Lcom/hzbhd/midwareproxy/screen/utils/DebugView;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/hzbhd/midwareproxy/screen/utils/DebugView;->MDebugView:Lcom/hzbhd/midwareproxy/screen/utils/DebugView;

    .line 32
    :cond_0
    sget-object p0, Lcom/hzbhd/midwareproxy/screen/utils/DebugView;->MDebugView:Lcom/hzbhd/midwareproxy/screen/utils/DebugView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public updateDatas()V
    .locals 2

    .line 96
    invoke-static {}, Lcom/hzbhd/midwareproxy/screen/utils/Test6686StringUitls;->makeString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/screen/utils/DebugView;->radiodebg:Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/utils/DebugView;->radio_debug:Landroid/widget/TextView;

    new-instance v1, Lcom/hzbhd/midwareproxy/screen/utils/DebugView$1;

    invoke-direct {v1, p0}, Lcom/hzbhd/midwareproxy/screen/utils/DebugView$1;-><init>(Lcom/hzbhd/midwareproxy/screen/utils/DebugView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
