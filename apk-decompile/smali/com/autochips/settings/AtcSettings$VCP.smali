.class public Lcom/autochips/settings/AtcSettings$VCP;
.super Ljava/lang/Object;
.source "AtcSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/settings/AtcSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VCP"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autochips/settings/AtcSettings$VCP$SrcType;,
        Lcom/autochips/settings/AtcSettings$VCP$HUE;,
        Lcom/autochips/settings/AtcSettings$VCP$YUVGain;,
        Lcom/autochips/settings/AtcSettings$VCP$ContrBritSatr;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "AtcSettings"

    const-string v1, "[AtcSettings.VCP]: System.loadLibrary(\"libmtkset.so\");"

    .line 1281
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "mtkset"

    .line 1282
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "load ok"

    .line 1283
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native GetVcpContrBritSatrLevel(Lcom/autochips/settings/AtcSettings$VCP$ContrBritSatr;)I
.end method

.method public static native GetVcpHUELevel()I
.end method

.method public static native GetVcpYUVGainLevel(Lcom/autochips/settings/AtcSettings$VCP$YUVGain;)I
.end method

.method public static native SetVcpContrBritSatrLevel(Lcom/autochips/settings/AtcSettings$VCP$ContrBritSatr;)I
.end method

.method public static native SetVcpHUELevel(Lcom/autochips/settings/AtcSettings$VCP$HUE;)I
.end method

.method public static native SetVcpOff(I)I
.end method

.method public static native SetVcpOn(I)I
.end method

.method public static native SetVcpYUVGainLevel(Lcom/autochips/settings/AtcSettings$VCP$YUVGain;)I
.end method
