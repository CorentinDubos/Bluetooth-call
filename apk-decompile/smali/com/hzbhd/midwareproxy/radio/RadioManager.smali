.class public Lcom/hzbhd/midwareproxy/radio/RadioManager;
.super Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;
.source "RadioManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/radio/RadioManager$RDSInfoChangeListenerTransport;,
        Lcom/hzbhd/midwareproxy/radio/RadioManager$RadioInfoChangeListenerTransport;,
        Lcom/hzbhd/midwareproxy/radio/RadioManager$ServiceConnectionState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RadioManager"

.field private static mRadioManager:Lcom/hzbhd/midwareproxy/radio/RadioManager;

.field private static mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;


# instance fields
.field private mListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/hzbhd/midwareproxy/radio/aidl/RadioInfoChangeListener;",
            "Lcom/hzbhd/midwareproxy/radio/RadioManager$RadioInfoChangeListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mRDSListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/hzbhd/midwareproxy/radio/aidl/RDSInfoChangeListener;",
            "Lcom/hzbhd/midwareproxy/radio/RadioManager$RDSInfoChangeListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceConnectionState:Lcom/hzbhd/midwareproxy/radio/RadioManager$ServiceConnectionState;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;-><init>()V

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mListeners:Ljava/util/HashMap;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRDSListeners:Ljava/util/HashMap;

    .line 44
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/radio/RadioManager;->getServiceConnection()Z

    return-void
.end method

