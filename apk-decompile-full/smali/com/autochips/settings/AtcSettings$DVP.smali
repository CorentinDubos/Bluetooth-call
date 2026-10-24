.class public Lcom/autochips/settings/AtcSettings$DVP;
.super Ljava/lang/Object;
.source "AtcSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/settings/AtcSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DVP"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "AtcSettings"

    const-string v1, "[AtcSettings.DVP]: System.loadLibrary(\"libmtkset.so\");"

    .line 1150
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "mtkset"

    .line 1151
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "load ok"

    .line 1152
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native SetAudioLanType(I)I
.end method

.method public static native SetDialogType(I)I
.end method

.method public static native SetDisplayType(I)I
.end method

.method public static native SetDualMonoType(I)I
.end method

.method public static native SetDynamicType(I)I
.end method

.method public static native SetMenuLanType(I)I
.end method

.method public static native SetPBCType(I)I
.end method

.method public static native SetParentalType(I)I
.end method

.method public static native SetPwdModeType(I)I
.end method

.method public static native SetSpdifOutputType(I)I
.end method

.method public static native SetSpeakerLayout(II)I
.end method

.method public static native SetSubLanType(I)I
.end method

.method public static native SetTVType(I)I
.end method
