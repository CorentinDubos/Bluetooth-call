.class Lcom/hzbhd/midwareproxy/utils/ConfigUtils$2;
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

    .line 135
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/utils/ConfigUtils$2;->this$0:Lcom/hzbhd/midwareproxy/utils/ConfigUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string/jumbo v0, "ts_config.xml"

    const-string v1, "/data/bhd"

    const/4 v2, 0x1

    .line 139
    invoke-static {v2}, Lcom/hzbhd/midwareproxy/utils/ConfigUtils;->access$002(Z)Z

    const/4 v2, 0x0

    .line 141
    :try_start_0
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-static {}, Landroid/app/TsXmlUtil;->updateShared()V

    .line 143
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/hzbhd/midwareproxy/utils/ConfigUtils$TS_DEFULT;->TSCONFIG:Lcom/hzbhd/midwareproxy/utils/ConfigUtils$TS_DEFULT;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/utils/ConfigUtils$TS_DEFULT;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 144
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 145
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 146
    sget-object v1, Lcom/hzbhd/midwareproxy/utils/ConfigUtils$TS_DEFULT;->TSCONFIG:Lcom/hzbhd/midwareproxy/utils/ConfigUtils$TS_DEFULT;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/utils/ConfigUtils$TS_DEFULT;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/app/TsXmlUtil;->setStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-static {}, Landroid/app/TsXmlUtil;->commit()V

    .line 148
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 149
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/hzbhd/midwareproxy/utils/ConfigUtils;->access$100()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 153
    :cond_0
    invoke-static {v3, v1}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/utils/ConfigUtils$2;->this$0:Lcom/hzbhd/midwareproxy/utils/ConfigUtils;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/ConfigUtils;->access$200(Lcom/hzbhd/midwareproxy/utils/ConfigUtils;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 154
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "no ts file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 158
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 159
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/utils/ConfigUtils$2;->this$0:Lcom/hzbhd/midwareproxy/utils/ConfigUtils;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/ConfigUtils;->access$200(Lcom/hzbhd/midwareproxy/utils/ConfigUtils;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 161
    :goto_0
    invoke-static {v2}, Lcom/hzbhd/midwareproxy/utils/ConfigUtils;->access$002(Z)Z

    return-void
.end method
