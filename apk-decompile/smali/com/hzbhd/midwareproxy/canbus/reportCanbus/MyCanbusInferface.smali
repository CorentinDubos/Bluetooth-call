.class public Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface;
.super Ljava/lang/Object;
.source "MyCanbusInferface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface$CallBack;
    }
.end annotation


# static fields
.field private static isBind:Z = false

.field private static mCallBack:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface$CallBack;

.field public static mContext:Landroid/content/Context;

.field static mHander:Landroid/os/Handler;

.field private static mICanbusInterface:Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

.field private static mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 54
    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface$2;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface;->mHander:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;
    .locals 1

    .line 23
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface;->mICanbusInterface:Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    return-object v0
.end method

.method static synthetic access$002(Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;)Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;
    .locals 0

    .line 23
    sput-object p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface;->mICanbusInterface:Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    return-object p0
.end method

.method static synthetic access$100()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface$CallBack;
    .locals 1

    .line 23
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface;->mCallBack:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface$CallBack;

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface$CallBack;)V
    .locals 0

    .line 23
    invoke-static {p0, p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface;->bindCanbusService(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface$CallBack;)V

    return-void
.end method

.method private static bindCanbusService(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface$CallBack;)V
    .locals 2

    .line 32
    sput-object p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface;->mContext:Landroid/content/Context;

    .line 33
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 34
    sget-object v1, Lcom/hzbhd/midware/constant/HzbhdComponentName;->CanBusService:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 35
    new-instance v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface$1;

    invoke-direct {v1, p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface$1;-><init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface$CallBack;)V

    sput-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 p1, 0x1

    .line 49
    invoke-virtual {p0, v0, v1, p1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    sput-boolean p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface;->isBind:Z

    return-void
.end method

.method private static pingBinder()Z
    .locals 4

    const-string v0, "ljq"

    const-string v1, "pingBinder: in"

    .line 98
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface;->mICanbusInterface:Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    invoke-interface {v1}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->pingBinder()Z

    move-result v1

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pingBinder: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static sendMsg(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface$CallBack;)V
    .locals 1

    .line 82
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface;->mICanbusInterface:Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface;->pingBinder()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    :try_start_0
    sget-object p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface;->mICanbusInterface:Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    invoke-interface {p1, p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface$CallBack;->callBack(Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 88
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 83
    :cond_1
    :goto_0
    invoke-static {p0, p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface;->bindCanbusService(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface$CallBack;)V

    :goto_1
    return-void
.end method

.method public static unbindService(Landroid/content/Context;)V
    .locals 2

    .line 72
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface;->isBind:Z

    if-eqz v0, :cond_0

    .line 73
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 p0, 0x0

    .line 74
    sput-boolean p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface;->isBind:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MyCanbusInferface unbindService Exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "fzy"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
