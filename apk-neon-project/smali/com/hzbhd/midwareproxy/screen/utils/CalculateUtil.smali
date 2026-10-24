.class public Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil;
.super Ljava/lang/Object;
.source "CalculateUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil$CALCULATE_MSG;,
        Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil$CalculateCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CalculateUtil"

.field private static calculateUtil:Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil;

.field private static msgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil$CALCULATE_MSG;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private handlerThread:Landroid/os/HandlerThread;

.field private mainHandler:Landroid/os/Handler;

.field private threadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil;->msgs:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil$1;

    const-class v1, Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil$1;-><init>(Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil;->handlerThread:Landroid/os/HandlerThread;

    .line 65
    new-instance v0, Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil$2;

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil$2;-><init>(Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil;->threadHandler:Landroid/os/Handler;

    .line 79
    new-instance v0, Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil$3;-><init>(Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil;)Landroid/os/Handler;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil;->mainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100()Ljava/util/ArrayList;
    .locals 1

    .line 44
    sget-object v0, Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil;->msgs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getInstance()Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil;
    .locals 1

    .line 53
    sget-object v0, Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil;->calculateUtil:Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil;

    invoke-direct {v0}, Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil;-><init>()V

    sput-object v0, Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil;->calculateUtil:Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil;

    .line 56
    :cond_0
    sget-object v0, Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil;->calculateUtil:Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil;

    return-object v0
.end method


# virtual methods
.method public calculate(Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil$CalculateCallback;Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil$CALCULATE_MSG;)V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil;->threadHandler:Landroid/os/Handler;

    invoke-interface {p2}, Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil$CALCULATE_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 99
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil;->threadHandler:Landroid/os/Handler;

    invoke-interface {p2}, Lcom/hzbhd/midwareproxy/screen/utils/CalculateUtil$CALCULATE_MSG;->ordinal()I

    move-result p2

    invoke-virtual {v0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
