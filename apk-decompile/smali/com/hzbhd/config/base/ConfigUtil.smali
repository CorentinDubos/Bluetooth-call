.class public Lcom/hzbhd/config/base/ConfigUtil;
.super Ljava/lang/Object;
.source "ConfigUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/config/base/ConfigUtil$HARDWARD_PLATFORM_VESRION;
    }
.end annotation


# static fields
.field private static final CONFIG_CLASS_NAME:Ljava/lang/String; = "MyConfig"

.field private static final TAG:Ljava/lang/String; = "ConfigUtil"

.field private static sConfigUtil:Lcom/hzbhd/config/base/ConfigUtil;


# instance fields
.field private final BUILD_VERSION_CODES_N:I

.field private final BUILD_VERSION_CODES_N_MR1:I

.field private final BUILD_VERSION_CODES_O:I

.field private final BUILD_VERSION_CODES_O_MR1:I

.field private final BUILD_VERSION_CODES_P:I

.field private final BUILD_VERSION_CODES_Q:I

.field private final CHIPNAME_AC8257:Ljava/lang/String;

.field private final CHIPNAME_NULL:Ljava/lang/String;

.field private final CHIPNAME_RK3399:Ljava/lang/String;

.field private final CHIPNAME_T3:Ljava/lang/String;

.field private final CHIPNAME_T8:Ljava/lang/String;

.field private DeviceInfor:Ljava/lang/String;

.field private clientConfig:Lcom/hzbhd/config/base/Config;

.field private defaultConfig:Lcom/hzbhd/config/base/Config;

.field private deviceConfig:Lcom/hzbhd/config/base/Config;

.field private frameworkConfig:Lcom/hzbhd/config/base/Config;

.field private jarConfig:Lcom/hzbhd/config/base/Config;

.field private multiUiConfig:Lcom/hzbhd/config/base/Config;

.field private platformConfig:Lcom/hzbhd/config/base/Config;

.field private sBuildVersionSDK:I

.field private sCHIP_NAME:Ljava/lang/String;

.field private final sHARDWARD_PLATFORM_VESRION:Lcom/hzbhd/config/base/ConfigUtil$HARDWARD_PLATFORM_VESRION;

