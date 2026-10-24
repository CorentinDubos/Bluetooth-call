.class public Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils;
.super Ljava/lang/Object;
.source "HandlerUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$TimerHandler;,
        Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$TimerCallback;,
        Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$MyHandler;,
        Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$IFreshUICallback;,
        Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$MSG;
    }
.end annotation


# static fields
.field private static mHandlerUtils:Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils;


# instance fields
.field private final mHandler:Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$MyHandler;

.field mIFreshUICallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$IFreshUICallback;",
            ">;"
        }
    .end annotation
.end field

.field mTimerCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$TimerCallback;",
            ">;"
        }
    .end annotation
.end field

.field maps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$IFreshUICallback;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils;->mIFreshUICallback:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils;->maps:Ljava/util/HashMap;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils;->mTimerCallback:Ljava/util/List;

    .line 58
    new-instance v0, Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$MyHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$MyHandler;-><init>(Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils;->mHandler:Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$MyHandler;

    .line 59
    new-instance v0, Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$TimerHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$TimerHandler;-><init>(Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils;Landroid/os/Looper;)V

    .line 60
    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$TimerHandler;->start()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils;
    .locals 2

    const-class v0, Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils;

    monitor-enter v0

    .line 52
    :try_start_0
    sget-object v1, Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils;->mHandlerUtils:Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils;

    if-nez v1, :cond_0

    .line 53
    new-instance v1, Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils;

    invoke-direct {v1}, Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils;-><init>()V

    sput-object v1, Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils;->mHandlerUtils:Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils;

    .line 54
    :cond_0
    sget-object v1, Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils;->mHandlerUtils:Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getmTimerCallback()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$TimerCallback;",
            ">;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils;->mTimerCallback:Ljava/util/List;

    return-object v0
.end method

.method public refreshUI()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils;->mHandler:Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$MyHandler;

    sget-object v1, Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$MSG;->REFRESH_UI:Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$MyHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public refreshUI(I)V
    .locals 2

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refreshUI "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mww"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils;->mHandler:Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$MyHandler;

    invoke-virtual {v0, p1}, Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$MyHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public varargs registerCallBack(Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$IFreshUICallback;[I)V
    .locals 4

    if-eqz p1, :cond_1

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 74
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p2, v2

    .line 75
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 77
    :cond_0
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils;->maps:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils;->mIFreshUICallback:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public setmTimerCallback(Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$TimerCallback;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 98
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils;->mTimerCallback:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public unRegisterTimerCallback(Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$TimerCallback;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 102
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils;->mTimerCallback:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public unregisterCallBack(Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils$IFreshUICallback;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 84
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils;->maps:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/utils/HandlerUtils;->mIFreshUICallback:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
