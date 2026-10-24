.class public final Lcom/hzbhd/config/multiui/ui_a9/MyConfig;
.super Lcom/hzbhd/config/base/Config;
.source "MyConfig.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/config/multiui/ui_a9/MyConfig$MyCommon;,
        Lcom/hzbhd/config/multiui/ui_a9/MyConfig$MyBlink;,
        Lcom/hzbhd/config/multiui/ui_a9/MyConfig$MySWC;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001:\u0003\u000f\u0010\u0011B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/hzbhd/config/multiui/ui_a9/MyConfig;",
        "Lcom/hzbhd/config/base/Config;",
        "()V",
        "common",
        "Lcom/hzbhd/config/base/Config$Common;",
        "getCommon",
        "()Lcom/hzbhd/config/base/Config$Common;",
        "setCommon",
        "(Lcom/hzbhd/config/base/Config$Common;)V",
        "swc",
        "Lcom/hzbhd/config/base/Config$SWC;",
        "getSwc",
        "()Lcom/hzbhd/config/base/Config$SWC;",
        "setSwc",
        "(Lcom/hzbhd/config/base/Config$SWC;)V",
        "MyBlink",
        "MyCommon",
        "MySWC",
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
.field private common:Lcom/hzbhd/config/base/Config$Common;

.field private swc:Lcom/hzbhd/config/base/Config$SWC;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Lcom/hzbhd/config/base/Config;-><init>()V

    .line 8
    new-instance v0, Lcom/hzbhd/config/multiui/ui_a9/MyConfig$MyCommon;

    invoke-direct {v0}, Lcom/hzbhd/config/multiui/ui_a9/MyConfig$MyCommon;-><init>()V

    check-cast v0, Lcom/hzbhd/config/base/Config$Common;

    iput-object v0, p0, Lcom/hzbhd/config/multiui/ui_a9/MyConfig;->common:Lcom/hzbhd/config/base/Config$Common;

    .line 9
    new-instance v0, Lcom/hzbhd/config/multiui/ui_a9/MyConfig$MySWC;

    invoke-direct {v0}, Lcom/hzbhd/config/multiui/ui_a9/MyConfig$MySWC;-><init>()V

    check-cast v0, Lcom/hzbhd/config/base/Config$SWC;

    iput-object v0, p0, Lcom/hzbhd/config/multiui/ui_a9/MyConfig;->swc:Lcom/hzbhd/config/base/Config$SWC;

    return-void
.end method


# virtual methods
.method public getCommon()Lcom/hzbhd/config/base/Config$Common;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/hzbhd/config/multiui/ui_a9/MyConfig;->common:Lcom/hzbhd/config/base/Config$Common;

    return-object v0
.end method

.method public getSwc()Lcom/hzbhd/config/base/Config$SWC;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/hzbhd/config/multiui/ui_a9/MyConfig;->swc:Lcom/hzbhd/config/base/Config$SWC;

    return-object v0
.end method

.method public setCommon(Lcom/hzbhd/config/base/Config$Common;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iput-object p1, p0, Lcom/hzbhd/config/multiui/ui_a9/MyConfig;->common:Lcom/hzbhd/config/base/Config$Common;

    return-void
.end method

.method public setSwc(Lcom/hzbhd/config/base/Config$SWC;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iput-object p1, p0, Lcom/hzbhd/config/multiui/ui_a9/MyConfig;->swc:Lcom/hzbhd/config/base/Config$SWC;

    return-void
.end method
