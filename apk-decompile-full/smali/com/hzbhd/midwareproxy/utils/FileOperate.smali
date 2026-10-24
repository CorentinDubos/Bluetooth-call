.class public Lcom/hzbhd/midwareproxy/utils/FileOperate;
.super Ljava/lang/Object;
.source "FileOperate.java"


# static fields
.field private static TAG:Ljava/lang/String; = "FileOperate"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 22
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/FileOperate;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static createDir(Ljava/lang/String;)Z
    .locals 1

    .line 174
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    .line 176
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static createDirOnly(Ljava/lang/String;)Z
    .locals 1

    .line 180
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    .line 182
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static createDirs(Ljava/lang/String;)V
    .locals 5

    const-string v0, "/"

    .line 189
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const-string v1, ""

    const/4 v2, 0x0

    move-object v3, v1

    .line 191
    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_1

    .line 192
    aget-object v4, p0, v2

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 194
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p0, v2

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 195
    invoke-static {v3}, Lcom/hzbhd/midwareproxy/utils/FileOperate;->createDirOnly(Ljava/lang/String;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static delDir(Ljava/lang/String;)V
    .locals 5

    .line 228
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 230
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    .line 231
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 232
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 233
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hzbhd/midwareproxy/utils/FileOperate;->delDir(Ljava/lang/String;)V

    goto :goto_1

    .line 236
    :cond_0
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 239
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_2
    return-void
.end method

.method public static delFile(Ljava/lang/String;)V
    .locals 1

    .line 535
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 536
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 537
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public static delFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 220
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 222
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public static getImage(Ljava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 467
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 468
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    const/16 v0, 0x1770

    .line 469
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string v0, "GET"

    .line 470
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 471
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 472
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0

    const/16 v1, 0xc8

    if-ne p0, v1, :cond_0

    .line 473
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/FileOperate;->readStream(Ljava/io/InputStream;)[B

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isFileExist(Ljava/lang/String;)Z
    .locals 1

    .line 283
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 284
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public static isFileExistInAssets(Landroid/content/res/AssetManager;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 295
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 296
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v1, :cond_1

    .line 306
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 309
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    .line 302
    :try_start_2
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_1

    .line 306
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    :goto_0
    return v0

    :goto_1
    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 309
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 312
    :cond_2
    :goto_2
    throw p0
.end method

.method public static readFile(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    .line 483
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 484
    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result p1

    .line 485
    new-array p0, p1, [B

    .line 486
    invoke-virtual {v0, p0}, Ljava/io/FileInputStream;->read([B)I

    .line 487
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 490
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object p0
.end method

.method public static readFile(Ljava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 499
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 500
    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result p0

    .line 501
    new-array v0, p0, [B

    .line 502
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 503
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 506
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static readFileInAssets(Landroid/content/res/AssetManager;Ljava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 518
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 521
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p1

    .line 522
    new-array v0, p1, [B

    .line 523
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    .line 529
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v0, p0

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v1, v0

    move-object v0, p0

    move-object p0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    move-object p0, v0

    .line 526
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_0

    .line 529
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    move-object v0, p0

    :cond_1
    :goto_1
    return-object v0

    :goto_2
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 531
    :cond_2
    throw p1
.end method

.method public static readStream(Ljava/io/InputStream;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 449
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 452
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    .line 453
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 455
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 456
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 457
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public BufferedReaderDemo(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_1

    .line 159
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {p1, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 161
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 162
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 165
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 158
    :cond_1
    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-direct {p1}, Ljava/io/FileNotFoundException;-><init>()V

    throw p1
.end method

.method public FileInputStreamDemo(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_1

    .line 139
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v0, 0x400

    new-array v1, v0, [B

    .line 141
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 142
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 143
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-array v1, v0, [B

    goto :goto_0

    .line 146
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 138
    :cond_1
    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-direct {p1}, Ljava/io/FileNotFoundException;-><init>()V

    throw p1
.end method

.method public PrintStreamDemo()V
    .locals 4

    .line 64
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    const-string v1, "D:/test.txt"

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 65
    new-instance v1, Ljava/io/PrintStream;

    invoke-direct {v1, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " line"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 69
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public StringBufferDemo()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    new-instance v0, Ljava/io/File;

    const-string v1, "/root/sms.log"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 80
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 81
    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x2710

    if-ge v0, v2, :cond_1

    .line 83
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 84
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u8fd9\u662f\u7b2c"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u884c:\u524d\u9762\u4ecb\u7ecd\u7684\u5404\u79cd\u65b9\u6cd5\u90fd\u4e0d\u5173\u7528,\u4e3a\u4ec0\u4e48\u603b\u662f\u5947\u602a\u7684\u95ee\u9898 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "utf-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method

.method public changeDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .line 115
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 116
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p4, :cond_0

    .line 120
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_0

    .line 122
    :cond_0
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "\u5728\u65b0\u76ee\u5f55\u4e0b\u5df2\u7ecf\u5b58\u5728\uff1a"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 125
    :cond_1
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public copyFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 45
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_0

    .line 47
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 48
    :cond_0
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 p1, 0x400

    new-array p1, p1, [B

    .line 51
    :cond_1
    invoke-virtual {v0, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 53
    aget-byte v3, p1, v2

    invoke-virtual {p2, v3}, Ljava/io/FileOutputStream;->write(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 55
    :cond_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 56
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method

.method public createFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 210
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    :cond_0
    return-object v0
.end method

.method public getInputMessage()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "\u8bf7\u8f93\u5165\u60a8\u7684\u547d\u4ee4\u2236"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 31
    sget-object v1, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    .line 32
    new-array v2, v1, [C

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 34
    aget-byte v4, v0, v3

    int-to-char v4, v4

    aput-char v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public getInputStreamFromUrl(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    .line 322
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 323
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    const/16 v0, 0x1770

    .line 324
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string v0, "GET"

    .line 325
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 326
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 327
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 328
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 333
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 331
    invoke-virtual {p1}, Ljava/net/MalformedURLException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public loadfile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 341
    new-instance v0, Lcom/hzbhd/midwareproxy/utils/FileOperate$1;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/hzbhd/midwareproxy/utils/FileOperate$1;-><init>(Lcom/hzbhd/midwareproxy/utils/FileOperate;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 367
    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public renameFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 96
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 97
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    new-instance p2, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 100
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p3, "\u5df2\u7ecf\u5b58\u5728\uff01"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {v0, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public write2SDFromInput(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/File;
    .locals 3

    const/4 v0, 0x0

    .line 254
    :try_start_0
    invoke-static {p1}, Lcom/hzbhd/midwareproxy/utils/FileOperate;->createDir(Ljava/lang/String;)Z

    .line 255
    invoke-virtual {p0, p1, p2}, Lcom/hzbhd/midwareproxy/utils/FileOperate;->createFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 256
    :try_start_1
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v0, 0x400

    :try_start_2
    new-array v0, v0, [B

    .line 258
    :goto_0
    invoke-virtual {p3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 259
    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 261
    :cond_0
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 268
    :try_start_3
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    .line 270
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v0, p2

    goto :goto_3

    :catch_1
    move-exception p3

    move-object v0, p2

    goto :goto_1

    :catch_2
    move-exception p3

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_3
    move-exception p3

    move-object p1, v0

    .line 264
    :goto_1
    :try_start_4
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 268
    :try_start_5
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :goto_2
    return-object p1

    :goto_3
    :try_start_6
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_4

    :catch_4
    move-exception p2

    .line 270
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 272
    :goto_4
    throw p1
.end method