.field private uiConfig:Lcom/hzbhd/config/base/Config;


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "ro.product.model"

    .line 34
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hzbhd/config/base/ConfigUtil;->sCHIP_NAME:Ljava/lang/String;

    const-string/jumbo v0, "ro.build.version.sdk"

    const/16 v1, 0x19

    .line 35
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/hzbhd/config/base/ConfigUtil;->sBuildVersionSDK:I

    const-string v0, "NULL"

    .line 37
    iput-object v0, p0, Lcom/hzbhd/config/base/ConfigUtil;->CHIPNAME_NULL:Ljava/lang/String;

    const-string v0, "T3"

    .line 38
    iput-object v0, p0, Lcom/hzbhd/config/base/ConfigUtil;->CHIPNAME_T3:Ljava/lang/String;

    const-string v2, "T8"

    .line 39
    iput-object v2, p0, Lcom/hzbhd/config/base/ConfigUtil;->CHIPNAME_T8:Ljava/lang/String;

    const-string/jumbo v3, "rk3399"

    .line 40
    iput-object v3, p0, Lcom/hzbhd/config/base/ConfigUtil;->CHIPNAME_RK3399:Ljava/lang/String;

    const-string v4, "ac8257"

    .line 41
    iput-object v4, p0, Lcom/hzbhd/config/base/ConfigUtil;->CHIPNAME_AC8257:Ljava/lang/String;

    const/16 v5, 0x18

    .line 44
    iput v5, p0, Lcom/hzbhd/config/base/ConfigUtil;->BUILD_VERSION_CODES_N:I

    .line 45
    iput v1, p0, Lcom/hzbhd/config/base/ConfigUtil;->BUILD_VERSION_CODES_N_MR1:I

    const/16 v5, 0x1a

    .line 46
    iput v5, p0, Lcom/hzbhd/config/base/ConfigUtil;->BUILD_VERSION_CODES_O:I

    const/16 v5, 0x1b

    .line 47
    iput v5, p0, Lcom/hzbhd/config/base/ConfigUtil;->BUILD_VERSION_CODES_O_MR1:I

    const/16 v6, 0x1c

    .line 48
    iput v6, p0, Lcom/hzbhd/config/base/ConfigUtil;->BUILD_VERSION_CODES_P:I

    .line 59
    new-instance v7, Lcom/hzbhd/config/base/Config;

    invoke-direct {v7}, Lcom/hzbhd/config/base/Config;-><init>()V

    iput-object v7, p0, Lcom/hzbhd/config/base/ConfigUtil;->defaultConfig:Lcom/hzbhd/config/base/Config;

    const-string v7, "Get Device none"

    .line 145
    iput-object v7, p0, Lcom/hzbhd/config/base/ConfigUtil;->DeviceInfor:Ljava/lang/String;

    const/16 v7, 0x1d

    .line 174
    iput v7, p0, Lcom/hzbhd/config/base/ConfigUtil;->BUILD_VERSION_CODES_Q:I

    .line 179
    iget-object v8, p0, Lcom/hzbhd/config/base/ConfigUtil;->sCHIP_NAME:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget v8, p0, Lcom/hzbhd/config/base/ConfigUtil;->sBuildVersionSDK:I

    if-ne v8, v1, :cond_0

    .line 180
    sget-object v0, Lcom/hzbhd/config/base/ConfigUtil$HARDWARD_PLATFORM_VESRION;->T3N_MR1:Lcom/hzbhd/config/base/ConfigUtil$HARDWARD_PLATFORM_VESRION;

    iput-object v0, p0, Lcom/hzbhd/config/base/ConfigUtil;->sHARDWARD_PLATFORM_VESRION:Lcom/hzbhd/config/base/ConfigUtil$HARDWARD_PLATFORM_VESRION;

    goto/16 :goto_0

    .line 181
    :cond_0
    iget-object v1, p0, Lcom/hzbhd/config/base/ConfigUtil;->sCHIP_NAME:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/hzbhd/config/base/ConfigUtil;->sBuildVersionSDK:I

    if-ne v1, v5, :cond_1

    .line 182
    sget-object v0, Lcom/hzbhd/config/base/ConfigUtil$HARDWARD_PLATFORM_VESRION;->T3O_MR1:Lcom/hzbhd/config/base/ConfigUtil$HARDWARD_PLATFORM_VESRION;

    iput-object v0, p0, Lcom/hzbhd/config/base/ConfigUtil;->sHARDWARD_PLATFORM_VESRION:Lcom/hzbhd/config/base/ConfigUtil$HARDWARD_PLATFORM_VESRION;

    goto :goto_0

    .line 183
    :cond_1
    iget-object v1, p0, Lcom/hzbhd/config/base/ConfigUtil;->sCHIP_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/hzbhd/config/base/ConfigUtil;->sBuildVersionSDK:I

    if-ne v1, v5, :cond_2

    .line 184
    sget-object v0, Lcom/hzbhd/config/base/ConfigUtil$HARDWARD_PLATFORM_VESRION;->T8O_MR1:Lcom/hzbhd/config/base/ConfigUtil$HARDWARD_PLATFORM_VESRION;

    iput-object v0, p0, Lcom/hzbhd/config/base/ConfigUtil;->sHARDWARD_PLATFORM_VESRION:Lcom/hzbhd/config/base/ConfigUtil$HARDWARD_PLATFORM_VESRION;

    goto :goto_0

    .line 185
    :cond_2
    iget-object v1, p0, Lcom/hzbhd/config/base/ConfigUtil;->sCHIP_NAME:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/hzbhd/config/base/ConfigUtil;->sBuildVersionSDK:I

    if-ne v1, v5, :cond_3

    .line 186
    sget-object v0, Lcom/hzbhd/config/base/ConfigUtil$HARDWARD_PLATFORM_VESRION;->RK3399O_MR1:Lcom/hzbhd/config/base/ConfigUtil$HARDWARD_PLATFORM_VESRION;

    iput-object v0, p0, Lcom/hzbhd/config/base/ConfigUtil;->sHARDWARD_PLATFORM_VESRION:Lcom/hzbhd/config/base/ConfigUtil$HARDWARD_PLATFORM_VESRION;

    goto :goto_0

    .line 187
    :cond_3
    iget-object v1, p0, Lcom/hzbhd/config/base/ConfigUtil;->sCHIP_NAME:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/hzbhd/config/base/ConfigUtil;->sBuildVersionSDK:I

    if-ne v1, v6, :cond_4

    .line 188
    sget-object v0, Lcom/hzbhd/config/base/ConfigUtil$HARDWARD_PLATFORM_VESRION;->RK3399P:Lcom/hzbhd/config/base/ConfigUtil$HARDWARD_PLATFORM_VESRION;

    iput-object v0, p0, Lcom/hzbhd/config/base/ConfigUtil;->sHARDWARD_PLATFORM_VESRION:Lcom/hzbhd/config/base/ConfigUtil$HARDWARD_PLATFORM_VESRION;

    goto :goto_0

    .line 189
    :cond_4
    iget-object v1, p0, Lcom/hzbhd/config/base/ConfigUtil;->sCHIP_NAME:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/hzbhd/config/base/ConfigUtil;->sBuildVersionSDK:I

    if-ne v1, v6, :cond_5

    .line 190
    sget-object v0, Lcom/hzbhd/config/base/ConfigUtil$HARDWARD_PLATFORM_VESRION;->AC8257P:Lcom/hzbhd/config/base/ConfigUtil$HARDWARD_PLATFORM_VESRION;

    iput-object v0, p0, Lcom/hzbhd/config/base/ConfigUtil;->sHARDWARD_PLATFORM_VESRION:Lcom/hzbhd/config/base/ConfigUtil$HARDWARD_PLATFORM_VESRION;

    goto :goto_0

    .line 192
    :cond_5
    iget-object v1, p0, Lcom/hzbhd/config/base/ConfigUtil;->sCHIP_NAME:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/hzbhd/config/base/ConfigUtil;->sBuildVersionSDK:I

    if-ne v0, v7, :cond_6

    .line 193
    sget-object v0, Lcom/hzbhd/config/base/ConfigUtil$HARDWARD_PLATFORM_VESRION;->T3Q_MR1:Lcom/hzbhd/config/base/ConfigUtil$HARDWARD_PLATFORM_VESRION;

    iput-object v0, p0, Lcom/hzbhd/config/base/ConfigUtil;->sHARDWARD_PLATFORM_VESRION:Lcom/hzbhd/config/base/ConfigUtil$HARDWARD_PLATFORM_VESRION;

    goto :goto_0

    .line 196
    :cond_6
    sget-object v0, Lcom/hzbhd/config/base/ConfigUtil$HARDWARD_PLATFORM_VESRION;->T3N_MR1:Lcom/hzbhd/config/base/ConfigUtil$HARDWARD_PLATFORM_VESRION;

    iput-object v0, p0, Lcom/hzbhd/config/base/ConfigUtil;->sHARDWARD_PLATFORM_VESRION:Lcom/hzbhd/config/base/ConfigUtil$HARDWARD_PLATFORM_VESRION;

    :goto_0
    return-void
