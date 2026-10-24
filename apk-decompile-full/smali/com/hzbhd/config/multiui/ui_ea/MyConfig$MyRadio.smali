.class public final Lcom/hzbhd/config/multiui/ui_ea/MyConfig$MyRadio;
.super Lcom/hzbhd/config/base/Config$Radio;
.source "MyConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/config/multiui/ui_ea/MyConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MyRadio"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/config/multiui/ui_ea/MyConfig$MyRadio$MyCommon;,
        Lcom/hzbhd/config/multiui/ui_ea/MyConfig$MyRadio$MyPresetView;
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
        "Lcom/hzbhd/config/multiui/ui_ea/MyConfig$MyRadio;",
        "Lcom/hzbhd/config/base/Config$Radio;",
        "()V",
        "common",
        "Lcom/hzbhd/config/base/Config$Radio$Common;",
        "getCommon",
        "()Lcom/hzbhd/config/base/Config$Radio$Common;",
        "setCommon",
        "(Lcom/hzbhd/config/base/Config$Radio$Common;)V",
        "presetView",
        "Lcom/hzbhd/config/base/Config$Radio$PresetView;",
        "getPresetView",
        "()Lcom/hzbhd/config/base/Config$Radio$PresetView;",
        "setPresetView",
        "(Lcom/hzbhd/config/base/Config$Radio$PresetView;)V",
        "MyCommon",
        "MyPresetView",
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

.field private presetView:Lcom/hzbhd/config/base/Config$Radio$PresetView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 109
    invoke-direct {p0}, Lcom/hzbhd/config/base/Config$Radio;-><init>()V

    .line 110
    new-instance v0, Lcom/hzbhd/config/multiui/ui_ea/MyConfig$MyRadio$MyCommon;

    invoke-direct {v0}, Lcom/hzbhd/config/multiui/ui_ea/MyConfig$MyRadio$MyCommon;-><init>()V

    check-cast v0, Lcom/hzbhd/config/base/Config$Radio$Common;

    iput-object v0, p0, Lcom/hzbhd/config/multiui/ui_ea/MyConfig$MyRadio;->common:Lcom/hzbhd/config/base/Config$Radio$Common;

    .line 111
    new-instance v0, Lcom/hzbhd/config/multiui/ui_ea/MyConfig$MyRadio$MyPresetView;

    invoke-direct {v0}, Lcom/hzbhd/config/multiui/ui_ea/MyConfig$MyRadio$MyPresetView;-><init>()V

    check-cast v0, Lcom/hzbhd/config/base/Config$Radio$PresetView;

    iput-object v0, p0, Lcom/hzbhd/config/multiui/ui_ea/MyConfig$MyRadio;->presetView:Lcom/hzbhd/config/base/Config$Radio$PresetView;

    return-void
.end method


# virtual methods
.method public getCommon()Lcom/hzbhd/config/base/Config$Radio$Common;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/hzbhd/config/multiui/ui_ea/MyConfig$MyRadio;->common:Lcom/hzbhd/config/base/Config$Radio$Common;

    return-object v0
.end method

.method public getPresetView()Lcom/hzbhd/config/base/Config$Radio$PresetView;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/hzbhd/config/multiui/ui_ea/MyConfig$MyRadio;->presetView:Lcom/hzbhd/config/base/Config$Radio$PresetView;

    return-object v0
.end method

.method public setCommon(Lcom/hzbhd/config/base/Config$Radio$Common;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    iput-object p1, p0, Lcom/hzbhd/config/multiui/ui_ea/MyConfig$MyRadio;->common:Lcom/hzbhd/config/base/Config$Radio$Common;

    return-void
.end method

.method public setPresetView(Lcom/hzbhd/config/base/Config$Radio$PresetView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    iput-object p1, p0, Lcom/hzbhd/config/multiui/ui_ea/MyConfig$MyRadio;->presetView:Lcom/hzbhd/config/base/Config$Radio$PresetView;

    return-void
.end method
