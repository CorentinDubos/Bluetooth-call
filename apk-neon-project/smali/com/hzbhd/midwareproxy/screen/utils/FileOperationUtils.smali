.class public Lcom/hzbhd/midwareproxy/screen/utils/FileOperationUtils;
.super Ljava/lang/Object;
.source "FileOperationUtils.java"


# static fields
.field static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-class v0, Lcom/hzbhd/midwareproxy/screen/utils/FileOperationUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/midwareproxy/screen/utils/FileOperationUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSameFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 27
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 28
    :try_start_1
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 30
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result p1

    .line 31
    invoke-virtual {p0}, Ljava/io/FileInputStream;->available()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 35
    new-array v3, p1, [B

    .line 36
    new-array v0, v0, [B

    .line 39
    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    .line 40
    invoke-virtual {p0, v0}, Ljava/io/FileInputStream;->read([B)I

    move v4, v1

    :goto_0
    if-ge v4, p1, :cond_1

    .line 45
    aget-byte v5, v3, v4

    aget-byte v6, v0, v4

    if-eq v5, v6, :cond_0

    .line 46
    sget-object p1, Lcom/hzbhd/midwareproxy/screen/utils/FileOperationUtils;->TAG:Ljava/lang/String;

    const-string v0, "isSameFile \u6587\u4ef6\u5185\u5bb9\u4e0d\u4e00\u6837"

    invoke-static {p1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 74
    :try_start_4
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return v1

    :catch_0
    move-exception p0

    .line 77
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return v1

    :catch_1
    move-exception p0

    .line 68
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return v1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 50
    :cond_1
    :try_start_5
    sget-object p1, Lcom/hzbhd/midwareproxy/screen/utils/FileOperationUtils;->TAG:Ljava/lang/String;

    const-string v0, "isSameFile \u4e24\u4e2a\u6587\u4ef6\u5b8c\u5168\u76f8\u540c"

    invoke-static {p1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 65
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 74
    :try_start_7
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    const/4 p0, 0x1

    return p0

    :catch_2
    move-exception p0

    .line 77
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return v1

    :catch_3
    move-exception p0

    .line 68
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return v1

    .line 65
    :cond_2
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 74
    :try_start_9
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    return v1

    :catch_4
    move-exception p0

    .line 77
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return v1

    :catch_5
    move-exception p0

    .line 68
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return v1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_6
    move-exception p1

    goto :goto_2

    :catch_7
    move-exception p1

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object p0, v0

    :goto_1
    move-object v0, v2

    goto :goto_a

    :catch_8
    move-exception p1

    move-object p0, v0

    :goto_2
    move-object v0, v2

    goto :goto_4

    :catch_9
    move-exception p1

    move-object p0, v0

    :goto_3
    move-object v0, v2

    goto :goto_7

    :catchall_2
    move-exception p1

    move-object p0, v0

    goto :goto_a

    :catch_a
    move-exception p1

    move-object p0, v0

    .line 60
    :goto_4
    :try_start_a
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    if-eqz v0, :cond_3

    .line 65
    :try_start_b
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_5

    :catch_b
    move-exception p0

    .line 68
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return v1

    :cond_3
    :goto_5
    if-eqz p0, :cond_4

    .line 74
    :try_start_c
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_6

    :catch_c
    move-exception p0

    .line 77
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_6
    return v1

    :catch_d
    move-exception p1

    move-object p0, v0

    .line 57
    :goto_7
    :try_start_d
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    if-eqz v0, :cond_5

    .line 65
    :try_start_e
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_e

    goto :goto_8

    :catch_e
    move-exception p0

    .line 68
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return v1

    :cond_5
    :goto_8
    if-eqz p0, :cond_6

    .line 74
    :try_start_f
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_f

    goto :goto_9

    :catch_f
    move-exception p0

    .line 77
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_6
    :goto_9
    return v1

    :catchall_3
    move-exception p1

    :goto_a
    if-eqz v0, :cond_7

    .line 65
    :try_start_10
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_10

    goto :goto_b

    :catch_10
    move-exception p0

    .line 68
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return v1

    :cond_7
    :goto_b
    if-eqz p0, :cond_8

    .line 74
    :try_start_11
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_11

    goto :goto_c

    :catch_11
    move-exception p0

    .line 77
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return v1

    .line 81
    :cond_8
    :goto_c
    throw p1
.end method

.method public static declared-synchronized readBHDcfg()Ljava/lang/String;
    .locals 6

    const-class v0, Lcom/hzbhd/midwareproxy/screen/utils/FileOperationUtils;

    monitor-enter v0

    .line 106
    :try_start_0
    sget-object v1, Lcom/hzbhd/midwareproxy/screen/utils/FileOperationUtils;->TAG:Ljava/lang/String;

    const-string v2, "readBHDcfg "

    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    :try_start_1
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->getbootloaderpath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->vcfg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 110
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v1

    new-array v3, v1, [B

    .line 111
    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    .line 112
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 113
    new-array v2, v1, [C

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    .line 115
    aget-byte v5, v3, v4

    int-to-char v5, v5

    aput-char v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 117
    :cond_0
    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catch_0
    move-exception v1

    .line 126
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v1, 0x0

    .line 128
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized writeBHDcfg(Ljava/lang/String;)V
    .locals 4

    const-class v0, Lcom/hzbhd/midwareproxy/screen/utils/FileOperationUtils;

    monitor-enter v0

    .line 86
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->getInstance()Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hzbhd/midwareproxy/hardware/DefaultHardware_Platform;->getbootloaderpath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/hzbhd/midwareproxy/screen/displayplatform/DefaultPlayform;->vcfg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 95
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 96
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 97
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 99
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 102
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method
