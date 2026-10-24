.class public Lcom/autochips/bluetooth/BtSPPAdapter;
.super Ljava/lang/Object;
.source "BtSPPAdapter.java"


# static fields
.field public static final SPP_DATA:Ljava/lang/String; = "com.autochips.bluetooth.BtSPPAdapter.data"

.field public static final SPP_DATA_EXTRA:Ljava/lang/String; = "com.autochips.bluetooth.BtSPPAdapter.data.extra"

.field public static final SPP_STATE_CHANGE:Ljava/lang/String; = "com.autochips.bluetooth.BtSPPAdapter.stateChange"

.field public static final SPP_STATE_CHANGE_EXTRA:Ljava/lang/String; = "com.autochips.bluetooth.BtSPPAdapter.stateChange.extra"

.field public static final STATE_CONNECTED:I = 0x2

.field public static final STATE_CONNECTED_FAILED:I = 0x3

.field public static final STATE_CONNECTING:I = 0x1

.field public static final STATE_DISCONNECTED_IND:I = 0x4

.field public static final STATE_NONE:I


# instance fields
.field private final TAG:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private mCon:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private sppData:Landroid/content/Intent;

.field private sppService:Lcom/autochips/bluetooth/spp/SppService;

.field private sppStateChange:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "BtSPPAdapter"

    .line 15
    iput-object v0, p0, Lcom/autochips/bluetooth/BtSPPAdapter;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    .line 35
    iput-object v1, p0, Lcom/autochips/bluetooth/BtSPPAdapter;->sppService:Lcom/autochips/bluetooth/spp/SppService;

    .line 120
    new-instance v1, Lcom/autochips/bluetooth/BtSPPAdapter$1;

    invoke-direct {v1, p0}, Lcom/autochips/bluetooth/BtSPPAdapter$1;-><init>(Lcom/autochips/bluetooth/BtSPPAdapter;)V

    iput-object v1, p0, Lcom/autochips/bluetooth/BtSPPAdapter;->handler:Landroid/os/Handler;

    .line 146
    new-instance v1, Lcom/autochips/bluetooth/BtSPPAdapter$2;

    invoke-direct {v1, p0}, Lcom/autochips/bluetooth/BtSPPAdapter$2;-><init>(Lcom/autochips/bluetooth/BtSPPAdapter;)V

    iput-object v1, p0, Lcom/autochips/bluetooth/BtSPPAdapter;->mCon:Landroid/content/ServiceConnection;

    .line 39
    invoke-static {v0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iput-object p1, p0, Lcom/autochips/bluetooth/BtSPPAdapter;->mContext:Landroid/content/Context;

    .line 41
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.autochips.bluetooth.BtSPPAdapter.stateChange"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/autochips/bluetooth/BtSPPAdapter;->sppStateChange:Landroid/content/Intent;

    .line 42
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.autochips.bluetooth.BtSPPAdapter.data"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/autochips/bluetooth/BtSPPAdapter;->sppData:Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/autochips/bluetooth/BtSPPAdapter;)Landroid/content/Intent;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/autochips/bluetooth/BtSPPAdapter;->sppStateChange:Landroid/content/Intent;

    return-object p0
.end method

.method static synthetic access$100(Lcom/autochips/bluetooth/BtSPPAdapter;)Landroid/content/Context;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/autochips/bluetooth/BtSPPAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/autochips/bluetooth/BtSPPAdapter;)Landroid/content/Intent;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/autochips/bluetooth/BtSPPAdapter;->sppData:Landroid/content/Intent;

    return-object p0
.end method

.method static synthetic access$300(Lcom/autochips/bluetooth/BtSPPAdapter;)Lcom/autochips/bluetooth/spp/SppService;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/autochips/bluetooth/BtSPPAdapter;->sppService:Lcom/autochips/bluetooth/spp/SppService;

    return-object p0
.end method

.method static synthetic access$302(Lcom/autochips/bluetooth/BtSPPAdapter;Lcom/autochips/bluetooth/spp/SppService;)Lcom/autochips/bluetooth/spp/SppService;
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/autochips/bluetooth/BtSPPAdapter;->sppService:Lcom/autochips/bluetooth/spp/SppService;

    return-object p1
