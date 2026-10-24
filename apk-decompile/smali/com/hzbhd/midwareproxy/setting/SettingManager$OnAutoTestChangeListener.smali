.class public Lcom/hzbhd/midwareproxy/setting/SettingManager$OnAutoTestChangeListener;
.super Ljava/lang/Object;
.source "SettingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/setting/SettingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnAutoTestChangeListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBTCallNumberChange(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onBTNameChange(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onBTOprateChange(Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestBTOprate;)V
    .locals 0

    return-void
.end method

.method public onBTPinCodeChange(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onDVDOprateChange(Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestDVDOprate;)V
    .locals 0

    return-void
.end method

.method public onNaviLocationChange()Landroid/location/Location;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onSourceChange(Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestSource;)V
    .locals 0

    return-void
.end method

.method public onTrackChange(II)V
    .locals 0

    return-void
.end method