.end method

.method public static declared-synchronized getClientConfig()Lcom/hzbhd/config/base/Config;
    .locals 7

    const-class v0, Lcom/hzbhd/config/base/ConfigUtil;

    monitor-enter v0

    .line 119
    :try_start_0
    invoke-static {}, Lcom/hzbhd/config/base/ConfigUtil;->getInstance()Lcom/hzbhd/config/base/ConfigUtil;

    move-result-object v1

    iget-object v1, v1, Lcom/hzbhd/config/base/ConfigUtil;->clientConfig:Lcom/hzbhd/config/base/Config;

    if-nez v1, :cond_0

    .line 120
    invoke-static {}, Lcom/hzbhd/config/base/ConfigUtil;->getInstance()Lcom/hzbhd/config/base/ConfigUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/config/base/ConfigUtil;->getDeviceInfo()Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-static {}, Lcom/hzbhd/config/base/ConfigUtil;->getInstance()Lcom/hzbhd/config/base/ConfigUtil;

    move-result-object v2

    invoke-static {}, Lcom/hzbhd/config/base/ConfigUtil;->getInstance()Lcom/hzbhd/config/base/ConfigUtil;

    move-result-object v3

    const-string v4, "client"

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Lcom/hzbhd/config/base/ConfigUtil;->getConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/hzbhd/config/base/Config;

    move-result-object v1

    iput-object v1, v2, Lcom/hzbhd/config/base/ConfigUtil;->clientConfig:Lcom/hzbhd/config/base/Config;

    .line 123
    :cond_0
    invoke-static {}, Lcom/hzbhd/config/base/ConfigUtil;->getInstance()Lcom/hzbhd/config/base/ConfigUtil;

    move-result-object v1

    iget-object v1, v1, Lcom/hzbhd/config/base/ConfigUtil;->clientConfig:Lcom/hzbhd/config/base/Config;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/hzbhd/config/base/Config;
    .locals 4

    const-string v0, "."

    .line 129
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.hzbhd.config."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "MyConfig"

    if-nez p2, :cond_0

    .line 131
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/config/base/Config;

    goto :goto_0

    .line 133
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/config/base/Config;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 137
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConfig not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ConfigUtil"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 140
    iget-object v1, p0, Lcom/hzbhd/config/base/ConfigUtil;->defaultConfig:Lcom/hzbhd/config/base/Config;

    :cond_1
    return-object v1
