.class Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$4;
.super Lcom/hzbhd/bluetooth/BaseBluetoothPbapCallbackListener;
.source "HfpMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;


# direct methods
.method constructor <init>(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)V
    .locals 0

    .line 1294
    iput-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$4;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-direct {p0}, Lcom/hzbhd/bluetooth/BaseBluetoothPbapCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPbapStateChanged(Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 8

    .line 1299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPbapStateChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " deviceName : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " State : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " reason : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " itemCounts : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HfpMainActivity"

    invoke-static {p2, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    const/16 v0, 0x7d0

    const/16 v1, 0x270f

    const/16 v2, 0x8

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-eq p5, p1, :cond_6

    const/4 p1, 0x2

    const v7, 0x7f0d0231

    if-eq p5, p1, :cond_5

    if-eq p5, v5, :cond_4

    if-eq p5, v4, :cond_2

    if-eq p5, v3, :cond_2

    if-eq p5, v2, :cond_0

    goto :goto_0

    .line 1321
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$4;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    iget-object p1, p1, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mSettingsFragment:Lcom/hzbhd/bluetooth/settings/SettingsFragment;

    if-eqz p1, :cond_1

    .line 1322
    iget-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$4;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    iget-object p1, p1, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mSettingsFragment:Lcom/hzbhd/bluetooth/settings/SettingsFragment;

    invoke-virtual {p1, v6}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->updateSettingItems(Z)V

    .line 1324
    :cond_1
    iget-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$4;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->dismissProgressDialog()V

    const-string p1, "----onPbapStateChanged() cancel download phone book----"

    .line 1325
    invoke-static {p2, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-ne p6, v1, :cond_3

    .line 1332
    iget-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$4;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->dismissProgressDialog()V

    goto :goto_0

    :cond_3
    const p1, 0x1869f

    if-ne p6, p1, :cond_8

    .line 1334
    iget-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$4;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->dismissProgressDialog()V

    .line 1335
    iget-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$4;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    const p5, 0x7f0d01f3

    invoke-virtual {p1, p5, v0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->showPopupInfoDialog(II)V

    goto :goto_0

    .line 1315
    :cond_4
    iget-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$4;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-virtual {p1, v7, v6}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->showProgressDialog(II)V

    goto :goto_0

    .line 1318
    :cond_5
    iget-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$4;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-virtual {p1, v7, v6}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->showProgressDialog(II)V

    goto :goto_0

    :cond_6
    if-ne p6, v1, :cond_7

    .line 1303
    iget-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$4;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->dismissProgressDialog()V

    .line 1304
    iget-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$4;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    const p5, 0x7f0d01f2

    invoke-virtual {p1, p5, v0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->showPopupInfoDialog(II)V

    .line 1305
    iget-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$4;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    iget-object p1, p1, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mSettingsFragment:Lcom/hzbhd/bluetooth/settings/SettingsFragment;

    if-eqz p1, :cond_8

    .line 1306
    iget-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$4;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    iget-object p1, p1, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mSettingsFragment:Lcom/hzbhd/bluetooth/settings/SettingsFragment;

    invoke-virtual {p1, v6}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->updateSettingItems(Z)V

    goto :goto_0

    .line 1309
    :cond_7
    iget-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$4;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    iget-object p1, p1, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mSettingsFragment:Lcom/hzbhd/bluetooth/settings/SettingsFragment;

    if-eqz p1, :cond_8

    .line 1310
    iget-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$4;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    iget-object p1, p1, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mSettingsFragment:Lcom/hzbhd/bluetooth/settings/SettingsFragment;

    invoke-virtual {p1, v6}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->updateSettingItems(Z)V

    :cond_8
    :goto_0
    const/16 p1, 0x8c

    if-lt p3, p1, :cond_b

    const/16 p1, 0x6e

    if-gt p4, p1, :cond_b

    .line 1343
    iget-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$4;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->access$700(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)Lcom/hzbhd/bluetooth/calllog/CallLogFragment;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 1344
    iget-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$4;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->access$700(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)Lcom/hzbhd/bluetooth/calllog/CallLogFragment;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->setLoadMsgVisibility(I)V

    .line 1346
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "----onPbapStateChanged itemCounts="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eq p6, v5, :cond_a

    const/4 p1, 0x4

    if-eq p6, p1, :cond_a

    if-eq p6, v4, :cond_a

    if-eq p6, v3, :cond_a

    goto :goto_1

    .line 1352
    :cond_a
    iget-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$4;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->access$700(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)Lcom/hzbhd/bluetooth/calllog/CallLogFragment;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 1353
    iget-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$4;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->access$700(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)Lcom/hzbhd/bluetooth/calllog/CallLogFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->startAllCallsQuery()V

    :cond_b
    :goto_1
    return-void
.end method
