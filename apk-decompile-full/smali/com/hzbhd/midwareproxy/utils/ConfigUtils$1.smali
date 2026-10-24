.class Lcom/hzbhd/midwareproxy/utils/ConfigUtils$1;
.super Ljava/lang/Object;
.source "ConfigUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/utils/ConfigUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/midwareproxy/utils/ConfigUtils;


# direct methods
.method constructor <init>(Lcom/hzbhd/midwareproxy/utils/ConfigUtils;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/utils/ConfigUtils$1;->this$0:Lcom/hzbhd/midwareproxy/utils/ConfigUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x1

    .line 118
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/ConfigUtils;->access$002(Z)Z

    .line 119
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/hzbhd/midwareproxy/utils/ConfigUtils;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "android_config"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v2

    sget-object v3, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->VERSION:Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;

    invoke-virtual {v3}, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getSharedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 122
    :try_start_0
    sget-object v2, Lcom/hzbhd/midwareproxy/utils/ConfigUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "00 exportAndroidConfigFile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/hzbhd/midwareproxy/utils/ConfigUtils;->access$100()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/utils/ConfigUtils$1;->this$0:Lcom/hzbhd/midwareproxy/utils/ConfigUtils;

    invoke-virtual {v2, v0}, Lcom/hzbhd/midwareproxy/utils/ConfigUtils;->exportConfigZip(Ljava/io/File;)V

    .line 124
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/utils/ConfigUtils$1;->this$0:Lcom/hzbhd/midwareproxy/utils/ConfigUtils;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/ConfigUtils;->access$200(Lcom/hzbhd/midwareproxy/utils/ConfigUtils;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 125
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/ConfigUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "11 exportAndroidConfigFile "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/hzbhd/midwareproxy/utils/ConfigUtils;->access$100()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 127
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 128
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/utils/ConfigUtils$1;->this$0:Lcom/hzbhd/midwareproxy/utils/ConfigUtils;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/ConfigUtils;->access$200(Lcom/hzbhd/midwareproxy/utils/ConfigUtils;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 129
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/ConfigUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "22 exportAndroidConfigFile "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/hzbhd/midwareproxy/utils/ConfigUtils;->access$100()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :goto_0
    invoke-static {v1}, Lcom/hzbhd/midwareproxy/utils/ConfigUtils;->access$002(Z)Z

    return-void
.end method
