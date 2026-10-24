.class public Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;
.super Ljava/lang/Object;
.source "Hardware_Platform.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Hardware_Platfrom"

.field public static sBuildVersionSDK:I

.field public static sCHIP_NAME:Ljava/lang/String;

.field private static final sHARDWARD_PLATFORM_VESRION:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_VESRION;

.field private static sIHardware_Platform:Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string/jumbo v0, "ro.product.model"

    .line 19
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->sCHIP_NAME:Ljava/lang/String;

    const-string/jumbo v0, "ro.build.version.sdk"

    const/16 v1, 0x19

    .line 20
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->sBuildVersionSDK:I

    .line 25
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->sCHIP_NAME:Ljava/lang/String;

    const-string v2, "T3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->sBuildVersionSDK:I

    if-ne v0, v1, :cond_0

    .line 26
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_VESRION;->T3N_MR1:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_VESRION;

    sput-object v0, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->sHARDWARD_PLATFORM_VESRION:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_VESRION;

    goto :goto_0

    .line 27
    :cond_0
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->sCHIP_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x1b

    if-eqz v0, :cond_1

    sget v0, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->sBuildVersionSDK:I

    if-ne v0, v1, :cond_1

    .line 28
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_VESRION;->T3O_MR1:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_VESRION;

    sput-object v0, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->sHARDWARD_PLATFORM_VESRION:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_VESRION;

    goto :goto_0

    .line 29
    :cond_1
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->sCHIP_NAME:Ljava/lang/String;

    const-string v3, "T8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->sBuildVersionSDK:I

    if-ne v0, v1, :cond_2

    .line 30
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_VESRION;->T8O_MR1:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_VESRION;

    sput-object v0, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->sHARDWARD_PLATFORM_VESRION:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_VESRION;

    goto :goto_0

    .line 31
    :cond_2
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->sCHIP_NAME:Ljava/lang/String;

    const-string/jumbo v3, "rk3399"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->sBuildVersionSDK:I

    if-ne v0, v1, :cond_3

    .line 32
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_VESRION;->RK3399O_MR1:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_VESRION;

    sput-object v0, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->sHARDWARD_PLATFORM_VESRION:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_VESRION;

    goto :goto_0

    .line 33
    :cond_3
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->sCHIP_NAME:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->sBuildVersionSDK:I

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_4

    .line 34
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_VESRION;->RK3399P:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_VESRION;

    sput-object v0, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->sHARDWARD_PLATFORM_VESRION:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_VESRION;

    goto :goto_0

    .line 36
    :cond_4
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->sCHIP_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget v0, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->sBuildVersionSDK:I

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_5

    .line 37
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_VESRION;->T3Q_MR1:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_VESRION;

    sput-object v0, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->sHARDWARD_PLATFORM_VESRION:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_VESRION;

    goto :goto_0

    .line 40
    :cond_5
    sget-object v0, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_VESRION;->T3N_MR1:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_VESRION;

    sput-object v0, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->sHARDWARD_PLATFORM_VESRION:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_VESRION;

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;
    .locals 3

    const-class v0, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;

    monitor-enter v0

    .line 45
    :try_start_0
    sget-object v1, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->sIHardware_Platform:Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    if-nez v1, :cond_6

    .line 46
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 47
    :try_start_1
    sget-object v1, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->sIHardware_Platform:Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    if-nez v1, :cond_5

    .line 48
    sget-object v1, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->sHARDWARD_PLATFORM_VESRION:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_VESRION;

    sget-object v2, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_VESRION;->T3N_MR1:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_VESRION;

    if-ne v1, v2, :cond_0

    .line 49
    new-instance v1, Lcom/hzbhd/midwareproxy/hardware/T3N_MR1_HardwarePlatform;

    invoke-direct {v1}, Lcom/hzbhd/midwareproxy/hardware/T3N_MR1_HardwarePlatform;-><init>()V

    sput-object v1, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->sIHardware_Platform:Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    goto :goto_0

    .line 50
    :cond_0
    sget-object v1, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->sHARDWARD_PLATFORM_VESRION:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_VESRION;

    sget-object v2, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_VESRION;->T8O_MR1:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_VESRION;

    if-ne v1, v2, :cond_1

    .line 51
    new-instance v1, Lcom/hzbhd/midwareproxy/hardware/T8O_MR1_HardwarePlatform;

    invoke-direct {v1}, Lcom/hzbhd/midwareproxy/hardware/T8O_MR1_HardwarePlatform;-><init>()V

    sput-object v1, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->sIHardware_Platform:Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    goto :goto_0

    .line 52
    :cond_1
    sget-object v1, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->sHARDWARD_PLATFORM_VESRION:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_VESRION;

    sget-object v2, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_VESRION;->T3O_MR1:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_VESRION;

    if-ne v1, v2, :cond_2

    .line 53
    new-instance v1, Lcom/hzbhd/midwareproxy/hardware/T3O_MR1_HardwarePlatform;

    invoke-direct {v1}, Lcom/hzbhd/midwareproxy/hardware/T3O_MR1_HardwarePlatform;-><init>()V

    sput-object v1, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->sIHardware_Platform:Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    goto :goto_0

    .line 54
    :cond_2
    sget-object v1, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->sHARDWARD_PLATFORM_VESRION:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_VESRION;

    sget-object v2, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_VESRION;->RK3399O_MR1:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_VESRION;

    if-ne v1, v2, :cond_3

    .line 55
    new-instance v1, Lcom/hzbhd/midwareproxy/hardware/RK3399O_MR1_HardwarePlatform;

    invoke-direct {v1}, Lcom/hzbhd/midwareproxy/hardware/RK3399O_MR1_HardwarePlatform;-><init>()V

    sput-object v1, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->sIHardware_Platform:Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    goto :goto_0

    .line 57
    :cond_3
    sget-object v1, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->sHARDWARD_PLATFORM_VESRION:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_VESRION;

    sget-object v2, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_VESRION;->RK3399P:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_VESRION;

    if-ne v1, v2, :cond_4

    .line 58
    new-instance v1, Lcom/hzbhd/midwareproxy/hardware/RK3399P_HardwarePlatform;

    invoke-direct {v1}, Lcom/hzbhd/midwareproxy/hardware/RK3399P_HardwarePlatform;-><init>()V

    sput-object v1, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->sIHardware_Platform:Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    goto :goto_0

    .line 60
    :cond_4
    sget-object v1, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->sHARDWARD_PLATFORM_VESRION:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_VESRION;

    sget-object v2, Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_VESRION;->T3Q_MR1:Lcom/hzbhd/midwareproxy/hardware/HardwareConstant$HARDWARD_PLATFORM_VESRION;

    if-ne v1, v2, :cond_5

    .line 61
    new-instance v1, Lcom/hzbhd/midwareproxy/hardware/T3Q_MR1_HardwarePlatform;

    invoke-direct {v1}, Lcom/hzbhd/midwareproxy/hardware/T3Q_MR1_HardwarePlatform;-><init>()V

    sput-object v1, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->sIHardware_Platform:Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    .line 64
    :cond_5
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    .line 66
    :cond_6
    :goto_1
    sget-object v1, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->sIHardware_Platform:Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method
