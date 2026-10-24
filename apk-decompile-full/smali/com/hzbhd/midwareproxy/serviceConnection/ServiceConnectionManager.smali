.class public Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnectionManager;
.super Ljava/lang/Object;
.source "ServiceConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnectionManager$MonitorRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ServiceConnectionManager"

.field static mServiceManager:Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnectionManager;


# instance fields
.field private mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mServiceNeedConnected:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mServices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkThread:Ljava/lang/Thread;


# direct methods
.method private constructor <init>()V
    .locals 4

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnectionManager$MonitorRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnectionManager$MonitorRunnable;-><init>(Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnectionManager;Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnectionManager$1;)V

    const-string v3, "ServiceConnectionManager thread"

    invoke-direct {v0, v2, v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnectionManager;->mWorkThread:Ljava/lang/Thread;

    .line 18
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnectionManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnectionManager;->mServices:Ljava/util/HashMap;

    .line 30
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnectionManager;->mServiceNeedConnected:Ljava/util/Vector;

    .line 31
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnectionManager;->mWorkThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic access$100(Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnectionManager;)Ljava/util/Vector;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnectionManager;->mServiceNeedConnected:Ljava/util/Vector;

    return-object p0
.end method

.method public static declared-synchronized getServiceConnectionManager()Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnectionManager;
    .locals 2

    const-class v0, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnectionManager;

    monitor-enter v0

    .line 21
    :try_start_0
    sget-object v1, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnectionManager;->mServiceManager:Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnectionManager;

    if-nez v1, :cond_0

    .line 22
    new-instance v1, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnectionManager;

    invoke-direct {v1}, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnectionManager;-><init>()V

    sput-object v1, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnectionManager;->mServiceManager:Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnectionManager;

    .line 24
    :cond_0
    sget-object v1, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnectionManager;->mServiceManager:Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnectionManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public checkService()V
    .locals 6

    .line 69
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnectionManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 70
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 71
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnectionManager;->mServiceNeedConnected:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;

    .line 72
    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;->isServiceConnected()Z

    move-result v3

    const-string v4, "ServiceConnectionManager"

    if-nez v3, :cond_0

    .line 73
    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkService in back thread add: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkService in back thread del: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :cond_1
    iput-object v0, p0, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnectionManager;->mServiceNeedConnected:Ljava/util/Vector;

    .line 80
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnectionManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public connectService()Z
    .locals 5

    .line 54
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnectionManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 55
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnectionManager;->mServiceNeedConnected:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;

    .line 56
    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;->getServiceConnection()Z

    move-result v2

    const-string v3, "ServiceConnectionManager"

    if-nez v2, :cond_0

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doBindService in back thread fail: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;->getServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doBindService in back thread success: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;->getServiceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;->serviceReConnected()V

    goto :goto_0

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnectionManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x0

    return v0
.end method

.method public onServiceDisconnected(Ljava/lang/String;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnectionManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 44
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnectionManager;->mServices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;

    if-eqz p1, :cond_0

    .line 46
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnectionManager;->mServiceNeedConnected:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnectionManager;->mServiceNeedConnected:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnectionManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public registerConnectionListener(Ljava/lang/String;Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnectionManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 36
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnectionManager;->mServices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnectionManager;->mServices:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnectionManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method
