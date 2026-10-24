.class public Lcom/hzbhd/midwareproxy/dsp/DspManager;
.super Ljava/lang/Object;
.source "DspManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;
    }
.end annotation


# static fields
.field public static final FS:I = 0xac44

.field private static final TAG:Ljava/lang/String;

.field private static mDspManager:Lcom/hzbhd/midwareproxy/dsp/DspManager;


# instance fields
.field private mDspSerciceManager:Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-class v0, Lcom/hzbhd/midwareproxy/dsp/DspManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/midwareproxy/dsp/DspManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;-><init>(Lcom/hzbhd/midwareproxy/dsp/DspManager;Lcom/hzbhd/midwareproxy/dsp/DspManager$1;)V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/dsp/DspManager;->mDspSerciceManager:Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 14
    sget-object v0, Lcom/hzbhd/midwareproxy/dsp/DspManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/hzbhd/midwareproxy/dsp/DspManager;
    .locals 2

    const-class v0, Lcom/hzbhd/midwareproxy/dsp/DspManager;

    monitor-enter v0

    .line 24
    :try_start_0
    sget-object v1, Lcom/hzbhd/midwareproxy/dsp/DspManager;->mDspManager:Lcom/hzbhd/midwareproxy/dsp/DspManager;

    if-nez v1, :cond_0

    .line 25
    new-instance v1, Lcom/hzbhd/midwareproxy/dsp/DspManager;

    invoke-direct {v1}, Lcom/hzbhd/midwareproxy/dsp/DspManager;-><init>()V

    sput-object v1, Lcom/hzbhd/midwareproxy/dsp/DspManager;->mDspManager:Lcom/hzbhd/midwareproxy/dsp/DspManager;

    .line 27
    :cond_0
    sget-object v1, Lcom/hzbhd/midwareproxy/dsp/DspManager;->mDspManager:Lcom/hzbhd/midwareproxy/dsp/DspManager;
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
.method public getDelay(Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant$VOLUME;)F
    .locals 1

    .line 250
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/dsp/DspManager;->mDspSerciceManager:Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;->access$200(Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;)Lcom/hzbhd/midwareproxy/binder/service/IDspInterface;

    move-result-object v0

    invoke-virtual {p1}, Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant$VOLUME;->ordinal()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IDspInterface;->getDelay(I)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 252
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public getEqType()Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant$DSP_TYPE;
    .locals 2

    .line 222
    :try_start_0
    invoke-static {}, Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant$DSP_TYPE;->values()[Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant$DSP_TYPE;

    move-result-object v0

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/dsp/DspManager;->mDspSerciceManager:Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;->access$200(Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;)Lcom/hzbhd/midwareproxy/binder/service/IDspInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/hzbhd/midwareproxy/binder/service/IDspInterface;->getEqType()I

    move-result v1

    aget-object v0, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 224
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 226
    sget-object v0, Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant$DSP_TYPE;->FLAT:Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant$DSP_TYPE;

    return-object v0
.end method

.method public getGain(Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant$VOLUME;)I
    .locals 1

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/dsp/DspManager;->mDspSerciceManager:Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;->access$200(Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;)Lcom/hzbhd/midwareproxy/binder/service/IDspInterface;

    move-result-object v0

    invoke-virtual {p1}, Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant$VOLUME;->ordinal()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IDspInterface;->getGain(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 152
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public getNaviMixType()I
    .locals 1

    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/dsp/DspManager;->mDspSerciceManager:Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;->access$200(Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;)Lcom/hzbhd/midwareproxy/binder/service/IDspInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IDspInterface;->getNaviMixType()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 233
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public getPassFilterFC(Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant$VOLUME;)D
    .locals 2

    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/dsp/DspManager;->mDspSerciceManager:Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;->access$200(Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;)Lcom/hzbhd/midwareproxy/binder/service/IDspInterface;

    move-result-object v0

    invoke-virtual {p1}, Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant$VOLUME;->ordinal()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IDspInterface;->getPassFilterFc(I)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    .line 189
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPassFilterQ(Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant$VOLUME;)D
    .locals 2

    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/dsp/DspManager;->mDspSerciceManager:Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;->access$200(Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;)Lcom/hzbhd/midwareproxy/binder/service/IDspInterface;

    move-result-object v0

    invoke-virtual {p1}, Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant$VOLUME;->ordinal()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IDspInterface;->getPassFilterQ(I)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    .line 198
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSubEnable()Z
    .locals 1

    .line 305
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/dsp/DspManager;->mDspSerciceManager:Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;->access$200(Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;)Lcom/hzbhd/midwareproxy/binder/service/IDspInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IDspInterface;->getSubEnable()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 307
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public getVolume(Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant$VOLUME;I)[D
    .locals 1

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/dsp/DspManager;->mDspSerciceManager:Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;->access$200(Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;)Lcom/hzbhd/midwareproxy/binder/service/IDspInterface;

    move-result-object v0

    invoke-virtual {p1}, Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant$VOLUME;->ordinal()I

    move-result p1

    invoke-interface {v0, p1, p2}, Lcom/hzbhd/midwareproxy/binder/service/IDspInterface;->getVolume(II)[D

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 172
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x3

    new-array p1, p1, [D

    return-object p1
.end method

.method public isFreqDividerenable()Z
    .locals 1

    .line 288
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/dsp/DspManager;->mDspSerciceManager:Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;->access$200(Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;)Lcom/hzbhd/midwareproxy/binder/service/IDspInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IDspInterface;->isFreqDividerEnable()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 290
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public isLoudnessSwitch()Z
    .locals 1

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/dsp/DspManager;->mDspSerciceManager:Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;->access$200(Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;)Lcom/hzbhd/midwareproxy/binder/service/IDspInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IDspInterface;->isLoudnessSwitch()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 115
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public isMute()Z
    .locals 1

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/dsp/DspManager;->mDspSerciceManager:Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;->access$200(Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;)Lcom/hzbhd/midwareproxy/binder/service/IDspInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IDspInterface;->isMute()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 124
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public isRcaMixNavi()Z
    .locals 1

    .line 331
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/dsp/DspManager;->mDspSerciceManager:Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;->access$200(Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;)Lcom/hzbhd/midwareproxy/binder/service/IDspInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IDspInterface;->isRcaMixNavi()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 333
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public isServiceConnected()Z
    .locals 1

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/dsp/DspManager;->mDspSerciceManager:Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;->isServiceConnected()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 82
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public isShowRcaCtrl()Z
    .locals 1

    .line 314
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/dsp/DspManager;->mDspSerciceManager:Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;->access$200(Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;)Lcom/hzbhd/midwareproxy/binder/service/IDspInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IDspInterface;->isShowRcaCtrl()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 316
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public mute(Z)V
    .locals 1

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/dsp/DspManager;->mDspSerciceManager:Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;->access$200(Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;)Lcom/hzbhd/midwareproxy/binder/service/IDspInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IDspInterface;->mute(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 91
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public playBeep()V
    .locals 1

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/dsp/DspManager;->mDspSerciceManager:Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;->access$200(Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;)Lcom/hzbhd/midwareproxy/binder/service/IDspInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IDspInterface;->playBeep()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 133
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setDelay(Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant$VOLUME;F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x41200000    # 10.0f

    cmpl-float v0, p2, v0

    if-gtz v0, :cond_0

    .line 263
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/dsp/DspManager;->mDspSerciceManager:Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;->access$200(Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;)Lcom/hzbhd/midwareproxy/binder/service/IDspInterface;

    move-result-object v0

    invoke-virtual {p1}, Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant$VOLUME;->ordinal()I

    move-result p1

    invoke-interface {v0, p1, p2}, Lcom/hzbhd/midwareproxy/binder/service/IDspInterface;->setDelay(IF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 266
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setEqType(Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant$DSP_TYPE;)V
    .locals 1

    .line 205
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/dsp/DspManager;->mDspSerciceManager:Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;->access$200(Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;)Lcom/hzbhd/midwareproxy/binder/service/IDspInterface;

    move-result-object v0

    invoke-virtual {p1}, Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant$DSP_TYPE;->ordinal()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IDspInterface;->setEqType(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 207
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setFreqDividerenable(Z)V
    .locals 1

    .line 272
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/dsp/DspManager;->mDspSerciceManager:Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;->access$200(Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;)Lcom/hzbhd/midwareproxy/binder/service/IDspInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IDspInterface;->setFreqDividerenable(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 274
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setGain(Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant$VOLUME;I)V
    .locals 1

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/dsp/DspManager;->mDspSerciceManager:Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;->access$200(Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;)Lcom/hzbhd/midwareproxy/binder/service/IDspInterface;

    move-result-object v0

    invoke-virtual {p1}, Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant$VOLUME;->ordinal()I

    move-result p1

    invoke-interface {v0, p1, p2}, Lcom/hzbhd/midwareproxy/binder/service/IDspInterface;->setGain(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 141
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setLoudnessSwitch(Z)V
    .locals 1

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/dsp/DspManager;->mDspSerciceManager:Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;->access$200(Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;)Lcom/hzbhd/midwareproxy/binder/service/IDspInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IDspInterface;->setLoudnessSwitch(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 107
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setNaviMixType(I)V
    .locals 2

    const-string v0, "dsp_service setNaviMixType"

    const-string v1, ""

    .line 212
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/dsp/DspManager;->mDspSerciceManager:Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;->access$200(Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;)Lcom/hzbhd/midwareproxy/binder/service/IDspInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IDspInterface;->setNaviMixType(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 216
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setPassFilter(Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant$VOLUME;DDI)V
    .locals 8

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/dsp/DspManager;->mDspSerciceManager:Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;->access$200(Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;)Lcom/hzbhd/midwareproxy/binder/service/IDspInterface;

    move-result-object v1

    invoke-virtual {p1}, Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant$VOLUME;->ordinal()I

    move-result v2

    move-wide v3, p2

    move-wide v5, p4

    move v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/hzbhd/midwareproxy/binder/service/IDspInterface;->setPassFilter(IDDI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 181
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setRcaMixNavi(Z)V
    .locals 1

    .line 323
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/dsp/DspManager;->mDspSerciceManager:Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;->access$200(Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;)Lcom/hzbhd/midwareproxy/binder/service/IDspInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IDspInterface;->setRcaMixNavi(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 325
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setSourceMute(Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;Z)V
    .locals 1

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/dsp/DspManager;->mDspSerciceManager:Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;->access$200(Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;)Lcom/hzbhd/midwareproxy/binder/service/IDspInterface;

    move-result-object v0

    invoke-virtual {p1}, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/hzbhd/midwareproxy/binder/service/IDspInterface;->setSourceMute(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 99
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setSubEnable(Z)V
    .locals 1

    .line 297
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/dsp/DspManager;->mDspSerciceManager:Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;->access$200(Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;)Lcom/hzbhd/midwareproxy/binder/service/IDspInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IDspInterface;->setSubEnable(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 299
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setTempFreqDividerenable(Z)V
    .locals 1

    .line 280
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/dsp/DspManager;->mDspSerciceManager:Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;->access$200(Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;)Lcom/hzbhd/midwareproxy/binder/service/IDspInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IDspInterface;->setTempFreqDividerenable(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 282
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setVolume(Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant$VOLUME;IDDD)V
    .locals 12

    move-object v1, p0

    .line 159
    :try_start_0
    iget-object v0, v1, Lcom/hzbhd/midwareproxy/dsp/DspManager;->mDspSerciceManager:Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;->access$200(Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;)Lcom/hzbhd/midwareproxy/binder/service/IDspInterface;

    move-result-object v2

    invoke-virtual {p1}, Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant$VOLUME;->ordinal()I

    move-result v3

    const v11, 0xac44

    move v4, p2

    move-wide v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    invoke-interface/range {v2 .. v11}, Lcom/hzbhd/midwareproxy/binder/service/IDspInterface;->setVolume(IIDDDI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 161
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public tempMute(I)V
    .locals 1

    .line 240
    :try_start_0
    sget-object v0, Lcom/hzbhd/config/androidconfig/BHDAndroidConfigXML$SHARED_KEY;->IS_BU32107:Lcom/hzbhd/config/androidconfig/BHDAndroidConfigXML$SHARED_KEY;

    invoke-virtual {v0}, Lcom/hzbhd/config/androidconfig/BHDAndroidConfigXML$SHARED_KEY;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/DefaultSharedUtil;->getBool(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/dsp/DspManager;->mDspSerciceManager:Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;->access$200(Lcom/hzbhd/midwareproxy/dsp/DspManager$DspServiceManager;)Lcom/hzbhd/midwareproxy/binder/service/IDspInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IDspInterface;->tempMute(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 244
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
