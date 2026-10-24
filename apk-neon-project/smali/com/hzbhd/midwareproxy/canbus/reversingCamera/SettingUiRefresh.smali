.class public Lcom/hzbhd/midwareproxy/canbus/reversingCamera/SettingUiRefresh;
.super Ljava/lang/Object;
.source "SettingUiRefresh.java"


# static fields
.field static mRadio:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/SettingUiRefresh;


# instance fields
.field map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/hzbhd/midwareproxy/canbus/reversingCamera/RadarInfo$RadarLocation;",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/SettingUiRefresh;

    invoke-direct {v0}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/SettingUiRefresh;-><init>()V

    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/SettingUiRefresh;->mRadio:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/SettingUiRefresh;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/SettingUiRefresh;->map:Ljava/util/HashMap;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/hzbhd/midwareproxy/canbus/reversingCamera/SettingUiRefresh;
    .locals 2

    const-class v0, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/SettingUiRefresh;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/SettingUiRefresh;->mRadio:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/SettingUiRefresh;

    if-nez v1, :cond_0

    .line 27
    new-instance v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/SettingUiRefresh;

    invoke-direct {v1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/SettingUiRefresh;-><init>()V

    sput-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/SettingUiRefresh;->mRadio:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/SettingUiRefresh;

    .line 29
    :cond_0
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/SettingUiRefresh;->mRadio:Lcom/hzbhd/midwareproxy/canbus/reversingCamera/SettingUiRefresh;
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
.method public getSuffix(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 21
    invoke-static {p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getIsDebug(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "_TEMPNO"

    goto :goto_0

    :cond_0
    const-string p1, "HAHAHAHAHHAHA"

    :goto_0
    return-object p1
.end method

.method public initAmplifierSetting(Landroid/preference/PreferenceFragment;)V
    .locals 4

    const-string v0, "factory_module_amplifier"

    .line 50
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 52
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getFactoryCanType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/SettingUiRefresh;->showAmplifierSetting(Ljava/lang/Object;Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    .line 53
    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 54
    :cond_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->setSharedBool(Ljava/lang/String;Z)V

    goto :goto_0

    .line 56
    :cond_1
    check-cast p1, Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v1, p1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 57
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getSharedBool(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v1, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 61
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public refreshAmplifierSetting(Landroid/preference/PreferenceFragment;Ljava/lang/Object;)Z
    .locals 4

    const-string v0, "factory_module_amplifier"

    .line 35
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 37
    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, p2, v2}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/SettingUiRefresh;->showAmplifierSetting(Ljava/lang/Object;Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    .line 38
    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 39
    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 40
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    invoke-virtual {p1, v0, v3}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->setSharedBool(Ljava/lang/String;Z)V

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/SettingUiRefresh;->showAmplifierSetting(Ljava/lang/Object;Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-nez v1, :cond_1

    .line 43
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    invoke-virtual {p1, v0, v3}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->setSharedBool(Ljava/lang/String;Z)V

    const/4 v3, 0x1

    :cond_1
    :goto_0
    return v3
.end method

.method public showAmplifierSetting(Ljava/lang/Object;Landroid/content/Context;)Z
    .locals 0

    .line 67
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/reversingCamera/SettingUiRefresh$1;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$CanTypeMsg$CAN_TYPE_ID:[I

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getCantype()Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;

    move-result-object p2

    invoke-virtual {p2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/CanTypeMsg$CAN_TYPE_ID;->ordinal()I

    move-result p2

    aget p1, p1, p2

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x1

    :goto_0
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
