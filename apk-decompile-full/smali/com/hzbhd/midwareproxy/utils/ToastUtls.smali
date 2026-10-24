.class public Lcom/hzbhd/midwareproxy/utils/ToastUtls;
.super Ljava/lang/Object;
.source "ToastUtls.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showLongText(Landroid/content/Context;I)V
    .locals 2

    const/4 v0, 0x1

    .line 29
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    if-eq p0, v0, :cond_0

    .line 31
    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object p0

    instance-of p0, p0, Lcom/hzbhd/midwareproxy/hardware/T3Q_MR1_HardwarePlatform;

    if-eqz p0, :cond_1

    :cond_0
    const/16 p0, 0x50

    const/4 v0, 0x0

    const/16 v1, 0xfa

    .line 32
    invoke-virtual {p1, p0, v0, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 34
    :cond_1
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static showLongText(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    .line 37
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    if-eq p0, v0, :cond_0

    .line 39
    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object p0

    instance-of p0, p0, Lcom/hzbhd/midwareproxy/hardware/T3Q_MR1_HardwarePlatform;

    if-eqz p0, :cond_1

    :cond_0
    const/16 p0, 0x50

    const/4 v0, 0x0

    const/16 v1, 0xfa

    .line 40
    invoke-virtual {p1, p0, v0, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 42
    :cond_1
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static showShortText(Landroid/content/Context;I)V
    .locals 2

    const/4 v0, 0x0

    .line 15
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    .line 17
    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object p0

    instance-of p0, p0, Lcom/hzbhd/midwareproxy/hardware/T3Q_MR1_HardwarePlatform;

    if-eqz p0, :cond_1

    :cond_0
    const/16 p0, 0x50

    const/16 v1, 0xfa

    .line 18
    invoke-virtual {p1, p0, v0, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 20
    :cond_1
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static showShortTextBottom(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 25
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
