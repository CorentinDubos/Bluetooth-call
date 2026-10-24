.class public Lcom/autochips/settings/AtcSettings$Display;
.super Ljava/lang/Object;
.source "AtcSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/settings/AtcSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Display"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "AtcSettings"

    const-string v1, "[AtcSettings.Display]: System.loadLibrary(\"libmtkset.so\");"

    .line 40
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "mtkset"

    .line 41
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "load ok"

    .line 42
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native GetBrightnessLevel()I
.end method

.method public static native GetContrastLevel()I
.end method

.method public static native GetGammaTable([B)I
.end method

.method public static native GetHueLevel()I
.end method

.method public static native GetSaturationLevel()I
.end method

.method public static native GetUGainLevel()I
.end method

.method public static native GetVGainLevel()I
.end method

.method public static native GetYGainLevel()I
.end method

.method public static native SetBackLightLevel(I)I
.end method

.method public static native SetBrightnessLevel(I)I
.end method

.method public static native SetContrastLevel(I)I
.end method

.method public static native SetGammaTable([B)I
.end method

.method public static native SetHueLevel(I)I
.end method

.method public static native SetSaturationLevel(I)I
.end method

.method public static native SetUGainLevel(I)I
.end method

.method public static native SetVGainLevel(I)I
.end method

.method public static native SetYGainLevel(I)I
.end method
