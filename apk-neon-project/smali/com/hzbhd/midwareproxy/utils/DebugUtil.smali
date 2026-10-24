.class public Lcom/hzbhd/midwareproxy/utils/DebugUtil;
.super Ljava/lang/Object;
.source "DebugUtil.java"


# static fields
.field private static final P:I = 0x1c

.field private static final RESTART_SYSTEM:I = 0x5

.field static TAG:Ljava/lang/String;

.field static mDebugUtil:Lcom/hzbhd/midwareproxy/utils/DebugUtil;

.field private static password:Ljava/lang/String;

.field private static password1:Ljava/lang/String;

.field private static password2:Ljava/lang/String;

.field private static password3:Ljava/lang/String;

.field private static password5:Ljava/lang/String;


# instance fields
.field mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const-class v0, Lcom/hzbhd/midwareproxy/utils/DebugUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/midwareproxy/utils/DebugUtil;->TAG:Ljava/lang/String;

    const-string v0, "13829989726"

    .line 52
    sput-object v0, Lcom/hzbhd/midwareproxy/utils/DebugUtil;->password:Ljava/lang/String;

    const-string v0, "138299897261"

    .line 53
    sput-object v0, Lcom/hzbhd/midwareproxy/utils/DebugUtil;->password1:Ljava/lang/String;

    const-string v0, "138299897262"

    .line 54
    sput-object v0, Lcom/hzbhd/midwareproxy/utils/DebugUtil;->password2:Ljava/lang/String;

    const-string v0, "138299897263"

    .line 55
    sput-object v0, Lcom/hzbhd/midwareproxy/utils/DebugUtil;->password3:Ljava/lang/String;

    const-string v0, "138299897265"

    .line 56
    sput-object v0, Lcom/hzbhd/midwareproxy/utils/DebugUtil;->password5:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    new-instance v0, Lcom/hzbhd/midwareproxy/utils/DebugUtil$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/hzbhd/midwareproxy/utils/DebugUtil$2;-><init>(Lcom/hzbhd/midwareproxy/utils/DebugUtil;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/utils/DebugUtil;->mHandler:Landroid/os/Handler;

    .line 62
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/utils/DebugUtil;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/utils/DebugUtil;
    .locals 2

    const-class v0, Lcom/hzbhd/midwareproxy/utils/DebugUtil;

    monitor-enter v0

    .line 66
    :try_start_0
    sget-object v1, Lcom/hzbhd/midwareproxy/utils/DebugUtil;->mDebugUtil:Lcom/hzbhd/midwareproxy/utils/DebugUtil;

    if-nez v1, :cond_0

    .line 67
    new-instance v1, Lcom/hzbhd/midwareproxy/utils/DebugUtil;

    invoke-direct {v1, p0}, Lcom/hzbhd/midwareproxy/utils/DebugUtil;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/hzbhd/midwareproxy/utils/DebugUtil;->mDebugUtil:Lcom/hzbhd/midwareproxy/utils/DebugUtil;

    .line 69
    :cond_0
    sget-object p0, Lcom/hzbhd/midwareproxy/utils/DebugUtil;->mDebugUtil:Lcom/hzbhd/midwareproxy/utils/DebugUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static startActivity(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 1

    .line 189
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 190
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 191
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 192
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 194
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public SwitchToDebugDialog(Ljava/lang/String;)V
    .locals 1

    .line 146
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/DebugUtil;->password:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/hzbhd/midwareproxy/utils/DebugUtil;->password2:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 149
    :cond_0
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/DebugUtil;->password1:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    .line 151
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/utils/DebugUtil;->setUsbMode(I)V

    goto :goto_1

    .line 152
    :cond_1
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/DebugUtil;->password3:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 154
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/utils/DebugUtil;->invokeshell()Z

    goto :goto_1

    .line 155
    :cond_2
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/DebugUtil;->password5:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 157
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/utils/DebugUtil;->invokeshellApk()Z

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    .line 148
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/utils/DebugUtil;->setUsbMode(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public invokeshell()Z
    .locals 2

    .line 176
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/DebugUtil;->TAG:Ljava/lang/String;

    const-string v1, "invokeshell"

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "persist.service.hzbhd.wifiadb"

    const-string/jumbo v1, "wifi_adb"

    .line 177
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ctl.start"

    const-string/jumbo v1, "wifi_adb_invoke"

    .line 178
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public invokeshellApk()Z
    .locals 2

    .line 182
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/DebugUtil;->TAG:Ljava/lang/String;

    const-string v1, "invokeshellApk"

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/utils/DebugUtil;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/hzbhd/midware/constant/HzbhdComponentName;->shell:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/DebugUtil;->startActivity(Landroid/content/Context;Landroid/content/ComponentName;)V

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic lambda$reBootSystemDialog$0$DebugUtil(Landroid/view/WindowManager;Landroid/widget/LinearLayout;Landroid/view/View;)V
    .locals 1

    .line 136
    iget-object p3, p0, Lcom/hzbhd/midwareproxy/utils/DebugUtil;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x5

    invoke-virtual {p3, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 137
    invoke-interface {p1, p2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public reBootSystemDialog(Landroid/content/Context;)V
    .locals 6

    const-string/jumbo v0, "window"

    .line 106
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 107
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 110
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v3, 0xc8

    .line 111
    invoke-static {p1, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v3, 0x1f4

    .line 112
    invoke-static {p1, v3}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v3, -0x3

    .line 113
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v3, 0x7da

    .line 114
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x20

    .line 115
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v3, 0x11

    .line 116
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const-string v4, "#000000"

    .line 120
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 121
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v3, 0x1

    .line 122
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 123
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string/jumbo v5, "\u7cfb\u7edf\u5c06\u4e8e5\u79d2\u540e\u91cd\u542f!"

    .line 124
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v5, "#FFFFFF"

    .line 125
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v5, 0x420c0000    # 35.0f

    .line 126
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v5, 0x0

    .line 127
    invoke-virtual {v1, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 130
    new-instance v4, Landroid/widget/Button;

    invoke-direct {v4, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string/jumbo v5, "\u7a0d\u540e\u624b\u52a8\u91cd\u542f"

    .line 131
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/high16 v5, 0x41f00000    # 30.0f

    .line 132
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextSize(F)V

    const/16 v5, 0x12c

    .line 133
    invoke-static {p1, v5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setWidth(I)V

    const/16 v5, 0xfa

    .line 134
    invoke-static {p1, v5}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIntFronmDimen(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v4, p1}, Landroid/widget/Button;->setHeight(I)V

    .line 135
    new-instance p1, Lcom/hzbhd/midwareproxy/utils/-$$Lambda$DebugUtil$le2kGa49pQHgJMHFaEDrb4csqic;

    invoke-direct {p1, p0, v0, v1}, Lcom/hzbhd/midwareproxy/utils/-$$Lambda$DebugUtil$le2kGa49pQHgJMHFaEDrb4csqic;-><init>(Lcom/hzbhd/midwareproxy/utils/DebugUtil;Landroid/view/WindowManager;Landroid/widget/LinearLayout;)V

    invoke-virtual {v4, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    invoke-virtual {v1, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 140
    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/utils/DebugUtil;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 142
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/utils/DebugUtil;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public setUsbMode(I)V
    .locals 3

    .line 72
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/DebugUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/hzbhd/midwareproxy/utils/DebugUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ,setUsbMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object v0

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/utils/DebugUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->setUsbMode(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 75
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/utils/DebugUtil;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/utils/DebugUtil;->reBootSystemDialog(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public showInputDialog()V
    .locals 3

    .line 83
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/utils/DebugUtil;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 84
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-ne v1, v2, :cond_0

    const/high16 v1, -0x1000000

    .line 85
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 87
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/hzbhd/midwareproxy/utils/DebugUtil;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v2, "\u8bf7\u8f93\u5165\u5bc6\u7801"

    .line 89
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 90
    new-instance v2, Lcom/hzbhd/midwareproxy/utils/DebugUtil$1;

    invoke-direct {v2, p0, v0}, Lcom/hzbhd/midwareproxy/utils/DebugUtil$1;-><init>(Lcom/hzbhd/midwareproxy/utils/DebugUtil;Landroid/widget/EditText;)V

    const-string/jumbo v0, "\u786e\u5b9a"

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
