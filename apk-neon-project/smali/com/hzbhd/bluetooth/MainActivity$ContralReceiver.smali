.class Lcom/hzbhd/bluetooth/MainActivity$ContralReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/bluetooth/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ContralReceiver"
.end annotation


# instance fields
.field SYSTEM_HOME_KEY:Ljava/lang/String;

.field SYSTEM_HOME_KEY_LONG:Ljava/lang/String;

.field SYSTEM_REASON:Ljava/lang/String;

.field final synthetic this$0:Lcom/hzbhd/bluetooth/MainActivity;


# direct methods
.method constructor <init>(Lcom/hzbhd/bluetooth/MainActivity;)V
    .locals 0

    .line 346
    iput-object p1, p0, Lcom/hzbhd/bluetooth/MainActivity$ContralReceiver;->this$0:Lcom/hzbhd/bluetooth/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string p1, "reason"

    .line 347
    iput-object p1, p0, Lcom/hzbhd/bluetooth/MainActivity$ContralReceiver;->SYSTEM_REASON:Ljava/lang/String;

    const-string p1, "homekey"

    .line 348
    iput-object p1, p0, Lcom/hzbhd/bluetooth/MainActivity$ContralReceiver;->SYSTEM_HOME_KEY:Ljava/lang/String;

    const-string p1, "recentapps"

    .line 349
    iput-object p1, p0, Lcom/hzbhd/bluetooth/MainActivity$ContralReceiver;->SYSTEM_HOME_KEY_LONG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 352
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "BtMainActivity"

    if-eqz p1, :cond_1

    .line 353
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-------onReceive()----- action="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    iget-object p1, p0, Lcom/hzbhd/bluetooth/MainActivity$ContralReceiver;->SYSTEM_REASON:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 355
    iget-object p2, p0, Lcom/hzbhd/bluetooth/MainActivity$ContralReceiver;->SYSTEM_HOME_KEY:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p1, "-------closeActivity()--------"

    .line 357
    invoke-static {v0, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-object p1, p0, Lcom/hzbhd/bluetooth/MainActivity$ContralReceiver;->this$0:Lcom/hzbhd/bluetooth/MainActivity;

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/MainActivity;->closeActivity()V

    goto/16 :goto_0

    .line 359
    :cond_0
    iget-object p2, p0, Lcom/hzbhd/bluetooth/MainActivity$ContralReceiver;->SYSTEM_HOME_KEY_LONG:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    goto/16 :goto_0

    .line 362
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.hzbhd.action.sourceUIfinish"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 363
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string p2, "finishedSourceID"

    .line 365
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "BTPHONE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 366
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "BTUIPHONE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 367
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "IMODE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 368
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----CALL finishedSourceID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iget-object v1, p0, Lcom/hzbhd/bluetooth/MainActivity$ContralReceiver;->this$0:Lcom/hzbhd/bluetooth/MainActivity;

    instance-of v2, v1, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    if-eqz v2, :cond_3

    .line 370
    invoke-virtual {v1}, Lcom/hzbhd/bluetooth/MainActivity;->closeActivity()V

    .line 374
    :cond_3
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "BTUIAUDIO"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "BTAUDIO"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 375
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-------A2DP finishedSourceID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    iget-object p1, p0, Lcom/hzbhd/bluetooth/MainActivity$ContralReceiver;->this$0:Lcom/hzbhd/bluetooth/MainActivity;

    instance-of p2, p1, Lcom/hzbhd/bluetooth/a2dp/A2dpMainActivity;

    if-eqz p2, :cond_5

    .line 377
    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/MainActivity;->closeActivity()V

    :cond_5
    :goto_0
    return-void
.end method
