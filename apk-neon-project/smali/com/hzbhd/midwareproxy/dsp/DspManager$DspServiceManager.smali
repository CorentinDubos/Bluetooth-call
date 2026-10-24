.class Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;
.super Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;
.source "DspManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/dsp/DspManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DspServiceManager"
.end annotation


# instance fields
.field private mDspSercice:Lcom/hzbhd/midwareproxy/binder/service/IDspInterface;

.field final synthetic this$0:Lcom/hzbhd/midwareproxy/dsp/DspManager;


# direct methods
.method private constructor <init>(Lcom/hzbhd/midwareproxy/dsp/DspManager;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;->this$0:Lcom/hzbhd/midwareproxy/dsp/DspManager;

    .line 39
    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;-><init>()V

    .line 40
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;->getServiceConnection()Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/hzbhd/midwareproxy/dsp/DspManager;Lcom/hzbhd/midwareproxy/dsp/DspManager$1;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;-><init>(Lcom/hzbhd/midwareproxy/dsp/DspManager;)V

    return-void
.end method

.method static synthetic access$200(Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;)Lcom/hzbhd/midwareproxy/binder/service/IDspInterface;
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;->getDspSercice()Lcom/hzbhd/midwareproxy/binder/service/IDspInterface;

    move-result-object p0

    return-object p0
.end method

.method private getDspSercice()Lcom/hzbhd/midwareproxy/binder/service/IDspInterface;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;->mDspSercice:Lcom/hzbhd/midwareproxy/binder/service/IDspInterface;

    return-object v0
.end method


# virtual methods
.method public getServiceConnection()Z
    .locals 2

    .line 59
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;->connectService()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/binder/service/IDspInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/binder/service/IDspInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;->mDspSercice:Lcom/hzbhd/midwareproxy/binder/service/IDspInterface;

    .line 63
    invoke-static {}, Lcom/hzbhd/midwareproxy/dsp/DspManager;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DspService connected1:"

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;->mDspSercice:Lcom/hzbhd/midwareproxy/binder/service/IDspInterface;

    .line 67
    invoke-static {}, Lcom/hzbhd/midwareproxy/dsp/DspManager;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DspService not connected:"

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    const-string v0, "hzbhd.dsp"

    return-object v0
.end method

.method public serviceDied()V
    .locals 1

    .line 45
    invoke-super {p0}, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;->serviceDied()V

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;->mDspSercice:Lcom/hzbhd/midwareproxy/binder/service/IDspInterface;

    return-void
.end method

.method public serviceReConnected()V
    .locals 0

    .line 51
    invoke-super {p0}, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;->serviceReConnected()V

    return-void
.end method
