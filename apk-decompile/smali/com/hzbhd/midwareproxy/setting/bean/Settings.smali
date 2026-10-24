.class public Lcom/hzbhd/midwareproxy/setting/bean/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# static fields
.field public static TAG:Ljava/lang/String;

.field static mSettings:Lcom/hzbhd/midwareproxy/setting/bean/Settings;


# instance fields
.field cameraMode:I

.field mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-class v0, Lcom/hzbhd/midwareproxy/setting/bean/Settings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/midwareproxy/setting/bean/Settings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/setting/bean/Settings;->mContext:Landroid/content/Context;

    const-string p1, "cameraMode"

    const/4 v0, 0x0

    .line 32
    invoke-virtual {p0, p1, v0}, Lcom/hzbhd/midwareproxy/setting/bean/Settings;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/setting/bean/Settings;->cameraMode:I

    .line 33
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/hzbhd/midwareproxy/setting/bean/Settings;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_setInt"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/setting/bean/Settings;
    .locals 3

    const-class v0, Lcom/hzbhd/midwareproxy/setting/bean/Settings;

    monitor-enter v0

    .line 23
    :try_start_0
    sget-object v1, Lcom/hzbhd/midwareproxy/setting/bean/Settings;->mSettings:Lcom/hzbhd/midwareproxy/setting/bean/Settings;

    if-nez v1, :cond_0

    .line 24
    new-instance v1, Lcom/hzbhd/midwareproxy/setting/bean/Settings;

    invoke-direct {v1, p0}, Lcom/hzbhd/midwareproxy/setting/bean/Settings;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/hzbhd/midwareproxy/setting/bean/Settings;->mSettings:Lcom/hzbhd/midwareproxy/setting/bean/Settings;

    .line 26
    :cond_0
    sget-object p0, Lcom/hzbhd/midwareproxy/setting/bean/Settings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSettings "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/hzbhd/midwareproxy/setting/bean/Settings;->mSettings:Lcom/hzbhd/midwareproxy/setting/bean/Settings;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    sget-object p0, Lcom/hzbhd/midwareproxy/setting/bean/Settings;->mSettings:Lcom/hzbhd/midwareproxy/setting/bean/Settings;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public getCameraMode()I
    .locals 2

    const-string v0, "cameraMode"

    const/4 v1, 0x0

    .line 37
    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midwareproxy/setting/bean/Settings;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/setting/bean/Settings;->cameraMode:I

    return v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 3

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/hzbhd/midwareproxy/setting/bean/Settings;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_getInt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hzbhd/midwareproxy/setting/bean/Settings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/setting/bean/Settings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public setCameraMode(I)V
    .locals 1

    .line 42
    iput p1, p0, Lcom/hzbhd/midwareproxy/setting/bean/Settings;->cameraMode:I

    const-string v0, "cameraMode"

    .line 43
    invoke-virtual {p0, v0, p1}, Lcom/hzbhd/midwareproxy/setting/bean/Settings;->setInt(Ljava/lang/String;I)V

    .line 44
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/setting/bean/Settings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/screen/data/ScreenLogic;->getInstance(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/screen/data/ScreenLogic;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/screen/data/ScreenLogic;->screenResponseStop()V

    return-void
.end method

.method public setInt(Ljava/lang/String;I)V
    .locals 3

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/hzbhd/midwareproxy/setting/bean/Settings;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_setInt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/setting/bean/Settings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
