.class public final Lcom/hzbhd/config/client/hs1/MyConfig;
.super Lcom/hzbhd/config/base/Config;
.source "MyConfig.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/config/client/hs1/MyConfig$MyDsp;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001:\u0001\tB\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/hzbhd/config/client/hs1/MyConfig;",
        "Lcom/hzbhd/config/base/Config;",
        "()V",
        "dsp",
        "Lcom/hzbhd/config/base/Config$Dsp;",
        "getDsp",
        "()Lcom/hzbhd/config/base/Config$Dsp;",
        "setDsp",
        "(Lcom/hzbhd/config/base/Config$Dsp;)V",
        "MyDsp",
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
.field private dsp:Lcom/hzbhd/config/base/Config$Dsp;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/hzbhd/config/base/Config;-><init>()V

    .line 6
    new-instance v0, Lcom/hzbhd/config/client/hs1/MyConfig$MyDsp;

    invoke-direct {v0}, Lcom/hzbhd/config/client/hs1/MyConfig$MyDsp;-><init>()V

    check-cast v0, Lcom/hzbhd/config/base/Config$Dsp;

    iput-object v0, p0, Lcom/hzbhd/config/client/hs1/MyConfig;->dsp:Lcom/hzbhd/config/base/Config$Dsp;

    return-void
.end method


# virtual methods
.method public getDsp()Lcom/hzbhd/config/base/Config$Dsp;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/hzbhd/config/client/hs1/MyConfig;->dsp:Lcom/hzbhd/config/base/Config$Dsp;

    return-object v0
.end method

.method public setDsp(Lcom/hzbhd/config/base/Config$Dsp;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iput-object p1, p0, Lcom/hzbhd/config/client/hs1/MyConfig;->dsp:Lcom/hzbhd/config/base/Config$Dsp;

    return-void
.end method
