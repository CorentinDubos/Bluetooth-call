.class public Lcom/hzbhd/midwareproxy/setting/SettingManager;
.super Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;
.source "SettingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/setting/SettingManager$AutoTestCallback;,
        Lcom/hzbhd/midwareproxy/setting/SettingManager$SwcCallback;,
        Lcom/hzbhd/midwareproxy/setting/SettingManager$SettingCallBack;,
        Lcom/hzbhd/midwareproxy/setting/SettingManager$OnAutoTestChangeListener;,
        Lcom/hzbhd/midwareproxy/setting/SettingManager$OnSwcChangeListener;,
        Lcom/hzbhd/midwareproxy/setting/SettingManager$OnSettingsChangeListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_MPEG_TRAY_EJECT_TIME:I = 0xd

.field private static final DEFAULT_MPEG_TRAY_ENTER_TIME:I = 0x16

.field public static final KEY_BRIGHTNESS_AUX:Ljava/lang/String; = "AUX_KEY_BRIGHTNESS"

.field public static final KEY_BRIGHTNESS_AUX_RESET:Ljava/lang/String; = "AUX_KEY_BRIGHTNESS_RESET"

.field public static final KEY_BRIGHTNESS_BACKCAMERA_RESET:Ljava/lang/String; = "BACKCAMERA_KEY_BRIGHTNESS_RESET"

.field public static final KEY_BRIGHTNESS_DTV:Ljava/lang/String; = "DTV_KEY_BRIGHTNESS"

.field public static final KEY_BRIGHTNESS_DTV_RESET:Ljava/lang/String; = "DTV_KEY_BRIGHTNESS_RESET"

.field public static final KEY_BRIGHTNESS_MPEG:Ljava/lang/String; = "MPEG_KEY_BRIGHTNESS"

.field public static final KEY_BRIGHTNESS_MPEG_RESET:Ljava/lang/String; = "MPEG_KEY_BRIGHTNESS_RESET"

.field public static final KEY_BRIGHTNESS_PRECAMERA:Ljava/lang/String; = "PRECAMERA_KEY_BRIGHTNESS"

.field public static final KEY_BRIGHTNESS_PRECAMERA_RESET:Ljava/lang/String; = "PRECAMERA_KEY_BRIGHTNESS_RESET"

.field public static final KEY_CONTRAST_AUX:Ljava/lang/String; = "AUX_KEY_CONTRAST"

.field public static final KEY_CONTRAST_AUX_RESET:Ljava/lang/String; = "AUX_KEY_CONTRAST_RESET"

.field public static final KEY_CONTRAST_BACKCAMERA_RESET:Ljava/lang/String; = "BACKCAMERA_KEY_CONTRAST_RESET"

.field public static final KEY_CONTRAST_DTV:Ljava/lang/String; = "DTV_KEY_CONTRAST"

.field public static final KEY_CONTRAST_DTV_RESET:Ljava/lang/String; = "DTV_KEY_CONTRAST_RESET"

.field public static final KEY_CONTRAST_MPEG:Ljava/lang/String; = "MPEG_KEY_CONTRAST"

.field public static final KEY_CONTRAST_MPEG_RESET:Ljava/lang/String; = "MPEG_KEY_CONTRAST_RESET"

.field public static final KEY_CONTRAST_PRECAMERA:Ljava/lang/String; = "PRECAMERA_KEY_CONTRAST"

.field public static final KEY_CONTRAST_PRECAMERA_RESET:Ljava/lang/String; = "PRECAMERA_KEY_CONTRAST_RESET"

.field public static final KEY_SATURATION_AUX:Ljava/lang/String; = "AUX_KEY_SATURATION"

.field public static final KEY_SATURATION_AUX_RESET:Ljava/lang/String; = "AUX_KEY_SATURATION_RESET"

.field public static final KEY_SATURATION_BACKCAMERA_RESET:Ljava/lang/String; = "BACKCAMERA_KEY_SATURATION_RESET"

.field public static final KEY_SATURATION_DTV:Ljava/lang/String; = "DTV_KEY_SATURATION"

.field public static final KEY_SATURATION_DTV_RESET:Ljava/lang/String; = "DTV_KEY_SATURATION_RESET"

.field public static final KEY_SATURATION_MPEG:Ljava/lang/String; = "MPEG_KEY_SATURATION"

.field public static final KEY_SATURATION_MPEG_RESET:Ljava/lang/String; = "MPEG_KEY_SATURATION_RESET"

.field public static final KEY_SATURATION_PRECAMERA:Ljava/lang/String; = "PRECAMERA_KEY_SATURATION"

.field public static final KEY_SATURATION_PRECAMERA_RESET:Ljava/lang/String; = "PRECAMERA_KEY_SATURATION_RESET"

.field private static final NOTIFYBLACKOUT:I = 0x3

.field private static final NOTIFYEQBALANCEUI:I = 0x2

.field private static final NOTIFYEQSETTINGUI:I = 0x1

.field private static final NOTIFYEQTYPEUI:I = 0x0

.field private static final NOTIFYSWCLONGKEYSETTINGS:I = 0x2

.field private static final NOTIFYSWCSAMPLE:I = 0x1

.field private static final NOTIFYSWCSETTINGS:I

.field private static final TAG:Ljava/lang/String;

.field private static mAutoTestListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/hzbhd/midwareproxy/setting/SettingManager$OnAutoTestChangeListener;",
            "Lcom/hzbhd/midwareproxy/setting/SettingManager$AutoTestCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static mSettingManager:Lcom/hzbhd/midwareproxy/setting/SettingManager;

.field private static mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

.field private static mSettingsListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/hzbhd/midwareproxy/setting/SettingManager$OnSettingsChangeListener;",
            "Lcom/hzbhd/midwareproxy/setting/SettingManager$SettingCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private static mSwcListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/hzbhd/midwareproxy/setting/SettingManager$OnSwcChangeListener;",
            "Lcom/hzbhd/midwareproxy/setting/SettingManager$SwcCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    const-class v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 53
    sput-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingManager:Lcom/hzbhd/midwareproxy/setting/SettingManager;

    .line 54
    sput-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingsListenerMap:Ljava/util/HashMap;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSwcListenerMap:Ljava/util/HashMap;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mAutoTestListenerMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 216
    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;-><init>()V

    .line 217
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getServiceConnection()Z

    return-void
