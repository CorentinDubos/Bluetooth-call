.class Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$8;
.super Ljava/lang/Thread;
.source "BTPhoneRepCanbus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->reportBtHangUpToCan(Landroid/content/Context;[BZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;

.field final synthetic val$mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;Landroid/content/Context;)V
    .locals 0

    .line 1770
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$8;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;

    iput-object p2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$8;->val$mContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "currentReportPrev"

    .line 1773
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    const-wide/16 v1, 0x40b

    .line 1775
    :try_start_0
    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/utils/ThreadUtils;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1778
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1780
    :goto_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    sget-object v2, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->SMALL_LCD_FUNCTION:Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getSharedBool(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1781
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$8;->val$mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "PowerIsOff"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 1782
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->getInstance()Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;

    move-result-object v1

    iget-object v3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$8;->val$mContext:Landroid/content/Context;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v3, v4, v5}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->reportLcdInforByeSource(Landroid/content/Context;J)V

    .line 1785
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$8;->val$mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1786
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$8;->val$mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1791
    :catch_1
    :cond_1
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$8;->val$mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "currentReport"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V

    .line 1793
    :try_start_2
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$8;->val$mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "reportAfterHangUp"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1794
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1795
    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->reportCanbusInfo([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_2
    return-void
.end method