.end method

.method public static declared-synchronized getDeviceConfig()Lcom/hzbhd/config/base/Config;
    .locals 7

    const-class v0, Lcom/hzbhd/config/base/ConfigUtil;

    monitor-enter v0

    .line 85
    :try_start_0
    invoke-static {}, Lcom/hzbhd/config/base/ConfigUtil;->getInstance()Lcom/hzbhd/config/base/ConfigUtil;

    move-result-object v1

    iget-object v1, v1, Lcom/hzbhd/config/base/ConfigUtil;->deviceConfig:Lcom/hzbhd/config/base/Config;

    if-nez v1, :cond_0

    .line 86
    invoke-static {}, Lcom/hzbhd/config/base/ConfigUtil;->getInstance()Lcom/hzbhd/config/base/ConfigUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/config/base/ConfigUtil;->getDeviceInfo()Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-static {}, Lcom/hzbhd/config/base/ConfigUtil;->getInstance()Lcom/hzbhd/config/base/ConfigUtil;

    move-result-object v2

    invoke-static {}, Lcom/hzbhd/config/base/ConfigUtil;->getInstance()Lcom/hzbhd/config/base/ConfigUtil;

    move-result-object v3

    const-string v4, "device"

    const/4 v5, 0x0

    const/16 v6, 0x8

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Lcom/hzbhd/config/base/ConfigUtil;->getConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/hzbhd/config/base/Config;

    move-result-object v1

    iput-object v1, v2, Lcom/hzbhd/config/base/ConfigUtil;->deviceConfig:Lcom/hzbhd/config/base/Config;

    .line 89
    :cond_0
    invoke-static {}, Lcom/hzbhd/config/base/ConfigUtil;->getInstance()Lcom/hzbhd/config/base/ConfigUtil;

    move-result-object v1

    iget-object v1, v1, Lcom/hzbhd/config/base/ConfigUtil;->deviceConfig:Lcom/hzbhd/config/base/Config;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getFrameworkConfig()Lcom/hzbhd/config/base/Config;
    .locals 7

    const-class v0, Lcom/hzbhd/config/base/ConfigUtil;

    monitor-enter v0

    .line 77
    :try_start_0
    invoke-static {}, Lcom/hzbhd/config/base/ConfigUtil;->getInstance()Lcom/hzbhd/config/base/ConfigUtil;

    move-result-object v1

    iget-object v1, v1, Lcom/hzbhd/config/base/ConfigUtil;->frameworkConfig:Lcom/hzbhd/config/base/Config;

    if-nez v1, :cond_0

    .line 78
    invoke-static {}, Lcom/hzbhd/config/base/ConfigUtil;->getInstance()Lcom/hzbhd/config/base/ConfigUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/config/base/ConfigUtil;->getDeviceInfo()Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-static {}, Lcom/hzbhd/config/base/ConfigUtil;->getInstance()Lcom/hzbhd/config/base/ConfigUtil;

    move-result-object v2

    invoke-static {}, Lcom/hzbhd/config/base/ConfigUtil;->getInstance()Lcom/hzbhd/config/base/ConfigUtil;

    move-result-object v3

    const-string v4, "framework"

    const/16 v5, 0x9

    const/16 v6, 0xa

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Lcom/hzbhd/config/base/ConfigUtil;->getConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/hzbhd/config/base/Config;

    move-result-object v1

    iput-object v1, v2, Lcom/hzbhd/config/base/ConfigUtil;->frameworkConfig:Lcom/hzbhd/config/base/Config;

    .line 81
    :cond_0
    invoke-static {}, Lcom/hzbhd/config/base/ConfigUtil;->getInstance()Lcom/hzbhd/config/base/ConfigUtil;

    move-result-object v1

    iget-object v1, v1, Lcom/hzbhd/config/base/ConfigUtil;->frameworkConfig:Lcom/hzbhd/config/base/Config;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static getInstance()Lcom/hzbhd/config/base/ConfigUtil;
    .locals 1

    .line 53
    sget-object v0, Lcom/hzbhd/config/base/ConfigUtil;->sConfigUtil:Lcom/hzbhd/config/base/ConfigUtil;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/hzbhd/config/base/ConfigUtil;

    invoke-direct {v0}, Lcom/hzbhd/config/base/ConfigUtil;-><init>()V

    sput-object v0, Lcom/hzbhd/config/base/ConfigUtil;->sConfigUtil:Lcom/hzbhd/config/base/ConfigUtil;

    .line 56
    :cond_0
    sget-object v0, Lcom/hzbhd/config/base/ConfigUtil;->sConfigUtil:Lcom/hzbhd/config/base/ConfigUtil;

    return-object v0
