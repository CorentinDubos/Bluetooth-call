.class public abstract Lcom/hzbhd/midwareproxy/utils/LongClickUtils;
.super Ljava/lang/Object;
.source "LongClickUtils.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final HANDLER_ACTION_DOWN:I = 0x1

.field public static final HANDLER_ACTION_UP:I = 0x2

.field public static final HANDLER_ACTION_WOLUMN_CHANGED:I = 0x3

.field public static iosInterceptFlag:Z = false


# instance fields
.field private isDown:Z

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/hzbhd/midwareproxy/utils/LongClickUtils;->isDown:Z

    .line 24
    new-instance v0, Lcom/hzbhd/midwareproxy/utils/LongClickUtils$1;

    invoke-direct {v0, p0}, Lcom/hzbhd/midwareproxy/utils/LongClickUtils$1;-><init>(Lcom/hzbhd/midwareproxy/utils/LongClickUtils;)V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/utils/LongClickUtils;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/hzbhd/midwareproxy/utils/LongClickUtils;)Landroid/os/Handler;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/hzbhd/midwareproxy/utils/LongClickUtils;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/hzbhd/midwareproxy/utils/LongClickUtils;)Z
    .locals 0

    .line 17
    iget-boolean p0, p0, Lcom/hzbhd/midwareproxy/utils/LongClickUtils;->isDown:Z

    return p0
.end method

.method static synthetic access$102(Lcom/hzbhd/midwareproxy/utils/LongClickUtils;Z)Z
    .locals 0

    .line 17
    iput-boolean p1, p0, Lcom/hzbhd/midwareproxy/utils/LongClickUtils;->isDown:Z

    return p1
.end method

.method public static getTouchTarget(Landroid/view/View;II)Landroid/view/View;
    .locals 2

    .line 126
    invoke-virtual {p0}, Landroid/view/View;->getTouchables()Ljava/util/ArrayList;

    move-result-object p0

    .line 127
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 128
    invoke-static {v0, p1, p2}, Lcom/hzbhd/midwareproxy/utils/LongClickUtils;->isTouchPointInView(Landroid/view/View;II)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static isTouchPointInView(Landroid/view/View;II)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 97
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 98
    aget v2, v1, v0

    const/4 v3, 0x1

    .line 99
    aget v1, v1, v3

    .line 100
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v2

    .line 101
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    add-int/2addr p0, v1

    if-lt p2, v1, :cond_1

    if-gt p2, p0, :cond_1

    if-lt p1, v2, :cond_1

    if-gt p1, v4, :cond_1

    return v3

    :cond_1
    return v0
.end method


# virtual methods
.method public abstract onDown(I)Z
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 70
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const-string v0, "mww"

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    if-eq p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "DemoAc onDown ACTION_UP"

    .line 79
    invoke-static {v0, p2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p2

    const/4 v0, 0x2

    .line 81
    iput v0, p2, Landroid/os/Message;->what:I

    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iput p1, p2, Landroid/os/Message;->arg1:I

    .line 83
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/utils/LongClickUtils;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    const-string p2, "DemoAc onDown ACTION_DOWN"

    .line 72
    invoke-static {v0, p2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p2

    .line 74
    iput v1, p2, Landroid/os/Message;->what:I

    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iput p1, p2, Landroid/os/Message;->arg1:I

    .line 76
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/utils/LongClickUtils;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
