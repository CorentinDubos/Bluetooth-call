.class public Lcom/hzbhd/midwareproxy/utils/ConfigUtils;
.super Ljava/lang/Object;
.source "ConfigUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/utils/ConfigUtils$EXPORT_MSG;,
        Lcom/hzbhd/midwareproxy/utils/ConfigUtils$TS_DEFULT;
    }
.end annotation


# static fields
.field public static final ANDROID_CONFIG:Ljava/lang/String; = "android_config"

.field private static final EXPORT_FAULT:I = 0x2

.field private static final EXPORT_ING:I = 0x1

.field private static final EXPORT_OK:I = 0x0

.field public static final HD_LOGO:Ljava/lang/String; = "logo_hd.bmp"

.field public static final LOGO_ANIM:Ljava/lang/String; = "bootanimation.zip"

.field public static final LOGO_DIR:Ljava/lang/String; = "LOGO_DEFAULT"

.field public static final PATH_BOOT_LOADER:Ljava/lang/String;

.field public static final PATH_CACHE:Ljava/lang/String;

.field public static final PATH_CHACHE_ROCOVERY:Ljava/lang/String;

.field public static final SD_LOGO:Ljava/lang/String; = "logo_sd.bmp"

.field static TAG:Ljava/lang/String; = null

.field public static final XML:Ljava/lang/String; = ".xml"

.field public static final ZIP:Ljava/lang/String; = ".zip"

.field private static isExporting:Z

.field static mConfigUtils:Lcom/hzbhd/midwareproxy/utils/ConfigUtils;