.end method

.method static synthetic access$400(Lcom/autochips/bluetooth/BtSPPAdapter;)Landroid/os/Handler;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/autochips/bluetooth/BtSPPAdapter;->handler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public connect(Ljava/lang/String;)Z
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/autochips/bluetooth/BtSPPAdapter;->sppService:Lcom/autochips/bluetooth/spp/SppService;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/autochips/bluetooth/BtSPPAdapter;->getState()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 67
    iget-object v0, p0, Lcom/autochips/bluetooth/BtSPPAdapter;->sppService:Lcom/autochips/bluetooth/spp/SppService;

    invoke-virtual {v0, p1, v1}, Lcom/autochips/bluetooth/spp/SppService;->connect(Ljava/lang/String;Z)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "BtSPPAdapter"

    const-string v0, "Connect:SppService is null or has connected"

    .line 70
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method

.method public disconnct()Z
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/autochips/bluetooth/BtSPPAdapter;->sppService:Lcom/autochips/bluetooth/spp/SppService;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/autochips/bluetooth/BtSPPAdapter;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/autochips/bluetooth/BtSPPAdapter;->sppService:Lcom/autochips/bluetooth/spp/SppService;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/spp/SppService;->disconnect()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "BtSPPAdapter"

    const-string v1, "Disconnct:SppService is null or not connect"

    .line 83
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getState()I
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/autochips/bluetooth/BtSPPAdapter;->sppService:Lcom/autochips/bluetooth/spp/SppService;

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0}, Lcom/autochips/bluetooth/spp/SppService;->getState()I

    move-result v0

    goto :goto_0

    :cond_0
    const-string v0, "BtSPPAdapter"

    const-string v1, "getState:SppService is null"

    .line 106
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public setIsSppSerial(Z)Z
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/autochips/bluetooth/BtSPPAdapter;->sppService:Lcom/autochips/bluetooth/spp/SppService;

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/spp/SppService;->setSppType(Z)V

    goto :goto_0

    :cond_0
    const-string p1, "BtSPPAdapter"

    const-string/jumbo v0, "setIsSppSerial:SppService is null"

    .line 115
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :goto_0
    iget-object p1, p0, Lcom/autochips/bluetooth/BtSPPAdapter;->sppService:Lcom/autochips/bluetooth/spp/SppService;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public start()Z
    .locals 4

    .line 47
    iget-object v0, p0, Lcom/autochips/bluetooth/BtSPPAdapter;->sppService:Lcom/autochips/bluetooth/spp/SppService;

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/autochips/bluetooth/BtSPPAdapter;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/autochips/bluetooth/BtSPPAdapter;->mContext:Landroid/content/Context;

    const-class v3, Lcom/autochips/bluetooth/spp/SppService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/autochips/bluetooth/BtSPPAdapter;->mCon:Landroid/content/ServiceConnection;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    goto :goto_0

    :cond_0
    const-string v0, "BtSPPAdapter"

    const-string/jumbo v1, "start:sppService is not null"

    .line 50
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public stop()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/autochips/bluetooth/BtSPPAdapter;->sppService:Lcom/autochips/bluetooth/spp/SppService;

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/autochips/bluetooth/BtSPPAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/autochips/bluetooth/BtSPPAdapter;->mCon:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_0

    :cond_0
    const-string v0, "BtSPPAdapter"

    const-string/jumbo v1, "stop:sppService is not null"

    .line 60
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public write(Ljava/lang/String;)Z
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/autochips/bluetooth/BtSPPAdapter;->sppService:Lcom/autochips/bluetooth/spp/SppService;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/autochips/bluetooth/BtSPPAdapter;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/autochips/bluetooth/BtSPPAdapter;->sppService:Lcom/autochips/bluetooth/spp/SppService;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/spp/SppService;->write([B)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "BtSPPAdapter"

    const-string v0, "Write:SppService is null or not connect"

    .line 95
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_0
    return p1
.end method
