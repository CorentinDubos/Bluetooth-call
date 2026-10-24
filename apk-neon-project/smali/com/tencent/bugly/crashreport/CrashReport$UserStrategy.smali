.class public Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;
.super Lcom/tencent/bugly/BuglyStrategy;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/crashreport/CrashReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserStrategy"
.end annotation


# instance fields
.field private c:Lcom/tencent/bugly/crashreport/CrashReport$CrashHandleCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1266
    invoke-direct {p0}, Lcom/tencent/bugly/BuglyStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized getCallBackType()I
    .locals 1

    monitor-enter p0

    .line 1286
    :try_start_0
    iget v0, p0, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCloseErrorCallback()Z
    .locals 1

    monitor-enter p0

    .line 1303
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic getCrashHandleCallback()Lcom/tencent/bugly/BuglyStrategy$a;
    .locals 1

    .line 1262
    invoke-virtual {p0}, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;->getCrashHandleCallback()Lcom/tencent/bugly/crashreport/CrashReport$CrashHandleCallback;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getCrashHandleCallback()Lcom/tencent/bugly/crashreport/CrashReport$CrashHandleCallback;
    .locals 1

    monitor-enter p0

    .line 1313
    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;->c:Lcom/tencent/bugly/crashreport/CrashReport$CrashHandleCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCallBackType(I)V
    .locals 0

    monitor-enter p0

    .line 1278
    :try_start_0
    iput p1, p0, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1279
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setCloseErrorCallback(Z)V
    .locals 0

    monitor-enter p0

    .line 1295
    :try_start_0
    iput-boolean p1, p0, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1296
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setCrashHandleCallback(Lcom/tencent/bugly/crashreport/CrashReport$CrashHandleCallback;)V
    .locals 0

    monitor-enter p0

    .line 1323
    :try_start_0
    iput-object p1, p0, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;->c:Lcom/tencent/bugly/crashreport/CrashReport$CrashHandleCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1324
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
