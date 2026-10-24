.class public Lcom/hzbhd/midwareproxy/utils/HzbhdLog;
.super Ljava/lang/Object;
.source "HzbhdLog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createTag()Ljava/lang/String;
    .locals 4

    .line 21
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x2

    .line 22
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v2

    .line 23
    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    .line 24
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "("

    .line 25
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 3

    const-string v0, "PrintLogFlag"

    const/4 v1, 0x0

    .line 121
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    .line 122
    :cond_0
    sget-boolean v0, Lcom/hzbhd/midwareproxy/utils/SystemConstant;->LOG_DEBUG:Z

    if-eqz v0, :cond_1

    .line 123
    invoke-static {}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->createTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->getThreadNameAndId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 125
    invoke-static {}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->createTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->getThreadNameAndId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "PrintLogFlag"

    const/4 v1, 0x0

    .line 88
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "Tuner"

    .line 89
    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    :cond_1
    const-string v3, "opengl"

    .line 108
    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 109
    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    move v1, v2

    :cond_2
    if-eqz v1, :cond_5

    .line 110
    invoke-static {p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->getThreadNameAndId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 112
    :cond_3
    sget-boolean v1, Lcom/hzbhd/midwareproxy/utils/SystemConstant;->LOG_DEBUG:Z

    if-eqz v1, :cond_4

    .line 113
    invoke-static {}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->createTag()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->getThreadNameAndId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    .line 115
    invoke-static {p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->getThreadNameAndId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "PrintLogFlag"

    const/4 v1, 0x0

    .line 63
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    .line 64
    :cond_0
    sget-boolean v0, Lcom/hzbhd/midwareproxy/utils/SystemConstant;->LOG_ERROR:Z

    if-eqz v0, :cond_1

    .line 65
    invoke-static {}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->createTag()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->getThreadNameAndId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 67
    invoke-static {p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->getThreadNameAndId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const-string p2, "PrintLogFlag"

    const/4 v0, 0x0

    .line 71
    invoke-static {p2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    move v0, v1

    .line 72
    :cond_0
    sget-boolean p2, Lcom/hzbhd/midwareproxy/utils/SystemConstant;->LOG_ERROR:Z

    if-eqz p2, :cond_1

    .line 73
    invoke-static {}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->createTag()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->getThreadNameAndId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 75
    invoke-static {p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->getThreadNameAndId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public static getThreadNameAndId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "PrintLogFlag"

    const/4 v1, 0x0

    .line 79
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    .line 80
    :cond_0
    sget-boolean v0, Lcom/hzbhd/midwareproxy/utils/SystemConstant;->LOG_INFO:Z

    if-eqz v0, :cond_1

    .line 81
    invoke-static {}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->createTag()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->getThreadNameAndId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 83
    invoke-static {p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->getThreadNameAndId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public static logError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "PrintLogFlag"

    const/4 v1, 0x0

    .line 38
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    .line 39
    :cond_0
    sget-boolean v0, Lcom/hzbhd/midwareproxy/utils/SystemConstant;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 40
    invoke-static {}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->createTag()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->getThreadNameAndId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 42
    invoke-static {p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->getThreadNameAndId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public static logInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "PrintLogFlag"

    const/4 v1, 0x0

    .line 46
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    .line 47
    :cond_0
    sget-boolean v0, Lcom/hzbhd/midwareproxy/utils/SystemConstant;->LOG_INFO:Z

    if-eqz v0, :cond_1

    .line 48
    invoke-static {}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->createTag()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->getThreadNameAndId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 50
    invoke-static {p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->getThreadNameAndId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public static logWarn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "PrintLogFlag"

    const/4 v1, 0x0

    .line 30
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    .line 31
    :cond_0
    sget-boolean v0, Lcom/hzbhd/midwareproxy/utils/SystemConstant;->LOG_WARM:Z

    if-eqz v0, :cond_1

    .line 32
    invoke-static {}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->createTag()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->getThreadNameAndId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 34
    invoke-static {p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->getThreadNameAndId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "PrintLogFlag"

    const/4 v1, 0x0

    .line 130
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    .line 131
    :cond_0
    sget-boolean v0, Lcom/hzbhd/midwareproxy/utils/SystemConstant;->LOG_VERBOSE:Z

    if-eqz v0, :cond_1

    .line 132
    invoke-static {}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->createTag()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->getThreadNameAndId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 134
    invoke-static {p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->getThreadNameAndId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "PrintLogFlag"

    const/4 v1, 0x0

    .line 55
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    .line 56
    :cond_0
    sget-boolean v0, Lcom/hzbhd/midwareproxy/utils/SystemConstant;->LOG_WARM:Z

    if-eqz v0, :cond_1

    .line 57
    invoke-static {}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->createTag()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->getThreadNameAndId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 59
    invoke-static {p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->getThreadNameAndId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method
