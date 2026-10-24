.class public final Lcom/hzbhd/config/jar/MyConfig;
.super Lcom/hzbhd/config/base/Config;
.source "MyConfig.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/config/jar/MyConfig$MyCommon;,
        Lcom/hzbhd/config/jar/MyConfig$MyMisc;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001:\u0002\u000f\u0010B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/hzbhd/config/jar/MyConfig;",
        "Lcom/hzbhd/config/base/Config;",
        "()V",
        "common",
        "Lcom/hzbhd/config/base/Config$Common;",
        "getCommon",
        "()Lcom/hzbhd/config/base/Config$Common;",
        "setCommon",
        "(Lcom/hzbhd/config/base/Config$Common;)V",
        "misc",
        "Lcom/hzbhd/config/base/Config$Misc;",
        "getMisc",
        "()Lcom/hzbhd/config/base/Config$Misc;",
        "setMisc",
        "(Lcom/hzbhd/config/base/Config$Misc;)V",
        "MyCommon",
        "MyMisc",
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

.field private misc:Lcom/hzbhd/config/base/Config$Misc;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Lcom/hzbhd/config/base/Config;-><init>()V

    .line 8
    new-instance v0, Lcom/hzbhd/config/jar/MyConfig$MyCommon;

    invoke-direct {v0, p0}, Lcom/hzbhd/config/jar/MyConfig$MyCommon;-><init>(Lcom/hzbhd/config/jar/MyConfig;)V

    check-cast v0, Lcom/hzbhd/config/base/Config$Common;

    iput-object v0, p0, Lcom/hzbhd/config/jar/MyConfig;->common:Lcom/hzbhd/config/base/Config$Common;

    .line 9
    new-instance v0, Lcom/hzbhd/config/jar/MyConfig$MyMisc;

    invoke-direct {v0, p0}, Lcom/hzbhd/config/jar/MyConfig$MyMisc;-><init>(Lcom/hzbhd/config/jar/MyConfig;)V

    check-cast v0, Lcom/hzbhd/config/base/Config$Misc;

    iput-object v0, p0, Lcom/hzbhd/config/jar/MyConfig;->misc:Lcom/hzbhd/config/base/Config$Misc;

    return-void
.end method


# virtual methods
.method public getCommon()Lcom/hzbhd/config/base/Config$Common;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/hzbhd/config/jar/MyConfig;->common:Lcom/hzbhd/config/base/Config$Common;

    return-object v0
.end method

.method public getMisc()Lcom/hzbhd/config/base/Config$Misc;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/hzbhd/config/jar/MyConfig;->misc:Lcom/hzbhd/config/base/Config$Misc;

    return-object v0
.end method

.method public setCommon(Lcom/hzbhd/config/base/Config$Common;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iput-object p1, p0, Lcom/hzbhd/config/jar/MyConfig;->common:Lcom/hzbhd/config/base/Config$Common;

    return-void
.end method

.method public setMisc(Lcom/hzbhd/config/base/Config$Misc;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iput-object p1, p0, Lcom/hzbhd/config/jar/MyConfig;->misc:Lcom/hzbhd/config/base/Config$Misc;

    return-void
.end method