.end method

.method static synthetic access$400()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;
    .locals 1

    .line 39
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;
    .locals 2

    const-class v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;

    monitor-enter v0

    .line 163
    :try_start_0
    sget-object v1, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingManager:Lcom/hzbhd/midwareproxy/setting/SettingManager;

    if-nez v1, :cond_0

    .line 164
    new-instance v1, Lcom/hzbhd/midwareproxy/setting/SettingManager;

    invoke-direct {v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;-><init>()V

    sput-object v1, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingManager:Lcom/hzbhd/midwareproxy/setting/SettingManager;

    .line 166
    :cond_0
    sget-object v1, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingManager:Lcom/hzbhd/midwareproxy/setting/SettingManager;
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
.method public declared-synchronized addOnAutoTestChangeListener(Lcom/hzbhd/midwareproxy/setting/SettingManager$OnAutoTestChangeListener;)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 203
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mAutoTestListenerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mAutoTestListenerMap:Ljava/util/HashMap;

    new-instance v1, Lcom/hzbhd/midwareproxy/setting/SettingManager$AutoTestCallback;

    invoke-direct {v1, p1}, Lcom/hzbhd/midwareproxy/setting/SettingManager$AutoTestCallback;-><init>(Lcom/hzbhd/midwareproxy/setting/SettingManager$OnAutoTestChangeListener;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 206
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized addOnSettingsChangeListener(Lcom/hzbhd/midwareproxy/setting/SettingManager$OnSettingsChangeListener;)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 171
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingsListenerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingsListenerMap:Ljava/util/HashMap;

    new-instance v1, Lcom/hzbhd/midwareproxy/setting/SettingManager$SettingCallBack;

    invoke-direct {v1, p1}, Lcom/hzbhd/midwareproxy/setting/SettingManager$SettingCallBack;-><init>(Lcom/hzbhd/midwareproxy/setting/SettingManager$OnSettingsChangeListener;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 174
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized addOnSwcChangeListener(Lcom/hzbhd/midwareproxy/setting/SettingManager$OnSwcChangeListener;)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 189
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSwcListenerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSwcListenerMap:Ljava/util/HashMap;

    new-instance v1, Lcom/hzbhd/midwareproxy/setting/SettingManager$SwcCallback;

    invoke-direct {v1, p1}, Lcom/hzbhd/midwareproxy/setting/SettingManager$SwcCallback;-><init>(Lcom/hzbhd/midwareproxy/setting/SettingManager$OnSwcChangeListener;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 192
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public closeSWC()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1469
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1470
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->closeSWC()V

    :cond_0
    return-void
.end method

.method public enableFactoryReset(Z)V
    .locals 1

    .line 1726
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1727
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->enableFactoryReset(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1729
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public enableGPSSyncSwitch(Z)V
    .locals 1

    .line 1760
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1761
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->enableGPSSyncSwitch(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1763
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public enableRDSSyncSwitch(Z)V
    .locals 1

    .line 1893
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1894
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->enableRDSSyncSwitch(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1896
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public endSWCSample()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1442
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1443
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->endSWCSample()V

    :cond_0
    return-void
.end method

.method public getAV1Gain()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 829
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 830
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getAV1Gain()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAV2Gain()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 840
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 841
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getAV2Gain()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAntStasus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2312
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 2313
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getAntStasus()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getBTAudioGain()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 801
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 802
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getBTAudioGain()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getBTGain()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 818
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 819
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getBTGain()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getBTMic()I
    .locals 1

    .line 1178
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1179
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getBTMic()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1181
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getBTPhoneGain()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 790
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 791
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getBTPhoneGain()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getBeep()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 551
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 552
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getBeep()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getBgLigtSettingInfo()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1597
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1598
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getBgLigtSettingInfo()[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x5

    new-array v0, v0, [B

    .line 1600
    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public getBlackOut()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 523
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 524
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getBlackOut()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getBrightness()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1502
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1503
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getBrightness()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCameraMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 501
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 502
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getCameraMode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCameraOutGain()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 457
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 458
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getCameraOutGain()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCanBaudRate()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2334
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 2335
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getCanBaudRate()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCanIsAppHandleKey()I
    .locals 1

    .line 2394
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 2395
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getCanIsAppHandleKey()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2398
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getCanPackType()I
    .locals 1

    .line 2405
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 2406
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getCanPackType()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2409
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getCanVersionInfo()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 606
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 607
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getCanVersionInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "---"

    return-object v0
.end method

.method public getCanbusAirHide()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2211
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 2212
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getCanbusAirHide()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCanbusSwapKeyPrevNext()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2194
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 2195
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getCanbusSwapKeyPrevNext()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCanbusSwapKeyUpDn()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2189
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 2190
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getCanbusSwapKeyUpDn()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCarLogoIndex()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1523
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1524
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getCarLogoIndex()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCarMediaGain()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 773
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 774
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getCarMediaGain()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getChildrenLockLevel()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 679
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 680
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getChildrenLockLevel()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getChildrenLockLevelState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 851
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 852
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getChildrenLockLevelState()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getChildrenLockPassword()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 667
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 668
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getChildrenLockPassword()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCloseReverseDetect()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2362
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 2363
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getCloseReverseDetect()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCmmbGain()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 702
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 703
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getCmmbGain()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getColorLed()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1692
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1693
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getColorLed()[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 1695
    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        -0x1t
        -0x80t
        0x40t
    .end array-data
.end method

.method public getColorLedType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1700
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1701
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getColorLedType()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getConfigAmbulance()I
    .locals 1

    .line 1570
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getConfigAmbulance()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1572
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentArea()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 573
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 574
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getCurrentArea()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCustomerID()Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;
    .locals 1

    .line 881
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 882
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    .line 883
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getCustomerID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;->valueOf(Ljava/lang/String;)Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 885
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 887
    :cond_0
    invoke-static {}, Lcom/hzbhd/midware/constant/CustomerIDConstantDef;->getCustomerID()Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;

    move-result-object v0

    return-object v0
.end method

.method public getDVDAudio()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 634
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 635
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getDVDAudio()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDVDGain()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 691
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 692
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getDVDGain()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDVDSubTitle()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 645
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 646
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getDVDSubTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDVDTestCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 545
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 546
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getDVDTestCount()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDabGain()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 735
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 736
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getDabGain()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultSharedUtilBoolean(Ljava/lang/String;)Z
    .locals 1

    .line 1588
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getDefaultSharedUtilBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 1590
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public getDefaultSharedUtilInt(Ljava/lang/String;)I
    .locals 1

    .line 1579
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getDefaultSharedUtilInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 1581
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public getDgcMCUVersion()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1674
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1675
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getDgcMCUVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDiscEjectingTime()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2244
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 2245
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getDiscEjectingTime()B

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0xd

    return v0
.end method

.method public getDiscEnteringTime()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2238
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 2239
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getDiscEnteringTime()B

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x16

    return v0
.end method

.method public getDiscMenu()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 656
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 657
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getDiscMenu()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDvbtGain()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 713
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 714
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getDvbtGain()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getEQBass(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1272
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1273
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getEQBass(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getEQBassQValue(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1474
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1475
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getEQBassQValue(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getEQBassValue(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1278
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1279
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getEQBassValue(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getEQLevelValue()[I
    .locals 1

    .line 1378
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1380
    :try_start_0
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getEQLevelValue()[I

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1382
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEQMid(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1284
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1285
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getEQMid(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getEQMidQValue(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1485
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1486
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getEQMidQValue(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getEQMidValue(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1290
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1291
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getEQMidValue(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getEQTreble(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1296
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1297
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getEQTreble(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getEQTrebleValue(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1302
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1303
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getEQTrebleValue(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getEQType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1261
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1262
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getEQType()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getEQTypeFreqLevelValue(I)[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1361
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1362
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getEQTypeFreqLevelValue(I)[I

    move-result-object p1

    return-object p1

    :cond_0
    const/16 p1, 0xa

    new-array p1, p1, [I

    .line 1363
    fill-array-data p1, :array_0

    return-object p1

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public getEQ_HARDWARE_VERSION()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1389
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1390
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getEQ_HARDWARE_VERSION()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getFactory4GModule()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2447
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 2448
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getFactory4GModule()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getFactoryAMDistant()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 975
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 976
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getFactoryAMDistant()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getFactoryAMLocal()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 964
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 965
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getFactoryAMLocal()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getFactoryCanType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1012
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1013
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getFactoryCanType()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getFactoryCanType(I)I
    .locals 1

    .line 1018
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getFactoryCanType()I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    .line 1020
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    return p1
.end method

.method public getFactoryDirection()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1065
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1066
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getFactoryDirection()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getFactoryDtvModule()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1044
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1045
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getFactoryDtvModule()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getFactoryEncoding()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1055
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1056
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getFactoryEncoding()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getFactoryFMDistant()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 946
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 947
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getFactoryFMDistant()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getFactoryFMLocal()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 935
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 936
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getFactoryFMLocal()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getFactoryLcdDriveConfig()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2460
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 2461
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getFactoryLcdDriveConfig()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getFactoryLvdsDisplayDriverCurrentLevel()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2380
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 2381
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getFactoryLvdsDisplayDriverCurrentLevel()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getFactoryPanelType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 595
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 596
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getFactoryPanelType()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getFactoryRDSType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 924
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 925
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getFactoryRDSType()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getFactoryRadioArea()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 900
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 901
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getFactoryRadioArea()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getFactoryRadioModel()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 912
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 913
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getFactoryRadioModel()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getFactorySystemAutodimmerfunc()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1095
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1096
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getFactorySystemAutodimmerfunc()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getFactorySystemBrakeoverride()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1107
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1108
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getFactorySystemBrakeoverride()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getFactorySystemMechaback()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1119
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1120
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getFactorySystemMechaback()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getFactorySystemRegioncode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 987
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 988
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getFactorySystemRegioncode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getFactorySystemTVArea()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1000
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1001
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getFactorySystemTVArea()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getFactoryT8AVOUT_Display()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1088
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1089
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getFactoryT8AVOUT_Display()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getFadeBalanceFL()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1144
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1145
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getFadeBalanceFL()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getFadeBalanceFR()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1150
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1151
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getFadeBalanceFR()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getFadeBalanceRL()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1156
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1157
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getFadeBalanceRL()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getFadeBalanceRR()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1162
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1163
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getFadeBalanceRR()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getFastCharging()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2268
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 2269
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getFastCharging()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getFastChargingisSupport()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2279
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 2280
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getFastChargingisSupport()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getFrontCameraMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 490
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 491
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getFrontCameraMode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getGPSSyncSwitch()Z
    .locals 1

    .line 1769
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1770
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getGPSSyncSwitch()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1772
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getHeadlightSwitch()Z
    .locals 1

    .line 1779
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1780
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getHeadlightSwitch()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1782
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getHourMode()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 562
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 563
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getHourMode()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getIsSoundMix()Z
    .locals 1

    .line 422
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 423
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getIsSoundMix()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 425
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getKeyColor()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 512
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 513
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getKeyColor()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getLoudness()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1250
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1251
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getLoudness()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getMCUVersion()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1668
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1669
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getMCUVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMcuAmpItem([B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 812
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 813
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getMcuAmpItem([B)[B

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMcuTestItem([B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1680
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1681
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getMcuTestItem([B)[B

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMediaGain()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 757
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 758
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getMediaGain()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getMotorInfo()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1610
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1611
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getMotorInfo()[B

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v0, 0xc

    new-array v0, v0, [B

    .line 1613
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public getNaviGain()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 779
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 780
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getNaviGain()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getNavigationModule()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 534
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 535
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getNavigationModule()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getNetworkLicense()I
    .locals 1

    .line 1561
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getNetworkLicense()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1563
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public getPNLAllKeyInfo(I)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1406
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1407
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getPNLAllKeyInfo(I)[B

    move-result-object p1

    return-object p1

    :cond_0
    const/16 p1, 0x48

    new-array p1, p1, [B

    .line 1408
    fill-array-data p1, :array_0

    return-object p1

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public getPanoramicCameraSwitch()Z
    .locals 1

    .line 1855
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1856
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getPanoramicCameraSwitch()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1858
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getParking()Z
    .locals 1

    .line 1921
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1922
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getParking()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1924
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPowerKeySwitch()Z
    .locals 1

    .line 1874
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1875
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getPowerKeySwitch()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1877
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getRDSSyncSwitch()Z
    .locals 1

    .line 1902
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1903
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getRDSSyncSwitch()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1905
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getRadioGain()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 746
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 747
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getRadioGain()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getRadioRange()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 584
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 585
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getRadioRange()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getReversingBaseline()Z
    .locals 1

    .line 1817
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1818
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getReversingBaseline()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1820
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getReversingMute()Z
    .locals 1

    .line 1798
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1799
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getReversingMute()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1801
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getReversingTrackSwitch()Z
    .locals 1

    .line 1836
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1837
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getReversingTrackSwitch()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1839
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getSWCLearnLevel()I
    .locals 1

    .line 2296
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 2298
    :try_start_0
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getSWCLearnLevel()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2300
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getSWCSettings()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1426
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1427
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getSWCSettings()V

    :cond_0
    return-void
.end method

.method public getScreenreverse()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1038
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1039
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getScreenreverse()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getServiceConnection()Z
    .locals 2

    .line 267
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->connectService()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 269
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    .line 270
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->TAG:Ljava/lang/String;

    const-string v1, "SettingService connected"

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 273
    sput-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    .line 274
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->TAG:Ljava/lang/String;

    const-string v1, "SettingService not connected:"

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    const-string v0, "hzbhd.setting"

    return-object v0
.end method

.method public getSettingService()Z
    .locals 1

    .line 256
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getSharedBool(Ljava/lang/String;)Z
    .locals 1

    .line 295
    :try_start_0
    invoke-static {}, Lcom/hzbhd/config/base/ConfigUtil;->getJarConfig()Lcom/hzbhd/config/base/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/config/base/Config;->getCommon()Lcom/hzbhd/config/base/Config$Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/config/base/Config$Common;->isNewDefaultSaredUtil()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    invoke-static {p1}, Landroid/app/DefaultSharedUtil;->getBool(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 298
    :cond_0
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_1

    .line 299
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getSharedBool(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 301
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getSharedInt(Ljava/lang/String;)I
    .locals 1

    .line 281
    :try_start_0
    invoke-static {}, Lcom/hzbhd/config/base/ConfigUtil;->getJarConfig()Lcom/hzbhd/config/base/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/config/base/Config;->getCommon()Lcom/hzbhd/config/base/Config$Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/config/base/Config$Common;->isNewDefaultSaredUtil()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    invoke-static {p1}, Landroid/app/DefaultSharedUtil;->getInt(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 284
    :cond_0
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_1

    .line 285
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getSharedInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 288
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getSharedStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 308
    :try_start_0
    invoke-static {}, Lcom/hzbhd/config/base/ConfigUtil;->getJarConfig()Lcom/hzbhd/config/base/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/config/base/Config;->getCommon()Lcom/hzbhd/config/base/Config$Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/config/base/Config$Common;->isNewDefaultSaredUtil()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    invoke-static {p1}, Landroid/app/DefaultSharedUtil;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 311
    :cond_0
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_1

    .line 312
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getSharedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 314
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method public getShutDownDelayTimeAccOff()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1735
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1736
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getShutDownDelayTimeAccOff()B

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getSoundMixScale()I
    .locals 1

    .line 403
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 404
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getSoundMixScale()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 406
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getStreamVolume(I)I
    .locals 1

    .line 1206
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    if-ne v0, p1, :cond_0

    .line 1208
    sget-object p1, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    invoke-interface {p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getNaviGain()I

    move-result p1

    return p1

    .line 1210
    :cond_0
    sget-object p1, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    invoke-interface {p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getMediaGain()I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 1214
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getSubSwitch()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 612
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 613
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getSubSwitch()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getSubWFilter()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 623
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 624
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getSubWFilter()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getSubWGain()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1220
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1221
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getSubWGain()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getSubWGain2()I
    .locals 1

    .line 1227
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1228
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getSubWGain()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1230
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getSwcLongKeySettings()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "SWC"

    const-string v1, "getSwcLongKeySettings"

    .line 1431
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1433
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getSwcLongKeySetting()V

    :cond_0
    return-void
.end method

.method public getSysSetting()V
    .locals 1

    .line 394
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 395
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getSysSetting()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 397
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public getTVOutGain()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 479
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 480
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getTVOutGain()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getUbootVersion()I
    .locals 1

    .line 2416
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 2417
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getUbootVersion()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2420
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getVcom()I
    .locals 3

    :try_start_0
    const-string/jumbo v0, "xxxer"

    .line 1543
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vcom ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getVcom()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getVcom()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1546
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public getVideoChipN3ChannelType(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2346
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 2347
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getVideoChipN3ChannelType(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getVideoInput()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 431
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 432
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getVideoInput()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getVideoOutGain()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 468
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 469
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getVideoOutGain()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getVideoOutput()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 437
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 438
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getVideoOutput()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getVolumeValue()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1517
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1518
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getVolumeValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getXmGain()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 724
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 725
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getXmGain()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getreverse_exit_mcudelaytime_settings()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1748
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1749
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getreverse_exit_mcudelaytime_settings()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public notifyCarplayVolumeType(I)V
    .locals 1

    .line 2258
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 2259
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->notifyCarplayVolumeType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2262
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public openSWC()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1464
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1465
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->openSWC()V

    :cond_0
    return-void
.end method

.method public playBeep()V
    .locals 1

    .line 365
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 366
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->playBeep()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 368
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public pnlSample(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1415
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1416
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->pnlSample(I)V

    :cond_0
    return-void
.end method

.method public reSetSWC()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1459
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1460
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->reSetSWC()V

    :cond_0
    return-void
.end method

.method public refreshEQType()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1496
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1497
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->refreshEQType()V

    :cond_0
    return-void
.end method

.method public declared-synchronized removeOnAutoTestChangeListener(Lcom/hzbhd/midwareproxy/setting/SettingManager$OnAutoTestChangeListener;)V
    .locals 1

    monitor-enter p0

    .line 209
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mAutoTestListenerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hzbhd/midwareproxy/setting/SettingManager$AutoTestCallback;

    if-eqz p1, :cond_0

    .line 211
    invoke-static {p1}, Lcom/hzbhd/midwareproxy/setting/SettingManager$AutoTestCallback;->access$200(Lcom/hzbhd/midwareproxy/setting/SettingManager$AutoTestCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeOnSettingsChangeListener(Lcom/hzbhd/midwareproxy/setting/SettingManager$OnSettingsChangeListener;)V
    .locals 1

    monitor-enter p0

    .line 178
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingsListenerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hzbhd/midwareproxy/setting/SettingManager$SettingCallBack;

    if-eqz p1, :cond_0

    .line 179
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/setting/SettingManager$SettingCallBack;->access$000(Lcom/hzbhd/midwareproxy/setting/SettingManager$SettingCallBack;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 181
    :try_start_1
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/setting/SettingManager$SettingCallBack;->access$000(Lcom/hzbhd/midwareproxy/setting/SettingManager$SettingCallBack;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->unRegisterCallBack(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 183
    :try_start_2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 186
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeOnSwcChangeListener(Lcom/hzbhd/midwareproxy/setting/SettingManager$OnSwcChangeListener;)V
    .locals 1

    monitor-enter p0

    .line 196
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSwcListenerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hzbhd/midwareproxy/setting/SettingManager$SwcCallback;

    if-eqz p1, :cond_0

    .line 198
    invoke-static {p1}, Lcom/hzbhd/midwareproxy/setting/SettingManager$SwcCallback;->access$100(Lcom/hzbhd/midwareproxy/setting/SettingManager$SwcCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public reporTestMcuInfor([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1663
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1664
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->reporTestMcuInfor([B)V

    :cond_0
    return-void
.end method

.method public reportCanbusInfo([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1642
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1643
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->reportCanbusInfo([B)V

    :cond_0
    return-void
.end method

.method public reportCanbusInfoOther(B[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1647
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1648
    invoke-interface {v0, p1, p2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->reportCanbusInfoOther(B[B)V

    :cond_0
    return-void
.end method

.method public reportCanbusUpdData([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1658
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1659
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->reportCanbusUpdData([B)V

    :cond_0
    return-void
.end method

.method public reportDevice_YH([B)V
    .locals 1

    .line 2474
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 2475
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->reportDevice_YH([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2478
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public reportKeySensitivityValue(B[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1652
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1653
    invoke-interface {v0, p1, p2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->reportKeySensitivityValue(B[B)V

    :cond_0
    return-void
.end method

.method public reportSmartPowerInfo([B)V
    .locals 1

    .line 2427
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 2428
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->reportSmartPowerInfo([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2431
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public reqCanbusInfo([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1627
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1628
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->reqCanbusInfo([B)V

    :cond_0
    return-void
.end method

.method public reqEqBalance()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1623
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->requestEqBalance()V

    :cond_0
    return-void
.end method

.method public reqMcuKey([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1632
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1633
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->reqMcuKey([B)V

    :cond_0
    return-void
.end method

.method public reqMotorInfo()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1618
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1619
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->reqMotorInfo()V

    :cond_0
    return-void
.end method

.method public reqPNLAllKeyInfo(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1401
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1402
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->reqPNLAllKeyInfo(I)V

    :cond_0
    return-void
.end method

.method public resetMpuDelay(B)V
    .locals 1

    .line 373
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 375
    :try_start_0
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->resetMpuDelay(B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 378
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public saveAppdata(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1930
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->saveAppdata(Ljava/lang/String;)V

    return-void
.end method

.method public saveChipN3BackCameraColorAdjust_to_bsp(III)V
    .locals 1

    .line 2437
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 2438
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->saveChipN3BackCameraColorAdjust_to_bsp(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2441
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public savePNLSettings(I[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1421
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1422
    invoke-interface {v0, p1, p2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->savePNLSettings(I[B)V

    :cond_0
    return-void
.end method

.method public saveSWCSettings([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1448
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1449
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->saveSWCSettings([B)V

    :cond_0
    return-void
.end method

.method public saveSWCSettingsLongKey([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1454
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1455
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->saveSWCSettingsLongKey([B)V

    :cond_0
    return-void
.end method

.method public sendAppdata(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1934
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->sendAppdata(Ljava/lang/String;)V

    return-void
.end method

.method public sendSelectCarCanTypeInfoMCU(IIII)V
    .locals 1

    .line 1717
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1718
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->sendSelectCarCanTypeInfoMCU(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1720
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public serviceDied()V
    .locals 1

    .line 222
    invoke-super {p0}, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;->serviceDied()V

    const/4 v0, 0x0

    .line 223
    sput-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    return-void
.end method

.method public serviceReConnected()V
    .locals 3

    .line 229
    invoke-super {p0}, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;->serviceReConnected()V

    .line 230
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_2

    .line 231
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSwcListenerMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/setting/SettingManager$SwcCallback;

    .line 233
    :try_start_0
    sget-object v2, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    invoke-interface {v2, v1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->registerSWCCallBack(Lcom/hzbhd/midwareproxy/binder/callback/ISWCCallBackInterface;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager$SwcCallback;->access$302(Lcom/hzbhd/midwareproxy/setting/SettingManager$SwcCallback;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 235
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 238
    :cond_0
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingsListenerMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/setting/SettingManager$SettingCallBack;

    .line 240
    :try_start_1
    sget-object v2, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    invoke-interface {v2, v1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->registerCallBack(Lcom/hzbhd/midwareproxy/binder/callback/ISettingCallBackInterface;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager$SettingCallBack;->access$002(Lcom/hzbhd/midwareproxy/setting/SettingManager$SettingCallBack;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 242
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 245
    :cond_1
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mAutoTestListenerMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/setting/SettingManager$AutoTestCallback;

    .line 247
    :try_start_2
    sget-object v2, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    invoke-interface {v2, v1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->registerAutoTestCallBack(Lcom/hzbhd/midwareproxy/binder/callback/IAutoTestCallBackInterface;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    .line 249
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    :cond_2
    return-void
.end method

.method public setAV1Gain(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 835
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 836
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setAV1Gain(I)V

    :cond_0
    return-void
.end method

.method public setAV2Gain(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 846
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 847
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setAV2Gain(I)V

    :cond_0
    return-void
.end method

.method public setAnalogInputColor(III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2221
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 2222
    invoke-interface {v0, p1, p2, p3}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setAnalogInputColor(III)V

    :cond_0
    return-void
.end method

.method public setAntStasus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2307
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 2308
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setAntStasus(I)V

    :cond_0
    return-void
.end method

.method public setBTAudioGain(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 807
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 808
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setBTAudioGain(I)V

    :cond_0
    return-void
.end method

.method public setBTGain(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 824
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 825
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setBTGain(I)V

    :cond_0
    return-void
.end method

.method public setBTMic(I)V
    .locals 1

    .line 1189
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1190
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->SetBTMic(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1192
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setBTPhoneGain(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 796
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 797
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setBTPhoneGain(I)V

    :cond_0
    return-void
.end method

.method public setBeep(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 557
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 558
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setBeep(Z)V

    :cond_0
    return-void
.end method

.method public setBgLigtSettingInfo(I[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1605
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1606
    invoke-interface {v0, p1, p2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setBgLigtSettingInfo(I[B)V

    :cond_0
    return-void
.end method

.method public setBlackOut(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 529
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 530
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setBlackOut(I)V

    :cond_0
    return-void
.end method

.method public setBrightness(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1509
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1510
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1512
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setCameraMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 507
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 508
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setCameraMode(I)V

    :cond_0
    return-void
.end method

.method public setCameraoutGain(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 463
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 464
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setCameraOutGain(I)V

    :cond_0
    return-void
.end method

.method public setCanBaudRate(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2318
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 2319
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setCanBaudRate(I)V

    :cond_0
    return-void
.end method

.method public setCanIsAppHandleKey(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2323
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 2324
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setCanIsAppHandleKey(I)V

    :cond_0
    return-void
.end method

.method public setCanPackType(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2328
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 2329
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setCanPackType(I)V

    :cond_0
    return-void
.end method

.method public setCanbuKeySwap(ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2216
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 2217
    invoke-interface {v0, p1, p2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setCanbuKeySwap(ZZ)V

    :cond_0
    return-void
.end method

.method public setCanbusAirHide(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2207
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 2208
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setCanbusAirHide(Z)V

    :cond_0
    return-void
.end method

.method public setCanbusSwapKeyPrevNext(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2203
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 2204
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setCanbusSwapKeyPrevNext(Z)V

    :cond_0
    return-void
.end method

.method public setCanbusSwapKeyUpDn(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2199
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 2200
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setCanbusSwapKeyUpDn(Z)V

    :cond_0
    return-void
.end method

.method public setCarLogoIndex(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1529
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1530
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setCarLogoIndex(I)V

    :cond_0
    return-void
.end method

.method public setCarMediaGain(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 768
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 769
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setCarMediaGain(I)V

    :cond_0
    return-void
.end method

.method public setChildrenLockLevel(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 686
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 687
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setChildrenLockLevel(I)V

    :cond_0
    return-void
.end method

.method public setChildrenLockLevelState(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 858
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 859
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setChildrenLockLevelState(I)V

    :cond_0
    return-void
.end method

.method public setChildrenLockPassword(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 674
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 675
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setChildrenLockPassword(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setCloseReverseDetect(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2369
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 2370
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setCloseReverseDetect(Z)V

    :cond_0
    return-void
.end method

.method public setCmmbGain(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 708
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 709
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setCmmbGain(I)V

    :cond_0
    return-void
.end method

.method public setColorLed(BBBB)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1711
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1712
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setColorLedwithType(BBBB)V

    :cond_0
    return-void
.end method

.method public setColorLed(ZBBB)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1706
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1707
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setColorLed(ZBBB)V

    :cond_0
    return-void
.end method

.method public setCoolerFanSupport(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2357
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 2358
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setCoolerFanSupport(I)V

    :cond_0
    return-void
.end method

.method public setCurrentArea(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 579
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 580
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setCurrentArea(I)V

    :cond_0
    return-void
.end method

.method public setCustomerID(Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;)V
    .locals 1

    .line 892
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 893
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    invoke-virtual {p1}, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setCustomerID(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 895
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setDVDAudio(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 640
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 641
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setDVDAudio(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setDVDGain(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 697
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 698
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setDVDGain(I)V

    :cond_0
    return-void
.end method

.method public setDVDSubTitle(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 651
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 652
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setDVDSubTitle(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setDabGain(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 741
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 742
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setDabGain(I)V

    :cond_0
    return-void
.end method

.method public setDateTime(BBBBBBB)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1687
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    .line 1688
    invoke-interface/range {v0 .. v7}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setDateTime(BBBBBBB)V

    :cond_0
    return-void
.end method

.method public setDiscEjectingTime(B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2231
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 2232
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setDiscEjectingTime(B)V

    :cond_0
    return-void
.end method

.method public setDiscEnteringTime(B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2226
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 2227
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setDiscEnteringTime(B)V

    :cond_0
    return-void
.end method

.method public setDiscMenu(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 662
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 663
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setDiscMenu(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setDvbtGain(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 719
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 720
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setDvbtGain(I)V

    :cond_0
    return-void
.end method

.method public setDvdClearCounter(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 870
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 871
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setDvdClearCounter(Z)V

    :cond_0
    return-void
.end method

.method public setDvdServoLoaderStart(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 864
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 865
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setDvdServoLoaderStart(Z)V

    :cond_0
    return-void
.end method

.method public setEQBass(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1308
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1309
    invoke-interface {v0, p1, p2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setEQBass(II)V

    :cond_0
    return-void
.end method

.method public setEQBassAndValue(III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1320
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1321
    invoke-interface {v0, p1, p2, p3}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setEQBassAndValue(III)V

    :cond_0
    return-void
.end method

.method public setEQBassQValue(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1480
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1481
    invoke-interface {v0, p1, p2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setEQBassQValue(II)V

    :cond_0
    return-void
.end method

.method public setEQBassValue(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1314
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1315
    invoke-interface {v0, p1, p2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setEQBassValue(II)V

    :cond_0
    return-void
.end method

.method public setEQLevelValue([I)V
    .locals 1

    .line 1368
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1370
    :try_start_0
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setEQLevelValue([I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1372
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setEQMid(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1324
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1325
    invoke-interface {v0, p1, p2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setEQMid(II)V

    :cond_0
    return-void
.end method

.method public setEQMidAndValue(III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1335
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1336
    invoke-interface {v0, p1, p2, p3}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setEQMidAndValue(III)V

    :cond_0
    return-void
.end method

.method public setEQMidQValue(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1491
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1492
    invoke-interface {v0, p1, p2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setEQMidQValue(II)V

    :cond_0
    return-void
.end method

.method public setEQMidValue(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1330
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1331
    invoke-interface {v0, p1, p2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setEQMidValue(II)V

    :cond_0
    return-void
.end method

.method public setEQResetDefault()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1356
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1357
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setEQResetDefault()V

    :cond_0
    return-void
.end method

.method public setEQTreble(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1340
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1341
    invoke-interface {v0, p1, p2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setEQTreble(II)V

    :cond_0
    return-void
.end method

.method public setEQTrebleAndValue(III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1352
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1353
    invoke-interface {v0, p1, p2, p3}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setEQTrebleAndValue(III)V

    :cond_0
    return-void
.end method

.method public setEQTrebleValue(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1346
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1347
    invoke-interface {v0, p1, p2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setEQTrebleValue(II)V

    :cond_0
    return-void
.end method

.method public setEQType(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1267
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1268
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setEQType(I)V

    :cond_0
    return-void
.end method

.method public setEQTypeFreqLevelValue(III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1396
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1397
    invoke-interface {v0, p1, p2, p3}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setEQTypeFreqLevelValue(III)V

    :cond_0
    return-void
.end method

.method public setFactory4GModule(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2454
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 2455
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setFactory4GModule(I)V

    :cond_0
    return-void
.end method

.method public setFactoryAMDistant(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 982
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 983
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setFactoryAMDistant(I)V

    :cond_0
    return-void
.end method

.method public setFactoryAMLocal(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 970
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 971
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setFactoryAMLocal(I)V

    :cond_0
    return-void
.end method

.method public setFactoryBtModule(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 959
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 960
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setFactoryBtModule(I)V

    :cond_0
    return-void
.end method

.method public setFactoryCanType(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1026
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1027
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setFactoryCanType(I)V

    :cond_0
    return-void
.end method

.method public setFactoryDirection(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1070
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1071
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setFactoryDirection(I)V

    :cond_0
    return-void
.end method

.method public setFactoryDtvModule(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1051
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1052
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setFactoryDtvModule(I)V

    :cond_0
    return-void
.end method

.method public setFactoryEncoding(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1060
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1061
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setFactoryEncoding(I)V

    :cond_0
    return-void
.end method

.method public setFactoryFMDistant(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 953
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 954
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setFactoryFMDistant(I)V

    :cond_0
    return-void
.end method

.method public setFactoryFMLocal(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 941
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 942
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setFactoryFMLocal(I)V

    :cond_0
    return-void
.end method

.method public setFactoryLcdDriveConfig(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2467
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 2468
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setFactoryLcdDriveConfig(I)V

    :cond_0
    return-void
.end method

.method public setFactoryLoadDefault(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1139
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1140
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setFactoryLoadDefault(Z)V

    :cond_0
    return-void
.end method

.method public setFactoryLvdsDisplayDriverCurrentLevel(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2387
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 2388
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setFactoryLvdsDisplayDriverCurrentLevel(I)V

    :cond_0
    return-void
.end method

.method public setFactoryPanelType(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 601
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 602
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setFactoryPanelType(I)V

    :cond_0
    return-void
.end method

.method public setFactoryRDSType(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 930
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 931
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setFactoryRDSType(I)V

    :cond_0
    return-void
.end method

.method public setFactoryRadioArea(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 907
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 908
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setFactoryRadioArea(I)V

    :cond_0
    return-void
.end method

.method public setFactoryRadioModel(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 919
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 920
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setFactoryRadioModel(I)V

    :cond_0
    return-void
.end method

.method public setFactorySettingInfoToMcu([B)V
    .locals 1

    .line 348
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 349
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setFactorySettingInfoToMcu([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 351
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setFactorySystemAutodimmerfunc(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1102
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1103
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setFactorySystemAutodimmerfunc(Z)V

    :cond_0
    return-void
.end method

.method public setFactorySystemBrakeoverride(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1114
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1115
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setFactorySystemBrakeoverride(Z)V

    :cond_0
    return-void
.end method

.method public setFactorySystemMechaback(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1126
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1127
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setFactorySystemMechaback(Z)V

    :cond_0
    return-void
.end method

.method public setFactorySystemRegioncode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 994
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 996
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setFactorySystemRegioncode(I)V

    :cond_0
    return-void
.end method

.method public setFactorySystemTVArea(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1007
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1008
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setFactorySystemTVArea(I)V

    :cond_0
    return-void
.end method

.method public setFactoryT8AVOUT_Display(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1079
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1080
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setFactoryT8AVOUT_Display(I)V

    :cond_0
    return-void
.end method

.method public setFactoryTFTMotorteststart(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1132
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1134
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setFactoryTFTMotorteststart(Z)V

    :cond_0
    return-void
.end method

.method public setFadeBalance(IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1169
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1170
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setFadeBalance(IIII)V

    :cond_0
    return-void
.end method

.method public setFastCharging(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2250
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 2251
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setFastCharging(I)V

    :cond_0
    return-void
.end method

.method public setFastChargingisSupport(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2274
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 2275
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setFastChargingisSupport(I)V

    :cond_0
    return-void
.end method

.method public setFrontCameraMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 496
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 497
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setFrontCameraMode(I)V

    :cond_0
    return-void
.end method

.method public setHdmiDisplayerResolution(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2352
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 2353
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setHdmiDisplayerResolution(I)V

    :cond_0
    return-void
.end method

.method public setHeadlightSwitch(Z)V
    .locals 1

    .line 1789
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1790
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setHeadlightSwitch(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1792
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setHostPowerAmp(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2375
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 2376
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setHostPowerAmp(Z)V

    :cond_0
    return-void
.end method

.method public setHourMode(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 568
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 569
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setHourMode(Z)V

    :cond_0
    return-void
.end method

.method public setIsSoundMix(Z)V
    .locals 1

    .line 413
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 414
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setIsSoundMix(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 416
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setKeyColor(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 518
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 519
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setKeyColor(I)V

    :cond_0
    return-void
.end method

.method public setKeyDebug(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 875
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 876
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setKeyDebug(Z)V

    :cond_0
    return-void
.end method

.method public setLoudness(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1256
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1257
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setLoudness(Z)V

    :cond_0
    return-void
.end method

.method public setMediaGain(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 763
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 764
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setMediaGain(I)V

    :cond_0
    return-void
.end method

.method public setNaviGain(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 785
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 786
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setNaviGain(I)V

    :cond_0
    return-void
.end method

.method public setNavigationModule(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 540
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 541
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setNavigationModule(I)V

    :cond_0
    return-void
.end method

.method public setNetworkLicense(B)V
    .locals 1

    .line 1553
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setNetworkLicense(B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1555
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setPanoramicCameraSwitch(Z)V
    .locals 1

    .line 1865
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1866
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setPanoramicCameraSwitch(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1868
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setParking(Z)V
    .locals 1

    .line 1912
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1913
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setParking(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1915
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setPowerKeySwitch(Z)V
    .locals 1

    .line 1884
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1885
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setPowerKeySwitch(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1887
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setRadioGain(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 752
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 753
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setRadioGain(I)V

    :cond_0
    return-void
.end method

.method public setRadioRange(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 590
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 591
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setRadioRange(Z)V

    :cond_0
    return-void
.end method

.method public setReversingBaseline(Z)V
    .locals 1

    .line 1827
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1828
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setReversingBaseline(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1830
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setReversingMute(Z)V
    .locals 1

    .line 1808
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1809
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setReversingMute(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1811
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setReversingTrackSwitch(Z)V
    .locals 1

    .line 1846
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1847
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setReversingTrackSwitch(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1849
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setSWCLearnLevel(I)V
    .locals 1

    .line 2285
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 2287
    :try_start_0
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setSWCLearnLevel(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2289
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setScreenreverse(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1032
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1033
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setScreenreverse(Z)V

    :cond_0
    return-void
.end method

.method public setSharedBool(Ljava/lang/String;Z)V
    .locals 1

    .line 330
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 331
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    invoke-interface {v0, p1, p2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setSharedBool(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 333
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setSharedInt(Ljava/lang/String;I)V
    .locals 1

    .line 321
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 322
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    invoke-interface {v0, p1, p2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setSharedInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 324
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setSharedStr(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 339
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 340
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    invoke-interface {v0, p1, p2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setSharedStr(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 342
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setSharedValueToMpu()V
    .locals 1

    .line 357
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 358
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setSharedValueToMpu()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 360
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setShutDownDelayTimeAccOff(B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1742
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1743
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setShutDownDelayTimeAccOff(B)V

    :cond_0
    return-void
.end method

.method public setSoundMixScale(I)V
    .locals 1

    .line 385
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 386
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setSoundMixScale(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 388
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setSubSwitch(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 618
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 619
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setSubSwitch(Z)V

    :cond_0
    return-void
.end method

.method public setSubWFilter(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 629
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 630
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setSubWFilter(I)V

    :cond_0
    return-void
.end method

.method public setSubWGain(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1236
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1237
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setSubWGain(I)V

    :cond_0
    return-void
.end method

.method public setSubWGain2(I)V
    .locals 1

    .line 1242
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1243
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setSubWGain(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1245
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setTVoutGain(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 485
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 486
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setTVOutGain(I)V

    :cond_0
    return-void
.end method

.method public setTpmsPlaying(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1637
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1638
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setTpmsPlaying(Z)V

    :cond_0
    return-void
.end method

.method public setVcom([B)V
    .locals 1

    .line 1535
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setVcom([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1537
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setVideoChipN3ChannelType(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2341
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 2342
    invoke-interface {v0, p1, p2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setVideoChipN3ChannelType(II)V

    :cond_0
    return-void
.end method

.method public setVideoInput(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 443
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 444
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setVideoInput(I)V

    :cond_0
    return-void
.end method

.method public setVideoOutput(I)V
    .locals 1

    .line 449
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 450
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setVideoOutput(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 452
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setVideooutGain(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 474
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 475
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setVideoOutGain(I)V

    :cond_0
    return-void
.end method

.method public setXmGain(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 730
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 731
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setXmGain(I)V

    :cond_0
    return-void
.end method

.method public setreverse_exit_mcudelaytime_settings(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1754
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1755
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setreverse_exit_mcudelaytime_settings(I)V

    :cond_0
    return-void
.end method

.method public startEQ(Landroid/content/Context;)V
    .locals 2

    .line 2175
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->IS_DSP:Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getSharedBool(Ljava/lang/String;)Z

    move-result v0

    const/high16 v1, 0x10000000

    if-eqz v0, :cond_0

    .line 2176
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2177
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2178
    sget-object v1, Lcom/hzbhd/midware/constant/HzbhdComponentName;->DspMainActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2179
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2181
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2182
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2183
    sget-object v1, Lcom/hzbhd/midware/constant/HzbhdComponentName;->EqMainActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2184
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public startSWCSample(B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1437
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/SettingManager;->mSettingService:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v0, :cond_0

    .line 1438
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->startSWCSample(B)V

    :cond_0
    return-void
.end method
