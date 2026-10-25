.class Lcom/hzbhd/bluetooth/neon/NeonKit$3;
.super Ljava/lang/Object;
.source "NeonKit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/bluetooth/neon/NeonKit;->startSms(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field cbOk:Z

.field notified:Z

.field final synthetic val$cb:Lnfore/android/bt/servicemanager/UiMapCallback$Stub;


# direct methods
.method constructor <init>(Lnfore/android/bt/servicemanager/UiMapCallback$Stub;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 213
    iput-object p1, p0, Lcom/hzbhd/bluetooth/neon/NeonKit$3;->val$cb:Lnfore/android/bt/servicemanager/UiMapCallback$Stub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 219
    :try_start_0
    invoke-static {}, Lcom/hzbhd/bluetooth/neon/NeonKit;->svc()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v0

    .line 220
    if-eqz v0, :cond_2

    .line 221
    iget-boolean v1, p0, Lcom/hzbhd/bluetooth/neon/NeonKit$3;->cbOk:Z

    if-nez v1, :cond_0

    .line 222
    iget-object v1, p0, Lcom/hzbhd/bluetooth/neon/NeonKit$3;->val$cb:Lnfore/android/bt/servicemanager/UiMapCallback$Stub;

    invoke-interface {v0, v1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->registerMapCallback(Lnfore/android/bt/servicemanager/UiMapCallback;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/hzbhd/bluetooth/neon/NeonKit$3;->cbOk:Z

    .line 224
    :cond_0
    invoke-interface {v0}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v1

    .line 225
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 226
    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqMapRegisterNotification(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hzbhd/bluetooth/neon/NeonKit$3;->notified:Z

    goto :goto_0

    .line 228
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hzbhd/bluetooth/neon/NeonKit$3;->notified:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    :cond_2
    :goto_0
    goto :goto_1

    .line 231
    :catchall_0
    move-exception v0

    .line 233
    :goto_1
    invoke-static {}, Lcom/hzbhd/bluetooth/neon/NeonKit;->access$200()Landroid/os/Handler;

    move-result-object v0

    iget-boolean v1, p0, Lcom/hzbhd/bluetooth/neon/NeonKit$3;->notified:Z

    if-eqz v1, :cond_3

    const-wide/32 v1, 0xea60

    goto :goto_2

    :cond_3
    const-wide/16 v1, 0x1388

    :goto_2
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 234
    return-void
.end method