.field public static storagePath:[Ljava/lang/String;

.field private static tsFilePath:Ljava/lang/String;


# instance fields
.field private exportAndroidConfigRun:Ljava/lang/Runnable;

.field private exportRun:Ljava/lang/Runnable;

.field mContext:Landroid/content/Context;

.field private stateHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    const-class v0, Lcom/hzbhd/midwareproxy/utils/ConfigUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/midwareproxy/utils/ConfigUtils;->TAG:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "bootloader"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/midwareproxy/utils/ConfigUtils;->PATH_BOOT_LOADER:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/midwareproxy/utils/ConfigUtils;->PATH_CACHE:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/hzbhd/midwareproxy/utils/ConfigUtils;->PATH_CACHE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "recovery"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/midwareproxy/utils/ConfigUtils;->PATH_CHACHE_ROCOVERY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Lcom/hzbhd/midwareproxy/utils/ConfigUtils$1;

    invoke-direct {v0, p0}, Lcom/hzbhd/midwareproxy/utils/ConfigUtils$1;-><init>(Lcom/hzbhd/midwareproxy/utils/ConfigUtils;)V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/utils/ConfigUtils;->exportAndroidConfigRun:Ljava/lang/Runnable;

    .line 135
    new-instance v0, Lcom/hzbhd/midwareproxy/utils/ConfigUtils$2;

    invoke-direct {v0, p0}, Lcom/hzbhd/midwareproxy/utils/ConfigUtils$2;-><init>(Lcom/hzbhd/midwareproxy/utils/ConfigUtils;)V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/utils/ConfigUtils;->exportRun:Ljava/lang/Runnable;

    .line 165
    new-instance v0, Lcom/hzbhd/midwareproxy/utils/ConfigUtils$3;

    invoke-direct {v0, p0}, Lcom/hzbhd/midwareproxy/utils/ConfigUtils$3;-><init>(Lcom/hzbhd/midwareproxy/utils/ConfigUtils;)V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/utils/ConfigUtils;->stateHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    .line 27
    sput-boolean p0, Lcom/hzbhd/midwareproxy/utils/ConfigUtils;->isExporting:Z

    return p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 27
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/ConfigUtils;->tsFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/hzbhd/midwareproxy/utils/ConfigUtils;)Landroid/os/Handler;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/hzbhd/midwareproxy/utils/ConfigUtils;->stateHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private addHead(Ljava/nio/channels/FileChannel;)V
    .locals 2

    .line 278
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->VERSION:Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getSharedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 279
    array-length v1, v0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 280
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 281
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 282
    invoke-virtual {p1, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 284
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private addZipFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/util/zip/ZipOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0x2000

    const/4 v1, 0x0

    :try_start_0
    new-array v0, v0, [B

    .line 220
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 221
    :try_start_1
    new-instance p3, Ljava/util/zip/ZipEntry;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 223
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    const/4 p2, 0x0

    .line 224
    invoke-virtual {p4, v0, p2, p1}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_0

    .line 226
    :cond_0
    invoke-virtual {p4}, Ljava/util/zip/ZipOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 229
    invoke-virtual {p4}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    return-void

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 228
    :goto_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 229
    invoke-virtual {p4}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 230
    throw p1
.end method

.method private exportConfigZipFile(Ljava/io/File;Ljava/io/File;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 239
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 240
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 243
    :cond_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 244
    :try_start_1
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 245
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 246
    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 248
    invoke-direct {p0, v0}, Lcom/hzbhd/midwareproxy/utils/ConfigUtils;->addHead(Ljava/nio/channels/FileChannel;)V

    const/16 v2, 0x200

    move v3, v2

    .line 250
    :cond_1
    :goto_0
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 251
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 268
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 269
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 270
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->close()V

    .line 271
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    return-void

    .line 254
    :cond_2
    :try_start_4
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v6

    sub-long/2addr v4, v6

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-gez v3, :cond_3

    .line 255
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v5

    sub-long/2addr v3, v5

    long-to-int v3, v3

    goto :goto_1

    :cond_3
    move v3, v2

    .line 259
    :goto_1
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 260
    invoke-virtual {p2, v4}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 261
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 262
    invoke-virtual {v0, v4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 263
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-int v4, v4

    if-eq v3, v4, :cond_1

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 264
    invoke-direct {p0, v0}, Lcom/hzbhd/midwareproxy/utils/ConfigUtils;->addHead(Ljava/nio/channels/FileChannel;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    move-object v8, p2

    move-object p2, p1

    move-object p1, v2

    move-object v2, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_2

    :catchall_1
    move-exception p2

    move-object v2, v0

    move-object v0, v1

    move-object v1, v2

    move-object v8, p2

    move-object p2, p1

    move-object p1, v8

    goto :goto_2

    :catchall_2
    move-exception p1

    move-object p2, v0

    move-object v2, p2

    move-object v0, v1

    move-object v1, v2

    goto :goto_2

    :catchall_3
    move-exception p1

    move-object p2, v0

    move-object v1, p2

    move-object v2, v1

    .line 268
    :goto_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 269
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    .line 270
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 271
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    .line 272
    throw p1
.end method

.method public static getInstance()Lcom/hzbhd/midwareproxy/utils/ConfigUtils;
    .locals 1

    .line 72
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/ConfigUtils;->mConfigUtils:Lcom/hzbhd/midwareproxy/utils/ConfigUtils;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/hzbhd/midwareproxy/utils/ConfigUtils;

    invoke-direct {v0}, Lcom/hzbhd/midwareproxy/utils/ConfigUtils;-><init>()V

    sput-object v0, Lcom/hzbhd/midwareproxy/utils/ConfigUtils;->mConfigUtils:Lcom/hzbhd/midwareproxy/utils/ConfigUtils;

    .line 75
    :cond_0
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/ConfigUtils;->mConfigUtils:Lcom/hzbhd/midwareproxy/utils/ConfigUtils;

    return-object v0
.end method


# virtual methods
.method public exportAndroidConfigFile(Ljava/lang/String;)Z
    .locals 3

    .line 110
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/ConfigUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exportAndroidConfigFile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/ConfigUtils$EXPORT_MSG;->ANDROID_CONFIG:Lcom/hzbhd/midwareproxy/utils/ConfigUtils$EXPORT_MSG;

    invoke-virtual {p0, v0, p1}, Lcom/hzbhd/midwareproxy/utils/ConfigUtils;->exportConfigFile(Lcom/hzbhd/midwareproxy/utils/ConfigUtils$EXPORT_MSG;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public exportConfigFile(Lcom/hzbhd/midwareproxy/utils/ConfigUtils$EXPORT_MSG;Ljava/lang/String;)Z
    .locals 2

    .line 87
    sput-object p2, Lcom/hzbhd/midwareproxy/utils/ConfigUtils;->tsFilePath:Ljava/lang/String;

    .line 88
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-nez p2, :cond_0

    .line 89
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/utils/ConfigUtils;->stateHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return v1

    .line 92
    :cond_0
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/utils/ConfigUtils;->stateHandler:Landroid/os/Handler;

    invoke-virtual {p2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 93
    sget-boolean p2, Lcom/hzbhd/midwareproxy/utils/ConfigUtils;->isExporting:Z

    if-nez p2, :cond_3

    .line 94
    sget-object p2, Lcom/hzbhd/midwareproxy/utils/ConfigUtils$4;->$SwitchMap$com$hzbhd$midwareproxy$utils$ConfigUtils$EXPORT_MSG:[I

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/utils/ConfigUtils$EXPORT_MSG;->ordinal()I

    move-result p1

    aget p1, p2, p1

    if-eq p1, v1, :cond_2

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 99
    :cond_1
    new-instance p1, Ljava/lang/Thread;

    iget-object p2, p0, Lcom/hzbhd/midwareproxy/utils/ConfigUtils;->exportAndroidConfigRun:Ljava/lang/Runnable;

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 96
    :cond_2
    new-instance p1, Ljava/lang/Thread;

    iget-object p2, p0, Lcom/hzbhd/midwareproxy/utils/ConfigUtils;->exportRun:Ljava/lang/Runnable;

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_3
    :goto_0
    return v1
.end method

.method public exportConfigZip(Ljava/io/File;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 184
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/hzbhd/midwareproxy/utils/ConfigUtils;->PATH_BOOT_LOADER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "android_config"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".xml"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 185
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/hzbhd/midwareproxy/utils/ConfigUtils;->PATH_BOOT_LOADER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "logo_sd.bmp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 186
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/hzbhd/midwareproxy/utils/ConfigUtils;->PATH_BOOT_LOADER:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "logo_hd.bmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 187
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/hzbhd/midwareproxy/utils/ConfigUtils;->PATH_BOOT_LOADER:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "bootanimation.zip"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 188
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/hzbhd/midwareproxy/utils/ConfigUtils;->PATH_CHACHE_ROCOVERY:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".zip"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 190
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_0
    const/4 v2, 0x0

    .line 195
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 196
    :try_start_1
    new-instance v7, Ljava/util/zip/ZipOutputStream;

    new-instance v8, Ljava/io/BufferedOutputStream;

    invoke-direct {v8, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v7, v8}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 198
    :try_start_2
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v8, "android_config.xml"

    invoke-direct {p0, v2, v8, v0, v7}, Lcom/hzbhd/midwareproxy/utils/ConfigUtils;->addZipFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/util/zip/ZipOutputStream;)V

    .line 200
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v2, "LOGO_DEFAULT"

    if-eqz v0, :cond_1

    .line 201
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "logo_sd.bmp_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v9

    sget-object v10, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->BOOT_LOGO:Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;

    invoke-virtual {v10}, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getSharedInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v0, v8, v1, v7}, Lcom/hzbhd/midwareproxy/utils/ConfigUtils;->addZipFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/util/zip/ZipOutputStream;)V

    .line 203
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "logo_hd.bmp_"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v8

    sget-object v9, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->BOOT_LOGO:Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;

    invoke-virtual {v9}, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getSharedInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v3, v7}, Lcom/hzbhd/midwareproxy/utils/ConfigUtils;->addZipFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/util/zip/ZipOutputStream;)V

    .line 204
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bootanimation.zip_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v2

    sget-object v3, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->BOOT_ANIM:Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;

    invoke-virtual {v3}, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getSharedInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v4, v7}, Lcom/hzbhd/midwareproxy/utils/ConfigUtils;->addZipFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/util/zip/ZipOutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 208
    :cond_2
    invoke-virtual {v7}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 209
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 211
    invoke-static {}, Lcom/softwinner/SystemMix;->bhd_sync()I

    .line 212
    invoke-direct {p0, v5, p1}, Lcom/hzbhd/midwareproxy/utils/ConfigUtils;->exportConfigZipFile(Ljava/io/File;Ljava/io/File;)V

    .line 213
    invoke-static {}, Lcom/softwinner/SystemMix;->bhd_sync()I

    return-void

    :catchall_0
    move-exception p1

    move-object v2, v7

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_0

    :catchall_2
    move-exception p1

    move-object v6, v2

    .line 208
    :goto_0
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 209
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 210
    throw p1
.end method

.method public exportTsConfigFile(Ljava/lang/String;)Z
    .locals 3

    .line 106
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/ConfigUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exportTsConfigFile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/ConfigUtils$EXPORT_MSG;->TSCONFIG:Lcom/hzbhd/midwareproxy/utils/ConfigUtils$EXPORT_MSG;

    invoke-virtual {p0, v0, p1}, Lcom/hzbhd/midwareproxy/utils/ConfigUtils;->exportConfigFile(Lcom/hzbhd/midwareproxy/utils/ConfigUtils$EXPORT_MSG;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/utils/ConfigUtils;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public init(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/utils/ConfigUtils;
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/utils/ConfigUtils;->mContext:Landroid/content/Context;

    .line 79
    sget-object p1, Lcom/hzbhd/midwareproxy/utils/ConfigUtils;->mConfigUtils:Lcom/hzbhd/midwareproxy/utils/ConfigUtils;

    return-object p1
.end method
