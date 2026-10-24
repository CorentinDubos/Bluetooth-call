.class public final Lcom/hzbhd/config/multiui/ui_e3/MyConfig$MyDsp;
.super Lcom/hzbhd/config/base/Config$Dsp;
.source "MyConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/config/multiui/ui_e3/MyConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MyDsp"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/config/multiui/ui_e3/MyConfig$MyDsp$MyCurve;,
        Lcom/hzbhd/config/multiui/ui_e3/MyConfig$MyDsp$MyType;,
        Lcom/hzbhd/config/multiui/ui_e3/MyConfig$MyDsp$MyBalance;,
        Lcom/hzbhd/config/multiui/ui_e3/MyConfig$MyDsp$MyDelay;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0004\u001d\u001e\u001f B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u001b\u001a\u00020\u001cH\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0016X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001a\u00a8\u0006!"
    }
    d2 = {
        "Lcom/hzbhd/config/multiui/ui_e3/MyConfig$MyDsp;",
        "Lcom/hzbhd/config/base/Config$Dsp;",
        "()V",
        "balance",
        "Lcom/hzbhd/config/base/Config$Dsp$Balance;",
        "getBalance",
        "()Lcom/hzbhd/config/base/Config$Dsp$Balance;",
        "setBalance",
        "(Lcom/hzbhd/config/base/Config$Dsp$Balance;)V",
        "curve",
        "Lcom/hzbhd/config/base/Config$Dsp$Curve;",
        "getCurve",
        "()Lcom/hzbhd/config/base/Config$Dsp$Curve;",
        "setCurve",
        "(Lcom/hzbhd/config/base/Config$Dsp$Curve;)V",
        "delay",
        "Lcom/hzbhd/config/base/Config$Dsp$Delay;",
        "getDelay",
        "()Lcom/hzbhd/config/base/Config$Dsp$Delay;",
        "setDelay",
        "(Lcom/hzbhd/config/base/Config$Dsp$Delay;)V",
        "type",
        "Lcom/hzbhd/config/base/Config$Dsp$Type;",
        "getType",
        "()Lcom/hzbhd/config/base/Config$Dsp$Type;",
        "setType",
        "(Lcom/hzbhd/config/base/Config$Dsp$Type;)V",
        "getDspStyle",
        "",
        "MyBalance",
        "MyCurve",
        "MyDelay",
        "MyType",
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
.field private balance:Lcom/hzbhd/config/base/Config$Dsp$Balance;

.field private curve:Lcom/hzbhd/config/base/Config$Dsp$Curve;

.field private delay:Lcom/hzbhd/config/base/Config$Dsp$Delay;

.field private type:Lcom/hzbhd/config/base/Config$Dsp$Type;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 111
    invoke-direct {p0}, Lcom/hzbhd/config/base/Config$Dsp;-><init>()V

    .line 112
    new-instance v0, Lcom/hzbhd/config/multiui/ui_e3/MyConfig$MyDsp$MyCurve;

    invoke-direct {v0}, Lcom/hzbhd/config/multiui/ui_e3/MyConfig$MyDsp$MyCurve;-><init>()V

    check-cast v0, Lcom/hzbhd/config/base/Config$Dsp$Curve;

    iput-object v0, p0, Lcom/hzbhd/config/multiui/ui_e3/MyConfig$MyDsp;->curve:Lcom/hzbhd/config/base/Config$Dsp$Curve;

    .line 113
    new-instance v0, Lcom/hzbhd/config/multiui/ui_e3/MyConfig$MyDsp$MyType;

    invoke-direct {v0}, Lcom/hzbhd/config/multiui/ui_e3/MyConfig$MyDsp$MyType;-><init>()V

    check-cast v0, Lcom/hzbhd/config/base/Config$Dsp$Type;

    iput-object v0, p0, Lcom/hzbhd/config/multiui/ui_e3/MyConfig$MyDsp;->type:Lcom/hzbhd/config/base/Config$Dsp$Type;

    .line 114
    new-instance v0, Lcom/hzbhd/config/multiui/ui_e3/MyConfig$MyDsp$MyBalance;

    invoke-direct {v0}, Lcom/hzbhd/config/multiui/ui_e3/MyConfig$MyDsp$MyBalance;-><init>()V

    check-cast v0, Lcom/hzbhd/config/base/Config$Dsp$Balance;

    iput-object v0, p0, Lcom/hzbhd/config/multiui/ui_e3/MyConfig$MyDsp;->balance:Lcom/hzbhd/config/base/Config$Dsp$Balance;

    .line 115
    new-instance v0, Lcom/hzbhd/config/multiui/ui_e3/MyConfig$MyDsp$MyDelay;

    invoke-direct {v0}, Lcom/hzbhd/config/multiui/ui_e3/MyConfig$MyDsp$MyDelay;-><init>()V

    check-cast v0, Lcom/hzbhd/config/base/Config$Dsp$Delay;

    iput-object v0, p0, Lcom/hzbhd/config/multiui/ui_e3/MyConfig$MyDsp;->delay:Lcom/hzbhd/config/base/Config$Dsp$Delay;

    return-void
.end method


# virtual methods
.method public getBalance()Lcom/hzbhd/config/base/Config$Dsp$Balance;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/hzbhd/config/multiui/ui_e3/MyConfig$MyDsp;->balance:Lcom/hzbhd/config/base/Config$Dsp$Balance;

    return-object v0
.end method

.method public getCurve()Lcom/hzbhd/config/base/Config$Dsp$Curve;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/hzbhd/config/multiui/ui_e3/MyConfig$MyDsp;->curve:Lcom/hzbhd/config/base/Config$Dsp$Curve;

    return-object v0
.end method

.method public getDelay()Lcom/hzbhd/config/base/Config$Dsp$Delay;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/hzbhd/config/multiui/ui_e3/MyConfig$MyDsp;->delay:Lcom/hzbhd/config/base/Config$Dsp$Delay;

    return-object v0
.end method

.method public getDspStyle()Ljava/lang/String;
    .locals 1

    const-string v0, "__e3__dsp__style"

    return-object v0
.end method

.method public getType()Lcom/hzbhd/config/base/Config$Dsp$Type;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/hzbhd/config/multiui/ui_e3/MyConfig$MyDsp;->type:Lcom/hzbhd/config/base/Config$Dsp$Type;

    return-object v0
.end method

.method public setBalance(Lcom/hzbhd/config/base/Config$Dsp$Balance;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    iput-object p1, p0, Lcom/hzbhd/config/multiui/ui_e3/MyConfig$MyDsp;->balance:Lcom/hzbhd/config/base/Config$Dsp$Balance;

    return-void
.end method

.method public setCurve(Lcom/hzbhd/config/base/Config$Dsp$Curve;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    iput-object p1, p0, Lcom/hzbhd/config/multiui/ui_e3/MyConfig$MyDsp;->curve:Lcom/hzbhd/config/base/Config$Dsp$Curve;

    return-void
.end method

.method public setDelay(Lcom/hzbhd/config/base/Config$Dsp$Delay;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    iput-object p1, p0, Lcom/hzbhd/config/multiui/ui_e3/MyConfig$MyDsp;->delay:Lcom/hzbhd/config/base/Config$Dsp$Delay;

    return-void
.end method

.method public setType(Lcom/hzbhd/config/base/Config$Dsp$Type;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    iput-object p1, p0, Lcom/hzbhd/config/multiui/ui_e3/MyConfig$MyDsp;->type:Lcom/hzbhd/config/base/Config$Dsp$Type;

    return-void
.end method