.end method

.method public static declared-synchronized getJarConfig()Lcom/hzbhd/config/base/Config;
    .locals 5

    const-class v0, Lcom/hzbhd/config/base/ConfigUtil;

    monitor-enter v0

    .line 69
    :try_start_0
    invoke-static {}, Lcom/hzbhd/config/base/ConfigUtil;->getInstance()Lcom/hzbhd/config/base/ConfigUtil;

    move-result-object v1

    iget-object v1, v1, Lcom/hzbhd/config/base/ConfigUtil;->jarConfig:Lcom/hzbhd/config/base/Config;

    if-nez v1, :cond_0

    .line 70
    invoke-static {}, Lcom/hzbhd/config/base/ConfigUtil;->getInstance()Lcom/hzbhd/config/base/ConfigUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/config/base/ConfigUtil;->getDeviceInfo()Ljava/lang/String;

    .line 71
    invoke-static {}, Lcom/hzbhd/config/base/ConfigUtil;->getInstance()Lcom/hzbhd/config/base/ConfigUtil;

    move-result-object v1

    invoke-static {}, Lcom/hzbhd/config/base/ConfigUtil;->getInstance()Lcom/hzbhd/config/base/ConfigUtil;

    move-result-object v2

    const-string v3, "jar"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/hzbhd/config/base/ConfigUtil;->getConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/hzbhd/config/base/Config;

    move-result-object v2

    iput-object v2, v1, Lcom/hzbhd/config/base/ConfigUtil;->jarConfig:Lcom/hzbhd/config/base/Config;

    .line 73
    :cond_0
    invoke-static {}, Lcom/hzbhd/config/base/ConfigUtil;->getInstance()Lcom/hzbhd/config/base/ConfigUtil;

    move-result-object v1

    iget-object v1, v1, Lcom/hzbhd/config/base/ConfigUtil;->jarConfig:Lcom/hzbhd/config/base/Config;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getMultiuiUIConfig(Landroid/content/Context;Ljava/lang/String;)Lcom/hzbhd/config/base/Config;
    .locals 5

    const-class p0, Lcom/hzbhd/config/base/ConfigUtil;

    monitor-enter p0

    .line 111
    :try_start_0
    invoke-static {}, Lcom/hzbhd/config/base/ConfigUtil;->getInstance()Lcom/hzbhd/config/base/ConfigUtil;

    move-result-object v0

    iget-object v0, v0, Lcom/hzbhd/config/base/ConfigUtil;->multiUiConfig:Lcom/hzbhd/config/base/Config;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/hzbhd/config/base/ScreenLogic;->isRotateScreenOrRotateScreenByHand()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    :cond_0
    invoke-static {}, Lcom/hzbhd/config/base/ConfigUtil;->getInstance()Lcom/hzbhd/config/base/ConfigUtil;

    move-result-object v0

    invoke-static {}, Lcom/hzbhd/config/base/ConfigUtil;->getInstance()Lcom/hzbhd/config/base/ConfigUtil;

    move-result-object v1

    const-string v2, "multiui"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ui_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/hzbhd/config/base/ConfigUtil;->getConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/hzbhd/config/base/Config;

    move-result-object p1

    iput-object p1, v0, Lcom/hzbhd/config/base/ConfigUtil;->multiUiConfig:Lcom/hzbhd/config/base/Config;

    .line 115
    :cond_1
    invoke-static {}, Lcom/hzbhd/config/base/ConfigUtil;->getInstance()Lcom/hzbhd/config/base/ConfigUtil;

    move-result-object p1

    iget-object p1, p1, Lcom/hzbhd/config/base/ConfigUtil;->multiUiConfig:Lcom/hzbhd/config/base/Config;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static declared-synchronized getPlatformConfig()Lcom/hzbhd/config/base/Config;
    .locals 7

    const-class v0, Lcom/hzbhd/config/base/ConfigUtil;

    monitor-enter v0

    .line 93
    :try_start_0
    invoke-static {}, Lcom/hzbhd/config/base/ConfigUtil;->getInstance()Lcom/hzbhd/config/base/ConfigUtil;

    move-result-object v1

    iget-object v1, v1, Lcom/hzbhd/config/base/ConfigUtil;->platformConfig:Lcom/hzbhd/config/base/Config;

    if-nez v1, :cond_0

    .line 94
    invoke-static {}, Lcom/hzbhd/config/base/ConfigUtil;->getInstance()Lcom/hzbhd/config/base/ConfigUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/config/base/ConfigUtil;->getDeviceInfo()Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-static {}, Lcom/hzbhd/config/base/ConfigUtil;->getInstance()Lcom/hzbhd/config/base/ConfigUtil;

    move-result-object v2

    invoke-static {}, Lcom/hzbhd/config/base/ConfigUtil;->getInstance()Lcom/hzbhd/config/base/ConfigUtil;

    move-result-object v3

    const-string v4, "platform"

    const/4 v5, 0x3

    const/4 v6, 0x4

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Lcom/hzbhd/config/base/ConfigUtil;->getConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/hzbhd/config/base/Config;

    move-result-object v1

    iput-object v1, v2, Lcom/hzbhd/config/base/ConfigUtil;->platformConfig:Lcom/hzbhd/config/base/Config;

    .line 97
    :cond_0
    invoke-static {}, Lcom/hzbhd/config/base/ConfigUtil;->getInstance()Lcom/hzbhd/config/base/ConfigUtil;

    move-result-object v1

    iget-object v1, v1, Lcom/hzbhd/config/base/ConfigUtil;->platformConfig:Lcom/hzbhd/config/base/Config;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getUIConfig()Lcom/hzbhd/config/base/Config;
    .locals 8

    const-class v0, Lcom/hzbhd/config/base/ConfigUtil;

    monitor-enter v0

    .line 102
    :try_start_0
    invoke-static {}, Lcom/hzbhd/config/base/ConfigUtil;->getInstance()Lcom/hzbhd/config/base/ConfigUtil;

    move-result-object v1

    iget-object v1, v1, Lcom/hzbhd/config/base/ConfigUtil;->uiConfig:Lcom/hzbhd/config/base/Config;

    if-nez v1, :cond_0

    .line 103
    invoke-static {}, Lcom/hzbhd/config/base/ConfigUtil;->getInstance()Lcom/hzbhd/config/base/ConfigUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/config/base/ConfigUtil;->getDeviceInfo()Ljava/lang/String;

    move-result-object v1

    .line 104
    invoke-static {}, Lcom/hzbhd/config/base/ConfigUtil;->getInstance()Lcom/hzbhd/config/base/ConfigUtil;

    move-result-object v2

    invoke-static {}, Lcom/hzbhd/config/base/ConfigUtil;->getInstance()Lcom/hzbhd/config/base/ConfigUtil;

    move-result-object v3

    const-string/jumbo v4, "ui"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ui_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0xa

    const/16 v7, 0xc

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Lcom/hzbhd/config/base/ConfigUtil;->getConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/hzbhd/config/base/Config;

    move-result-object v1

    iput-object v1, v2, Lcom/hzbhd/config/base/ConfigUtil;->uiConfig:Lcom/hzbhd/config/base/Config;

    .line 106
    :cond_0
    invoke-static {}, Lcom/hzbhd/config/base/ConfigUtil;->getInstance()Lcom/hzbhd/config/base/ConfigUtil;

    move-result-object v1

    iget-object v1, v1, Lcom/hzbhd/config/base/ConfigUtil;->uiConfig:Lcom/hzbhd/config/base/Config;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized getfactory_hardware_info_path()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/config/base/ConfigUtil;->sHARDWARD_PLATFORM_VESRION:Lcom/hzbhd/config/base/ConfigUtil$HARDWARD_PLATFORM_VESRION;

    sget-object v1, Lcom/hzbhd/config/base/ConfigUtil$HARDWARD_PLATFORM_VESRION;->T3N_MR1:Lcom/hzbhd/config/base/ConfigUtil$HARDWARD_PLATFORM_VESRION;

    if-ne v0, v1, :cond_0

    const-string v0, "/bootloader/factory_hardware_info"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    monitor-exit p0

    return-object v0

    .line 203
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/hzbhd/config/base/ConfigUtil;->sHARDWARD_PLATFORM_VESRION:Lcom/hzbhd/config/base/ConfigUtil$HARDWARD_PLATFORM_VESRION;

    sget-object v1, Lcom/hzbhd/config/base/ConfigUtil$HARDWARD_PLATFORM_VESRION;->T8O_MR1:Lcom/hzbhd/config/base/ConfigUtil$HARDWARD_PLATFORM_VESRION;

    if-ne v0, v1, :cond_1

    const-string v0, "/bootloader/factory_hardware_info"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    monitor-exit p0

    return-object v0

    .line 205
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/hzbhd/config/base/ConfigUtil;->sHARDWARD_PLATFORM_VESRION:Lcom/hzbhd/config/base/ConfigUtil$HARDWARD_PLATFORM_VESRION;

    sget-object v1, Lcom/hzbhd/config/base/ConfigUtil$HARDWARD_PLATFORM_VESRION;->T3O_MR1:Lcom/hzbhd/config/base/ConfigUtil$HARDWARD_PLATFORM_VESRION;

    if-ne v0, v1, :cond_2

    const-string v0, "/bootloader/factory_hardware_info"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 206
    monitor-exit p0

    return-object v0

    .line 207
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/hzbhd/config/base/ConfigUtil;->sHARDWARD_PLATFORM_VESRION:Lcom/hzbhd/config/base/ConfigUtil$HARDWARD_PLATFORM_VESRION;

    sget-object v1, Lcom/hzbhd/config/base/ConfigUtil$HARDWARD_PLATFORM_VESRION;->RK3399O_MR1:Lcom/hzbhd/config/base/ConfigUtil$HARDWARD_PLATFORM_VESRION;

    if-ne v0, v1, :cond_3

    const-string v0, "/system/etc/factory_hardware_info"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 208
    monitor-exit p0

    return-object v0

    .line 210
    :cond_3
    :try_start_4
    iget-object v0, p0, Lcom/hzbhd/config/base/ConfigUtil;->sHARDWARD_PLATFORM_VESRION:Lcom/hzbhd/config/base/ConfigUtil$HARDWARD_PLATFORM_VESRION;

    sget-object v1, Lcom/hzbhd/config/base/ConfigUtil$HARDWARD_PLATFORM_VESRION;->RK3399P:Lcom/hzbhd/config/base/ConfigUtil$HARDWARD_PLATFORM_VESRION;

    if-ne v0, v1, :cond_4

    const-string v0, "/system/etc/factory_hardware_info"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 211
    monitor-exit p0

    return-object v0

    .line 212
    :cond_4
    :try_start_5
    iget-object v0, p0, Lcom/hzbhd/config/base/ConfigUtil;->sHARDWARD_PLATFORM_VESRION:Lcom/hzbhd/config/base/ConfigUtil$HARDWARD_PLATFORM_VESRION;

    sget-object v1, Lcom/hzbhd/config/base/ConfigUtil$HARDWARD_PLATFORM_VESRION;->AC8257P:Lcom/hzbhd/config/base/ConfigUtil$HARDWARD_PLATFORM_VESRION;

    if-ne v0, v1, :cond_5

    const-string v0, "/bhd/factory_hardware_info"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 213
    monitor-exit p0

    return-object v0

    .line 215
    :cond_5
    :try_start_6
    iget-object v0, p0, Lcom/hzbhd/config/base/ConfigUtil;->sHARDWARD_PLATFORM_VESRION:Lcom/hzbhd/config/base/ConfigUtil$HARDWARD_PLATFORM_VESRION;

    sget-object v1, Lcom/hzbhd/config/base/ConfigUtil$HARDWARD_PLATFORM_VESRION;->T3Q_MR1:Lcom/hzbhd/config/base/ConfigUtil$HARDWARD_PLATFORM_VESRION;

    if-ne v0, v1, :cond_6

    const-string v0, "/system/etc/factory_hardware_info"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 216
    monitor-exit p0

    return-object v0

    :cond_6
    :try_start_7
    const-string v0, "/bootloader/factory_hardware_info"
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 218
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected getDeviceInfo()Ljava/lang/String;
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/hzbhd/config/base/ConfigUtil;->DeviceInfor:Ljava/lang/String;

    const-string v1, "Get Device none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    :try_start_0
    invoke-direct {p0}, Lcom/hzbhd/config/base/ConfigUtil;->getfactory_hardware_info_path()Ljava/lang/String;

    move-result-object v0

    .line 151
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v0

    new-array v0, v0, [B

    .line 153
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 154
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 155
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lcom/hzbhd/config/base/ConfigUtil;->DeviceInfor:Ljava/lang/String;

    const-string v0, "getDeviceInfo"

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current device infor is ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hzbhd/config/base/ConfigUtil;->DeviceInfor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 158
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "Get Device error"

    .line 159
    iput-object v0, p0, Lcom/hzbhd/config/base/ConfigUtil;->DeviceInfor:Ljava/lang/String;

    .line 162
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/hzbhd/config/base/ConfigUtil;->DeviceInfor:Ljava/lang/String;

    return-object v0
.end method
