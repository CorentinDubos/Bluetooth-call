.class public Lcom/autochips/bluetooth/pbapclient/BluetoothAuthenticating;
.super Lcom/android/internal/app/AlertActivity;
.source "BluetoothAuthenticating.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final ACTION_CANCEL:Ljava/lang/String; = "com.autochips.bluetooth.extra.action_cancel"

.field public static final ACTION_RETURN:Ljava/lang/String; = "com.autochips.bluetooth.extra.action_return"

.field public static final AUTHENTICATE_RESULT:Ljava/lang/String; = "com.autochips.bluetooth.extra.authenticate_result"

.field public static final AUTHETICATE_CODE:Ljava/lang/String; = "com.autochips.bluetooth.extra.autheticate_code"

.field private static final AUTHETICATE_TIMEOUT_IND:I = 0x65

.field public static final DEVICE_NAME:Ljava/lang/String; = "com.autochips.bluetooth.extra.device_name"

.field public static final RESULT_CANCEL:I = 0x3

.field public static final RESULT_OTHERS:I = 0x5

.field public static final RESULT_TIMEOUT:I = 0x4

.field public static final RESULT_USER_ACCEPT:I = 0x1

.field public static final RESULT_USER_REJECT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BluetoothAuthenticating"

.field public static final TIMEOUT_VALUE:Ljava/lang/String; = "com.autochips.bluetooth.extra.timeout_value"


# instance fields
.field private mCancelFilter:Landroid/content/IntentFilter;

.field private mCancelReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mPara:Lcom/android/internal/app/AlertController$AlertParams;

.field private mPasscodeEdit:Landroid/widget/EditText;

.field private mResultSent:Z

.field private mReturnAction:Ljava/lang/String;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothAuthenticating;->mView:Landroid/view/View;

    .line 68
    iput-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothAuthenticating;->mCancelFilter:Landroid/content/IntentFilter;

    .line 69
    iput-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothAuthenticating;->mReturnAction:Ljava/lang/String;

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothAuthenticating;->mResultSent:Z

    .line 95
    new-instance v0, Lcom/autochips/bluetooth/pbapclient/BluetoothAuthenticating$1;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/pbapclient/BluetoothAuthenticating$1;-><init>(Lcom/autochips/bluetooth/pbapclient/BluetoothAuthenticating;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothAuthenticating;->mHandler:Landroid/os/Handler;

    .line 108
    new-instance v0, Lcom/autochips/bluetooth/pbapclient/BluetoothAuthenticating$2;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/pbapclient/BluetoothAuthenticating$2;-><init>(Lcom/autochips/bluetooth/pbapclient/BluetoothAuthenticating;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothAuthenticating;->mCancelReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/autochips/bluetooth/pbapclient/BluetoothAuthenticating;I)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/pbapclient/BluetoothAuthenticating;->sendResult(I)V

    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 2

    const-string v0, "BluetoothAuthenticating"

    const-string v1, "createView"

    .line 198
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method private sendResult(I)V
    .locals 2

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Authenticate : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothAuthenticating"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-boolean v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothAuthenticating;->mResultSent:Z

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothAuthenticating;->mReturnAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.autochips.bluetooth.extra.authenticate_result"

    .line 121
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 122
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothAuthenticating;->mPasscodeEdit:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.autochips.bluetooth.extra.autheticate_code"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothAuthenticating;->sendBroadcast(Landroid/content/Intent;)V

    const/4 p1, 0x1

    .line 124
    iput-boolean p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothAuthenticating;->mResultSent:Z

    :cond_0
    return-void
.end method

.method private setUpDialog()V
    .locals 2

    const-string v0, "BluetoothAuthenticating"

    const-string/jumbo v1, "setUpDialog"

    .line 180
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string p1, "BluetoothAuthenticating"

    const-string v0, "onClick"

    .line 208
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    const-string p2, "positive button"

    .line 211
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object p2, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothAuthenticating;->mPasscodeEdit:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_0

    const/4 p1, 0x1

    .line 213
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/pbapclient/BluetoothAuthenticating;->sendResult(I)V

    goto :goto_0

    :cond_0
    const-string p2, "passcode is null"

    .line 215
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothAuthenticating;->sendResult(I)V

    goto :goto_0

    :cond_1
    const/4 v1, -0x2

    if-ne p2, v1, :cond_2

    const-string p2, "negative button"

    .line 220
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothAuthenticating;->sendResult(I)V

    .line 223
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/autochips/bluetooth/pbapclient/BluetoothAuthenticating;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "BluetoothAuthenticating"

    const-string v1, "OnCreate"

    .line 130
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 133
    invoke-virtual {p0}, Lcom/autochips/bluetooth/pbapclient/BluetoothAuthenticating;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.autochips.bluetooth.extra.action_cancel"

    .line 136
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.autochips.bluetooth.extra.action_return"

    .line 137
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothAuthenticating;->mReturnAction:Ljava/lang/String;

    const-string v2, "com.autochips.bluetooth.extra.timeout_value"

    const/4 v3, -0x1

    .line 138
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eqz v1, :cond_0

    .line 140
    new-instance v1, Landroid/content/IntentFilter;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothAuthenticating;->mCancelFilter:Landroid/content/IntentFilter;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 142
    iput-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothAuthenticating;->mCancelFilter:Landroid/content/IntentFilter;

    .line 145
    :goto_0
    invoke-direct {p0}, Lcom/autochips/bluetooth/pbapclient/BluetoothAuthenticating;->setUpDialog()V

    if-lez v2, :cond_1

    .line 148
    iget-object p1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothAuthenticating;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x65

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    int-to-long v1, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "BluetoothAuthenticating"

    const-string v1, "onDestroy()"

    .line 163
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    return-void
.end method

.method protected onStart()V
    .locals 2

    const-string v0, "BluetoothAuthenticating"

    const-string v1, "onStart"

    .line 153
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStart()V

    .line 155
    iget-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothAuthenticating;->mCancelFilter:Landroid/content/IntentFilter;

    if-eqz v0, :cond_0

    .line 156
    iget-object v1, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothAuthenticating;->mCancelReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothAuthenticating;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    const-string v0, "BluetoothAuthenticating"

    const-string v1, "onStop()"

    .line 169
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothAuthenticating;->mCancelFilter:Landroid/content/IntentFilter;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/autochips/bluetooth/pbapclient/BluetoothAuthenticating;->mCancelReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothAuthenticating;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    const/4 v0, 0x5

    .line 174
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/pbapclient/BluetoothAuthenticating;->sendResult(I)V

    .line 175
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    return-void
.end method
