.class public Lcom/hzbhd/bluetooth/Bluetooth;
.super Landroid/app/Application;
.source "Bluetooth.java"


# static fields
.field private static sHfpMainActivity:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

.field private static sMainActivity:Lcom/hzbhd/bluetooth/MainActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static addHfpMainActivity(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)V
    .locals 0

    .line 36
    sput-object p0, Lcom/hzbhd/bluetooth/Bluetooth;->sHfpMainActivity:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    return-void
.end method

.method public static addMainActivity(Lcom/hzbhd/bluetooth/MainActivity;)V
    .locals 0

    .line 30
    sput-object p0, Lcom/hzbhd/bluetooth/Bluetooth;->sMainActivity:Lcom/hzbhd/bluetooth/MainActivity;

    return-void
.end method

.method public static getHfpMainActivity()Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;
    .locals 1

    .line 42
    sget-object v0, Lcom/hzbhd/bluetooth/Bluetooth;->sHfpMainActivity:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    return-object v0
.end method

.method public static getMainActivity()Lcom/hzbhd/bluetooth/MainActivity;
    .locals 1

    .line 45
    sget-object v0, Lcom/hzbhd/bluetooth/Bluetooth;->sMainActivity:Lcom/hzbhd/bluetooth/MainActivity;

    return-object v0
.end method

.method public static removeHfpMainActivity()V
    .locals 1

    const/4 v0, 0x0

    .line 39
    sput-object v0, Lcom/hzbhd/bluetooth/Bluetooth;->sHfpMainActivity:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    return-void
.end method

.method public static removeMainActivity()V
    .locals 1

    const/4 v0, 0x0

    .line 33
    sput-object v0, Lcom/hzbhd/bluetooth/Bluetooth;->sMainActivity:Lcom/hzbhd/bluetooth/MainActivity;

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 19
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 20
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/Bluetooth;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0e0171

    invoke-static {p1, p0, v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->init(Landroid/content/res/Resources;Landroid/content/Context;I)V

    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 24
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 25
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/Bluetooth;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0171

    invoke-static {v0, p0, v1}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->init(Landroid/content/res/Resources;Landroid/content/Context;I)V

    .line 26
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/Bluetooth;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/CrashReportUtils;->init(Landroid/content/Context;)V

    return-void
.end method
