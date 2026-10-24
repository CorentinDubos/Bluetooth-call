.class public Lcom/autochips/settings/AtcSettings$Audio;
.super Ljava/lang/Object;
.source "AtcSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/settings/AtcSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Audio"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autochips/settings/AtcSettings$Audio$SpdifOutputType;,
        Lcom/autochips/settings/AtcSettings$Audio$LoudnessMode;,
        Lcom/autochips/settings/AtcSettings$Audio$ReverbType;,
        Lcom/autochips/settings/AtcSettings$Audio$PL2Type;,
        Lcom/autochips/settings/AtcSettings$Audio$SpeakerSize;,
        Lcom/autochips/settings/AtcSettings$Audio$SpeakerLayout;,
        Lcom/autochips/settings/AtcSettings$Audio$SRSTrueBassSize;,
        Lcom/autochips/settings/AtcSettings$Audio$SRSTrueBassSizeType;,
        Lcom/autochips/settings/AtcSettings$Audio$SRSFocusType;,
        Lcom/autochips/settings/AtcSettings$Audio$SRSMode;,
        Lcom/autochips/settings/AtcSettings$Audio$SRSSwitchType;,
        Lcom/autochips/settings/AtcSettings$Audio$DecFeatureType;,
        Lcom/autochips/settings/AtcSettings$Audio$BalanceType;,
        Lcom/autochips/settings/AtcSettings$Audio$TestToneSubType;,
        Lcom/autochips/settings/AtcSettings$Audio$TestToneMainType;,
        Lcom/autochips/settings/AtcSettings$Audio$DACType;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "AtcSettings"

    const-string v1, "[AtcSettings.Audio]: System.loadLibrary(\"libmtkset.so\");"

    .line 225
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "mtkset"

    .line 226
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "load ok"

    .line 227
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native ChooseSpdifOutput(Lcom/autochips/settings/AtcSettings$Audio$SpdifOutputType;)I
.end method

.method public static native SelectDAC(II)I
.end method

.method public static native SetAudFuncOption(Lcom/autochips/settings/AudFuncOption;)I
.end method

.method public static native SetBTHFPVolume(I)I
.end method

.method public static native SetBalance(Lcom/autochips/settings/AtcSettings$Audio$BalanceType;I)I
.end method

.method public static native SetDecFeatureType(Lcom/autochips/settings/AtcSettings$Audio$DecFeatureType;)I
.end method

.method public static native SetDspMixCh(I)I
.end method

.method public static native SetDtmfCtrlType(II)I
.end method

.method public static native SetDtmfInValidTime(II)I
.end method

.method public static native SetDtmfMaxScale(I)I
.end method

.method public static native SetDtmfNewSamples(I)I
.end method

.method public static native SetDtmfNoiseRatio(I)I
.end method

.method public static native SetDtmfThreshold(DD)I
.end method

.method public static native SetDtmfValidTime(II)I
.end method

.method public static native SetEQValues([I)I
.end method

.method public static native SetLoudness(Lcom/autochips/settings/AtcSettings$Audio$LoudnessMode;[I)I
.end method

.method public static native SetMicMute(Z)I
.end method

.method public static native SetMute(Z)I
.end method

.method public static native SetPCMConfig([I)I
.end method

.method public static native SetPCMDevVolume(II)I
.end method

.method public static native SetPL2(Lcom/autochips/settings/AtcSettings$Audio$PL2Type;)I
.end method

.method public static native SetPrimaryMic(I)I
.end method

.method public static native SetRearVolume(I)I
.end method

.method public static native SetReverb(Lcom/autochips/settings/AtcSettings$Audio$ReverbType;[I)I
.end method

.method public static native SetSRSFocusOn(Lcom/autochips/settings/AtcSettings$Audio$SRSFocusType;Z)I
.end method

.method public static native SetSRSFullBandOn(Z)I
.end method

.method public static native SetSRSMode(Lcom/autochips/settings/AtcSettings$Audio$SRSMode;)I
.end method

.method public static native SetSRSPhantomOn(Z)I
.end method

.method public static native SetSRSSwitchType(Lcom/autochips/settings/AtcSettings$Audio$SRSSwitchType;)I
.end method

.method public static native SetSRSTrueBassOn(Z)I
.end method

.method public static native SetSRSTrueBassSize(Lcom/autochips/settings/AtcSettings$Audio$SRSTrueBassSizeType;I)I
.end method

.method public static native SetSpeakerLayout(II)I
.end method

.method public static native SetTestTone(Lcom/autochips/settings/AtcSettings$Audio$TestToneMainType;Lcom/autochips/settings/AtcSettings$Audio$TestToneSubType;)I
.end method

.method public static native SetUpMix(Z[I)I
.end method

.method public static native SetVolume(I)I
.end method

.method public static getGISAudioStatus()Z
    .locals 1

    .line 232
    invoke-static {}, Landroid/media/AudioTrack;->getGISAudioStatus()Z

    move-result v0

    return v0
.end method

.method public static setAudHWVolMax(I)V
    .locals 0

    .line 236
    invoke-static {p0}, Landroid/media/AudioManager;->setAudHWVolMax(I)V

    return-void
.end method

.method public static setAudPolicyPriority(II)Z
    .locals 0

    .line 240
    invoke-static {p0, p1}, Landroid/media/AudioManager;->setAudPolicyPriority(II)Z

    move-result p0

    return p0
.end method

.method public static setAudPolicyStrategy(III)Z
    .locals 0

    .line 244
    invoke-static {p0, p1, p2}, Landroid/media/AudioManager;->setAudPolicyStrategy(III)Z

    move-result p0

    return p0
.end method
