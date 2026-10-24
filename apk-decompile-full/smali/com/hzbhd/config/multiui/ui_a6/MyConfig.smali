.class public final Lcom/hzbhd/config/multiui/ui_a6/MyConfig;
.super Lcom/hzbhd/config/base/Config;
.source "MyConfig.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/config/multiui/ui_a6/MyConfig$MyCommon;,
        Lcom/hzbhd/config/multiui/ui_a6/MyConfig$MyDsp;,
        Lcom/hzbhd/config/multiui/ui_a6/MyConfig$MyBlink;,
        Lcom/hzbhd/config/multiui/ui_a6/MyConfig$MymidwareService;,
        Lcom/hzbhd/config/multiui/ui_a6/MyConfig$MyCanBusInfo;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001:\u0005!\"#$%B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0016X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001a\u0010\u001b\u001a\u00020\u001cX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 \u00a8\u0006&"
    }
    d2 = {
        "Lcom/hzbhd/config/multiui/ui_a6/MyConfig;",
        "Lcom/hzbhd/config/base/Config;",
        "()V",
        "blink",
        "Lcom/hzbhd/config/base/Config$BLink;",
        "getBlink",
        "()Lcom/hzbhd/config/base/Config$BLink;",
        "setBlink",
        "(Lcom/hzbhd/config/base/Config$BLink;)V",
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
        "dsp",
        "Lcom/hzbhd/config/base/Config$Dsp;",
        "getDsp",
        "()Lcom/hzbhd/config/base/Config$Dsp;",
        "setDsp",
        "(Lcom/hzbhd/config/base/Config$Dsp;)V",
        "midwareservice",
        "Lcom/hzbhd/config/base/Config$midwareService;",
        "getMidwareservice",
        "()Lcom/hzbhd/config/base/Config$midwareService;",
        "setMidwareservice",
        "(Lcom/hzbhd/config/base/Config$midwareService;)V",
        "MyBlink",
        "MyCanBusInfo",
        "MyCommon",
        "MyDsp",
        "MymidwareService",
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

.field private canbusInfo:Lcom/hzbhd/config/base/Config$CanBusInfo;

.field private common:Lcom/hzbhd/config/base/Config$Common;

.field private dsp:Lcom/hzbhd/config/base/Config$Dsp;

.field private midwareservice:Lcom/hzbhd/config/base/Config$midwareService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/hzbhd/config/base/Config;-><init>()V

    .line 7
    new-instance v0, Lcom/hzbhd/config/multiui/ui_a6/MyConfig$MyCommon;

    invoke-direct {v0}, Lcom/hzbhd/config/multiui/ui_a6/MyConfig$MyCommon;-><init>()V

    check-cast v0, Lcom/hzbhd/config/base/Config$Common;

    iput-object v0, p0, Lcom/hzbhd/config/multiui/ui_a6/MyConfig;->common:Lcom/hzbhd/config/base/Config$Common;

    .line 8
    new-instance v0, Lcom/hzbhd/config/multiui/ui_a6/MyConfig$MyDsp;

    invoke-direct {v0}, Lcom/hzbhd/config/multiui/ui_a6/MyConfig$MyDsp;-><init>()V

    check-cast v0, Lcom/hzbhd/config/base/Config$Dsp;

    iput-object v0, p0, Lcom/hzbhd/config/multiui/ui_a6/MyConfig;->dsp:Lcom/hzbhd/config/base/Config$Dsp;

    .line 9
    new-instance v0, Lcom/hzbhd/config/multiui/ui_a6/MyConfig$MyBlink;

    invoke-direct {v0}, Lcom/hzbhd/config/multiui/ui_a6/MyConfig$MyBlink;-><init>()V

    check-cast v0, Lcom/hzbhd/config/base/Config$BLink;

    iput-object v0, p0, Lcom/hzbhd/config/multiui/ui_a6/MyConfig;->blink:Lcom/hzbhd/config/base/Config$BLink;

    .line 10
    new-instance v0, Lcom/hzbhd/config/multiui/ui_a6/MyConfig$MymidwareService;

    invoke-direct {v0}, Lcom/hzbhd/config/multiui/ui_a6/MyConfig$MymidwareService;-><init>()V

    check-cast v0, Lcom/hzbhd/config/base/Config$midwareService;

    iput-object v0, p0, Lcom/hzbhd/config/multiui/ui_a6/MyConfig;->midwareservice:Lcom/hzbhd/config/base/Config$midwareService;

    .line 11
    new-instance v0, Lcom/hzbhd/config/multiui/ui_a6/MyConfig$MyCanBusInfo;

    invoke-direct {v0}, Lcom/hzbhd/config/multiui/ui_a6/MyConfig$MyCanBusInfo;-><init>()V

    check-cast v0, Lcom/hzbhd/config/base/Config$CanBusInfo;

    iput-object v0, p0, Lcom/hzbhd/config/multiui/ui_a6/MyConfig;->canbusInfo:Lcom/hzbhd/config/base/Config$CanBusInfo;

    return-void
.end method


# virtual methods
.method public getBlink()Lcom/hzbhd/config/base/Config$BLink;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/hzbhd/config/multiui/ui_a6/MyConfig;->blink:Lcom/hzbhd/config/base/Config$BLink;

    return-object v0
.end method

.method public getCanbusInfo()Lcom/hzbhd/config/base/Config$CanBusInfo;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/hzbhd/config/multiui/ui_a6/MyConfig;->canbusInfo:Lcom/hzbhd/config/base/Config$CanBusInfo;

    return-object v0
.end method

.method public getCommon()Lcom/hzbhd/config/base/Config$Common;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/hzbhd/config/multiui/ui_a6/MyConfig;->common:Lcom/hzbhd/config/base/Config$Common;

    return-object v0
.end method

.method public getDsp()Lcom/hzbhd/config/base/Config$Dsp;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/hzbhd/config/multiui/ui_a6/MyConfig;->dsp:Lcom/hzbhd/config/base/Config$Dsp;

    return-object v0
.end method

.method public getMidwareservice()Lcom/hzbhd/config/base/Config$midwareService;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/hzbhd/config/multiui/ui_a6/MyConfig;->midwareservice:Lcom/hzbhd/config/base/Config$midwareService;

    return-object v0
.end method

.method public setBlink(Lcom/hzbhd/config/base/Config$BLink;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iput-object p1, p0, Lcom/hzbhd/config/multiui/ui_a6/MyConfig;->blink:Lcom/hzbhd/config/base/Config$BLink;

    return-void
.end method

.method public setCanbusInfo(Lcom/hzbhd/config/base/Config$CanBusInfo;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iput-object p1, p0, Lcom/hzbhd/config/multiui/ui_a6/MyConfig;->canbusInfo:Lcom/hzbhd/config/base/Config$CanBusInfo;

    return-void
.end method

.method public setCommon(Lcom/hzbhd/config/base/Config$Common;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iput-object p1, p0, Lcom/hzbhd/config/multiui/ui_a6/MyConfig;->common:Lcom/hzbhd/config/base/Config$Common;

    return-void
.end method

.method public setDsp(Lcom/hzbhd/config/base/Config$Dsp;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iput-object p1, p0, Lcom/hzbhd/config/multiui/ui_a6/MyConfig;->dsp:Lcom/hzbhd/config/base/Config$Dsp;

    return-void
.end method

.method public setMidwareservice(Lcom/hzbhd/config/base/Config$midwareService;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iput-object p1, p0, Lcom/hzbhd/config/multiui/ui_a6/MyConfig;->midwareservice:Lcom/hzbhd/config/base/Config$midwareService;

    return-void
.end method
