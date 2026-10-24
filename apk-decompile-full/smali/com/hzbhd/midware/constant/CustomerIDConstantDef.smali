.class public Lcom/hzbhd/midware/constant/CustomerIDConstantDef;
.super Ljava/lang/Object;
.source "CustomerIDConstantDef.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midware/constant/CustomerIDConstantDef$AccessoryInformation;,
        Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;,
        Lcom/hzbhd/midware/constant/CustomerIDConstantDef$ATV_AREA;,
        Lcom/hzbhd/midware/constant/CustomerIDConstantDef$LedName;,
        Lcom/hzbhd/midware/constant/CustomerIDConstantDef$PRODUCTION_CODE;,
        Lcom/hzbhd/midware/constant/CustomerIDConstantDef$LED_NAME;,
        Lcom/hzbhd/midware/constant/CustomerIDConstantDef$MPEG_TYPE;,
        Lcom/hzbhd/midware/constant/CustomerIDConstantDef$PROCDUCTION_EXAMPLE;
    }
.end annotation


# static fields
.field private static lockObject:Ljava/lang/Object;

.field private static mCustomerIDConstantDef:Lcom/hzbhd/midware/constant/CustomerIDConstantDef;

.field private static mCustomerId:Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;

.field private static mLedName:Lcom/hzbhd/midware/constant/CustomerIDConstantDef$LedName;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/hzbhd/midware/constant/CustomerIDConstantDef;->lockObject:Ljava/lang/Object;

    .line 19
    sget-object v0, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;->INVALID:Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;

    sput-object v0, Lcom/hzbhd/midware/constant/CustomerIDConstantDef;->mCustomerId:Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;

    .line 20
    new-instance v0, Lcom/hzbhd/midware/constant/CustomerIDConstantDef;

    invoke-direct {v0}, Lcom/hzbhd/midware/constant/CustomerIDConstantDef;-><init>()V

    sput-object v0, Lcom/hzbhd/midware/constant/CustomerIDConstantDef;->mCustomerIDConstantDef:Lcom/hzbhd/midware/constant/CustomerIDConstantDef;

    .line 21
    new-instance v0, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$LedName;

    sget-object v1, Lcom/hzbhd/midware/constant/CustomerIDConstantDef;->mCustomerIDConstantDef:Lcom/hzbhd/midware/constant/CustomerIDConstantDef;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$LedName;-><init>(Lcom/hzbhd/midware/constant/CustomerIDConstantDef;)V

    sput-object v0, Lcom/hzbhd/midware/constant/CustomerIDConstantDef;->mLedName:Lcom/hzbhd/midware/constant/CustomerIDConstantDef$LedName;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canLight()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static canMusicSupportAAC()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static canMuteRadioWhenMixAudio()Z
    .locals 2

    .line 717
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getCustomerID()Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;

    move-result-object v0

    .line 719
    sget-object v1, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$1;->$SwitchMap$com$hzbhd$midware$constant$CustomerIDConstantDef$CUSTOMER_ID:[I

    invoke-virtual {v0}, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v0, 0x0

    return v0
.end method

.method public static canSetScalerBright()Lcom/hzbhd/midware/constant/CustomerIDConstantDef$PRODUCTION_CODE;
    .locals 2

    .line 727
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getCustomerID()Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;

    move-result-object v0

    .line 728
    sget-object v1, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$PRODUCTION_CODE;->AWA8001:Lcom/hzbhd/midware/constant/CustomerIDConstantDef$PRODUCTION_CODE;

    .line 729
    sget-object v1, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$1;->$SwitchMap$com$hzbhd$midware$constant$CustomerIDConstantDef$CUSTOMER_ID:[I

    invoke-virtual {v0}, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;->ordinal()I

    move-result v0

    aget v0, v1, v0

    .line 731
    sget-object v0, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$PRODUCTION_CODE;->AWA8001:Lcom/hzbhd/midware/constant/CustomerIDConstantDef$PRODUCTION_CODE;

    return-object v0
.end method

.method public static canShowBTiMode()Z
    .locals 1

    .line 433
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getCustomerID()Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;

    const/4 v0, 0x1

    return v0
.end method

.method public static canShowDivxRegcode()Z
    .locals 2

    .line 837
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getCustomerID()Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;

    move-result-object v0

    .line 839
    sget-object v1, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$1;->$SwitchMap$com$hzbhd$midware$constant$CustomerIDConstantDef$CUSTOMER_ID:[I

    invoke-virtual {v0}, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v0, 0x0

    return v0
.end method

.method public static canShowEQFilterPass()Z
    .locals 2

    .line 762
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getCustomerID()Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;

    move-result-object v0

    .line 764
    sget-object v1, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$1;->$SwitchMap$com$hzbhd$midware$constant$CustomerIDConstantDef$CUSTOMER_ID:[I

    invoke-virtual {v0}, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v0, 0x0

    return v0
.end method

.method public static canShowNewVolumePanel()Z
    .locals 2

    .line 626
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getCustomerID()Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;

    move-result-object v0

    .line 628
    sget-object v1, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$1;->$SwitchMap$com$hzbhd$midware$constant$CustomerIDConstantDef$CUSTOMER_ID:[I

    invoke-virtual {v0}, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v0, 0x0

    return v0
.end method

.method public static canShowPhoneMIC()Z
    .locals 2

    .line 441
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getCustomerID()Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;

    move-result-object v0

    .line 443
    sget-object v1, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$1;->$SwitchMap$com$hzbhd$midware$constant$CustomerIDConstantDef$CUSTOMER_ID:[I

    invoke-virtual {v0}, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v0, 0x0

    return v0
.end method

.method public static canShowRadarBackCarCamera()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static canShowRadioFavouriteList()Z
    .locals 2

    .line 689
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getCustomerID()Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;

    move-result-object v0

    .line 691
    sget-object v1, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$1;->$SwitchMap$com$hzbhd$midware$constant$CustomerIDConstantDef$CUSTOMER_ID:[I

    invoke-virtual {v0}, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v0, 0x1

    return v0
.end method

.method public static canShowRadioPresetName()Z
    .locals 2

    .line 678
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getCustomerID()Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;

    move-result-object v0

    .line 680
    sget-object v1, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$1;->$SwitchMap$com$hzbhd$midware$constant$CustomerIDConstantDef$CUSTOMER_ID:[I

    invoke-virtual {v0}, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v0, 0x1

    return v0
.end method

.method public static canShowRadioRDS()Z
    .locals 1

    .line 414
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getCustomerID()Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;

    const/4 v0, 0x1

    return v0
.end method

.method public static canShowSettingLighting()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static canShowSettingParking()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static canShowSettingSoundMix()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static canShowSettingVirtualKeys()Z
    .locals 2

    .line 826
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getCustomerID()Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;

    move-result-object v0

    .line 828
    sget-object v1, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$1;->$SwitchMap$com$hzbhd$midware$constant$CustomerIDConstantDef$CUSTOMER_ID:[I

    invoke-virtual {v0}, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v0, 0x0

    return v0
.end method

.method public static canShowTVArea()Z
    .locals 2

    .line 452
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getCustomerID()Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;

    move-result-object v0

    .line 454
    sget-object v1, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$1;->$SwitchMap$com$hzbhd$midware$constant$CustomerIDConstantDef$CUSTOMER_ID:[I

    invoke-virtual {v0}, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v0, 0x0

    return v0
.end method

.method public static canShowVolumeSettingAuxIn2()Z
    .locals 1

    .line 370
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getCustomerID()Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;

    const/4 v0, 0x0

    return v0
.end method

.method public static canShowVolumeSettingDAB()Z
    .locals 1

    .line 384
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getCustomerID()Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;

    const/4 v0, 0x0

    return v0
.end method

.method public static canShowVolumeSettingDTV()Z
    .locals 1

    .line 377
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getCustomerID()Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;

    const/4 v0, 0x1

    return v0
.end method

.method public static canShowVolumeSettingNavigagion()Z
    .locals 2

    .line 795
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getCustomerID()Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;

    move-result-object v0

    .line 797
    sget-object v1, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$1;->$SwitchMap$com$hzbhd$midware$constant$CustomerIDConstantDef$CUSTOMER_ID:[I

    invoke-virtual {v0}, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v0, 0x0

    return v0
.end method

.method public static canShowVolumeSettingSXM()Z
    .locals 1

    .line 400
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getCustomerID()Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;

    const/4 v0, 0x0

    return v0
.end method

.method public static canSupportAppInstallLimit()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static canSupportAutoTestEQ()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static canSupportAux()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static canSupportBackCar()Z
    .locals 2

    .line 257
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getCustomerID()Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;

    move-result-object v0

    .line 259
    sget-object v1, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$1;->$SwitchMap$com$hzbhd$midware$constant$CustomerIDConstantDef$CUSTOMER_ID:[I

    invoke-virtual {v0}, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v0, 0x1

    return v0
.end method

.method public static canSupportCanbox()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static canSupportCarplay()Z
    .locals 3

    const-string v0, "persist.bhd.support.carplay"

    const/4 v1, 0x0

    .line 200
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public static canSupportDTV()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static canSupportMPEG()Z
    .locals 1

    .line 213
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->DISC:Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/DefaultSharedUtil;->getBool(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static canSupportMisc()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static canSupportRadio()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static canSupportSXM()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static canSupportScanner()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static canSupportSetting()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static canSupportSourceSwitch()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static canSupportSurgingPower()Z
    .locals 1

    .line 227
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->SUPPORTSURGINGPOWER:Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/DefaultSharedUtil;->getBool(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static canSupportUARTMPEG()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static canSupportUARTTPMSORO()Z
    .locals 1

    .line 222
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->TPMSORO:Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/DefaultSharedUtil;->getBool(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static canSupportUpgrade()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static canSupportUpgradeUI()Z
    .locals 2

    .line 281
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getCustomerID()Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;

    move-result-object v0

    .line 283
    sget-object v1, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$1;->$SwitchMap$com$hzbhd$midware$constant$CustomerIDConstantDef$CUSTOMER_ID:[I

    invoke-virtual {v0}, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v0, 0x1

    return v0
.end method

.method public static canSupportVolumeSetting()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static getAccManufacturer()Ljava/lang/String;
    .locals 1

    const-string v0, "HZBHD"

    return-object v0
.end method

.method public static getAccModelNum()Ljava/lang/String;
    .locals 1

    const-string v0, "Car"

    return-object v0
.end method

.method public static getAccName()Ljava/lang/String;
    .locals 1

    const-string v0, "Car Audio"

    return-object v0
.end method

.method public static getAccSerial()Ljava/lang/String;
    .locals 1

    const-string v0, "7862115000664"

    return-object v0
.end method

.method public static getAppVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 848
    sget v0, Lcom/hzbhd/midware/proxy/R$string;->midware_version:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAutoTestModelName()Ljava/lang/String;
    .locals 2

    .line 699
    invoke-static {}, Lcom/hzbhd/midware/constant/CustomerIDConstantDef;->getCustomerID()Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;

    move-result-object v0

    .line 700
    sget-object v1, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$1;->$SwitchMap$com$hzbhd$midware$constant$CustomerIDConstantDef$CUSTOMER_ID:[I

    invoke-virtual {v0}, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const-string v0, "AWA8001"

    return-object v0
.end method

.method public static declared-synchronized getCustomerID()Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;
    .locals 4

    const-class v0, Lcom/hzbhd/midware/constant/CustomerIDConstantDef;

    monitor-enter v0

    .line 112
    :try_start_0
    sget-object v1, Lcom/hzbhd/midware/constant/CustomerIDConstantDef;->lockObject:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 113
    :try_start_1
    sget-object v2, Lcom/hzbhd/midware/constant/CustomerIDConstantDef;->mCustomerId:Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;

    sget-object v3, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;->INVALID:Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;

    if-ne v2, v3, :cond_0

    .line 114
    invoke-static {}, Lcom/hzbhd/midware/constant/CustomerIDConstantDef;->getCustomerIDFromProperty()Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;

    move-result-object v2

    sput-object v2, Lcom/hzbhd/midware/constant/CustomerIDConstantDef;->mCustomerId:Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;

    .line 115
    :cond_0
    sget-object v2, Lcom/hzbhd/midware/constant/CustomerIDConstantDef;->mCustomerId:Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v2

    .line 116
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getCustomerIDForMixString()Ljava/lang/String;
    .locals 1

    .line 97
    invoke-static {}, Lcom/hzbhd/midware/constant/CustomerIDConstantDef;->getCustomerID()Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;

    const-string v0, ""

    return-object v0
.end method

.method private static getCustomerIDFromProperty()Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;
    .locals 5

    const-string v0, "customer.id"

    .line 574
    invoke-static {v0}, Lcom/hzbhd/midware/constant/CustomerIDConstantDef;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CustomerIDConstantDef"

    if-nez v0, :cond_0

    const-string v0, "getSystemProperties(customer.id) == null"

    .line 576
    invoke-static {v1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    sget-object v0, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;->BHD_AWA8001:Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;

    return-object v0

    :cond_0
    const/4 v2, 0x0

    .line 580
    :goto_0
    invoke-static {}, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;->values()[Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 581
    invoke-static {}, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;->values()[Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;

    move-result-object v3

    aget-object v3, v3, v2

    .line 582
    invoke-virtual {v3}, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 587
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no CUSTOMER_ID for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    sget-object v0, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;->BHD_AWA8001:Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;

    return-object v0
.end method

.method public static getDefaultInputMethod()I
    .locals 2

    .line 614
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getCustomerID()Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;

    move-result-object v0

    .line 616
    sget-object v1, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$1;->$SwitchMap$com$hzbhd$midware$constant$CustomerIDConstantDef$CUSTOMER_ID:[I

    invoke-virtual {v0}, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v0, 0x0

    return v0
.end method

.method public static getDefaultStartSource()Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;
    .locals 1

    .line 421
    sget-object v0, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->FM:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    .line 422
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getCustomerID()Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;

    .line 423
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->NOT_START_DEFAULT_SOURCE:Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/DefaultSharedUtil;->getBool(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    sget-object v0, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->NORMAL_SOURCE:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    goto :goto_0

    .line 426
    :cond_0
    sget-object v0, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->FM:Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    :goto_0
    return-object v0
.end method

.method public static getEQBaseFreqName()Ljava/lang/String;
    .locals 2

    .line 773
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getCustomerID()Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;

    move-result-object v0

    .line 775
    sget-object v1, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$1;->$SwitchMap$com$hzbhd$midware$constant$CustomerIDConstantDef$CUSTOMER_ID:[I

    invoke-virtual {v0}, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const-string v0, "Frequency"

    return-object v0
.end method

.method public static getEQFABName()Ljava/lang/String;
    .locals 2

    .line 784
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getCustomerID()Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;

    move-result-object v0

    .line 786
    sget-object v1, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$1;->$SwitchMap$com$hzbhd$midware$constant$CustomerIDConstantDef$CUSTOMER_ID:[I

    invoke-virtual {v0}, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const-string v0, "FAB"

    return-object v0
.end method

.method public static getHardwareVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "V1.0"

    return-object v0
.end method

.method public static getIPodAccessoryManufaturerName()Ljava/lang/String;
    .locals 2

    .line 668
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getCustomerID()Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;

    move-result-object v0

    .line 669
    sget-object v1, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$1;->$SwitchMap$com$hzbhd$midware$constant$CustomerIDConstantDef$CUSTOMER_ID:[I

    invoke-virtual {v0}, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const-string v0, "Bohuida"

    return-object v0
.end method

.method public static getIPodAccessoryName()Ljava/lang/String;
    .locals 2

    .line 656
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getCustomerID()Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;

    move-result-object v0

    .line 657
    sget-object v1, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$1;->$SwitchMap$com$hzbhd$midware$constant$CustomerIDConstantDef$CUSTOMER_ID:[I

    invoke-virtual {v0}, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const-string v0, "Car DVD Player"

    return-object v0
.end method

.method public static getIPodAuthProductID()Ljava/lang/String;
    .locals 2

    .line 642
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getCustomerID()Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;

    move-result-object v0

    .line 644
    sget-object v1, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$1;->$SwitchMap$com$hzbhd$midware$constant$CustomerIDConstantDef$CUSTOMER_ID:[I

    invoke-virtual {v0}, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const-string v0, "AWA8001"

    return-object v0
.end method

.method public static getLedLightingName()Lcom/hzbhd/midware/constant/CustomerIDConstantDef$LedName;
    .locals 2

    .line 806
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getCustomerID()Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;

    move-result-object v0

    .line 807
    sget-object v1, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$1;->$SwitchMap$com$hzbhd$midware$constant$CustomerIDConstantDef$CUSTOMER_ID:[I

    invoke-virtual {v0}, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;->ordinal()I

    move-result v0

    aget v0, v1, v0

    .line 811
    sget-object v0, Lcom/hzbhd/midware/constant/CustomerIDConstantDef;->mLedName:Lcom/hzbhd/midware/constant/CustomerIDConstantDef$LedName;

    return-object v0
.end method

.method public static getMPEGType()Lcom/hzbhd/midware/constant/CustomerIDConstantDef$MPEG_TYPE;
    .locals 2

    .line 738
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getCustomerID()Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;

    move-result-object v0

    .line 740
    sget-object v1, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$1;->$SwitchMap$com$hzbhd$midware$constant$CustomerIDConstantDef$CUSTOMER_ID:[I

    invoke-virtual {v0}, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;->ordinal()I

    move-result v0

    aget v0, v1, v0

    .line 742
    sget-object v0, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$MPEG_TYPE;->ZORAN:Lcom/hzbhd/midware/constant/CustomerIDConstantDef$MPEG_TYPE;

    return-object v0
.end method

.method private static getProductionExample()Lcom/hzbhd/midware/constant/CustomerIDConstantDef$PROCDUCTION_EXAMPLE;
    .locals 5

    const-string v0, "production.example"

    .line 556
    invoke-static {v0}, Lcom/hzbhd/midware/constant/CustomerIDConstantDef;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getProductionExample"

    if-nez v0, :cond_0

    const-string v0, "getProductionExample() == null"

    .line 558
    invoke-static {v1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    sget-object v0, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$PROCDUCTION_EXAMPLE;->PP:Lcom/hzbhd/midware/constant/CustomerIDConstantDef$PROCDUCTION_EXAMPLE;

    return-object v0

    :cond_0
    const/4 v2, 0x0

    .line 562
    :goto_0
    invoke-static {}, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$PROCDUCTION_EXAMPLE;->values()[Lcom/hzbhd/midware/constant/CustomerIDConstantDef$PROCDUCTION_EXAMPLE;

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 563
    invoke-static {}, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$PROCDUCTION_EXAMPLE;->values()[Lcom/hzbhd/midware/constant/CustomerIDConstantDef$PROCDUCTION_EXAMPLE;

    move-result-object v3

    aget-object v3, v3, v2

    .line 564
    invoke-virtual {v3}, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$PROCDUCTION_EXAMPLE;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 569
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no PROCDUCTION_EXAMPLE for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    sget-object v0, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$PROCDUCTION_EXAMPLE;->PP:Lcom/hzbhd/midware/constant/CustomerIDConstantDef$PROCDUCTION_EXAMPLE;

    return-object v0
.end method

.method public static getRadioRegionName()Ljava/lang/String;
    .locals 2

    .line 815
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getCustomerID()Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;

    move-result-object v0

    .line 817
    sget-object v1, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$1;->$SwitchMap$com$hzbhd$midware$constant$CustomerIDConstantDef$CUSTOMER_ID:[I

    invoke-virtual {v0}, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const-string v0, "South America"

    return-object v0
.end method

.method public static getSoftwareVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "RN56B9_250A.0.68"

    return-object v0
.end method

.method public static final getSupportLanguages()[Ljava/lang/String;
    .locals 1

    .line 912
    sget-object v0, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$AccessoryInformation;->ACC_SUPPORT_LAN:[Ljava/lang/String;

    return-object v0
.end method

.method private static getSystemProperties(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "android.os.SystemProperties"

    const-string v1, "get"

    .line 595
    invoke-static {p0, v1, v0}, Lcom/hzbhd/midware/constant/CustomerIDConstantDef;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 598
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getUartPortDAB()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public static getUartPortSXM()I
    .locals 1

    .line 501
    invoke-static {}, Lcom/hzbhd/midware/constant/CustomerIDConstantDef;->getProductionExample()Lcom/hzbhd/midware/constant/CustomerIDConstantDef$PROCDUCTION_EXAMPLE;

    const/4 v0, 0x4

    return v0
.end method

.method public static getVideoOutMode()I
    .locals 2

    .line 518
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getCustomerID()Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;

    move-result-object v0

    .line 520
    sget-object v1, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$1;->$SwitchMap$com$hzbhd$midware$constant$CustomerIDConstantDef$CUSTOMER_ID:[I

    invoke-virtual {v0}, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v0, 0x0

    return v0
.end method

.method private static invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 604
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 605
    array-length v0, p2

    new-array v0, v0, [Ljava/lang/Class;

    .line 606
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 607
    aget-object v3, p2, v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 609
    :cond_0
    invoke-virtual {p0, p1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 p1, 0x0

    .line 610
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static isAProject()Z
    .locals 2

    .line 80
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midware/constant/CustomerIDConstantDef;->getCustomerID()Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "T_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    .line 85
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportRearUSBForiPod()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isTProject()Z
    .locals 2

    .line 67
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midware/constant/CustomerIDConstantDef;->getCustomerID()Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "T_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 72
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static setCustomerId(Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;)V
    .locals 1

    .line 120
    sget-object v0, Lcom/hzbhd/midware/constant/CustomerIDConstantDef;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 121
    :try_start_0
    sput-object p0, Lcom/hzbhd/midware/constant/CustomerIDConstantDef;->mCustomerId:Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;

    .line 122
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static showCarBackCameraByAPP()Z
    .locals 2

    .line 706
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getCustomerID()Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;

    move-result-object v0

    .line 708
    sget-object v1, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$1;->$SwitchMap$com$hzbhd$midware$constant$CustomerIDConstantDef$CUSTOMER_ID:[I

    invoke-virtual {v0}, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v0, 0x1

    return v0
.end method

.method public static startCustomerDefaultApp()Z
    .locals 2

    .line 749
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getCustomerID()Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;

    move-result-object v0

    .line 751
    sget-object v1, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$1;->$SwitchMap$com$hzbhd$midware$constant$CustomerIDConstantDef$CUSTOMER_ID:[I

    invoke-virtual {v0}, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$CUSTOMER_ID;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v0, 0x0

    return v0
.end method