.method public static declared-synchronized getRadioManager()Lcom/hzbhd/midwareproxy/radio/RadioManager;
    .locals 2

    const-class v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;

    monitor-enter v0

    .line 33
    :try_start_0
    sget-object v1, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManager:Lcom/hzbhd/midwareproxy/radio/RadioManager;

    if-nez v1, :cond_0

    .line 34
    new-instance v1, Lcom/hzbhd/midwareproxy/radio/RadioManager;

    invoke-direct {v1}, Lcom/hzbhd/midwareproxy/radio/RadioManager;-><init>()V

    sput-object v1, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManager:Lcom/hzbhd/midwareproxy/radio/RadioManager;

    .line 36
    :cond_0
    sget-object v1, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 37
    monitor-exit v0

    return-object v1

    .line 39
    :cond_1
    :try_start_1
    sget-object v1, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManager:Lcom/hzbhd/midwareproxy/radio/RadioManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public autoSearch(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 750
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->autoSearch(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "RadioManager"

    const-string v1, "autoSearch: RemoteException"

    .line 752
    invoke-static {v0, v1, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public autoSearchWithPreview(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 761
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->autoSearchWithPreview(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "RadioManager"

    const-string v1, "autoSearchWithPreview: RemoteException"

    .line 763
    invoke-static {v0, v1, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bandAmChange()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1701
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->bandAmChange()V

    return-void
.end method

.method public bandChange()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1619
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->bandChange()V

    return-void
.end method

.method public bandFmChange()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1697
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->bandFmChange()V

    return-void
.end method

.method public changNextStation()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1690
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->changNextStation()V

    return-void
.end method

.method public changPreStation()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1693
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->changPreStation()V

    return-void
.end method

.method public changeBandAm1()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1717
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->changeBandAm1()V

    return-void
.end method

.method public changeBandAm2()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1721
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->changeBandAm2()V

    return-void
.end method

.method public changeBandFm1()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1705
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->changeBandFm1()V

    return-void
.end method

.method public changeBandFm2()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1709
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->changeBandFm2()V

    return-void
.end method

.method public changeBandFm3()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1713
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->changeBandFm3()V

    return-void
.end method

.method public dabNext()V
    .locals 1

    .line 1560
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->dabNext()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1562
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public dabPowerState(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1599
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->dabPowerState(Z)V

    return-void
.end method

.method public dabPre()V
    .locals 1

    .line 1544
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->dabPre()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1546
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public dabScan()V
    .locals 1

    .line 1552
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->dabScan()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1554
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public dabSelFreq(I)V
    .locals 1

    .line 1584
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->dabSelFreq(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1586
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public dabSelPre()V
    .locals 1

    .line 1568
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->dabSelPre()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1570
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public dabSelService(I)V
    .locals 1

    .line 1592
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->dabSelService(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1594
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public enableAFSwitch(Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 772
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->enableAFSwitch(Z)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "RadioManager"

    const-string v1, "enableAFSwitch: RemoteException"

    .line 774
    invoke-static {v0, v1, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public enableCTSwitch(Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 783
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->enableCTSwitch(Z)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "RadioManager"

    const-string v1, "enableCTSwitch: RemoteException"

    .line 785
    invoke-static {v0, v1, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public enableEONSwitch(Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 794
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->enableEONSwitch(Z)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "RadioManager"

    const-string v1, "enableEONSwitch: RemoteException"

    .line 796
    invoke-static {v0, v1, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public enablePSSwitch(Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 805
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->enablePSSwitch(Z)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "RadioManager"

    const-string v1, "enablePSSwitch: RemoteException"

    .line 807
    invoke-static {v0, v1, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public enablePTYSwitch(Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 816
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->enablePTYSwitch(Z)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "RadioManager"

    const-string v1, "enablePTYSwitch: RemoteException"

    .line 818
    invoke-static {v0, v1, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public enableRDSSwitch(Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 827
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->enableRDSSwitch(Z)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "RadioManager"

    const-string v1, "enableRDSSwitch: RemoteException"

    .line 829
    invoke-static {v0, v1, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public enableRegionSwitch(Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 838
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->enableRegionSwitch(Z)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "RadioManager"

    const-string v1, "enableRegionSwitch: RemoteException"

    .line 840
    invoke-static {v0, v1, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public enableTASwitch(Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 849
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->enableTASwitch(Z)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "RadioManager"

    const-string v1, "enableTASwitch: RemoteException"

    .line 851
    invoke-static {v0, v1, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public forceMonoSwitch()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "xxxxx"

    const-string v1, "forceMonoSwitch0"

    .line 1419
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1420
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->forceMonoSwitch()V

    return-void
.end method

.method public getAFSeekStatus()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 860
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getAFSeekStatus()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RadioManager"

    const-string v2, "getAFSeekStatus: RemoteException"

    .line 862
    invoke-static {v1, v2, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAFSwitchStatus()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 871
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getAFSwitchStatus()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RadioManager"

    const-string v2, "getAFSwitchStatus: RemoteException"

    .line 873
    invoke-static {v1, v2, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAutoSearchStatus()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 882
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getAutoSearchStatus()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RadioManager"

    const-string v2, "getAutoSearchStatus: RemoteException"

    .line 884
    invoke-static {v1, v2, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAutoSearchWithPreviewStatus()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 893
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getAutoSearchWithPreviewStatus()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RadioManager"

    const-string v2, "getAutoSearchWithPreviewStatus: RemoteException"

    .line 895
    invoke-static {v1, v2, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCTSwitchStatus()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 904
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getCTSwitchStatus()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RadioManager"

    const-string v2, "getCTSwitchStatus: RemoteException"

    .line 906
    invoke-static {v1, v2, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCurPSInfo()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 915
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getCurPSInfo()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RadioManager"

    const-string v2, "getCurPSInfo: RemoteException"

    .line 917
    invoke-static {v1, v2, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getCurPTYInfo()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 926
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getCurPTYInfo()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RadioManager"

    const-string v2, "getCurPTYInfo: RemoteException"

    .line 928
    invoke-static {v1, v2, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getCurRTInfo()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 937
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getCurRTInfo()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RadioManager"

    const-string v2, "getCurRTInfo: RemoteException"

    .line 939
    invoke-static {v1, v2, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getCurrPresetFreq(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 948
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getCurrPresetFreq(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "RadioManager"

    const-string v1, "getCurrPresetFreq: RemoteException"

    .line 950
    invoke-static {v0, v1, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public getCurrentArea()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 959
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getCurrentArea()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RadioManager"

    const-string v2, "getCurrentArea: RemoteException"

    .line 961
    invoke-static {v1, v2, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getCurrentBand()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 970
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getCurrentBand()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RadioManager"

    const-string v2, "getCurrentBand: RemoteException"

    .line 972
    invoke-static {v1, v2, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getCurrentFreq()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 981
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getCurrentFreq()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RadioManager"

    const-string v2, "getCurrentFreq: RemoteException"

    .line 983
    invoke-static {v1, v2, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getDefaultArea()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 990
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getDefaultArea()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEONStatus()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 997
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getEONStatus()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RadioManager"

    const-string v2, "getEONStatus: RemoteException"

    .line 999
    invoke-static {v1, v2, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getEONSwitchStatus()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1008
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getEONSwitchStatus()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RadioManager"

    const-string v2, "getEONSwitchStatus: RemoteException"

    .line 1010
    invoke-static {v1, v2, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getEWSStatus()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1019
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getEWSStatus()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RadioManager"

    const-string v2, "getEWSStatus: RemoteException"

    .line 1021
    invoke-static {v1, v2, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getPSSwitchStatus()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1030
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getPSSwitchStatus()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RadioManager"

    const-string v2, "getPSSwitchStatus: RemoteException"

    .line 1032
    invoke-static {v1, v2, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getPTYSeekStatus()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1041
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getPTYSeekStatus()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RadioManager"

    const-string v2, "getPTYSeekStatus: RemoteException"

    .line 1043
    invoke-static {v1, v2, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getPTYSwitchStatus()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1052
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getPTYSwitchStatus()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RadioManager"

    const-string v2, "getPTYSwitchStatus: RemoteException"

    .line 1054
    invoke-static {v1, v2, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getPresetFreqList(I)[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1063
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getPresetFreqList(I)[Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "RadioManager"

    const-string v1, "getPresetFreqList: RemoteException"

    .line 1065
    invoke-static {v0, v1, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getPresetFreqListCount(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1089
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getPresetFreqListCount(I)I

    move-result p1

    return p1
.end method

.method public getPresetFreqPSList(I)[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1096
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getPresetFreqPSList(I)[Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "RadioManager"

    const-string v1, "getPresetFreqPSList: RemoteException"

    .line 1098
    invoke-static {v0, v1, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getPresetListPSInfo()V
    .locals 3

    .line 1081
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getPresetListPSInfo()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RadioManager"

    const-string v2, "getPresetListPSInfo: RemoteException"

    .line 1083
    invoke-static {v1, v2, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public getPresetPSName(I)Ljava/lang/String;
    .locals 2

    .line 1072
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getPresetPSName(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "RadioManager"

    const-string v1, "getPresetPSName: RemoteException"

    .line 1074
    invoke-static {v0, v1, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p1, ""

    return-object p1
.end method

.method public getRDSSwitchStatus()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1107
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getRDSSwitchStatus()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RadioManager"

    const-string v2, "getRDSSwitchStatus: RemoteException"

    .line 1109
    invoke-static {v1, v2, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getRDSType()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1118
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getRDSType()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RadioManager"

    const-string v2, "getRDSType: RemoteException"

    .line 1120
    invoke-static {v1, v2, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getRFInputMode()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1129
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getRFInputMode()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RadioManager"

    const-string v2, "getRFInputMode: RemoteException"

    .line 1131
    invoke-static {v1, v2, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getRegionSwitchStatus()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1140
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getRegionSwitchStatus()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RadioManager"

    const-string v2, "getRegionSwitchStatus: RemoteException"

    .line 1142
    invoke-static {v1, v2, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getSeekDownStatus()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 738
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getSeekDownStatus()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "RadioManager"

    const-string/jumbo v2, "removeRDSInfoChangeListener: DeadObjectException"

    .line 740
    invoke-static {v1, v2, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getSeekUpStatus()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 729
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getSeekUpStatus()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "RadioManager"

    const-string/jumbo v2, "removeRDSInfoChangeListener: DeadObjectException"

    .line 731
    invoke-static {v1, v2, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getServiceConnection()Z
    .locals 2

    .line 54
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/radio/RadioManager;->connectService()Landroid/os/IBinder;

    move-result-object v0

    const-string v1, "RadioManager"

    if-eqz v0, :cond_0

    .line 56
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    const-string v0, "mRadioManagerService connected1:"

    .line 62
    invoke-static {v1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 65
    sput-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    const-string v0, "mRadioManagerService not connected:"

    .line 66
    invoke-static {v1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    const-string v0, "hzbhd.radio"

    return-object v0
.end method

.method public getSignalStrength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1149
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getSignalStrength()I

    move-result v0

    return v0
.end method

.method public getStepDownStatus()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1156
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getStepDownStatus()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RadioManager"

    const-string v2, "getStepDownStatus: RemoteException"

    .line 1158
    invoke-static {v1, v2, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getStepUpStatus()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1167
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getStepUpStatus()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RadioManager"

    const-string v2, "getStepUpStatus: RemoteException"

    .line 1169
    invoke-static {v1, v2, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getStereoStatus()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1682
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getStereoStatus()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RadioManager"

    const-string v2, "getSupportForceMono: RemoteException"

    .line 1684
    invoke-static {v1, v2, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getSupportForceMono()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1672
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getSupportForceMono()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RadioManager"

    const-string v2, "getSupportForceMono: RemoteException"

    .line 1674
    invoke-static {v1, v2, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getTASeekStatus()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1178
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getTASeekStatus()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RadioManager"

    const-string v2, "getTASeekStatus: RemoteException"

    .line 1180
    invoke-static {v1, v2, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getTAStatus()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1189
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getTAStatus()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RadioManager"

    const-string v2, "getTAStatus: RemoteException"

    .line 1191
    invoke-static {v1, v2, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getTASwitchStatus()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1200
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getTASwitchStatus()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RadioManager"

    const-string v2, "getTASwitchStatus: RemoteException"

    .line 1202
    invoke-static {v1, v2, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getTAVolume()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1209
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getTAVolume()I

    move-result v0

    return v0
.end method

.method public getTAVolume_After()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1219
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getTAVolume_After()I

    move-result v0

    return v0
.end method

.method public getTAVolume_Before()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1214
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getTAVolume_Before()I

    move-result v0

    return v0
.end method

.method public getTPSeekStatus()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1226
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getTPSeekStatus()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RadioManager"

    const-string v2, "getTPSeekStatus: RemoteException"

    .line 1228
    invoke-static {v1, v2, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getTunerModel()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1235
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getTunerModel()B

    move-result v0

    return v0
.end method

.method public getValidFreqList(I)[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1242
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getValidFreqList(I)[Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "RadioManager"

    const-string v1, "getValidFreqList: RemoteException"

    .line 1244
    invoke-static {v0, v1, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getValidFreqListCount(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1251
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getValidFreqListCount(I)I

    move-result p1

    return p1
.end method

.method public getVoiceChannelType()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1258
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getVoiceChannelType()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RadioManager"

    const-string v2, "getVoiceChannelType: RemoteException"

    .line 1260
    invoke-static {v1, v2, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public initRadioData()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1651
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->initRadioData()V

    return-void
.end method

.method public isMute6686()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1626
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->isMute6686()Z

    move-result v0

    return v0
.end method

.method public isRDSStation()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1269
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->isRDSStation()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RadioManager"

    const-string v2, "isRDSStation: RemoteException"

    .line 1271
    invoke-static {v1, v2, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTP()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1280
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->isTP()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RadioManager"

    const-string v2, "isTP: RemoteException"

    .line 1282
    invoke-static {v1, v2, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isValidFreq()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1291
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->isValidFreq()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RadioManager"

    const-string v2, "isValidFreq: RemoteException"

    .line 1293
    invoke-static {v1, v2, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public mute6686(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1622
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->mute6686(Z)V

    return-void
.end method

.method public playPresetFreq(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1611
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->playPresetFreq(I)V

    return-void
.end method

.method public removeRDSInfoChangeListener(Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public removeRDSInfoChangeListener(Lcom/hzbhd/midwareproxy/radio/aidl/RDSInfoChangeListener;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 716
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeRDSInfoChangeListener: listener = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RadioManager"

    invoke-static {v1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRDSListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hzbhd/midwareproxy/radio/RadioManager$RDSInfoChangeListenerTransport;

    if-eqz p1, :cond_0

    .line 720
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->removeRDSInfoChangeListener(Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string/jumbo v0, "removeRDSInfoChangeListener: DeadObjectException"

    .line 723
    invoke-static {v1, v0, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void

    .line 714
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener==null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeRadioInfoChangeListener(Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public removeRadioInfoChangeListener(Lcom/hzbhd/midwareproxy/radio/aidl/RadioInfoChangeListener;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 686
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeRadioInfoChangeListener: listener = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RadioManager"

    invoke-static {v1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hzbhd/midwareproxy/radio/RadioManager$RadioInfoChangeListenerTransport;

    if-eqz p1, :cond_0

    .line 690
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->removeRadioInfoChangeListener(Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string/jumbo v0, "removeRadioInfoChangeListener: DeadObjectException"

    .line 693
    invoke-static {v1, v0, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void

    .line 684
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener==null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public restoreFactorySettings()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1302
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->restoreFactorySettings()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RadioManager"

    const-string/jumbo v2, "restoreFactorySettings: RemoteException"

    .line 1304
    invoke-static {v1, v2, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public saveAppdata(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1661
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->saveAppdata(Ljava/lang/String;)V

    return-void
.end method

.method public searchSpecialRDSProgram(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1313
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->searchSpecialRDSProgram(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "RadioManager"

    const-string/jumbo v1, "searchSpecialRDSProgram: RemoteException"

    .line 1315
    invoke-static {v0, v1, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public searchStepDown()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1335
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    sget-object v1, Lcom/hzbhd/midware/constant/RadioConstantsDef$StepType;->STEP_DEFAULT:Lcom/hzbhd/midware/constant/RadioConstantsDef$StepType;

    invoke-virtual {v1}, Lcom/hzbhd/midware/constant/RadioConstantsDef$StepType;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->searchStepDown(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RadioManager"

    const-string/jumbo v2, "searchStepDown: RemoteException"

    .line 1337
    invoke-static {v1, v2, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public searchStepDown(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1324
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->searchStepDown(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "RadioManager"

    const-string/jumbo v1, "searchStepDown: RemoteException"

    .line 1326
    invoke-static {v0, v1, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public searchStepUp()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1357
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    sget-object v1, Lcom/hzbhd/midware/constant/RadioConstantsDef$StepType;->STEP_DEFAULT:Lcom/hzbhd/midware/constant/RadioConstantsDef$StepType;

    invoke-virtual {v1}, Lcom/hzbhd/midware/constant/RadioConstantsDef$StepType;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->searchStepUp(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RadioManager"

    const-string/jumbo v2, "searchStepUp: RemoteException"

    .line 1359
    invoke-static {v1, v2, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public searchStepUp(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1346
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->searchStepUp(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "RadioManager"

    const-string/jumbo v1, "searchStepUp: RemoteException"

    .line 1348
    invoke-static {v0, v1, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public seekDown()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1615
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->seekDown()Z

    move-result v0

    return v0
.end method

.method public seekUp()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1607
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->seekUp()Z

    move-result v0

    return v0
.end method

.method public sendAppdata(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1665
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->sendAppdata(Ljava/lang/String;)V

    return-void
.end method

.method public serviceDied()V
    .locals 1

    const/4 v0, 0x0

    .line 73
    sput-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManager:Lcom/hzbhd/midwareproxy/radio/RadioManager;

    .line 74
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mServiceConnectionState:Lcom/hzbhd/midwareproxy/radio/RadioManager$ServiceConnectionState;

    if-eqz v0, :cond_0

    .line 75
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/radio/RadioManager$ServiceConnectionState;->serviceDead()V

    :cond_0
    return-void
.end method

.method public setCurrPresetFreq(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1368
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->setCurrPresetFreq(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "RadioManager"

    const-string/jumbo v1, "setCurrPresetFreq: RemoteException"

    .line 1370
    invoke-static {v0, v1, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setCurrentArea(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1379
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->setCurrentArea(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "RadioManager"

    const-string/jumbo v1, "setCurrentArea: RemoteException"

    .line 1381
    invoke-static {v0, v1, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setCurrentBand(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1390
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->setCurrentBand(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "RadioManager"

    const-string/jumbo v1, "setCurrentBand: RemoteException"

    .line 1392
    invoke-static {v0, v1, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setCurrentFreq(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1400
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->setCurrentFreq(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "RadioManager"

    const-string/jumbo v1, "setCurrentFreq: RemoteException"

    .line 1402
    invoke-static {v0, v1, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public setDefaultArea()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1411
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->setDefaultArea()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RadioManager"

    const-string/jumbo v2, "setDefaultArea: RemoteException"

    .line 1413
    invoke-static {v1, v2, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setPresetFreqList(IILjava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1427
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->setPresetFreqList(IILjava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "RadioManager"

    const-string/jumbo p3, "setPresetFreqList: RemoteException"

    .line 1429
    invoke-static {p2, p3, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setRDSAFLevel(B)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1438
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->setRDSAFLevel(B)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "RadioManager"

    const-string/jumbo v1, "setRDSAFLevel: RemoteException"

    .line 1440
    invoke-static {v0, v1, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setRDSInfoChangeListener(Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public setRDSInfoChangeListener(Lcom/hzbhd/midwareproxy/radio/aidl/RDSInfoChangeListener;)V
    .locals 3

    .line 699
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRDSListeners:Ljava/util/HashMap;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 700
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRDSListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/radio/RadioManager$RDSInfoChangeListenerTransport;

    if-nez v1, :cond_0

    .line 702
    new-instance v1, Lcom/hzbhd/midwareproxy/radio/RadioManager$RDSInfoChangeListenerTransport;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/hzbhd/midwareproxy/radio/RadioManager$RDSInfoChangeListenerTransport;-><init>(Lcom/hzbhd/midwareproxy/radio/RadioManager;Lcom/hzbhd/midwareproxy/radio/aidl/RDSInfoChangeListener;Landroid/os/Looper;)V

    .line 704
    :cond_0
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRDSListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    sget-object p1, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {p1, v1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->setRDSInfoChangeListener(Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;)V

    .line 706
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    const-string v0, "RadioManager"

    const-string/jumbo v1, "setRDSInfoChangeListener: DeadObjectException"

    .line 708
    invoke-static {v0, v1, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setRDSType(B)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1449
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->setRDSType(B)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "RadioManager"

    const-string/jumbo v1, "setRDSType: RemoteException"

    .line 1451
    invoke-static {v0, v1, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setRFInputMode(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1460
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->setRFInputMode(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "RadioManager"

    const-string/jumbo v1, "setRFInputMode: RemoteException"

    .line 1462
    invoke-static {v0, v1, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setRadioInfoChangeListener(Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public setRadioInfoChangeListener(Lcom/hzbhd/midwareproxy/radio/aidl/RadioInfoChangeListener;)V
    .locals 3

    .line 669
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mListeners:Ljava/util/HashMap;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 670
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/radio/RadioManager$RadioInfoChangeListenerTransport;

    if-nez v1, :cond_0

    .line 672
    new-instance v1, Lcom/hzbhd/midwareproxy/radio/RadioManager$RadioInfoChangeListenerTransport;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/hzbhd/midwareproxy/radio/RadioManager$RadioInfoChangeListenerTransport;-><init>(Lcom/hzbhd/midwareproxy/radio/RadioManager;Lcom/hzbhd/midwareproxy/radio/aidl/RadioInfoChangeListener;Landroid/os/Looper;)V

    .line 674
    :cond_0
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    sget-object p1, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {p1, v1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->setRadioInfoChangeListener(Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;)V

    .line 676
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    const-string v0, "RadioManager"

    const-string/jumbo v1, "setRadioInfoChangeListener: DeadObjectException"

    .line 678
    invoke-static {v0, v1, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setServiceConnectionStateListener(Lcom/hzbhd/midwareproxy/radio/RadioManager$ServiceConnectionState;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mServiceConnectionState:Lcom/hzbhd/midwareproxy/radio/RadioManager$ServiceConnectionState;

    return-void
.end method

.method public setTAVolume(III)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1471
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->setTAVolume(III)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "RadioManager"

    const-string/jumbo p3, "setTAVolume: RemoteException"

    .line 1473
    invoke-static {p2, p3, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setTAVolume_After(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1493
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->setTAVolume_After(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "RadioManager"

    const-string/jumbo v1, "setTAVolume: RemoteException"

    .line 1495
    invoke-static {v0, v1, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setTAVolume_Before(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1482
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->setTAVolume_Before(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "RadioManager"

    const-string/jumbo v1, "setTAVolume: RemoteException"

    .line 1484
    invoke-static {v0, v1, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setTunerReg(BB)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1504
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0, p1, p2}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->setTunerReg(BB)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "RadioManager"

    const-string/jumbo v0, "setTunerReg: RemoteException"

    .line 1506
    invoke-static {p2, v0, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setTunerRegWithModel(B)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1515
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->setTunerRegWithModel(B)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "RadioManager"

    const-string/jumbo v1, "setTunerRegWithModel: RemoteException"

    .line 1517
    invoke-static {v0, v1, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public stopSearch()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1526
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->stopSearch()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RadioManager"

    const-string/jumbo v2, "stopSearch: RemoteException"

    .line 1528
    invoke-static {v1, v2, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public switchPowerState(Z)V
    .locals 1

    .line 1576
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->switchPowerState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1578
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public system_btn_down(IJI)V
    .locals 14

    .line 1655
    new-instance v13, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/16 v11, 0x48

    const/16 v12, 0x101

    move-object v0, v13

    move-wide/from16 v1, p2

    move/from16 v5, p4

    move v6, p1

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 1656
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v13, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    return-void
.end method

.method public tuneDown()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1603
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->tuneDown()Z

    move-result v0

    return v0
.end method

.method public tuneUp()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1539
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/RadioManager;->mRadioManagerService:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->tuneUp()Z

    move-result v0

    return v0
.end method
