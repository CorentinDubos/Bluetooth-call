.class public Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;
.super Ljava/lang/Object;
.source "DeviceDifferen.java"


# static fields
.field public static final CFG_HW_HARDWARE_DSP:Ljava/lang/String; = "DSP"

.field public static final HARDWARD_ATTRIBUTEBROADONEDISC:Ljava/lang/String; = "BROADONEDISC"

.field public static final HARDWARD_ATTRIBUTESECONDBROAD:Ljava/lang/String; = "SECONDBROAD"

.field public static final HARDWARD_ATTRIBUTESECONDSTM32:Ljava/lang/String; = "SECONDSTM32"

.field public static final HARDWARD_ATTRIBUTE_AUTOCHECK_CAMERA_IC:Ljava/lang/String; = "AUTOCHECKCAMERA"

.field public static final HARDWARD_ATTRIBUTE_CSI0:Ljava/lang/String; = "CSI0"

.field public static final HARDWARD_ATTRIBUTE_HASFLASH701:Ljava/lang/String; = "hasflash701"

.field public static final HARDWARD_ATTRIBUTE_HASMPUCONTROLCHIP6502:Ljava/lang/String; = "CHIP6502"

.field public static final HARDWARD_ATTRIBUTE_HASMPUCONTROLCHIPN3:Ljava/lang/String; = "CHIPN3"

.field public static final HARDWARD_ATTRIBUTE_HASMPUCONTROL_NVP6158C:Ljava/lang/String; = "NVP6158C"

.field public static final HARDWARE_GPSMODULE_TD1030:Ljava/lang/String; = "TD1030"

.field public static final HARDWARE_GPSMODULE_UBLOX:Ljava/lang/String; = "UBLOX"

.field public static autocheck_cameraic:Z = false

.field public static has701flash:Z

.field public static hasMpuControlChip6502:Z

.field public static hasMpuControlChipDSP:Z

.field public static haschipn3:Z

.field public static haschipn5:Z

.field public static haschipnvp6158c:Z

.field public static iscameracsi0:Z

