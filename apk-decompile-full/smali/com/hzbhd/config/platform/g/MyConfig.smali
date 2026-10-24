.class public final Lcom/hzbhd/config/platform/g/MyConfig;
.super Lcom/hzbhd/config/base/Config;
.source "MyConfig.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/config/platform/g/MyConfig$MyBluetooth;,
        Lcom/hzbhd/config/platform/g/MyConfig$MyDsp;,
        Lcom/hzbhd/config/platform/g/MyConfig$MyLauncher;,
        Lcom/hzbhd/config/platform/g/MyConfig$MyBLink;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001:\u0004\u001b\u001c\u001d\u001eB\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0016X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/hzbhd/config/platform/g/MyConfig;",
        "Lcom/hzbhd/config/base/Config;",
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
        "MyBLink",
        "MyBluetooth",
        "MyDsp",
        "MyLauncher",
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

.field private dsp:Lcom/hzbhd/config/base/Config$Dsp;

.field private launcher:Lcom/hzbhd/config/base/Config$Launcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Lcom/hzbhd/config/base/Config;-><init>()V

    .line 9
    new-instance v0, Lcom/hzbhd/config/platform/g/MyConfig$MyBluetooth;

    invoke-direct {v0}, Lcom/hzbhd/config/platform/g/MyConfig$MyBluetooth;-><init>()V

    check-cast v0, Lcom/hzbhd/config/base/Config$Bluetooth;

    iput-object v0, p0, Lcom/hzbhd/config/platform/g/MyConfig;->bluetooth:Lcom/hzbhd/config/base/Config$Bluetooth;

    .line 10
    new-instance v0, Lcom/hzbhd/config/platform/g/MyConfig$MyDsp;

    invoke-direct {v0}, Lcom/hzbhd/config/platform/g/MyConfig$MyDsp;-><init>()V

    check-cast v0, Lcom/hzbhd/config/base/Config$Dsp;

    iput-object v0, p0, Lcom/hzbhd/config/platform/g/MyConfig;->dsp:Lcom/hzbhd/config/base/Config$Dsp;

    .line 11
    new-instance v0, Lcom/hzbhd/config/platform/g/MyConfig$MyLauncher;

    invoke-direct {v0}, Lcom/hzbhd/config/platform/g/MyConfig$MyLauncher;-><init>()V

    check-cast v0, Lcom/hzbhd/config/base/Config$Launcher;

    iput-object v0, p0, Lcom/hzbhd/config/platform/g/MyConfig;->launcher:Lcom/hzbhd/config/base/Config$Launcher;

    .line 12
    new-instance v0, Lcom/hzbhd/config/platform/g/MyConfig$MyBLink;

    invoke-direct {v0}, Lcom/hzbhd/config/platform/g/MyConfig$MyBLink;-><init>()V

    check-cast v0, Lcom/hzbhd/config/base/Config$BLink;

    iput-object v0, p0, Lcom/hzbhd/config/platform/g/MyConfig;->blink:Lcom/hzbhd/config/base/Config$BLink;

    return-void
.end method


# virtual methods
.method public getBlink()Lcom/hzbhd/config/base/Config$BLink;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/hzbhd/config/platform/g/MyConfig;->blink:Lcom/hzbhd/config/base/Config$BLink;

    return-object v0
.end method

.method public getBluetooth()Lcom/hzbhd/config/base/Config$Bluetooth;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/hzbhd/config/platform/g/MyConfig;->bluetooth:Lcom/hzbhd/config/base/Config$Bluetooth;

    return-object v0
.end method

.method public getDsp()Lcom/hzbhd/config/base/Config$Dsp;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/hzbhd/config/platform/g/MyConfig;->dsp:Lcom/hzbhd/config/base/Config$Dsp;

    return-object v0
.end method

.method public getLauncher()Lcom/hzbhd/config/base/Config$Launcher;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/hzbhd/config/platform/g/MyConfig;->launcher:Lcom/hzbhd/config/base/Config$Launcher;

    return-object v0
.end method

.method public setBlink(Lcom/hzbhd/config/base/Config$BLink;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iput-object p1, p0, Lcom/hzbhd/config/platform/g/MyConfig;->blink:Lcom/hzbhd/config/base/Config$BLink;

    return-void
.end method

.method public setBluetooth(Lcom/hzbhd/config/base/Config$Bluetooth;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iput-object p1, p0, Lcom/hzbhd/config/platform/g/MyConfig;->bluetooth:Lcom/hzbhd/config/base/Config$Bluetooth;

    return-void
.end method

.method public setDsp(Lcom/hzbhd/config/base/Config$Dsp;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iput-object p1, p0, Lcom/hzbhd/config/platform/g/MyConfig;->dsp:Lcom/hzbhd/config/base/Config$Dsp;

    return-void
.end method

.method public setLauncher(Lcom/hzbhd/config/base/Config$Launcher;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iput-object p1, p0, Lcom/hzbhd/config/platform/g/MyConfig;->launcher:Lcom/hzbhd/config/base/Config$Launcher;

    return-void
.end method
