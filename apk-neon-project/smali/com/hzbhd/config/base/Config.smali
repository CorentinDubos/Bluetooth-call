.class public Lcom/hzbhd/config/base/Config;
.super Ljava/lang/Object;
.source "Config.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/config/base/Config$Common;,
        Lcom/hzbhd/config/base/Config$Device;,
        Lcom/hzbhd/config/base/Config$Launcher;,
        Lcom/hzbhd/config/base/Config$Bluetooth;,
        Lcom/hzbhd/config/base/Config$Radio;,
        Lcom/hzbhd/config/base/Config$Misc;,
        Lcom/hzbhd/config/base/Config$Settings;,
        Lcom/hzbhd/config/base/Config$Dsp;,
        Lcom/hzbhd/config/base/Config$SWC;,
        Lcom/hzbhd/config/base/Config$BLink;,
        Lcom/hzbhd/config/base/Config$SystemUI;,
        Lcom/hzbhd/config/base/Config$CanBusInfo;,
        Lcom/hzbhd/config/base/Config$midwareService;,
        Lcom/hzbhd/config/base/Config$MediaPlayer;,
        Lcom/hzbhd/config/base/Config$SideMenuBar;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000|\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0014\u0008\u0016\u0018\u00002\u00020\u0001:\u000fWXYZ[\\]^_`abcdeB\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0016X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001a\u0010\u001b\u001a\u00020\u001cX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\u001a\u0010!\u001a\u00020\"X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&R\u001a\u0010\'\u001a\u00020(X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010*\"\u0004\u0008+\u0010,R\u001a\u0010-\u001a\u00020.X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u00100\"\u0004\u00081\u00102R\u001a\u00103\u001a\u000204X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u00106\"\u0004\u00087\u00108R\u001a\u00109\u001a\u00020:X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008;\u0010<\"\u0004\u0008=\u0010>R\u001a\u0010?\u001a\u00020@X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008A\u0010B\"\u0004\u0008C\u0010DR\u001a\u0010E\u001a\u00020FX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008G\u0010H\"\u0004\u0008I\u0010JR\u001a\u0010K\u001a\u00020LX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008M\u0010N\"\u0004\u0008O\u0010PR\u001a\u0010Q\u001a\u00020RX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008S\u0010T\"\u0004\u0008U\u0010V\u00a8\u0006f"
    }
    d2 = {
        "Lcom/hzbhd/config/base/Config;",
        "",
        "()V",
        "blink",
        "Lcom/hzbhd/config/base/Config$BLink;",
        "getBlink",
        "()Lcom/hzbhd/config/base/Config$BLink;",
        "setBlink",
        "(Lcom/hzbhd/config/base/Config$BLink;)V",
        "bluetooth",
        "Lcom/hzbhd/config/base/Config$Bluetooth;",
        "getBluetooth",
        "()Lcom/hzbhd/config/base/Config$Bluetooth;",
        "setBluetooth",
        "(Lcom/hzbhd/config/base/Config$Bluetooth;)V",
        "canbusInfo",
        "Lcom/hzbhd/config/base/Config$CanBusInfo;",
        "getCanbusInfo",
        "()Lcom/hzbhd/config/base/Config$CanBusInfo;",
        "setCanbusInfo",
        "(Lcom/hzbhd/config/base/Config$CanBusInfo;)V",
        "common",
        "Lcom/hzbhd/config/base/Config$Common;",
        "getCommon",
        "()Lcom/hzbhd/config/base/Config$Common;",
        "setCommon",
        "(Lcom/hzbhd/config/base/Config$Common;)V",
        "device",
        "Lcom/hzbhd/config/base/Config$Device;",
        "getDevice",
        "()Lcom/hzbhd/config/base/Config$Device;",
        "setDevice",
        "(Lcom/hzbhd/config/base/Config$Device;)V",
        "dsp",
        "Lcom/hzbhd/config/base/Config$Dsp;",
        "getDsp",
        "()Lcom/hzbhd/config/base/Config$Dsp;",
        "setDsp",
        "(Lcom/hzbhd/config/base/Config$Dsp;)V",
        "launcher",
        "Lcom/hzbhd/config/base/Config$Launcher;",
        "getLauncher",
        "()Lcom/hzbhd/config/base/Config$Launcher;",
        "setLauncher",
        "(Lcom/hzbhd/config/base/Config$Launcher;)V",
        "mMediaPlayer",
        "Lcom/hzbhd/config/base/Config$MediaPlayer;",
        "getMMediaPlayer",
        "()Lcom/hzbhd/config/base/Config$MediaPlayer;",
        "setMMediaPlayer",
        "(Lcom/hzbhd/config/base/Config$MediaPlayer;)V",
        "midwareservice",
        "Lcom/hzbhd/config/base/Config$midwareService;",
        "getMidwareservice",
        "()Lcom/hzbhd/config/base/Config$midwareService;",
        "setMidwareservice",
        "(Lcom/hzbhd/config/base/Config$midwareService;)V",
        "misc",
        "Lcom/hzbhd/config/base/Config$Misc;",
        "getMisc",
        "()Lcom/hzbhd/config/base/Config$Misc;",
        "setMisc",
        "(Lcom/hzbhd/config/base/Config$Misc;)V",
        "radio",
        "Lcom/hzbhd/config/base/Config$Radio;",
        "getRadio",
        "()Lcom/hzbhd/config/base/Config$Radio;",
        "setRadio",
        "(Lcom/hzbhd/config/base/Config$Radio;)V",
        "settings",
        "Lcom/hzbhd/config/base/Config$Settings;",
        "getSettings",
        "()Lcom/hzbhd/config/base/Config$Settings;",
        "setSettings",
        "(Lcom/hzbhd/config/base/Config$Settings;)V",
        "swc",
        "Lcom/hzbhd/config/base/Config$SWC;",
        "getSwc",
        "()Lcom/hzbhd/config/base/Config$SWC;",
        "setSwc",
        "(Lcom/hzbhd/config/base/Config$SWC;)V",
        "systemUI",
        "Lcom/hzbhd/config/base/Config$SystemUI;",
        "getSystemUI",
        "()Lcom/hzbhd/config/base/Config$SystemUI;",
        "setSystemUI",
        "(Lcom/hzbhd/config/base/Config$SystemUI;)V",
        "BLink",
        "Bluetooth",
        "CanBusInfo",
        "Common",
        "Device",
        "Dsp",
        "Launcher",
        "MediaPlayer",
        "Misc",
        "Radio",
        "SWC",
        "Settings",
        "SideMenuBar",
        "SystemUI",
        "midwareService",
        "Config_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private blink:Lcom/hzbhd/config/base/Config$BLink;

.field private bluetooth:Lcom/hzbhd/config/base/Config$Bluetooth;

.field private canbusInfo:Lcom/hzbhd/config/base/Config$CanBusInfo;

.field private common:Lcom/hzbhd/config/base/Config$Common;

.field private device:Lcom/hzbhd/config/base/Config$Device;

.field private dsp:Lcom/hzbhd/config/base/Config$Dsp;

.field private launcher:Lcom/hzbhd/config/base/Config$Launcher;

.field private mMediaPlayer:Lcom/hzbhd/config/base/Config$MediaPlayer;

.field private midwareservice:Lcom/hzbhd/config/base/Config$midwareService;

.field private misc:Lcom/hzbhd/config/base/Config$Misc;

.field private radio:Lcom/hzbhd/config/base/Config$Radio;

.field private settings:Lcom/hzbhd/config/base/Config$Settings;

.field private swc:Lcom/hzbhd/config/base/Config$SWC;

.field private systemUI:Lcom/hzbhd/config/base/Config$SystemUI;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/hzbhd/config/base/Config$Common;

    invoke-direct {v0}, Lcom/hzbhd/config/base/Config$Common;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/config/base/Config;->common:Lcom/hzbhd/config/base/Config$Common;

    .line 48
    new-instance v0, Lcom/hzbhd/config/base/Config$Device;

    new-instance v1, Lcom/hzbhd/config/device/Device;

    invoke-direct {v1}, Lcom/hzbhd/config/device/Device;-><init>()V

    invoke-direct {v0, v1}, Lcom/hzbhd/config/base/Config$Device;-><init>(Lcom/hzbhd/config/device/Device;)V

    iput-object v0, p0, Lcom/hzbhd/config/base/Config;->device:Lcom/hzbhd/config/base/Config$Device;

    .line 49
    new-instance v0, Lcom/hzbhd/config/base/Config$Launcher;

    invoke-direct {v0}, Lcom/hzbhd/config/base/Config$Launcher;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/config/base/Config;->launcher:Lcom/hzbhd/config/base/Config$Launcher;

    .line 50
    new-instance v0, Lcom/hzbhd/config/base/Config$Radio;

    invoke-direct {v0}, Lcom/hzbhd/config/base/Config$Radio;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/config/base/Config;->radio:Lcom/hzbhd/config/base/Config$Radio;

    .line 51
    new-instance v0, Lcom/hzbhd/config/base/Config$Misc;

    invoke-direct {v0}, Lcom/hzbhd/config/base/Config$Misc;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/config/base/Config;->misc:Lcom/hzbhd/config/base/Config$Misc;

    .line 52
    new-instance v0, Lcom/hzbhd/config/base/Config$Settings;

    invoke-direct {v0}, Lcom/hzbhd/config/base/Config$Settings;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/config/base/Config;->settings:Lcom/hzbhd/config/base/Config$Settings;

    .line 53
    new-instance v0, Lcom/hzbhd/config/base/Config$Dsp;

    invoke-direct {v0}, Lcom/hzbhd/config/base/Config$Dsp;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/config/base/Config;->dsp:Lcom/hzbhd/config/base/Config$Dsp;

    .line 54
    new-instance v0, Lcom/hzbhd/config/base/Config$Bluetooth;

    invoke-direct {v0}, Lcom/hzbhd/config/base/Config$Bluetooth;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/config/base/Config;->bluetooth:Lcom/hzbhd/config/base/Config$Bluetooth;

    .line 55
    new-instance v0, Lcom/hzbhd/config/base/Config$SWC;

    invoke-direct {v0}, Lcom/hzbhd/config/base/Config$SWC;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/config/base/Config;->swc:Lcom/hzbhd/config/base/Config$SWC;

    .line 56
    new-instance v0, Lcom/hzbhd/config/base/Config$BLink;

    invoke-direct {v0}, Lcom/hzbhd/config/base/Config$BLink;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/config/base/Config;->blink:Lcom/hzbhd/config/base/Config$BLink;

    .line 57
    new-instance v0, Lcom/hzbhd/config/base/Config$SystemUI;

    invoke-direct {v0}, Lcom/hzbhd/config/base/Config$SystemUI;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/config/base/Config;->systemUI:Lcom/hzbhd/config/base/Config$SystemUI;

    .line 58
    new-instance v0, Lcom/hzbhd/config/base/Config$CanBusInfo;

    invoke-direct {v0}, Lcom/hzbhd/config/base/Config$CanBusInfo;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/config/base/Config;->canbusInfo:Lcom/hzbhd/config/base/Config$CanBusInfo;

    .line 59
    new-instance v0, Lcom/hzbhd/config/base/Config$midwareService;

    invoke-direct {v0}, Lcom/hzbhd/config/base/Config$midwareService;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/config/base/Config;->midwareservice:Lcom/hzbhd/config/base/Config$midwareService;

    .line 60
    new-instance v0, Lcom/hzbhd/config/base/Config$MediaPlayer;

    invoke-direct {v0}, Lcom/hzbhd/config/base/Config$MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/config/base/Config;->mMediaPlayer:Lcom/hzbhd/config/base/Config$MediaPlayer;

    return-void
.end method


# virtual methods
.method public getBlink()Lcom/hzbhd/config/base/Config$BLink;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/hzbhd/config/base/Config;->blink:Lcom/hzbhd/config/base/Config$BLink;

    return-object v0
.end method

.method public getBluetooth()Lcom/hzbhd/config/base/Config$Bluetooth;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/hzbhd/config/base/Config;->bluetooth:Lcom/hzbhd/config/base/Config$Bluetooth;

    return-object v0
.end method

.method public getCanbusInfo()Lcom/hzbhd/config/base/Config$CanBusInfo;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/hzbhd/config/base/Config;->canbusInfo:Lcom/hzbhd/config/base/Config$CanBusInfo;

    return-object v0
.end method

.method public getCommon()Lcom/hzbhd/config/base/Config$Common;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/hzbhd/config/base/Config;->common:Lcom/hzbhd/config/base/Config$Common;

    return-object v0
.end method

.method public getDevice()Lcom/hzbhd/config/base/Config$Device;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/hzbhd/config/base/Config;->device:Lcom/hzbhd/config/base/Config$Device;

    return-object v0
.end method

.method public getDsp()Lcom/hzbhd/config/base/Config$Dsp;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/hzbhd/config/base/Config;->dsp:Lcom/hzbhd/config/base/Config$Dsp;

    return-object v0
.end method

.method public getLauncher()Lcom/hzbhd/config/base/Config$Launcher;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/hzbhd/config/base/Config;->launcher:Lcom/hzbhd/config/base/Config$Launcher;

    return-object v0
.end method

.method public getMMediaPlayer()Lcom/hzbhd/config/base/Config$MediaPlayer;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/hzbhd/config/base/Config;->mMediaPlayer:Lcom/hzbhd/config/base/Config$MediaPlayer;

    return-object v0
.end method

.method public getMidwareservice()Lcom/hzbhd/config/base/Config$midwareService;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/hzbhd/config/base/Config;->midwareservice:Lcom/hzbhd/config/base/Config$midwareService;

    return-object v0
.end method

.method public getMisc()Lcom/hzbhd/config/base/Config$Misc;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/hzbhd/config/base/Config;->misc:Lcom/hzbhd/config/base/Config$Misc;

    return-object v0
.end method

.method public getRadio()Lcom/hzbhd/config/base/Config$Radio;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/hzbhd/config/base/Config;->radio:Lcom/hzbhd/config/base/Config$Radio;

    return-object v0
.end method

.method public getSettings()Lcom/hzbhd/config/base/Config$Settings;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/hzbhd/config/base/Config;->settings:Lcom/hzbhd/config/base/Config$Settings;

    return-object v0
.end method

.method public getSwc()Lcom/hzbhd/config/base/Config$SWC;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/hzbhd/config/base/Config;->swc:Lcom/hzbhd/config/base/Config$SWC;

    return-object v0
.end method

.method public getSystemUI()Lcom/hzbhd/config/base/Config$SystemUI;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/hzbhd/config/base/Config;->systemUI:Lcom/hzbhd/config/base/Config$SystemUI;

    return-object v0
.end method

.method public setBlink(Lcom/hzbhd/config/base/Config$BLink;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iput-object p1, p0, Lcom/hzbhd/config/base/Config;->blink:Lcom/hzbhd/config/base/Config$BLink;

    return-void
.end method

.method public setBluetooth(Lcom/hzbhd/config/base/Config$Bluetooth;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iput-object p1, p0, Lcom/hzbhd/config/base/Config;->bluetooth:Lcom/hzbhd/config/base/Config$Bluetooth;

    return-void
.end method

.method public setCanbusInfo(Lcom/hzbhd/config/base/Config$CanBusInfo;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iput-object p1, p0, Lcom/hzbhd/config/base/Config;->canbusInfo:Lcom/hzbhd/config/base/Config$CanBusInfo;

    return-void
.end method

.method public setCommon(Lcom/hzbhd/config/base/Config$Common;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iput-object p1, p0, Lcom/hzbhd/config/base/Config;->common:Lcom/hzbhd/config/base/Config$Common;

    return-void
.end method

.method public setDevice(Lcom/hzbhd/config/base/Config$Device;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iput-object p1, p0, Lcom/hzbhd/config/base/Config;->device:Lcom/hzbhd/config/base/Config$Device;

    return-void
.end method

.method public setDsp(Lcom/hzbhd/config/base/Config$Dsp;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iput-object p1, p0, Lcom/hzbhd/config/base/Config;->dsp:Lcom/hzbhd/config/base/Config$Dsp;

    return-void
.end method

.method public setLauncher(Lcom/hzbhd/config/base/Config$Launcher;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iput-object p1, p0, Lcom/hzbhd/config/base/Config;->launcher:Lcom/hzbhd/config/base/Config$Launcher;

    return-void
.end method

.method public setMMediaPlayer(Lcom/hzbhd/config/base/Config$MediaPlayer;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iput-object p1, p0, Lcom/hzbhd/config/base/Config;->mMediaPlayer:Lcom/hzbhd/config/base/Config$MediaPlayer;

    return-void
.end method

.method public setMidwareservice(Lcom/hzbhd/config/base/Config$midwareService;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iput-object p1, p0, Lcom/hzbhd/config/base/Config;->midwareservice:Lcom/hzbhd/config/base/Config$midwareService;

    return-void
.end method

.method public setMisc(Lcom/hzbhd/config/base/Config$Misc;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iput-object p1, p0, Lcom/hzbhd/config/base/Config;->misc:Lcom/hzbhd/config/base/Config$Misc;

    return-void
.end method

.method public setRadio(Lcom/hzbhd/config/base/Config$Radio;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iput-object p1, p0, Lcom/hzbhd/config/base/Config;->radio:Lcom/hzbhd/config/base/Config$Radio;

    return-void
.end method

.method public setSettings(Lcom/hzbhd/config/base/Config$Settings;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iput-object p1, p0, Lcom/hzbhd/config/base/Config;->settings:Lcom/hzbhd/config/base/Config$Settings;

    return-void
.end method

.method public setSwc(Lcom/hzbhd/config/base/Config$SWC;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iput-object p1, p0, Lcom/hzbhd/config/base/Config;->swc:Lcom/hzbhd/config/base/Config$SWC;

    return-void
.end method

.method public setSystemUI(Lcom/hzbhd/config/base/Config$SystemUI;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iput-object p1, p0, Lcom/hzbhd/config/base/Config;->systemUI:Lcom/hzbhd/config/base/Config$SystemUI;

    return-void
.end method