.field public static sCURRENT_HARDWARD_ATTRIBUTE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "persist.bhd.hardward_attribute"

    const-string v1, ""

    .line 66
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->sCURRENT_HARDWARD_ATTRIBUTE:Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sCURRENT_HARDWARD_ATTRIBUTE:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->sCURRENT_HARDWARD_ATTRIBUTE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DeviceDifferen:"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->sCURRENT_HARDWARD_ATTRIBUTE:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->sCURRENT_HARDWARD_ATTRIBUTE:Ljava/lang/String;

    const-string v1, "hasflash701"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->has701flash:Z

    .line 70
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->sCURRENT_HARDWARD_ATTRIBUTE:Ljava/lang/String;

    const-string v1, "CHIP6502"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->hasMpuControlChip6502:Z

    .line 71
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->sCURRENT_HARDWARD_ATTRIBUTE:Ljava/lang/String;

    const-string v1, "CHIPN3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->haschipn3:Z

    .line 72
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->sCURRENT_HARDWARD_ATTRIBUTE:Ljava/lang/String;

    const-string v1, "NVP6158C"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->haschipnvp6158c:Z

    .line 73
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->sCURRENT_HARDWARD_ATTRIBUTE:Ljava/lang/String;

    const-string v1, "DSP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->hasMpuControlChipDSP:Z

    .line 74
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->sCURRENT_HARDWARD_ATTRIBUTE:Ljava/lang/String;

    const-string v1, "CSI0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->iscameracsi0:Z

    .line 75
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->sCURRENT_HARDWARD_ATTRIBUTE:Ljava/lang/String;

    const-string v1, "AUTOCHECKCAMERA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->autocheck_cameraic:Z

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hasMpuControlChip6502:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->hasMpuControlChip6502:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 78
    sput-boolean v0, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->has701flash:Z

    .line 79
    sput-boolean v0, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->hasMpuControlChip6502:Z

    .line 80
    sput-boolean v0, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->haschipn3:Z

    .line 81
    sput-boolean v0, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->hasMpuControlChipDSP:Z

    .line 82
    sput-boolean v0, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->haschipnvp6158c:Z

    .line 83
    sput-boolean v0, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->iscameracsi0:Z

    .line 84
    sput-boolean v0, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->autocheck_cameraic:Z

    .line 88
    :goto_0
    sget-boolean v0, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->autocheck_cameraic:Z

    if-eqz v0, :cond_1

    .line 89
    invoke-static {}, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->readBSPCheckN5ChipAlive()Z

    move-result v0

    sput-boolean v0, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->haschipn5:Z

    .line 90
    invoke-static {}, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->readBSPCheckN3ChipAlive()Z

    move-result v0

    sput-boolean v0, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->haschipn3:Z

    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static WriteVehicleDev(Ljava/lang/String;)V
    .locals 3

    .line 291
    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    new-instance v1, Ljava/io/File;

    const-string v2, "/dev/vehicle"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 292
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 293
    invoke-virtual {v1, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 294
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 296
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 298
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WriteVehicleDev: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DeviceDifferen"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static bhd_ReadCameraType([BI)I
    .locals 7

    const-string v0, "bhd_ReadCameraType"

    const/4 v1, 0x0

    .line 417
    :try_start_0
    const-class v2, Lcom/softwinner/SystemMix;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, [B

    aput-object v5, v4, v1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v2, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v4, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v1

    .line 418
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v6

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 419
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bhd_ReadCameraType result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "kkk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    aget-byte p0, p0, v3

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p0

    .line 424
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 422
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :goto_0
    return v1
.end method

.method public static bhd_ResetAudio()I
    .locals 4

    .line 276
    :try_start_0
    const-class v0, Lcom/softwinner/SystemMix;

    const-string v1, "bhd_ResetAudio"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 277
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 281
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 279
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public static bhd_ResetCamera()I
    .locals 4

    const-string v0, "Camera"

    const-string v1, "bhd_ResetCamera"

    .line 249
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :try_start_0
    const-class v0, Lcom/softwinner/SystemMix;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 252
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 256
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 254
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public static bhd_WriteCameraType([BI)I
    .locals 7

    const-string v0, "bhd_WriteCameraType"

    const/4 v1, 0x0

    .line 401
    :try_start_0
    const-class v2, Lcom/softwinner/SystemMix;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, [B

    aput-object v5, v4, v1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v2, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v4, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v1

    .line 402
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v6

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 403
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bhd_WriteCameraType result:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 408
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 406
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :goto_0
    return v1
.end method

.method public static bhd_compress(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  source_path:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " dest_path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bhd_compress"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :try_start_0
    const-class v0, Lcom/softwinner/SystemMix;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    aput-object p1, v2, v6

    .line 369
    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 370
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bhd_compress result:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 375
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 373
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :goto_0
    const-string p0, "bhd_compress result: Exception -1"

    .line 377
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public static bhd_decompress(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    const-string v0, "bhd_decompress"

    .line 382
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  source_path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " dest_path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bhd_compress"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :try_start_0
    const-class v1, Lcom/softwinner/SystemMix;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v1, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    aput-object p1, v2, v6

    .line 385
    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 386
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bhd_decompress result:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 391
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 389
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :goto_0
    const-string p0, "bhd_decompress result: Exception -1"

    .line 393
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public static bhd_killMedia()I
    .locals 4

    const-string v0, "media"

    const-string v1, "bhd_Killmedia"

    .line 262
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :try_start_0
    const-class v0, Lcom/softwinner/SystemMix;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 265
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 269
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 267
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public static bhd_pread(Ljava/lang/String;J)I
    .locals 7

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  path:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " address_off: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bhd_pread"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :try_start_0
    const-class v0, Lcom/softwinner/SystemMix;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    .line 353
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v2, v6

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 354
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "bhd_pread result:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 359
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 357
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :goto_0
    const-string p0, "bhd_dwrite"

    const-string p1, "bhd_dwrite result: Exception -1"

    .line 361
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public static bhd_pwrite(Ljava/lang/String;J)I
    .locals 8

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  path:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " address_off: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bhd_dwrite"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :try_start_0
    const-class v0, Lcom/softwinner/SystemMix;

    const-string v2, "bhd_pwrite"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v6

    .line 336
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v3, v7

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 337
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "bhd_pwrite result:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 342
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 340
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :goto_0
    const-string p0, "bhd_dwrite result: Exception -1"

    .line 344
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public static bhd_set_rkogo(Ljava/lang/String;)I
    .locals 7

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bhd_set_rkogo  path:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CARLOGO"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :try_start_0
    const-class v0, Lcom/softwinner/SystemMix;

    const-string v2, "bhd_set_rkogo"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v6

    .line 320
    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bhd_set_rkogo result:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 326
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 324
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :goto_0
    const-string p0, "bhd_set_rkogo result: Exception -1"

    .line 328
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public static echo_string_to_file(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "echo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "echo_string_to_file:"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 549
    new-instance p1, Ljava/io/BufferedWriter;

    invoke-direct {p1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 550
    invoke-virtual {p1, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 551
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 553
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static getCoverViewDelayTime()I
    .locals 1

    .line 286
    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->getCoverViewDelayTime()I

    move-result v0

    return v0
.end method

.method public static getCvbsStatus(ZII)I
    .locals 1

    .line 99
    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->getCvbsStatus(ZII)I

    move-result p0

    return p0
.end method

.method public static getDefaultBrightness()I
    .locals 2

    .line 111
    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->ishasChip701()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x90

    return v0

    .line 113
    :cond_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->ishasMpuControlChipAHD_N3_or_Nvp6158c()Z

    move-result v0

    const/16 v1, 0x20

    if-eqz v0, :cond_2

    .line 114
    sget-boolean v0, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->haschipn5:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/16 v0, 0x88

    return v0

    :cond_2
    return v1
.end method

.method public static getDefaultContrast()I
    .locals 2

    .line 134
    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->ishasChip701()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x90

    return v0

    .line 137
    :cond_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->ishasMpuControlChipAHD_N3_or_Nvp6158c()Z

    move-result v0

    const/16 v1, 0x80

    if-eqz v0, :cond_2

    .line 138
    sget-boolean v0, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->haschipn5:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/16 v0, 0x88

    return v0

    :cond_2
    return v1
.end method

.method public static getDefaultSaturation()I
    .locals 3

    .line 215
    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->ishasChip701()Z

    move-result v0

    const/16 v1, 0x90

    if-eqz v0, :cond_0

    return v1

    .line 218
    :cond_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->ishasMpuControlChipAHD_N3_or_Nvp6158c()Z

    move-result v0

    const/16 v2, 0x80

    if-eqz v0, :cond_2

    .line 219
    sget-boolean v0, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->haschipn5:Z

    if-eqz v0, :cond_1

    return v2

    :cond_1
    return v1

    :cond_2
    return v2
.end method

.method public static getDefaultYUVBrightness()I
    .locals 2

    .line 151
    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->ishasChip701()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x90

    return v0

    .line 153
    :cond_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->ishasMpuControlChipAHD_N3_or_Nvp6158c()Z

    move-result v0

    const/16 v1, 0x20

    if-eqz v0, :cond_2

    .line 154
    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object v0

    instance-of v0, v0, Lcom/hzbhd/midwareproxy/hardware/T3O_MR1_HardwarePlatform;

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/16 v0, 0x88

    return v0

    :cond_2
    return v1
.end method

.method public static getDefaultYUVContrast()I
    .locals 2

    .line 182
    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->ishasChip701()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    return v0

    .line 185
    :cond_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->ishasMpuControlChipAHD_N3_or_Nvp6158c()Z

    move-result v0

    const/16 v1, 0x80

    if-eqz v0, :cond_2

    .line 186
    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object v0

    instance-of v0, v0, Lcom/hzbhd/midwareproxy/hardware/T3O_MR1_HardwarePlatform;

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/16 v0, 0x88

    return v0

    :cond_2
    return v1
.end method

.method public static getDefaultYUVSaturation()I
    .locals 3

    .line 230
    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->ishasChip701()Z

    move-result v0

    const/16 v1, 0x90

    if-eqz v0, :cond_0

    return v1

    .line 233
    :cond_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->ishasMpuControlChipAHD_N3_or_Nvp6158c()Z

    move-result v0

    const/16 v2, 0x80

    if-eqz v0, :cond_2

    .line 235
    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object v0

    instance-of v0, v0, Lcom/hzbhd/midwareproxy/hardware/T3O_MR1_HardwarePlatform;

    if-eqz v0, :cond_1

    return v2

    :cond_1
    return v1

    :cond_2
    return v2
.end method

.method public static getMaxBrightness()I
    .locals 2

    .line 124
    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->ishasChip701()Z

    move-result v0

    const/16 v1, 0xff

    if-eqz v0, :cond_0

    return v1

    .line 126
    :cond_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->ishasMpuControlChipAHD_N3_or_Nvp6158c()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/16 v0, 0x64

    return v0
.end method

.method public static getMaxContrast()I
    .locals 2

    .line 199
    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->ishasChip701()Z

    move-result v0

    const/16 v1, 0xff

    if-eqz v0, :cond_0

    :cond_0
    return v1
.end method

.method public static getMaxYUVBrightness()I
    .locals 3

    .line 166
    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->ishasChip701()Z

    move-result v0

    const/16 v1, 0xff

    if-eqz v0, :cond_0

    return v1

    .line 168
    :cond_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->ishasMpuControlChipAHD_N3_or_Nvp6158c()Z

    move-result v0

    const/16 v2, 0x64

    if-eqz v0, :cond_2

    .line 169
    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object v0

    instance-of v0, v0, Lcom/hzbhd/midwareproxy/hardware/T3O_MR1_HardwarePlatform;

    if-eqz v0, :cond_1

    return v2

    :cond_1
    return v1

    :cond_2
    return v2
.end method

.method public static getYUVMaxContrast()I
    .locals 1

    .line 207
    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->ishasChip701()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3f

    return v0

    :cond_0
    const/16 v0, 0xff

    return v0
.end method

.method public static linux_sleep()Z
    .locals 4

    const-string v0, "ACCTEST"

    const-string v1, "linux_sleep!!!!!!!!!!!"

    .line 442
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/power/state"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 456
    new-instance v2, Ljava/io/BufferedWriter;

    invoke-direct {v2, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const-string v1, "mem"

    .line 457
    invoke-virtual {v2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 458
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    const-string v1, "bw.close()  .... end"

    .line 459
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    const-string v2, "Exception"

    .line 461
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public static px6_USB5V_power(Z)Z
    .locals 4

    const-string v0, "ACCTEST"

    const-string v1, "px6_USB5V_power!!!!!!!!!!!"

    .line 559
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/devices/virtual/gpio_sw/gpio_sw/vbus"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 564
    new-instance v2, Ljava/io/BufferedWriter;

    invoke-direct {v2, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    if-eqz p0, :cond_0

    const-string p0, "1"

    .line 566
    invoke-virtual {v2, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "0"

    .line 568
    invoke-virtual {v2, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 570
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string v1, "Exception:"

    .line 572
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public static readBSPCheckN3ChipAlive()Z
    .locals 3

    const/4 v0, 0x0

    .line 605
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/kernel/bhd_n3_alive/bhd_n3_alive"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 606
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 607
    invoke-static {v1}, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->readFileStr(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    .line 608
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 613
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 615
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readBSPCheckN3ChipAlive  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static readBSPCheckN5ChipAlive()Z
    .locals 3

    const/4 v0, 0x0

    .line 622
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/kernel/bhd_n5_alive/bhd_n5_alive"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 623
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 624
    invoke-static {v1}, Lcom/hzbhd/midwareproxy/utils/DeviceDifferen;->readFileStr(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    .line 625
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 630
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 632
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readBSPCheckN5ChipAlive  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static readFileStr(Ljava/io/File;)Ljava/lang/String;
    .locals 1

    .line 304
    :try_start_0
    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 305
    new-instance p0, Ljava/io/BufferedReader;

    invoke-direct {p0, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 306
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 307
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 310
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method

.method public static setAnalogInputColor(Landroid/hardware/Camera;III)V
    .locals 1

    .line 103
    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->setAnalogInputColor(Landroid/hardware/Camera;III)V

    return-void
.end method

.method public static setAnalogInputColor(Landroid/hardware/Camera;IIII)V
    .locals 6

    .line 107
    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object v0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->setAnalogInputColor(Landroid/hardware/Camera;IIII)V

    return-void
.end method

.method public static t3O_ahd_tvd_poweron_for_dvd()Z
    .locals 4

    const-string v0, "ACCTEST"

    const-string/jumbo v1, "t3O_ahd_tvd_poweron_for_dvd!!!!!!!!!!!"

    .line 581
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/kernel/bhd_tvd_pm_dvd/bhd_tvdpm"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 586
    new-instance v2, Ljava/io/BufferedWriter;

    invoke-direct {v2, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const-string v1, "1"

    .line 587
    invoke-virtual {v2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 588
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    const-string v2, "Exception:"

    .line 590
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public static t3q_bhd_tvd_pm()Z
    .locals 4

    const-string v0, "ACCTEST"

    const-string v1, "bhd_tvd_pm!!!!!!!!!!!"

    .line 471
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/kernel/bhd_tvd_pm/bhd_tvdpm"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 476
    new-instance v2, Ljava/io/BufferedWriter;

    invoke-direct {v2, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const-string v1, "1"

    .line 477
    invoke-virtual {v2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 478
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    const-string v2, "Exception:"

    .line 480
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public static t3q_n3_bhd_tvd_pm()Z
    .locals 4

    const-string v0, "ACCTEST"

    const-string v1, "bhd_tvd_pm!!!!!!!!!!!"

    .line 490
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/kernel/bhd_tvd_pm/bhd_tvdpm"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 495
    new-instance v2, Ljava/io/BufferedWriter;

    invoke-direct {v2, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const-string v1, "0"

    .line 496
    invoke-virtual {v2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 497
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    const-string v2, "Exception:"

    .line 499
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public static t3q_write_sunxi_dump_ahdn3_cvbs()V
    .locals 4

    const-string/jumbo v0, "t3q_write_sunxi_dump_ahdn3_cvbs"

    const-string v1, ""

    .line 532
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/sunxi_dump/write"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 535
    new-instance v2, Ljava/io/BufferedWriter;

    invoke-direct {v2, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const-string v1, "1c09004 0x250300"

    .line 536
    invoke-virtual {v2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 537
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Exception:"

    .line 539
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static writeBhdEnv(II)V
    .locals 4

    .line 508
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->getbootloaderpath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "bhd_env"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 509
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 510
    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v2

    new-array v3, v2, [B

    .line 511
    invoke-virtual {v1, v3}, Ljava/io/FileInputStream;->read([B)I

    .line 512
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    add-int/lit8 v2, v2, -0x1

    if-le p0, v2, :cond_0

    add-int/lit8 v1, p0, 0x1

    .line 514
    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    :cond_0
    int-to-byte p1, p1

    .line 516
    aput-byte p1, v3, p0

    .line 517
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 518
    invoke-virtual {p0, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 519
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 521
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
