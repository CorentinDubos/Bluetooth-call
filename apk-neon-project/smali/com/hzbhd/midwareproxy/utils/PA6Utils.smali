.class public Lcom/hzbhd/midwareproxy/utils/PA6Utils;
.super Ljava/lang/Object;
.source "PA6Utils.java"


# static fields
.field public static final AIR_SEAT_SHOW:Ljava/lang/String; = "air_seat_show"

.field public static final AIR_SHOW:Ljava/lang/String; = "air_show"

.field public static final BLUETOOTH_NAME:Ljava/lang/String; = "blueTooth_name"

.field public static final RADAR_SHOW:Ljava/lang/String; = "radar_show"

.field public static final WallpaperPicker_Main:Ljava/lang/String; = "WallpaperPicker_Main"

.field public static final WallpaperPicker_Now_ID:Ljava/lang/String; = "WallpaperPicker_Now"

.field public static drivingMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 18
    sget v1, Lcom/hzbhd/midware/proxy/R$string;->driving_pattern_8:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/hzbhd/midware/proxy/R$string;->driving_pattern_9:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/hzbhd/midware/proxy/R$string;->driving_pattern_1:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lcom/hzbhd/midware/proxy/R$string;->driving_pattern_3:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sget v1, Lcom/hzbhd/midware/proxy/R$string;->driving_pattern_10:I

    const/4 v2, 0x4

    aput v1, v0, v2

    sput-object v0, Lcom/hzbhd/midwareproxy/utils/PA6Utils;->drivingMode:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAirSeatShow()Z
    .locals 2

    const-string v0, "air_seat_show"

    const/4 v1, 0x1

    .line 39
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getAirShow(Landroid/content/Context;)Z
    .locals 1

    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "air_show"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static getBtName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "blueTooth_name"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getIntData()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static getRadarShow(Landroid/content/Context;)Z
    .locals 1

    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "radar_show"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static setAirSeatShow(Z)V
    .locals 1

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "air_seat_show"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setAirShow(Landroid/content/Context;Z)V
    .locals 1

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "air_show"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static setBtName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "blueTooth_name"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static setIntData(I)V
    .locals 1

    .line 26
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "WallpaperPicker_Now"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setRadarShow(Landroid/content/Context;Z)V
    .locals 1

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "radar_show"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
