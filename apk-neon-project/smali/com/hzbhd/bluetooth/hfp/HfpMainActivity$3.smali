.class Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$3;
.super Lcom/hzbhd/bluetooth/BaseBluetoothHfpCallbackListener;
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

    .line 994
    iput-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$3;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-direct {p0}, Lcom/hzbhd/bluetooth/BaseBluetoothHfpCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onHfpActiveNumberChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHfpActiveNumberChanged address : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ; activeNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ; holdNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "HfpMainActivity"

    invoke-static {v0, p3}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    iget-object p3, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$3;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-static {p3}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->access$400(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)Lcom/hzbhd/bluetooth/call/CallFragment;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 1120
    iget-object p3, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$3;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-static {p3}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->access$400(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)Lcom/hzbhd/bluetooth/call/CallFragment;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/hzbhd/bluetooth/call/CallFragment;->setCallNumber(Ljava/lang/String;)V

    .line 1121
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1124
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1129
    :cond_1
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1130
    iget-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$3;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->inInCall()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1131
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getThreeWayCallNumber()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public onHfpCallStateChanged(Ljava/lang/String;II)V
    .locals 5

    .line 1149
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onHfpCallStateChanged State : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "HfpMainActivity"

    invoke-static {v1, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x64

    if-eq p3, p1, :cond_d

    const/16 p1, 0x6e

    if-eq p3, p1, :cond_c

    const/16 p1, 0x78

    if-eq p3, p1, :cond_b

    const/16 p1, 0x8c

    if-eq p3, p1, :cond_9

    const/16 p1, 0xa5

    const/16 v2, 0xc3

    if-eq p3, p1, :cond_7

    const/16 p1, 0xc8

    const/16 v3, 0xb4

    if-eq p3, v3, :cond_2

    if-eq p3, v2, :cond_1

    if-eq p3, p1, :cond_0

    goto/16 :goto_1

    :cond_0
    if-ne p2, v2, :cond_e

    .line 1230
    :try_start_0
    iget-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$3;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->access$400(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)Lcom/hzbhd/bluetooth/call/CallFragment;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 1231
    iget-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$3;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->access$400(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)Lcom/hzbhd/bluetooth/call/CallFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/call/CallFragment;->setActiveCallUI()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception p1

    .line 1234
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :cond_1
    if-ne p2, v3, :cond_e

    .line 1219
    :try_start_1
    iget-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$3;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->access$400(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)Lcom/hzbhd/bluetooth/call/CallFragment;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 1220
    iget-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$3;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->access$400(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)Lcom/hzbhd/bluetooth/call/CallFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/call/CallFragment;->set3WayIncomingCallUI()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception p1

    .line 1223
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 1164
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$3;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-static {v3}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->access$400(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)Lcom/hzbhd/bluetooth/call/CallFragment;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1165
    iget-object v3, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$3;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-static {v3}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->access$400(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)Lcom/hzbhd/bluetooth/call/CallFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hzbhd/bluetooth/call/CallFragment;->setActiveCallUI()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v3

    .line 1168
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1170
    :cond_3
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onHfpCallStateChanged  State : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ne p2, v2, :cond_5

    .line 1172
    iget-object p3, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$3;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-static {p3}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->access$400(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)Lcom/hzbhd/bluetooth/call/CallFragment;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 1173
    iget-object p3, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$3;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-static {p3}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->access$400(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)Lcom/hzbhd/bluetooth/call/CallFragment;

    move-result-object p3

    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getCurrentCallNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/hzbhd/bluetooth/call/CallFragment;->setCallNumber(Ljava/lang/String;)V

    .line 1175
    :cond_4
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getCurrentCallNumber()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    :cond_5
    if-ne p2, p1, :cond_e

    .line 1181
    iget-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$3;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->access$400(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)Lcom/hzbhd/bluetooth/call/CallFragment;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 1182
    iget-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$3;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->access$400(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)Lcom/hzbhd/bluetooth/call/CallFragment;

    move-result-object p1

    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getThreeWayCallNumber()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/hzbhd/bluetooth/call/CallFragment;->setCallNumber(Ljava/lang/String;)V

    .line 1184
    :cond_6
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getThreeWayCallNumber()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    goto/16 :goto_1

    :cond_7
    if-ne p2, v2, :cond_e

    .line 1193
    iget-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$3;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->access$400(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)Lcom/hzbhd/bluetooth/call/CallFragment;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 1194
    iget-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$3;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->access$400(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)Lcom/hzbhd/bluetooth/call/CallFragment;

    move-result-object p1

    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getThreeWayCallNumber()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/hzbhd/bluetooth/call/CallFragment;->setCallNumber(Ljava/lang/String;)V

    .line 1196
    :cond_8
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getThreeWayCallNumber()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    goto :goto_1

    .line 1152
    :cond_9
    iget-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$3;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->access$400(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)Lcom/hzbhd/bluetooth/call/CallFragment;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 1153
    iget-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$3;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->access$400(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)Lcom/hzbhd/bluetooth/call/CallFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/call/CallFragment;->setEndCallUI()V

    goto :goto_1

    .line 1154
    :cond_a
    iget-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$3;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->access$500(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 1156
    :try_start_3
    iget-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$3;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->afterCallShowView()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_3
    move-exception p1

    .line 1158
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1207
    :cond_b
    iget-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$3;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->access$400(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)Lcom/hzbhd/bluetooth/call/CallFragment;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 1208
    iget-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$3;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->access$400(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)Lcom/hzbhd/bluetooth/call/CallFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/call/CallFragment;->setEndCallUI()V

    goto :goto_1

    .line 1202
    :cond_c
    iget-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$3;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->access$400(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)Lcom/hzbhd/bluetooth/call/CallFragment;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 1203
    iget-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$3;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->access$400(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)Lcom/hzbhd/bluetooth/call/CallFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/call/CallFragment;->setEndCallUI()V

    goto :goto_1

    .line 1212
    :cond_d
    iget-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$3;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->access$400(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)Lcom/hzbhd/bluetooth/call/CallFragment;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 1213
    iget-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$3;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->access$400(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)Lcom/hzbhd/bluetooth/call/CallFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/call/CallFragment;->setEndCallUI()V

    :cond_e
    :goto_1
    return-void
.end method

.method public onHfpErrorResponse(Ljava/lang/String;Lnfore/android/bt/servicemanager/HfpErrorInfo;)V
    .locals 1

    .line 1058
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onHfpErrorResponse address : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HfpMainActivity"

    invoke-static {p2, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onHfpIncomingCallNumber(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1072
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHfpIncomingCallNumber address : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ; callNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HfpMainActivity"

    invoke-static {v1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    iget-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$3;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->access$400(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)Lcom/hzbhd/bluetooth/call/CallFragment;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1074
    iget-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$3;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-virtual {v0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->inInCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1075
    iget-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$3;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->access$400(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)Lcom/hzbhd/bluetooth/call/CallFragment;

    move-result-object v0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/hzbhd/bluetooth/call/CallFragment;->setSecondCallInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1077
    :cond_1
    iget-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$3;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->access$600(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)V

    .line 1078
    iget-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$3;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->access$400(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)Lcom/hzbhd/bluetooth/call/CallFragment;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/hzbhd/bluetooth/call/CallFragment;->setCallNumber(Ljava/lang/String;)V

    .line 1079
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 1082
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public onHfpMicSelectionChanged(Ljava/lang/String;II)V
    .locals 1

    .line 1269
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onHfpMicSelectionChanged State : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " -> "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HfpMainActivity"

    invoke-static {p2, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onHfpMicVolumeChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1113
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onHfpMicVolumeChanged address : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ; newVolume="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HfpMainActivity"

    invoke-static {p2, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onHfpMuteStateChanged(Ljava/lang/String;II)V
    .locals 3

    .line 1245
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onHfpMuteStateChanged State : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HfpMainActivity"

    invoke-static {v0, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x6e

    const/16 v0, 0x8c

    if-lt p3, v0, :cond_1

    if-gt p2, p1, :cond_1

    .line 1248
    :try_start_0
    iget-object v1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$3;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-static {v1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->access$400(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)Lcom/hzbhd/bluetooth/call/CallFragment;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$3;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-static {v1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->access$400(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)Lcom/hzbhd/bluetooth/call/CallFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/bluetooth/call/CallFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1249
    iget-object v1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$3;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-static {v1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->access$400(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)Lcom/hzbhd/bluetooth/call/CallFragment;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/hzbhd/bluetooth/call/CallFragment;->setMuteState(Z)V

    .line 1251
    :cond_0
    iget-object v1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$3;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-static {v1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->access$500(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$3;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-static {v1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->access$500(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1252
    iget-object v1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$3;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-static {v1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->access$500(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->setMuteState(Z)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    if-gt p3, p1, :cond_3

    if-lt p2, v0, :cond_3

    .line 1255
    iget-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$3;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->access$400(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)Lcom/hzbhd/bluetooth/call/CallFragment;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$3;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->access$400(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)Lcom/hzbhd/bluetooth/call/CallFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/call/CallFragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1256
    iget-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$3;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->access$400(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)Lcom/hzbhd/bluetooth/call/CallFragment;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/hzbhd/bluetooth/call/CallFragment;->setMuteState(Z)V

    .line 1258
    :cond_2
    iget-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$3;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->access$500(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$3;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->access$500(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1259
    iget-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$3;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->access$500(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->setMuteState(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1262
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method

.method public onHfpOutgoingCallNumber(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1092
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHfpOutgoingCallNumber address : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ; callNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HfpMainActivity"

    invoke-static {v1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    iget-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$3;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->access$400(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)Lcom/hzbhd/bluetooth/call/CallFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1094
    iget-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$3;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->access$600(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)V

    .line 1095
    iget-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$3;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->access$400(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)Lcom/hzbhd/bluetooth/call/CallFragment;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/hzbhd/bluetooth/call/CallFragment;->setCallNumber(Ljava/lang/String;)V

    .line 1096
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1099
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onHfpRemoteDeviceSignalStatusChanged(Ljava/lang/String;IIII)V
    .locals 0

    .line 1067
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onHfpRemoteDeviceSignalStatusChanged address : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HfpMainActivity"

    invoke-static {p2, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onHfpScoStateChanged(Ljava/lang/String;II)V
    .locals 1

    .line 1039
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onHfpScoStateChanged State : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " -> "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HfpMainActivity"

    invoke-static {p2, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x8c

    if-ne p3, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1045
    :goto_0
    :try_start_0
    iget-object p2, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$3;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-static {p2}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->access$400(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)Lcom/hzbhd/bluetooth/call/CallFragment;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 1046
    iget-object p2, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$3;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-static {p2}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->access$400(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)Lcom/hzbhd/bluetooth/call/CallFragment;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/hzbhd/bluetooth/call/CallFragment;->setCallAudioState(I)V

    .line 1049
    :cond_1
    iget-object p2, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$3;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-static {p2}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->access$500(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 1050
    iget-object p2, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$3;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-static {p2}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->access$500(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->setCallAudioState(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1053
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onHfpSpeakerVolumeChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1108
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onHfpSpeakerVolumeChanged address : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ; newVolume="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HfpMainActivity"

    invoke-static {p2, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onHfpStateChanged(Ljava/lang/String;II)V
    .locals 7

    .line 997
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onHfpStateChanged State : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HfpMainActivity"

    invoke-static {v0, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 v0, 0x7

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/16 v4, 0x8c

    const/4 v5, 0x2

    if-ge p3, v4, :cond_pbap_keep

    const/4 v6, 0x0

    sput-object v6, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->sLastPbapAddress:Ljava/lang/String;

    :cond_pbap_keep
    if-lt p3, v4, :cond_1

    .line 999
    iget-object p2, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$3;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-virtual {p2}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->dismissProgressDialog()V

    .line 1000
    iget-object p2, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$3;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    iget p2, p2, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->currentFragmentIndex:I

    if-eq p2, v2, :cond_0

    iget-object p2, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$3;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    iget p2, p2, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->currentFragmentIndex:I

    if-eq p2, v1, :cond_0

    iget-object p2, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$3;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    iget p2, p2, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->currentFragmentIndex:I

    if-eq p2, v5, :cond_0

    iget-object p2, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$3;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    iget p2, p2, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->currentFragmentIndex:I

    if-eq p2, v0, :cond_0

    .line 1004
    iget-object p2, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$3;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-virtual {p2, p1, v5}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->showFragment(ZI)V

    goto/16 :goto_2

    .line 1005
    :cond_0
    iget-object p2, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$3;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    iget p2, p2, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->currentFragmentIndex:I

    if-nez p2, :cond_5

    .line 1006
    iget-object p2, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$3;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    iget-object p2, p2, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mPairedListFragment:Lcom/hzbhd/bluetooth/paired/PairedListFragment;

    if-eqz p2, :cond_5

    .line 1007
    iget-object p2, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$3;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    iget-object p2, p2, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mPairedListFragment:Lcom/hzbhd/bluetooth/paired/PairedListFragment;

    invoke-virtual {p2}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->showPairList()V

    goto :goto_2

    .line 1011
    :cond_1
    iget-object v6, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$3;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    iget v6, v6, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->currentFragmentIndex:I

    if-eq v6, v2, :cond_3

    iget-object v2, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$3;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    iget v2, v2, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->currentFragmentIndex:I

    if-eq v2, v1, :cond_3

    iget-object v1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$3;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    iget v1, v1, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->currentFragmentIndex:I

    if-eq v1, v5, :cond_3

    iget-object v1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$3;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    iget v1, v1, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->currentFragmentIndex:I

    if-eq v1, v0, :cond_3

    iget-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$3;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    iget v0, v0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->currentFragmentIndex:I

    if-ne v0, v5, :cond_2

    goto :goto_0

    .line 1017
    :cond_2
    iget-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$3;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    iget v0, v0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->currentFragmentIndex:I

    if-nez v0, :cond_4

    .line 1018
    iget-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$3;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    iget-object v0, v0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mPairedListFragment:Lcom/hzbhd/bluetooth/paired/PairedListFragment;

    if-eqz v0, :cond_4

    if-lt p2, v4, :cond_4

    .line 1021
    iget-object p2, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$3;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    iget-object p2, p2, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->mPairedListFragment:Lcom/hzbhd/bluetooth/paired/PairedListFragment;

    invoke-virtual {p2}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->showPairList()V

    .line 1022
    iget-object p2, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$3;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-static {p2}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->access$200(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)V

    goto :goto_1

    .line 1016
    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$3;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-virtual {p2, v3, v3}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->showFragment(ZI)V

    :cond_4
    :goto_1
    const p2, 0x7f040014

    .line 1027
    invoke-static {p2}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result p2

    iget-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$3;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-virtual {v0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-ne p2, v0, :cond_5

    .line 1028
    iget-object p2, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$3;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    iget p2, p2, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->currentFragmentIndex:I

    const/4 v0, 0x5

    if-ne p2, v0, :cond_5

    .line 1029
    iget-object p2, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$3;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-virtual {p2}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->showPairedFrament()V

    .line 1030
    iget-object p2, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$3;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-static {p2}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->access$200(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)V

    .line 1035
    :cond_5
    :goto_2
    iget-object p2, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$3;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    if-lt p3, v4, :cond_6

    goto :goto_3

    :cond_6
    move p1, v3

    :goto_3
    invoke-static {p2, p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->access$300(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;Z)V

    return-void
.end method

.method public onHfpVoiceControlStateChanged(Ljava/lang/String;Z)V
    .locals 2

    .line 1144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHfpVoiceControlStateChanged address : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ; isVoiceControlOn="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HfpMainActivity"

    invoke-static {p2, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public retHfpRemoteDeviceInfo(Ljava/lang/String;Lnfore/android/bt/servicemanager/HfpStatusInfo;)V
    .locals 1

    .line 1062
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "retHfpRemoteDeviceInfo address : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HfpMainActivity"

    invoke-static {p2, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
