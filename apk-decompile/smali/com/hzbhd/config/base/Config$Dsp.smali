.class public Lcom/hzbhd/config/base/Config$Dsp;
.super Ljava/lang/Object;
.source "Config.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/config/base/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Dsp"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/config/base/Config$Dsp$Type;,
        Lcom/hzbhd/config/base/Config$Dsp$Curve;,
        Lcom/hzbhd/config/base/Config$Dsp$Balance;,
        Lcom/hzbhd/config/base/Config$Dsp$Delay;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0008\u0016\u0018\u00002\u00020\u0001:\u0004#$%&B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u001b\u001a\u00020\u001cH\u0016J\u0008\u0010\u001d\u001a\u00020\u001eH\u0016J\u0008\u0010\u001f\u001a\u00020 H\u0016J\u0008\u0010!\u001a\u00020 H\u0016J\u0006\u0010\"\u001a\u00020 R\u001a\u0010\u0003\u001a\u00020\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0016X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/hzbhd/config/base/Config$Dsp;",
        "",
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
        "getRcaGain",
        "",
        "isChangeDsp",
        "",
        "isNaviSplit",
        "isRcaGainIndividualAdjustment",
        "Balance",
        "Curve",
        "Delay",
        "Type",
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

    .line 937
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 938
    new-instance v0, Lcom/hzbhd/config/base/Config$Dsp$Curve;

    invoke-direct {v0}, Lcom/hzbhd/config/base/Config$Dsp$Curve;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/config/base/Config$Dsp;->curve:Lcom/hzbhd/config/base/Config$Dsp$Curve;

    .line 939
    new-instance v0, Lcom/hzbhd/config/base/Config$Dsp$Type;

    invoke-direct {v0}, Lcom/hzbhd/config/base/Config$Dsp$Type;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/config/base/Config$Dsp;->type:Lcom/hzbhd/config/base/Config$Dsp$Type;

    .line 940
    new-instance v0, Lcom/hzbhd/config/base/Config$Dsp$Balance;

    invoke-direct {v0}, Lcom/hzbhd/config/base/Config$Dsp$Balance;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/config/base/Config$Dsp;->balance:Lcom/hzbhd/config/base/Config$Dsp$Balance;

    .line 941
    new-instance v0, Lcom/hzbhd/config/base/Config$Dsp$Delay;

    invoke-direct {v0}, Lcom/hzbhd/config/base/Config$Dsp$Delay;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/config/base/Config$Dsp;->delay:Lcom/hzbhd/config/base/Config$Dsp$Delay;

    return-void
.end method


# virtual methods
.method public getBalance()Lcom/hzbhd/config/base/Config$Dsp$Balance;
    .locals 1

    .line 940
    iget-object v0, p0, Lcom/hzbhd/config/base/Config$Dsp;->balance:Lcom/hzbhd/config/base/Config$Dsp$Balance;

    return-object v0
.end method

.method public getCurve()Lcom/hzbhd/config/base/Config$Dsp$Curve;
    .locals 1

    .line 938
    iget-object v0, p0, Lcom/hzbhd/config/base/Config$Dsp;->curve:Lcom/hzbhd/config/base/Config$Dsp$Curve;

    return-object v0
.end method

.method public getDelay()Lcom/hzbhd/config/base/Config$Dsp$Delay;
    .locals 1

    .line 941
    iget-object v0, p0, Lcom/hzbhd/config/base/Config$Dsp;->delay:Lcom/hzbhd/config/base/Config$Dsp$Delay;

    return-object v0
.end method

.method public getDspStyle()Ljava/lang/String;
    .locals 1

    const-string v0, "__01__dsp__style"

    return-object v0
.end method

.method public getRcaGain()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public getType()Lcom/hzbhd/config/base/Config$Dsp$Type;
    .locals 1

    .line 939
    iget-object v0, p0, Lcom/hzbhd/config/base/Config$Dsp;->type:Lcom/hzbhd/config/base/Config$Dsp$Type;

    return-object v0
.end method

.method public isChangeDsp()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isNaviSplit()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isRcaGainIndividualAdjustment()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setBalance(Lcom/hzbhd/config/base/Config$Dsp$Balance;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 940
    iput-object p1, p0, Lcom/hzbhd/config/base/Config$Dsp;->balance:Lcom/hzbhd/config/base/Config$Dsp$Balance;

    return-void
.end method

.method public setCurve(Lcom/hzbhd/config/base/Config$Dsp$Curve;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 938
    iput-object p1, p0, Lcom/hzbhd/config/base/Config$Dsp;->curve:Lcom/hzbhd/config/base/Config$Dsp$Curve;

    return-void
.end method

.method public setDelay(Lcom/hzbhd/config/base/Config$Dsp$Delay;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 941
    iput-object p1, p0, Lcom/hzbhd/config/base/Config$Dsp;->delay:Lcom/hzbhd/config/base/Config$Dsp$Delay;

    return-void
.end method

.method public setType(Lcom/hzbhd/config/base/Config$Dsp$Type;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 939
    iput-object p1, p0, Lcom/hzbhd/config/base/Config$Dsp;->type:Lcom/hzbhd/config/base/Config$Dsp$Type;

    return-void
.end method
