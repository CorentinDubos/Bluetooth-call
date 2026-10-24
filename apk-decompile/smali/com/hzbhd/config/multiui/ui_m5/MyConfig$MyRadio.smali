.class public final Lcom/hzbhd/config/multiui/ui_m5/MyConfig$MyRadio;
.super Lcom/hzbhd/config/base/Config$Radio;
.source "MyConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/config/multiui/ui_m5/MyConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MyRadio"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/config/multiui/ui_m5/MyConfig$MyRadio$MyCommon;
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
        "Lcom/hzbhd/config/multiui/ui_m5/MyConfig$MyRadio;",
        "Lcom/hzbhd/config/base/Config$Radio;",
        "()V",
        "common",
        "Lcom/hzbhd/config/base/Config$Radio$Common;",
        "getCommon",
        "()Lcom/hzbhd/config/base/Config$Radio$Common;",
        "setCommon",
        "(Lcom/hzbhd/config/base/Config$Radio$Common;)V",
        "MyCommon",
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
.field private common:Lcom/hzbhd/config/base/Config$Radio$Common;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Lcom/hzbhd/config/base/Config$Radio;-><init>()V

    .line 13
    new-instance v0, Lcom/hzbhd/config/multiui/ui_m5/MyConfig$MyRadio$MyCommon;

    invoke-direct {v0}, Lcom/hzbhd/config/multiui/ui_m5/MyConfig$MyRadio$MyCommon;-><init>()V

    check-cast v0, Lcom/hzbhd/config/base/Config$Radio$Common;

    iput-object v0, p0, Lcom/hzbhd/config/multiui/ui_m5/MyConfig$MyRadio;->common:Lcom/hzbhd/config/base/Config$Radio$Common;

    return-void
.end method


# virtual methods
.method public getCommon()Lcom/hzbhd/config/base/Config$Radio$Common;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/hzbhd/config/multiui/ui_m5/MyConfig$MyRadio;->common:Lcom/hzbhd/config/base/Config$Radio$Common;

    return-object v0
.end method

.method public setCommon(Lcom/hzbhd/config/base/Config$Radio$Common;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iput-object p1, p0, Lcom/hzbhd/config/multiui/ui_m5/MyConfig$MyRadio;->common:Lcom/hzbhd/config/base/Config$Radio$Common;

    return-void
.end method
