.class Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch$originalLerningRec;
.super Landroid/content/BroadcastReceiver;
.source "QzOringinalScreenTouchDispatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "originalLerningRec"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 92
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "action_qz_oringinal_screen_rep_ts_learn"

    .line 93
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "isGetInOriginalLearn"

    const/4 v0, 0x0

    .line 94
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    move v0, p2

    :cond_0
    sput-boolean v0, Lcom/hzbhd/midwareproxy/canbus/orginalScreen/QzOringinalScreenTouchDispatch;->isInLearningPage:Z

    :cond_1
    return-void
.end method
