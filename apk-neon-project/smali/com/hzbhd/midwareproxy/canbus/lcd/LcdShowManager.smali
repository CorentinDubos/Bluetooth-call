.class public Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;
.super Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;
.source "LcdShowManager.java"


# static fields
.field static mLcdShowManager:Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;

.field private static mService:Lcom/hzbhd/midwareproxy/binder/service/ILcdShowInterface;


# instance fields
.field private getServiceObj:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;->getServiceObj:Landroid/os/IBinder;

    .line 30
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;->getServiceConnection()Z

    return-void
.end method

.method public static declared-synchronized getIntance()Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;
    .locals 2

    const-class v0, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;

    monitor-enter v0

    .line 20
    :try_start_0
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;->mLcdShowManager:Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;

    if-nez v1, :cond_0

    .line 21
    new-instance v1, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;

    invoke-direct {v1}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;-><init>()V

    sput-object v1, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;->mLcdShowManager:Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;

    .line 23
    :cond_0
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;->mLcdShowManager:Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;
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
.method public getServiceConnection()Z
    .locals 2

    .line 36
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;->connectService()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;->getServiceObj:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    const-string v0, "AtvManager"

    const-string v1, "getServiceConnection"

    .line 38
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;->getServiceObj:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/binder/service/ILcdShowInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/binder/service/ILcdShowInterface;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;->mService:Lcom/hzbhd/midwareproxy/binder/service/ILcdShowInterface;

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 42
    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;->mService:Lcom/hzbhd/midwareproxy/binder/service/ILcdShowInterface;

    const/4 v0, 0x0

    return v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    const-string v0, "hzbhd.lcdshow"

    return-object v0
.end method

.method public get_lcd_da_table_byte16()Ljava/lang/String;
    .locals 1

    .line 77
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;->mService:Lcom/hzbhd/midwareproxy/binder/service/ILcdShowInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ILcdShowInterface;->get_lcd_da_table_byte16()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 79
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "00000000000000000000000000000000"

    return-object v0
.end method

.method public serviceDied()V
    .locals 0

    .line 60
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;->getServiceConnection()Z

    .line 61
    invoke-super {p0}, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;->serviceDied()V

    return-void
.end method

.method public serviceReConnected()V
    .locals 0

    .line 55
    invoke-super {p0}, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;->serviceReConnected()V

    return-void
.end method

.method public setIconDot(Z)V
    .locals 1

    .line 68
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;->mService:Lcom/hzbhd/midwareproxy/binder/service/ILcdShowInterface;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ILcdShowInterface;->setIconDot(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 70
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public set_lcd_da_table_byte16(Ljava/lang/String;)V
    .locals 2

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "set_lcd_da_table_byte16  "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;->mService:Lcom/hzbhd/midwareproxy/binder/service/ILcdShowInterface;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ILcdShowInterface;->set_lcd_da_table_byte16(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 90
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
