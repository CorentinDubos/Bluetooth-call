.class public Lcom/hzbhd/bluetooth/widget/_t1/AudioInPhoneAnim;
.super Ljava/lang/Object;
.source "AudioInPhoneAnim.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/bluetooth/widget/_t1/AudioInPhoneAnim$IAudioInPhoneAnimCallback;
    }
.end annotation


# static fields
.field private static final MSG_START_ANIM:I = 0x5e6

.field private static final MSG_STOP_ANIM:I = 0x5e7

.field private static final animIds:[I

.field private static final defualtDrawableId:I = 0x7f081464

.field static mCallback:Lcom/hzbhd/bluetooth/widget/_t1/AudioInPhoneAnim$IAudioInPhoneAnimCallback;


# instance fields
.field private curAnimId:I

.field private isAnimStop:Z

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 21
    fill-array-data v0, :array_0

    sput-object v0, Lcom/hzbhd/bluetooth/widget/_t1/AudioInPhoneAnim;->animIds:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f08144e
        0x7f08144f
        0x7f081450
    .end array-data
.end method

.method public constructor <init>(Lcom/hzbhd/bluetooth/widget/_t1/AudioInPhoneAnim$IAudioInPhoneAnimCallback;)V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/hzbhd/bluetooth/widget/_t1/AudioInPhoneAnim;->curAnimId:I

    .line 20
    iput-boolean v0, p0, Lcom/hzbhd/bluetooth/widget/_t1/AudioInPhoneAnim;->isAnimStop:Z

    .line 50
    new-instance v0, Lcom/hzbhd/bluetooth/widget/_t1/AudioInPhoneAnim$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/hzbhd/bluetooth/widget/_t1/AudioInPhoneAnim$1;-><init>(Lcom/hzbhd/bluetooth/widget/_t1/AudioInPhoneAnim;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/hzbhd/bluetooth/widget/_t1/AudioInPhoneAnim;->mHandler:Landroid/os/Handler;

    .line 28
    sput-object p1, Lcom/hzbhd/bluetooth/widget/_t1/AudioInPhoneAnim;->mCallback:Lcom/hzbhd/bluetooth/widget/_t1/AudioInPhoneAnim$IAudioInPhoneAnimCallback;

    return-void
.end method

.method static synthetic access$002(Lcom/hzbhd/bluetooth/widget/_t1/AudioInPhoneAnim;Z)Z
    .locals 0

    .line 12
    iput-boolean p1, p0, Lcom/hzbhd/bluetooth/widget/_t1/AudioInPhoneAnim;->isAnimStop:Z

    return p1
.end method

.method static synthetic access$100(Lcom/hzbhd/bluetooth/widget/_t1/AudioInPhoneAnim;)Landroid/os/Handler;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/hzbhd/bluetooth/widget/_t1/AudioInPhoneAnim;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$202(Lcom/hzbhd/bluetooth/widget/_t1/AudioInPhoneAnim;I)I
    .locals 0

    .line 12
    iput p1, p0, Lcom/hzbhd/bluetooth/widget/_t1/AudioInPhoneAnim;->curAnimId:I

    return p1
.end method


# virtual methods
.method public animAction()V
    .locals 3

    .line 41
    iget v0, p0, Lcom/hzbhd/bluetooth/widget/_t1/AudioInPhoneAnim;->curAnimId:I

    sget-object v1, Lcom/hzbhd/bluetooth/widget/_t1/AudioInPhoneAnim;->animIds:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/hzbhd/bluetooth/widget/_t1/AudioInPhoneAnim;->curAnimId:I

    .line 44
    :cond_0
    iget-boolean v0, p0, Lcom/hzbhd/bluetooth/widget/_t1/AudioInPhoneAnim;->isAnimStop:Z

    if-nez v0, :cond_1

    .line 45
    sget-object v0, Lcom/hzbhd/bluetooth/widget/_t1/AudioInPhoneAnim;->mCallback:Lcom/hzbhd/bluetooth/widget/_t1/AudioInPhoneAnim$IAudioInPhoneAnimCallback;

    sget-object v1, Lcom/hzbhd/bluetooth/widget/_t1/AudioInPhoneAnim;->animIds:[I

    iget v2, p0, Lcom/hzbhd/bluetooth/widget/_t1/AudioInPhoneAnim;->curAnimId:I

    aget v1, v1, v2

    invoke-interface {v0, v1}, Lcom/hzbhd/bluetooth/widget/_t1/AudioInPhoneAnim$IAudioInPhoneAnimCallback;->onSetImgButtonRes(I)V

    .line 47
    :cond_1
    iget v0, p0, Lcom/hzbhd/bluetooth/widget/_t1/AudioInPhoneAnim;->curAnimId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hzbhd/bluetooth/widget/_t1/AudioInPhoneAnim;->curAnimId:I

    return-void
.end method

.method public animStart()V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/hzbhd/bluetooth/widget/_t1/AudioInPhoneAnim;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x5e6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 33
    iget-object v0, p0, Lcom/hzbhd/bluetooth/widget/_t1/AudioInPhoneAnim;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public animStop()V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/hzbhd/bluetooth/widget/_t1/AudioInPhoneAnim;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x5e7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
